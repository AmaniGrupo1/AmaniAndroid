.class public final Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;
.super Ljava/lang/Object;
.source "Type.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0011\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0003\"\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Roboto",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "getRoboto",
        "()Landroidx/compose/ui/text/font/FontFamily;",
        "Nunito",
        "getNunito",
        "BarlowCondensed",
        "getBarlowCondensed",
        "Typography",
        "Landroidx/compose/material3/Typography;",
        "getTypography",
        "()Landroidx/compose/material3/Typography;",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BarlowCondensed:Landroidx/compose/ui/text/font/FontFamily;

.field private static final Nunito:Landroidx/compose/ui/text/font/FontFamily;

.field private static final Roboto:Landroidx/compose/ui/text/font/FontFamily;

.field private static final Typography:Landroidx/compose/material3/Typography;


# direct methods
.method static constructor <clinit>()V
    .locals 72

    .line 35
    nop

    .line 36
    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/compose/ui/text/font/Font;

    sget v2, Lorg/ies/tierno/applicationamani/R$font;->roboto_variablefont_wdth_wght:I

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 35
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontFamilyKt;->FontFamily([Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v1

    sput-object v1, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Roboto:Landroidx/compose/ui/text/font/FontFamily;

    .line 40
    nop

    .line 41
    new-array v1, v0, [Landroidx/compose/ui/text/font/Font;

    sget v4, Lorg/ies/tierno/applicationamani/R$font;->nunito_variablefont_wght:I

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v2

    aput-object v2, v1, v3

    .line 40
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontFamilyKt;->FontFamily([Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v1

    sput-object v1, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Nunito:Landroidx/compose/ui/text/font/FontFamily;

    .line 45
    nop

    .line 46
    new-array v0, v0, [Landroidx/compose/ui/text/font/Font;

    sget v4, Lorg/ies/tierno/applicationamani/R$font;->barlow_condensed_black:I

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v1

    aput-object v1, v0, v3

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyKt;->FontFamily([Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->BarlowCondensed:Landroidx/compose/ui/text/font/FontFamily;

    .line 56
    new-instance v1, Landroidx/compose/material3/Typography;

    .line 60
    sget-object v10, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Nunito:Landroidx/compose/ui/text/font/FontFamily;

    .line 61
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 62
    const/16 v0, 0x32

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    .line 63
    const/16 v0, 0x38

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v24

    .line 59
    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    .line 62
    nop

    .line 61
    nop

    .line 59
    nop

    .line 60
    nop

    .line 59
    nop

    .line 63
    nop

    .line 59
    const v32, 0xfdffd9

    const/16 v33, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v2 .. v33}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    nop

    .line 68
    sget-object v11, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->BarlowCondensed:Landroidx/compose/ui/text/font/FontFamily;

    .line 69
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v8

    .line 70
    const/16 v0, 0x1e

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v6

    .line 71
    const/16 v0, 0x24

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v25

    .line 67
    new-instance v3, Landroidx/compose/ui/text/TextStyle;

    .line 70
    nop

    .line 69
    nop

    .line 67
    nop

    .line 68
    nop

    .line 67
    nop

    .line 71
    nop

    .line 67
    const v33, 0xfdffd9

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    sget-object v12, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Roboto:Landroidx/compose/ui/text/font/FontFamily;

    .line 77
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v9

    .line 78
    const/16 v0, 0x19

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    .line 79
    const/16 v36, 0x20

    invoke-static/range {v36 .. v36}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v26

    .line 75
    new-instance v4, Landroidx/compose/ui/text/TextStyle;

    .line 78
    nop

    .line 77
    nop

    .line 75
    nop

    .line 76
    nop

    .line 75
    nop

    .line 79
    nop

    .line 75
    const v34, 0xfdffd9

    const/16 v35, 0x0

    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v4 .. v35}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    sget-object v45, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Nunito:Landroidx/compose/ui/text/font/FontFamily;

    .line 85
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v42

    .line 86
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v40

    .line 87
    invoke-static/range {v36 .. v36}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v59

    .line 83
    new-instance v37, Landroidx/compose/ui/text/TextStyle;

    .line 86
    nop

    .line 85
    nop

    .line 83
    nop

    .line 84
    nop

    .line 83
    nop

    .line 87
    nop

    .line 83
    const v67, 0xfdffd9

    const/16 v68, 0x0

    const-wide/16 v38, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-direct/range {v37 .. v68}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    sget-object v13, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Roboto:Landroidx/compose/ui/text/font/FontFamily;

    .line 93
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v10

    .line 94
    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v8

    .line 95
    const/16 v5, 0x1c

    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v27

    .line 91
    new-instance v5, Landroidx/compose/ui/text/TextStyle;

    .line 94
    nop

    .line 93
    nop

    .line 91
    nop

    .line 92
    nop

    .line 91
    nop

    .line 95
    nop

    .line 91
    const v35, 0xfdffd9

    const/16 v36, 0x0

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v5 .. v36}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    nop

    .line 100
    sget-object v46, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Roboto:Landroidx/compose/ui/text/font/FontFamily;

    .line 101
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v43

    .line 102
    const/16 v6, 0x10

    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v41

    .line 103
    const/16 v7, 0x1a

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v60

    .line 104
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v48

    .line 99
    new-instance v38, Landroidx/compose/ui/text/TextStyle;

    .line 102
    nop

    .line 101
    nop

    .line 99
    nop

    .line 100
    nop

    .line 99
    nop

    .line 104
    nop

    .line 99
    nop

    .line 103
    nop

    .line 99
    const v68, 0xfdff59

    const/16 v69, 0x0

    const-wide/16 v39, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    invoke-direct/range {v38 .. v69}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    sget-object v47, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Roboto:Landroidx/compose/ui/text/font/FontFamily;

    .line 110
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v44

    .line 111
    const/16 v7, 0xe

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v42

    .line 112
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v61

    .line 113
    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v49

    .line 108
    new-instance v39, Landroidx/compose/ui/text/TextStyle;

    .line 111
    nop

    .line 110
    nop

    .line 108
    nop

    .line 109
    nop

    .line 108
    nop

    .line 113
    nop

    .line 108
    nop

    .line 112
    nop

    .line 108
    const v69, 0xfdff59

    const/16 v70, 0x0

    const-wide/16 v40, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-direct/range {v39 .. v70}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    nop

    .line 118
    sget-object v48, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Roboto:Landroidx/compose/ui/text/font/FontFamily;

    .line 119
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v45

    .line 120
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v43

    .line 121
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v62

    .line 117
    new-instance v40, Landroidx/compose/ui/text/TextStyle;

    .line 120
    nop

    .line 119
    nop

    .line 117
    nop

    .line 118
    nop

    .line 117
    nop

    .line 121
    nop

    .line 117
    const v70, 0xfdffd9

    const/16 v71, 0x0

    const-wide/16 v41, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    invoke-direct/range {v40 .. v71}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    const/16 v17, 0x690e

    move-object v6, v3

    const/4 v3, 0x0

    move-object v7, v4

    const/4 v4, 0x0

    move-object v9, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, v37

    move-object/from16 v11, v38

    move-object/from16 v12, v39

    move-object/from16 v14, v40

    invoke-direct/range {v1 .. v18}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Typography:Landroidx/compose/material3/Typography;

    return-void
.end method

.method public static final getBarlowCondensed()Landroidx/compose/ui/text/font/FontFamily;
    .locals 1

    .line 45
    sget-object v0, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->BarlowCondensed:Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

.method public static final getNunito()Landroidx/compose/ui/text/font/FontFamily;
    .locals 1

    .line 40
    sget-object v0, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Nunito:Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

.method public static final getRoboto()Landroidx/compose/ui/text/font/FontFamily;
    .locals 1

    .line 35
    sget-object v0, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Roboto:Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

.method public static final getTypography()Landroidx/compose/material3/Typography;
    .locals 1

    .line 56
    sget-object v0, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->Typography:Landroidx/compose/material3/Typography;

    return-object v0
.end method
