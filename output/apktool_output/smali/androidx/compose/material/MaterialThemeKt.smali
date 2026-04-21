.class public final Landroidx/compose/material/MaterialThemeKt;
.super Ljava/lang/Object;
.source "MaterialTheme.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTheme.kt\nandroidx/compose/material/MaterialThemeKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n1223#2,6:122\n1#3:128\n*S KotlinDebug\n*F\n+ 1 MaterialTheme.kt\nandroidx/compose/material/MaterialThemeKt\n*L\n61#1:122,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a>\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0011\u0010\u0008\u001a\r\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\nH\u0007\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "MaterialTheme",
        "",
        "colors",
        "Landroidx/compose/material/Colors;",
        "typography",
        "Landroidx/compose/material/Typography;",
        "shapes",
        "Landroidx/compose/material/Shapes;",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "material_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 43
    .param p0, "colors"    # Landroidx/compose/material/Colors;
    .param p1, "typography"    # Landroidx/compose/material/Typography;
    .param p2, "shapes"    # Landroidx/compose/material/Shapes;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/Colors;",
            "Landroidx/compose/material/Typography;",
            "Landroidx/compose/material/Shapes;",
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

    .line 60
    move-object/from16 v4, p3

    move/from16 v5, p5

    const v0, -0x3521f1f7    # -7276292.5f

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(MaterialTheme)P(!1,3,2)55@2741L6,56@2792L10,57@2839L6,*60@2914L184,65@3161L32,66@3220L45,70@3426L4,77@3778L113,68@3305L586:MaterialTheme.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v5, 0x6

    const/4 v3, 0x4

    const/4 v13, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, p6, 0x1

    if-nez v2, :cond_0

    move-object/from16 v2, p0

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    :cond_1
    move v6, v13

    :goto_0
    or-int/2addr v1, v6

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    :goto_1
    and-int/lit8 v6, v5, 0x30

    if-nez v6, :cond_5

    and-int/lit8 v6, p6, 0x2

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v6, p1

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v1, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_8

    and-int/lit8 v7, p6, 0x4

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v7, p2

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit8 v8, p6, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v5, 0xc00

    if-nez v8, :cond_b

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    :cond_b
    :goto_7
    and-int/lit16 v8, v1, 0x493

    const/16 v9, 0x492

    if-ne v8, v9, :cond_d

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_8

    .line 83
    :cond_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move-object v1, v2

    move-object v2, v6

    move-object v3, v7

    goto/16 :goto_c

    .line 60
    :cond_d
    :goto_8
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v8, v5, 0x1

    const/4 v14, 0x6

    if-eqz v8, :cond_12

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    .line 58
    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v8, p6, 0x1

    if-eqz v8, :cond_f

    and-int/lit8 v1, v1, -0xf

    :cond_f
    and-int/lit8 v8, p6, 0x2

    if-eqz v8, :cond_10

    and-int/lit8 v1, v1, -0x71

    :cond_10
    and-int/lit8 v8, p6, 0x4

    if-eqz v8, :cond_11

    and-int/lit16 v1, v1, -0x381

    move-object v15, v6

    move v6, v1

    move-object v1, v15

    move-object v15, v2

    move-object v2, v7

    goto :goto_a

    :cond_11
    move-object v15, v6

    move v6, v1

    move-object v1, v15

    move-object v15, v2

    move-object v2, v7

    goto :goto_a

    .line 60
    :cond_12
    :goto_9
    and-int/lit8 v8, p6, 0x1

    if-eqz v8, :cond_13

    .line 56
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v8, v10, v14}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    .end local p0    # "colors":Landroidx/compose/material/Colors;
    .local v2, "colors":Landroidx/compose/material/Colors;
    and-int/lit8 v1, v1, -0xf

    :cond_13
    and-int/lit8 v8, p6, 0x2

    if-eqz v8, :cond_14

    .line 57
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v8, v10, v14}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v6

    .end local p1    # "typography":Landroidx/compose/material/Typography;
    .local v6, "typography":Landroidx/compose/material/Typography;
    and-int/lit8 v1, v1, -0x71

    :cond_14
    and-int/lit8 v8, p6, 0x4

    if-eqz v8, :cond_15

    .line 58
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v8, v10, v14}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v7

    .end local p2    # "shapes":Landroidx/compose/material/Shapes;
    .local v7, "shapes":Landroidx/compose/material/Shapes;
    and-int/lit16 v1, v1, -0x381

    move-object v15, v6

    move v6, v1

    move-object v1, v15

    move-object v15, v2

    move-object v2, v7

    goto :goto_a

    .line 57
    .end local v7    # "shapes":Landroidx/compose/material/Shapes;
    .restart local p2    # "shapes":Landroidx/compose/material/Shapes;
    :cond_15
    move-object v15, v6

    move v6, v1

    move-object v1, v15

    move-object v15, v2

    move-object v2, v7

    .line 58
    .end local p2    # "shapes":Landroidx/compose/material/Shapes;
    .local v1, "typography":Landroidx/compose/material/Typography;
    .local v2, "shapes":Landroidx/compose/material/Shapes;
    .local v6, "$dirty":I
    .local v15, "colors":Landroidx/compose/material/Colors;
    :goto_a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 60
    const/4 v7, -0x1

    const-string/jumbo v8, "androidx.compose.material.MaterialTheme (MaterialTheme.kt:59)"

    invoke-static {v0, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    nop

    .line 61
    const v0, 0x22ef48b4

    const-string v7, "CC(remember):MaterialTheme.kt#9igjgp"

    invoke-static {v10, v0, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v7, v10

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 122
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 123
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v9, v12, :cond_17

    .line 124
    const/4 v12, 0x0

    .line 64
    .local v12, "$i$a$-cache-MaterialThemeKt$MaterialTheme$rememberedColors$1":I
    const/16 v41, 0x1fff

    const/16 v42, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    invoke-static/range {v15 .. v42}, Landroidx/compose/material/Colors;->copy-pvPzIIM$default(Landroidx/compose/material/Colors;JJJJJJJJJJJJZILjava/lang/Object;)Landroidx/compose/material/Colors;

    move-result-object v12

    .line 124
    .end local v12    # "$i$a$-cache-MaterialThemeKt$MaterialTheme$rememberedColors$1":I
    nop

    .line 125
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 126
    nop

    .end local v12    # "value$iv":Ljava/lang/Object;
    goto :goto_b

    .line 127
    :cond_17
    move-object v12, v9

    .line 123
    :goto_b
    nop

    .line 122
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 61
    .end local v0    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v12, Landroidx/compose/material/Colors;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 65
    move-object v0, v12

    .line 128
    .local v0, "$this$MaterialTheme_u24lambda_u241":Landroidx/compose/material/Colors;
    const/4 v7, 0x0

    .line 65
    .local v7, "$i$a$-apply-MaterialThemeKt$MaterialTheme$rememberedColors$2":I
    invoke-static {v0, v15}, Landroidx/compose/material/ColorsKt;->updateColorsFrom(Landroidx/compose/material/Colors;Landroidx/compose/material/Colors;)V

    .line 61
    .end local v0    # "$this$MaterialTheme_u24lambda_u241":Landroidx/compose/material/Colors;
    .end local v7    # "$i$a$-apply-MaterialThemeKt$MaterialTheme$rememberedColors$2":I
    nop

    .line 66
    .local v0, "rememberedColors":Landroidx/compose/material/Colors;
    move v7, v6

    .end local v6    # "$dirty":I
    .local v7, "$dirty":I
    const/4 v6, 0x0

    move v8, v7

    .end local v7    # "$dirty":I
    .local v8, "$dirty":I
    const/4 v7, 0x0

    move v11, v8

    .end local v8    # "$dirty":I
    .local v11, "$dirty":I
    const-wide/16 v8, 0x0

    move v12, v11

    .end local v11    # "$dirty":I
    .local v12, "$dirty":I
    const/4 v11, 0x0

    move/from16 v16, v12

    .end local v12    # "$dirty":I
    .local v16, "$dirty":I
    const/4 v12, 0x7

    invoke-static/range {v6 .. v12}, Landroidx/compose/material/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v6

    .line 67
    .local v6, "rippleIndication":Landroidx/compose/foundation/Indication;
    const/4 v7, 0x0

    invoke-static {v0, v10, v7}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->rememberTextSelectionColors(Landroidx/compose/material/Colors;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object v8

    .line 70
    .local v8, "selectionColors":Landroidx/compose/foundation/text/selection/TextSelectionColors;
    const/4 v9, 0x7

    new-array v9, v9, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ColorsKt;->getLocalColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    aput-object v11, v9, v7

    .line 71
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    sget-object v11, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v11, v10, v14}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v9, v11

    .line 70
    nop

    .line 72
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->getLocalIndication()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    aput-object v7, v9, v13

    .line 70
    nop

    .line 74
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->getLocalRippleTheme()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    sget-object v12, Landroidx/compose/material/CompatRippleTheme;->INSTANCE:Landroidx/compose/material/CompatRippleTheme;

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    const/4 v12, 0x3

    aput-object v7, v9, v12

    .line 70
    nop

    .line 75
    invoke-static {}, Landroidx/compose/material/ShapesKt;->getLocalShapes()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    aput-object v7, v9, v3

    .line 70
    nop

    .line 76
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    const/4 v7, 0x5

    aput-object v3, v9, v7

    .line 70
    nop

    .line 77
    invoke-static {}, Landroidx/compose/material/TypographyKt;->getLocalTypography()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    aput-object v3, v9, v14

    .line 70
    nop

    .line 78
    new-instance v3, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;

    invoke-direct {v3, v1, v4}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;-><init>(Landroidx/compose/material/Typography;Lkotlin/jvm/functions/Function2;)V

    const/16 v7, 0x36

    const v12, -0x67b7dd37

    invoke-static {v12, v11, v3, v10, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    sget v7, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    or-int/lit8 v7, v7, 0x30

    .line 69
    invoke-static {v9, v3, v10, v7}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 83
    .end local v0    # "rememberedColors":Landroidx/compose/material/Colors;
    .end local v6    # "rippleIndication":Landroidx/compose/foundation/Indication;
    .end local v8    # "selectionColors":Landroidx/compose/foundation/text/selection/TextSelectionColors;
    :cond_18
    move-object v3, v2

    move-object v2, v1

    move-object v1, v15

    .end local v15    # "colors":Landroidx/compose/material/Colors;
    .local v1, "colors":Landroidx/compose/material/Colors;
    .local v2, "typography":Landroidx/compose/material/Typography;
    .local v3, "shapes":Landroidx/compose/material/Shapes;
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_19

    new-instance v0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;-><init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_19
    return-void
.end method
