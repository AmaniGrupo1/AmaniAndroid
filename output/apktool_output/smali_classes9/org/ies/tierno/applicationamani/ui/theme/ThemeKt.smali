.class public final Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;
.super Ljava/lang/Object;
.source "Theme.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Theme.kt\norg/ies/tierno/applicationamani/ui/theme/ThemeKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,150:1\n122#2:151\n122#2:152\n122#2:153\n*S KotlinDebug\n*F\n+ 1 Theme.kt\norg/ies/tierno/applicationamani/ui/theme/ThemeKt\n*L\n105#1:151\n106#1:152\n107#1:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a*\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u000b0\u000f\u00a2\u0006\u0002\u0008\u0010H\u0007\u00a2\u0006\u0002\u0010\u0011\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "LightColorScheme",
        "Landroidx/compose/material3/ColorScheme;",
        "DarkColorScheme",
        "LocalAmaniColors",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;",
        "getLocalAmaniColors",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "AmaniShapes",
        "Landroidx/compose/material3/Shapes;",
        "ApplicationAmaniTheme",
        "",
        "darkTheme",
        "",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
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
.field private static final AmaniShapes:Landroidx/compose/material3/Shapes;

.field private static final DarkColorScheme:Landroidx/compose/material3/ColorScheme;

.field private static final LightColorScheme:Landroidx/compose/material3/ColorScheme;

.field private static final LocalAmaniColors:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 76

    .line 32
    nop

    .line 33
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniPurple()J

    move-result-wide v1

    .line 34
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniBlack()J

    move-result-wide v3

    .line 35
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniPurple()J

    move-result-wide v5

    .line 36
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniBlack()J

    move-result-wide v7

    .line 32
    nop

    .line 37
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniPurpleDark()J

    move-result-wide v11

    .line 38
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniWhite()J

    move-result-wide v13

    .line 32
    nop

    .line 39
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniSurface()J

    move-result-wide v27

    .line 40
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniOnSurface()J

    move-result-wide v29

    .line 41
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniSurface()J

    move-result-wide v31

    .line 42
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniOnSurface()J

    move-result-wide v33

    .line 43
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniWhite()J

    move-result-wide v35

    .line 32
    nop

    .line 44
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniBlack()J

    move-result-wide v53

    .line 32
    const/16 v74, 0xf

    const/16 v75, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const-wide/16 v71, 0x0

    const v73, -0x403e070

    invoke-static/range {v1 .. v75}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->LightColorScheme:Landroidx/compose/material3/ColorScheme;

    .line 53
    nop

    .line 54
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniPurpleDark()J

    move-result-wide v1

    .line 55
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniWhite()J

    move-result-wide v3

    .line 56
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniPurpleDark()J

    move-result-wide v5

    .line 57
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniWhite()J

    move-result-wide v7

    .line 53
    nop

    .line 58
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniPurple()J

    move-result-wide v11

    .line 59
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniBlack()J

    move-result-wide v13

    .line 53
    nop

    .line 60
    const-wide v9, 0xff1c1b1fL

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v27

    .line 61
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniWhite()J

    move-result-wide v29

    .line 62
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v31

    .line 63
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniWhite()J

    move-result-wide v33

    .line 64
    const-wide v9, 0xff49454fL

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v35

    .line 53
    nop

    .line 65
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ColorKt;->getAmaniWhite()J

    move-result-wide v53

    .line 53
    const-wide/16 v9, 0x0

    invoke-static/range {v1 .. v75}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    .line 102
    new-instance v0, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->LocalAmaniColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 104
    new-instance v1, Landroidx/compose/material3/Shapes;

    .line 105
    const/16 v0, 0xc

    .local v0, "$this$dp\\1":I
    const/4 v2, 0x0

    .line 151
    .local v2, "$i$f$getDp\\1\\105":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 105
    .end local v0    # "$this$dp\\1":I
    .end local v2    # "$i$f$getDp\\1\\105":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 106
    const/16 v0, 0x10

    .local v0, "$this$dp\\2":I
    const/4 v2, 0x0

    .line 152
    .local v2, "$i$f$getDp\\2\\106":I
    int-to-float v4, v0

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 106
    .end local v0    # "$this$dp\\2":I
    .end local v2    # "$i$f$getDp\\2\\106":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 107
    const/16 v0, 0x18

    .local v0, "$this$dp\\3":I
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$f$getDp\\3\\107":I
    int-to-float v5, v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 107
    .end local v0    # "$this$dp\\3":I
    .end local v2    # "$i$f$getDp\\3\\107":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 104
    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/Shapes;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->AmaniShapes:Landroidx/compose/material3/Shapes;

    return-void
.end method

