.class public final Landroidx/compose/foundation/text/TextFieldCursorKt;
.super Ljava/lang/Object;
.source "TextFieldCursor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldCursor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldCursor.kt\nandroidx/compose/foundation/text/TextFieldCursorKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 5 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 6 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 7 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 8 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,103:1\n75#2:104\n75#2:112\n1128#3,6:105\n1128#3,6:113\n1128#3,6:119\n640#4:111\n57#5:125\n60#6:126\n53#6,3:129\n53#6,3:133\n22#7:127\n30#8:128\n30#8:132\n*S KotlinDebug\n*F\n+ 1 TextFieldCursor.kt\nandroidx/compose/foundation/text/TextFieldCursorKt\n*L\n47#1:104\n55#1:112\n48#1:105,6\n59#1:113,6\n62#1:119,6\n50#1:111\n77#1:125\n77#1:126\n89#1:129,3\n90#1:133,3\n77#1:127\n89#1:128\n90#1:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "cursor",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/text/LegacyTextFieldState;",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "offsetMapping",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "enabled",
        "",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ZohCaPWDcHAZRHGNQz1pwIeCw1A(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/text/TextFieldCursorKt;->cursor$lambda$0$2$0(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final cursor(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/Brush;Z)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0, "$this$cursor"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/text/LegacyTextFieldState;
    .param p2, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;
    .param p4, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p5, "enabled"    # Z

    .line 45
    if-eqz p5, :cond_0

    .line 46
    new-instance v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static final cursor$lambda$0(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 17
    .param p0, "$cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p1, "$state"    # Landroidx/compose/foundation/text/LegacyTextFieldState;
    .param p2, "$value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "$offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;
    .param p4, "$this$composed"    # Landroidx/compose/ui/Modifier;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    const v0, -0x5097aed    # -6.4000205E35f

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "C46@1735L7,47@1777L63,54@2290L7:TextFieldCursor.kt#423gt5"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text.cursor.<anonymous> (TextFieldCursor.kt:46)"

    move/from16 v7, p6

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v7, p6

    .line 47
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalCursorBlinkEnabled()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    move-object/from16 v2, p5

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 104
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v8, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v2, v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 47
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$getCurrent":I
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 48
    .local v9, "animateCursor":Z
    const v0, 0x17699912

    const-string v1, "CC(remember):TextFieldCursor.kt#9igjgp"

    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    .local v0, "invalid$iv":Z
    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 105
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 106
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_2

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    goto :goto_2

    .line 107
    :cond_2
    :goto_1
    const/4 v12, 0x0

    .line 48
    .local v12, "$i$a$-cache-TextFieldCursorKt$cursor$1$cursorAnimation$1":I
    new-instance v13, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    invoke-direct {v13, v9}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;-><init>(Z)V

    .line 107
    .end local v12    # "$i$a$-cache-TextFieldCursorKt$cursor$1$cursorAnimation$1":I
    nop

    .line 108
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 109
    move-object v10, v13

    .line 105
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v13    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 48
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    move-object v0, v10

    check-cast v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .local v0, "cursorAnimation":Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 50
    instance-of v2, v5, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    move-object v2, v5

    check-cast v2, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide v11

    .local v11, "$v$c$androidx-compose-ui-graphics-Color$-$this$isUnspecified$0$iv":J
    const/4 v2, 0x0

    .line 111
    .local v2, "$i$f$isUnspecified-8_81llA":I
    const-wide/16 v13, 0x10

    cmp-long v13, v11, v13

    if-nez v13, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 50
    .end local v2    # "$i$f$isUnspecified-8_81llA":I
    .end local v11    # "$v$c$androidx-compose-ui-graphics-Color$-$this$isUnspecified$0$iv":J
    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_4
    move v11, v3

    .line 55
    .local v11, "isBrushSpecified":Z
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalWindowInfo()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    move-object/from16 v12, p5

    .local v12, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 112
    .local v13, "$i$f$getCurrent":I
    invoke-static {v12, v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v12    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$getCurrent":I
    check-cast v4, Landroidx/compose/ui/platform/WindowInfo;

    .line 55
    invoke-interface {v4}, Landroidx/compose/ui/platform/WindowInfo;->isWindowFocused()Z

    move-result v8

    .line 56
    .local v8, "isWindowFocused":Z
    nop

    .line 57
    if-eqz v8, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v11, :cond_a

    .line 58
    const v2, -0x2a2b68da

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "58@2517L81,58@2462L136,61@2631L1888"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    const v4, 0x1769f5a4

    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv":Z
    move-object/from16 v12, p5

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 113
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 114
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_7

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v14, v10, :cond_6

    goto :goto_5

    .line 118
    :cond_6
    move/from16 v16, v4

    goto :goto_6

    .line 115
    :cond_7
    :goto_5
    const/4 v10, 0x0

    .line 59
    .local v10, "$i$a$-cache-TextFieldCursorKt$cursor$1$1":I
    move/from16 v16, v4

    .end local v4    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v4, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1$1;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1$1;-><init>(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 115
    .end local v10    # "$i$a$-cache-TextFieldCursorKt$cursor$1$1":I
    nop

    .line 116
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    move-object v14, v4

    .line 113
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_6
    nop

    .line 59
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v6, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 62
    const v2, 0x176a0af3

    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, p3

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    move-object/from16 v3, p2

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    move-object/from16 v4, p1

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v7, v1

    .local v7, "invalid$iv":Z
    move-object/from16 v10, p5

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 119
    .local v12, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 120
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_9

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v13, v1, :cond_8

    goto :goto_7

    .line 124
    :cond_8
    move-object v1, v0

    goto :goto_8

    .line 121
    :cond_9
    :goto_7
    const/4 v15, 0x0

    .line 62
    .local v15, "$i$a$-cache-TextFieldCursorKt$cursor$1$2":I
    move-object v1, v0

    .end local v0    # "cursorAnimation":Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    .local v1, "cursorAnimation":Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    new-instance v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;)V

    .line 121
    .end local v15    # "$i$a$-cache-TextFieldCursorKt$cursor$1$2":I
    nop

    .line 122
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 123
    move-object v13, v0

    .line 119
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_8
    nop

    .line 62
    .end local v7    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object/from16 v0, p4

    invoke-static {v0, v13}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 58
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_9

    .line 57
    .end local v1    # "cursorAnimation":Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    .local v0, "cursorAnimation":Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    :cond_a
    move-object v1, v0

    move-object/from16 v0, p4

    .line 96
    .end local v0    # "cursorAnimation":Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    .restart local v1    # "cursorAnimation":Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    const v2, -0x2a0caad9

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 97
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 56
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v2
.end method

.method private static final cursor$lambda$0$2$0(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;
    .locals 24
    .param p0, "$cursorAnimation"    # Landroidx/compose/foundation/text/input/internal/CursorAnimationState;
    .param p1, "$offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;
    .param p2, "$value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "$state"    # Landroidx/compose/foundation/text/LegacyTextFieldState;
    .param p4, "$cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p5, "$this$drawWithContent"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 63
    move-object/from16 v0, p5

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->getCursorAlpha()F

    move-result v10

    .line 65
    .local v10, "cursorAlphaValue":F
    const/4 v1, 0x0

    cmpg-float v2, v10, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    move-object/from16 v15, p1

    invoke-interface {v15, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v2

    .line 66
    nop

    .line 69
    .local v2, "transformedOffset":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    if-nez v4, :cond_2

    .line 70
    :cond_1
    new-instance v4, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v4, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 69
    :cond_2
    nop

    .line 68
    move-object/from16 v16, v4

    .line 71
    .local v16, "cursorRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldCursor_androidKt;->getDefaultCursorThickness()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v7

    .line 73
    .local v7, "cursorWidth":F
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    const/4 v4, 0x2

    int-to-float v5, v4

    div-float v6, v7, v5

    add-float/2addr v1, v6

    .line 77
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    .local v8, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v6, 0x0

    .line 125
    .local v6, "$i$f$getWidth-impl":I
    move-wide v11, v8

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 126
    .local v13, "$i$f$unpackFloat1":I
    const/16 v14, 0x20

    move/from16 v17, v4

    move/from16 v18, v5

    shr-long v4, v11, v14

    long-to-int v4, v4

    .local v4, "bits$iv$iv$iv":I
    const/4 v5, 0x0

    .line 127
    .local v5, "$i$f$floatFromBits":I
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 126
    .end local v4    # "bits$iv$iv$iv":I
    .end local v5    # "$i$f$floatFromBits":I
    nop

    .line 125
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat1":I
    nop

    .line 77
    .end local v6    # "$i$f$getWidth-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    div-float v5, v7, v18

    sub-float/2addr v4, v5

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v1

    .line 78
    div-float v4, v7, v18

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 79
    nop

    .local v1, "it":F
    const/4 v4, 0x0

    .line 82
    .local v4, "$i$a$-let-TextFieldCursorKt$cursor$1$2$1$cursorX$1":I
    float-to-int v5, v7

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_3

    .line 83
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    goto :goto_1

    .line 84
    :cond_3
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-float v3, v5

    :goto_1
    nop

    .line 79
    .end local v1    # "it":F
    .end local v4    # "$i$a$-let-TextFieldCursorKt$cursor$1$2$1$cursorX$1":I
    nop

    .line 72
    move/from16 v17, v3

    .line 89
    .local v17, "cursorX":F
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    .local v1, "y$iv":F
    .local v3, "x$iv":F
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$f$Offset":I
    move v5, v1

    .local v5, "val2$iv$iv":F
    move v6, v3

    .local v6, "val1$iv$iv":F
    const/4 v8, 0x0

    .line 129
    .local v8, "$i$f$packFloats":I
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v11, v9

    .line 130
    .local v11, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move v13, v14

    int-to-long v14, v9

    .line 131
    .local v14, "v2$iv$iv":J
    shl-long v18, v11, v13

    const-wide v20, 0xffffffffL

    and-long v22, v14, v20

    or-long v5, v18, v22

    .line 128
    .end local v5    # "val2$iv$iv":F
    .end local v6    # "val1$iv$iv":F
    .end local v8    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v14    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    .line 89
    .end local v1    # "y$iv":F
    .end local v3    # "x$iv":F
    .end local v4    # "$i$f$Offset":I
    nop

    .line 90
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    .restart local v1    # "y$iv":F
    move/from16 v5, v17

    .local v5, "x$iv":F
    const/4 v6, 0x0

    .line 132
    .local v6, "$i$f$Offset":I
    move v8, v1

    .local v8, "val2$iv$iv":F
    move v9, v5

    .local v9, "val1$iv$iv":F
    const/4 v11, 0x0

    .line 133
    .local v11, "$i$f$packFloats":I
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v14, v12

    .line 134
    .local v14, "v1$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    move/from16 v18, v13

    move-wide/from16 v22, v14

    .end local v14    # "v1$iv$iv":J
    .local v22, "v1$iv$iv":J
    int-to-long v13, v12

    .line 135
    .local v13, "v2$iv$iv":J
    shl-long v18, v22, v18

    and-long v20, v13, v20

    or-long v8, v18, v20

    .line 132
    .end local v8    # "val2$iv$iv":F
    .end local v9    # "val1$iv$iv":F
    .end local v11    # "$i$f$packFloats":I
    .end local v13    # "v2$iv$iv":J
    .end local v22    # "v1$iv$iv":J
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v5

    .line 90
    .end local v1    # "y$iv":F
    .end local v5    # "x$iv":F
    .end local v6    # "$i$f$Offset":I
    nop

    .line 87
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 92
    nop

    .line 87
    nop

    .line 91
    nop

    .line 87
    const/16 v13, 0x1b0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v15, v2

    move-object/from16 v2, p4

    .end local v2    # "transformedOffset":I
    .local v15, "transformedOffset":I
    invoke-static/range {v1 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-1RTmtNc$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 95
    .end local v7    # "cursorWidth":F
    .end local v15    # "transformedOffset":I
    .end local v16    # "cursorRect":Landroidx/compose/ui/geometry/Rect;
    .end local v17    # "cursorX":F
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
