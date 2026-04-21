.class public final Landroidx/compose/material/icons/twotone/AppSettingsAltKt;
.super Ljava/lang/Object;
.source "AppSettingsAlt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppSettingsAlt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSettingsAlt.kt\nandroidx/compose/material/icons/twotone/AppSettingsAltKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,131:1\n212#2,12:132\n233#2,18:145\n253#2:182\n233#2,18:183\n253#2:220\n233#2,18:221\n253#2:258\n174#3:144\n705#4,2:163\n717#4,2:165\n719#4,11:171\n705#4,2:201\n717#4,2:203\n719#4,11:209\n705#4,2:239\n717#4,2:241\n719#4,11:247\n72#5,4:167\n72#5,4:205\n72#5,4:243\n*S KotlinDebug\n*F\n+ 1 AppSettingsAlt.kt\nandroidx/compose/material/icons/twotone/AppSettingsAltKt\n*L\n29#1:132,12\n30#1:145,18\n30#1:182\n112#1:183,18\n112#1:220\n119#1:221,18\n119#1:258\n29#1:144\n30#1:163,2\n30#1:165,2\n30#1:171,11\n112#1:201,2\n112#1:203,2\n112#1:209,11\n119#1:239,2\n119#1:241,2\n119#1:247,11\n30#1:167,4\n112#1:205,4\n119#1:243,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_appSettingsAlt",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "AppSettingsAlt",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getAppSettingsAlt",
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
.field private static _appSettingsAlt:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAppSettingsAlt(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 50
    .param p0, "$this$AppSettingsAlt"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/AppSettingsAltKt;->_appSettingsAlt:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/AppSettingsAltKt;->_appSettingsAlt:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v2, "TwoTone.AppSettingsAlt"

    .line 132
    .local v2, "name$iv":Ljava/lang/String;
    nop

    .line 134
    const/4 v10, 0x0

    .line 132
    .local v10, "autoMirror$iv":Z
    const/4 v0, 0x0

    .line 143
    .local v0, "$i$f$materialIcon":I
    nop

    .line 136
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 137
    nop

    .line 138
    const/high16 v3, 0x41c00000    # 24.0f

    .local v3, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 144
    .local v4, "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 139
    .end local v3    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v4, 0x41c00000    # 24.0f

    .local v4, "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 144
    .local v5, "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 140
    .end local v4    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    nop

    .line 141
    nop

    .line 136
    nop

    .line 142
    nop

    .line 136
    const/16 v11, 0x60

    const/4 v12, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 143
    nop

    .local v1, "$this$_get_AppSettingsAlt__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon$default-AppSettingsAltKt$AppSettingsAlt$1":I
    move-object v4, v1

    .line 145
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 146
    const/high16 v16, 0x3f800000    # 1.0f

    .line 145
    .local v16, "fillAlpha$iv":F
    nop

    .line 147
    const/high16 v18, 0x3f800000    # 1.0f

    .line 145
    .local v18, "strokeAlpha$iv":F
    nop

    .line 148
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 145
    .local v13, "pathFillType$iv":I
    const/4 v5, 0x0

    .line 154
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 155
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v6

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 157
    nop

    .line 159
    nop

    .line 160
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 161
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 162
    nop

    .line 154
    const/16 v17, 0x0

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    const/high16 v22, 0x3f800000    # 1.0f

    .line 163
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 164
    const-string v14, ""

    .line 163
    .local v14, "name$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 165
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 166
    const/4 v7, 0x0

    .line 167
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 168
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v8

    .local v12, "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v30, 0x0

    .line 31
    .local v30, "$i$a$-materialPath-YwgOQQI$default-AppSettingsAltKt$AppSettingsAlt$1$1":I
    move/from16 v31, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v31, "$i$f$materialIcon":I
    const v0, 0x41ae7ae1    # 21.81f

    move-object/from16 v32, v1

    .end local v1    # "$this$_get_AppSettingsAlt__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v32, "$this$_get_AppSettingsAlt__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, 0x414bd70a    # 12.74f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v0, -0x40ae147b    # -0.82f

    const v1, -0x40deb852    # -0.63f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/16 v28, 0x0

    const v29, -0x419eb852    # -0.22f

    const/16 v24, 0x0

    const v25, -0x4247ae14    # -0.09f

    const/16 v26, 0x0

    const v27, -0x41fae148    # -0.13f

    move-object/from16 v23, v12

    .end local v12    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v23, "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    move-object/from16 v0, v23

    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f4ccccd    # 0.8f

    const v12, -0x40deb852    # -0.63f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x3dcccccd    # 0.1f

    const v29, -0x40fd70a4    # -0.51f

    const v24, 0x3e23d70a    # 0.16f

    const v25, -0x420a3d71    # -0.12f

    const v26, 0x3e4ccccd    # 0.2f

    const v27, -0x4151eb85    # -0.34f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x40428f5c    # -1.48f

    const v12, -0x40a66666    # -0.85f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, -0x414ccccd    # -0.35f

    const v29, -0x41b33333    # -0.2f

    const v24, -0x4270a3d7    # -0.07f

    const v25, -0x41fae148    # -0.13f

    const v26, -0x41a8f5c3    # -0.21f

    const v27, -0x41b33333    # -0.2f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, -0x41e66666    # -0.15f

    const v29, 0x3cf5c28f    # 0.03f

    const v24, -0x42b33333    # -0.05f

    const/16 v25, 0x0

    const v26, -0x42333333    # -0.1f

    const v27, 0x3c23d70a    # 0.01f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3ec28f5c    # 0.38f

    const v12, -0x408ccccd    # -0.95f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v28, -0x41bd70a4    # -0.19f

    const v29, -0x421eb852    # -0.11f

    const v24, -0x425c28f6    # -0.08f

    const v25, -0x42b33333    # -0.05f

    const v26, -0x421eb852    # -0.11f

    const v27, -0x4270a3d7    # -0.07f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x41e66666    # -0.15f

    const v12, -0x407eb852    # -1.01f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v28, 0x4196cccd    # 18.85f

    const/high16 v29, 0x41000000    # 8.0f

    const v24, 0x4199c28f    # 19.22f

    const v25, 0x41026666    # 8.15f

    const v26, 0x41986666    # 19.05f

    const/high16 v27, 0x41000000    # 8.0f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x40251eb8    # -1.71f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, -0x41333333    # -0.4f

    const v29, 0x3eae147b    # 0.34f

    const v24, -0x41b33333    # -0.2f

    const/16 v25, 0x0

    const v26, -0x41428f5c    # -0.37f

    const v27, 0x3e19999a    # 0.15f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x4184cccd    # 16.6f

    const v12, 0x4115999a    # 9.35f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, -0x42333333    # -0.1f

    const v29, 0x3d4ccccd    # 0.05f

    const v24, -0x430a3d71    # -0.03f

    const v25, 0x3ca3d70a    # 0.02f

    const v26, -0x4270a3d7    # -0.07f

    const v27, 0x3cf5c28f    # 0.03f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, -0x4247ae14    # -0.09f

    const v29, 0x3d75c28f    # 0.06f

    const v26, -0x428a3d71    # -0.06f

    const v27, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x413d70a4    # -0.38f

    const v12, -0x408ccccd    # -0.95f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, -0x41e66666    # -0.15f

    const v29, -0x430a3d71    # -0.03f

    const v24, -0x42b33333    # -0.05f

    const v25, -0x435c28f6    # -0.02f

    const v26, -0x42333333    # -0.1f

    const v27, -0x430a3d71    # -0.03f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, -0x414ccccd    # -0.35f

    const v29, 0x3e4ccccd    # 0.2f

    const v24, -0x41f0a3d7    # -0.14f

    const/16 v25, 0x0

    const v26, -0x4175c28f    # -0.27f

    const v27, 0x3d8f5c29    # 0.07f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3fbd70a4    # 1.48f

    const v12, -0x40a66666    # -0.85f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v28, 0x3dcccccd    # 0.1f

    const v29, 0x3f028f5c    # 0.51f

    const v24, -0x42333333    # -0.1f

    const v25, 0x3e2e147b    # 0.17f

    const v26, -0x428a3d71    # -0.06f

    const v27, 0x3ec7ae14    # 0.39f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f2147ae    # 0.63f

    const v12, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/16 v28, 0x0

    const v29, 0x3e6b851f    # 0.23f

    const/16 v24, 0x0

    const v25, 0x3db851ec    # 0.09f

    const/16 v26, 0x0

    const v27, 0x3e051eb8    # 0.13f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x40b33333    # -0.8f

    const v12, 0x3f2147ae    # 0.63f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, -0x42333333    # -0.1f

    const v29, 0x3f028f5c    # 0.51f

    const v24, -0x41dc28f6    # -0.16f

    const v25, 0x3df5c28f    # 0.12f

    const v26, -0x41b33333    # -0.2f

    const v27, 0x3eae147b    # 0.34f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f59999a    # 0.85f

    const v12, 0x3fbd70a4    # 1.48f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v28, 0x3eb33333    # 0.35f

    const v29, 0x3e4ccccd    # 0.2f

    const v24, 0x3d8f5c29    # 0.07f

    const v25, 0x3e051eb8    # 0.13f

    const v26, 0x3e570a3d    # 0.21f

    const v27, 0x3e4ccccd    # 0.2f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v28, 0x3e19999a    # 0.15f

    const v29, -0x430a3d71    # -0.03f

    const v24, 0x3d4ccccd    # 0.05f

    const/16 v25, 0x0

    const v26, 0x3dcccccd    # 0.1f

    const v27, -0x43dc28f6    # -0.01f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, -0x41428f5c    # -0.37f

    const v12, 0x3f733333    # 0.95f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, 0x3e4ccccd    # 0.2f

    const v29, 0x3de147ae    # 0.11f

    const v24, 0x3da3d70a    # 0.08f

    const v25, 0x3d4ccccd    # 0.05f

    const v26, 0x3df5c28f    # 0.12f

    const v27, 0x3d8f5c29    # 0.07f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f8147ae    # 1.01f

    const v12, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, 0x3ecccccd    # 0.4f

    const v29, 0x3eae147b    # 0.34f

    const v24, 0x3cf5c28f    # 0.03f

    const v25, 0x3e4ccccd    # 0.2f

    const v26, 0x3e4ccccd    # 0.2f

    const v27, 0x3eae147b    # 0.34f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3fdae148    # 1.71f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v29, -0x4151eb85    # -0.34f

    const v24, 0x3e4ccccd    # 0.2f

    const/16 v25, 0x0

    const v26, 0x3ebd70a4    # 0.37f

    const v27, -0x41e66666    # -0.15f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3e19999a    # 0.15f

    const v12, -0x407eb852    # -1.01f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, 0x3dcccccd    # 0.1f

    const v29, -0x42b33333    # -0.05f

    const v24, 0x3cf5c28f    # 0.03f

    const v25, -0x435c28f6    # -0.02f

    const v26, 0x3d8f5c29    # 0.07f

    const v27, -0x430a3d71    # -0.03f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v28, 0x3db851ec    # 0.09f

    const v29, -0x428a3d71    # -0.06f

    const v26, 0x3d75c28f    # 0.06f

    const v27, -0x42dc28f6    # -0.04f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f733333    # 0.95f

    const v12, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v28, 0x3e19999a    # 0.15f

    const v29, 0x3cf5c28f    # 0.03f

    const v24, 0x3d4ccccd    # 0.05f

    const v25, 0x3ca3d70a    # 0.02f

    const v26, 0x3dcccccd    # 0.1f

    const v27, 0x3cf5c28f    # 0.03f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v28, 0x3eb33333    # 0.35f

    const v29, -0x41b33333    # -0.2f

    const v24, 0x3e0f5c29    # 0.14f

    const/16 v25, 0x0

    const v26, 0x3e8a3d71    # 0.27f

    const v27, -0x4270a3d7    # -0.07f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f59999a    # 0.85f

    const v12, -0x40428f5c    # -1.48f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v28, 0x41ae7ae1    # 21.81f

    const v29, 0x414bd70a    # 12.74f

    const v24, 0x41b0147b    # 22.01f

    const v25, 0x415147ae    # 13.08f

    const v26, 0x41afc28f    # 21.97f

    const v27, 0x414dc28f    # 12.86f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v28, -0x40400000    # -1.5f

    const/high16 v29, -0x40400000    # -1.5f

    const v24, -0x40ab851f    # -0.83f

    const/16 v25, 0x0

    const/high16 v26, -0x40400000    # -1.5f

    const v27, -0x40d47ae1    # -0.67f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v28, 0x3fc00000    # 1.5f

    const/16 v24, 0x0

    const v25, -0x40ab851f    # -0.83f

    const v26, 0x3f2b851f    # 0.67f

    const/high16 v27, -0x40400000    # -1.5f

    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const v1, 0x3f2b851f    # 0.67f

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v12, v1, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v28, 0x41900000    # 18.0f

    const/high16 v29, 0x41580000    # 13.5f

    const/high16 v24, 0x419c0000    # 19.5f

    const v25, 0x414d47ae    # 12.83f

    const v26, 0x4196a3d7    # 18.83f

    const/high16 v27, 0x41580000    # 13.5f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/high16 v28, -0x40000000    # -2.0f

    const/high16 v29, -0x40000000    # -2.0f

    const/16 v24, 0x0

    const v25, -0x40733333    # -1.1f

    const v26, -0x4099999a    # -0.9f

    const/high16 v27, -0x40000000    # -2.0f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const/high16 v28, 0x40a00000    # 5.0f

    const/high16 v29, 0x40400000    # 3.0f

    const v24, 0x40bccccd    # 5.9f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x40a00000    # 5.0f

    const v27, 0x3ff33333    # 1.9f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/high16 v28, 0x40000000    # 2.0f

    const/high16 v29, 0x40000000    # 2.0f

    const/16 v24, 0x0

    const v25, 0x3f8ccccd    # 1.1f

    const v26, 0x3f666666    # 0.9f

    const/high16 v27, 0x40000000    # 2.0f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const/high16 v29, -0x40000000    # -2.0f

    const v24, 0x3f8ccccd    # 1.1f

    const/16 v25, 0x0

    const/high16 v26, 0x40000000    # 2.0f

    const v27, -0x4099999a    # -0.9f

    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v23 .. v29}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    .end local v23    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .restart local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    nop

    .line 168
    .end local v0    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v30    # "$i$a$-materialPath-YwgOQQI$default-AppSettingsAltKt$AppSettingsAlt$1$1":I
    nop

    .line 169
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 167
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 170
    nop

    .line 171
    .end local v7    # "$i$f$PathData":I
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
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

    .line 165
    const/16 v26, 0x3800

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 181
    nop

    .line 182
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

    .line 112
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

    .line 183
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 186
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v35

    .line 183
    .local v35, "pathFillType$iv":I
    const/4 v1, 0x0

    .line 192
    .local v1, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 193
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v37, v4

    check-cast v37, Landroidx/compose/ui/graphics/Brush;

    .line 195
    nop

    .line 197
    nop

    .line 198
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v42

    .line 199
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v43

    .line 200
    nop

    .line 192
    const/16 v39, 0x0

    .local v37, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v39, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v33, v0

    .local v33, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v41, 0x3f800000    # 1.0f

    .local v41, "strokeLineWidth$iv$iv":F
    .local v42, "strokeLineCap$iv$iv":I
    const/high16 v44, 0x3f800000    # 1.0f

    .line 201
    .local v43, "strokeLineJoin$iv$iv":I
    .local v44, "strokeLineMiter$iv$iv":F
    nop

    .line 202
    const-string v36, ""

    .line 201
    .local v36, "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 203
    .local v4, "$i$f$path-R_LF-3I":I
    nop

    .line 204
    const/4 v5, 0x0

    .line 205
    .local v5, "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v6, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 206
    .local v7, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 113
    .local v9, "$i$a$-materialPath-YwgOQQI$default-AppSettingsAltKt$AppSettingsAlt$1$2":I
    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v8, v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const/high16 v11, -0x3ee00000    # -10.0f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    nop

    .line 206
    .end local v8    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-AppSettingsAltKt$AppSettingsAlt$1$2":I
    nop

    .line 207
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v34

    .line 205
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 208
    nop

    .line 209
    .end local v5    # "$i$f$PathData":I
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
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

    .line 203
    const/16 v48, 0x3800

    const/16 v49, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-static/range {v33 .. v49}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 219
    nop

    .line 220
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

    .line 119
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v35    # "pathFillType$iv":I
    .end local v38    # "fillAlpha$iv":F
    .end local v40    # "strokeAlpha$iv":F
    const v16, 0x3e99999a    # 0.3f

    .restart local v16    # "fillAlpha$iv":F
    const v18, 0x3e99999a    # 0.3f

    .line 221
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v18    # "strokeAlpha$iv":F
    nop

    .line 224
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v13

    .line 221
    .restart local v13    # "pathFillType$iv":I
    const/4 v1, 0x0

    .line 230
    .restart local v1    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 231
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 233
    nop

    .line 235
    nop

    .line 236
    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 237
    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 238
    nop

    .line 230
    nop

    .restart local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v0

    .line 239
    .restart local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "strokeLineWidth$iv$iv":F
    .restart local v20    # "strokeLineCap$iv$iv":I
    .restart local v21    # "strokeLineJoin$iv$iv":I
    .restart local v22    # "strokeLineMiter$iv$iv":F
    nop

    .line 240
    const-string v14, ""

    .line 239
    .restart local v14    # "name$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 241
    .restart local v4    # "$i$f$path-R_LF-3I":I
    nop

    .line 242
    const/4 v5, 0x0

    .line 243
    .restart local v5    # "$i$f$PathData":I
    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v7, 0x0

    .line 244
    .restart local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v8, v6

    .local v8, "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 120
    .local v9, "$i$a$-materialPath-YwgOQQI$default-AppSettingsAltKt$AppSettingsAlt$1$3":I
    const/high16 v12, 0x41a00000    # 20.0f

    move-object/from16 v28, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v28, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {v8, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-virtual {v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    nop

    .line 244
    .end local v8    # "$this$_get_AppSettingsAlt__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-materialPath-YwgOQQI$default-AppSettingsAltKt$AppSettingsAlt$1$3":I
    nop

    .line 245
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 243
    .end local v6    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v7    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 246
    nop

    .line 247
    .end local v5    # "$i$f$PathData":I
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
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

    .line 241
    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 257
    nop

    .line 258
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

    .line 119
    .end local v1    # "$i$f$materialPath-YwgOQQI":I
    .end local v13    # "pathFillType$iv":I
    .end local v16    # "fillAlpha$iv":F
    .end local v18    # "strokeAlpha$iv":F
    .end local v28    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 143
    .end local v3    # "$i$a$-materialIcon$default-AppSettingsAltKt$AppSettingsAlt$1":I
    .end local v32    # "$this$_get_AppSettingsAlt__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v31    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/twotone/AppSettingsAltKt;->_appSettingsAlt:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 127
    sget-object v0, Landroidx/compose/material/icons/twotone/AppSettingsAltKt;->_appSettingsAlt:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