.method public static final ApplicationAmaniTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 35
    .param p0, "darkTheme"    # Z
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "content"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const v3, -0x4c7dff60

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(ApplicationAmaniTheme)N(darkTheme,content)140@5103L180,138@5025L258:Theme.kt#58g7qr"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v1, 0x6

    if-nez v6, :cond_2

    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_0

    move/from16 v6, p0

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    move/from16 v6, p0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v5, v7

    goto :goto_1

    :cond_2
    move/from16 v6, p0

    :goto_1
    and-int/lit8 v7, v1, 0x30

    if-nez v7, :cond_4

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    :cond_4
    and-int/lit8 v7, v5, 0x13

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_5

    move v7, v10

    goto :goto_3

    :cond_5
    move v7, v9

    :goto_3
    and-int/lit8 v8, v5, 0x1

    invoke-interface {v4, v7, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v7, "124@4573L21"

    invoke-static {v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 123
    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_8

    and-int/lit8 v5, v5, -0xf

    goto :goto_5

    .line 127
    :cond_7
    :goto_4
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_8

    .line 125
    invoke-static {v4, v9}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    move-result v6

    .end local p0    # "darkTheme":Z
    .local v6, "darkTheme":Z
    and-int/lit8 v5, v5, -0xf

    .line 123
    :cond_8
    :goto_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, -0x1

    const-string v8, "org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme (Theme.kt:126)"

    invoke-static {v3, v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 128
    :cond_9
    if-eqz v6, :cond_a

    sget-object v3, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    goto :goto_6

    :cond_a
    sget-object v3, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->LightColorScheme:Landroidx/compose/material3/ColorScheme;

    .line 129
    .local v3, "colorScheme":Landroidx/compose/material3/ColorScheme;
    :goto_6
    if-eqz v6, :cond_b

    .line 130
    new-instance v11, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    .line 131
    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v12

    .line 132
    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v14

    .line 133
    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide v16

    .line 130
    const/16 v32, 0x3f8

    const/16 v33, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    invoke-direct/range {v11 .. v33}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;-><init>(JJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    .line 136
    :cond_b
    new-instance v12, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    const/16 v33, 0x3ff

    const/16 v34, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    invoke-direct/range {v12 .. v34}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;-><init>(JJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    .line 129
    :goto_7
    nop

    .line 140
    .local v11, "extraColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    sget-object v7, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->LocalAmaniColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    .line 141
    new-instance v8, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt$$ExternalSyntheticLambda1;

    invoke-direct {v8, v3, v0}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/ColorScheme;Lkotlin/jvm/functions/Function2;)V

    const/16 v9, 0x36

    const v12, 0x2eb5560

    invoke-static {v12, v10, v8, v4, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    check-cast v8, Lkotlin/jvm/functions/Function2;

    sget v9, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    or-int/lit8 v9, v9, 0x30

    .line 139
    invoke-static {v7, v8, v4, v9}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v3    # "colorScheme":Landroidx/compose/material3/ColorScheme;
    .end local v11    # "extraColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    goto :goto_8

    .line 123
    .end local v6    # "darkTheme":Z
    .restart local p0    # "darkTheme":Z
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 149
    .end local p0    # "darkTheme":Z
    .restart local v6    # "darkTheme":Z
    :cond_d
    :goto_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v7, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt$$ExternalSyntheticLambda2;

    invoke-direct {v7, v6, v0, v1, v2}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt$$ExternalSyntheticLambda2;-><init>(ZLkotlin/jvm/functions/Function2;II)V

    invoke-interface {v3, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void
.end method

.method static final ApplicationAmaniTheme$lambda$1(Landroidx/compose/material3/ColorScheme;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10
    .param p0, "$colorScheme"    # Landroidx/compose/material3/ColorScheme;
    .param p1, "$content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C141@5113L164:Theme.kt#58g7qr"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme.<anonymous> (Theme.kt:141)"

    const v2, 0x2eb5560

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 144
    :cond_1
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/TypeKt;->getTypography()Landroidx/compose/material3/Typography;

    move-result-object v5

    .line 145
    sget-object v4, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->AmaniShapes:Landroidx/compose/material3/Shapes;

    .line 143
    nop

    .line 145
    nop

    .line 144
    nop

    .line 146
    nop

    .line 142
    const/16 v8, 0x1b0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .end local p0    # "$colorScheme":Landroidx/compose/material3/ColorScheme;
    .end local p1    # "$content":Lkotlin/jvm/functions/Function2;
    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$colorScheme":Landroidx/compose/material3/ColorScheme;
    .local v6, "$content":Lkotlin/jvm/functions/Function2;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 141
    .end local v3    # "$colorScheme":Landroidx/compose/material3/ColorScheme;
    .end local v6    # "$content":Lkotlin/jvm/functions/Function2;
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "$colorScheme":Landroidx/compose/material3/ColorScheme;
    .restart local p1    # "$content":Lkotlin/jvm/functions/Function2;
    .restart local p2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .end local p0    # "$colorScheme":Landroidx/compose/material3/ColorScheme;
    .end local p1    # "$content":Lkotlin/jvm/functions/Function2;
    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$colorScheme":Landroidx/compose/material3/ColorScheme;
    .restart local v6    # "$content":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 148
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final ApplicationAmaniTheme$lambda$2(ZLkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->ApplicationAmaniTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final LocalAmaniColors$lambda$0()Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .locals 23

    .line 102
    new-instance v0, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    const/16 v21, 0x3ff

    const/16 v22, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    invoke-direct/range {v0 .. v22}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;-><init>(JJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final getLocalAmaniColors()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->LocalAmaniColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
