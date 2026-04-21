.class public final Landroidx/compose/foundation/text/TextFieldKeyInputKt;
.super Ljava/lang/Object;
.source "TextFieldKeyInput.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldKeyInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldKeyInput.kt\nandroidx/compose/foundation/text/TextFieldKeyInputKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,274:1\n1128#2,6:275\n1128#2,6:281\n1128#2,6:287\n*S KotlinDebug\n*F\n+ 1 TextFieldKeyInput.kt\nandroidx/compose/foundation/text/TextFieldKeyInputKt\n*L\n256#1:275,6\n257#1:281,6\n272#1:287,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ai\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "textFieldKeyInput",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/text/LegacyTextFieldState;",
        "manager",
        "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "onValueChange",
        "Lkotlin/Function1;",
        "",
        "editable",
        "",
        "singleLine",
        "offsetMapping",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "undoManager",
        "Landroidx/compose/foundation/text/UndoManager;",
        "imeAction",
        "Landroidx/compose/ui/text/input/ImeAction;",
        "textFieldKeyInput-2WJ9YEU",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;I)Landroidx/compose/ui/Modifier;",
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
.method public static final textFieldKeyInput-2WJ9YEU(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;I)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0, "$this$textFieldKeyInput_u2d2WJ9YEU"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/text/LegacyTextFieldState;
    .param p2, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p3, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p4, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "editable"    # Z
    .param p6, "singleLine"    # Z
    .param p7, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;
    .param p8, "undoManager"    # Landroidx/compose/foundation/text/UndoManager;
    .param p9, "$v$c$androidx-compose-ui-text-input-ImeAction$-imeAction$0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;ZZ",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Landroidx/compose/foundation/text/UndoManager;",
            "I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 255
    new-instance v0, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method public static synthetic textFieldKeyInput-2WJ9YEU$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 245
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_0

    .line 249
    new-instance p4, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda1;-><init>()V

    move-object v4, p4

    goto :goto_0

    .line 245
    :cond_0
    move-object v4, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/TextFieldKeyInputKt;->textFieldKeyInput-2WJ9YEU(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method static final textFieldKeyInput_2WJ9YEU$lambda$0(Landroidx/compose/ui/text/input/TextFieldValue;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Landroidx/compose/ui/text/input/TextFieldValue;

    .line 249
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final textFieldKeyInput_2WJ9YEU$lambda$1(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;ILandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 22
    .param p0, "$state"    # Landroidx/compose/foundation/text/LegacyTextFieldState;
    .param p1, "$manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p2, "$value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "$editable"    # Z
    .param p4, "$singleLine"    # Z
    .param p5, "$offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;
    .param p6, "$undoManager"    # Landroidx/compose/foundation/text/UndoManager;
    .param p7, "$onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p8, "$$v$c$androidx-compose-ui-text-input-ImeAction$-imeAction$0"    # I
    .param p9, "$this$composed"    # Landroidx/compose/ui/Modifier;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I

    move-object/from16 v0, p10

    const v1, 0x32c59664

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "C255@11924L41,256@11988L30,271@12524L18:TextFieldKeyInput.kt#423gt5"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.textFieldKeyInput.<anonymous> (TextFieldKeyInput.kt:255)"

    move/from16 v4, p11

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v4, p11

    .line 256
    :goto_0
    const v1, -0x68466e13

    const-string v2, "CC(remember):TextFieldKeyInput.kt#9igjgp"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object/from16 v3, p10

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 275
    .local v5, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 276
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_1

    .line 277
    const/4 v8, 0x0

    .line 256
    .local v8, "$i$a$-cache-TextFieldKeyInputKt$textFieldKeyInput$2$preparedSelectionState$1":I
    new-instance v9, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-direct {v9}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;-><init>()V

    .line 277
    .end local v8    # "$i$a$-cache-TextFieldKeyInputKt$textFieldKeyInput$2$preparedSelectionState$1":I
    nop

    .line 278
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 279
    move-object v6, v9

    .end local v9    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 280
    :cond_1
    nop

    .line 275
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_1
    nop

    .line 256
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v13, v6

    check-cast v13, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .local v13, "preparedSelectionState":Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 257
    const v1, -0x6846661e

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .restart local v1    # "invalid$iv":Z
    move-object/from16 v3, p10

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 281
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 282
    .restart local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_2

    .line 283
    const/4 v8, 0x0

    .line 257
    .local v8, "$i$a$-cache-TextFieldKeyInputKt$textFieldKeyInput$2$keyCombiner$1":I
    new-instance v9, Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-direct {v9}, Landroidx/compose/foundation/text/DeadKeyCombiner;-><init>()V

    .line 283
    .end local v8    # "$i$a$-cache-TextFieldKeyInputKt$textFieldKeyInput$2$keyCombiner$1":I
    nop

    .line 284
    .restart local v9    # "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 285
    move-object v6, v9

    .end local v9    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 286
    :cond_2
    nop

    .line 281
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_2
    nop

    .line 257
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object/from16 v16, v6

    check-cast v16, Landroidx/compose/foundation/text/DeadKeyCombiner;

    .local v16, "keyCombiner":Landroidx/compose/foundation/text/DeadKeyCombiner;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 259
    new-instance v7, Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 266
    nop

    .line 265
    nop

    .line 267
    nop

    .line 268
    nop

    .line 259
    nop

    .line 269
    nop

    .line 270
    nop

    .line 259
    const/16 v20, 0x200

    const/16 v21, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v7 .. v21}, Landroidx/compose/foundation/text/TextFieldKeyInput;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/foundation/text/selection/TextPreparedSelectionState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Landroidx/compose/foundation/text/DeadKeyCombiner;Landroidx/compose/foundation/text/KeyMapping;Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    nop

    .line 272
    .local v7, "processor":Landroidx/compose/foundation/text/TextFieldKeyInput;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const v3, -0x6846232a

    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid$iv":Z
    move-object/from16 v3, p10

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 287
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 288
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_4

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v6, v9, :cond_3

    goto :goto_3

    .line 292
    :cond_3
    goto :goto_4

    .line 289
    :cond_4
    :goto_3
    const/4 v9, 0x0

    .line 272
    .local v9, "$i$a$-cache-TextFieldKeyInputKt$textFieldKeyInput$2$1":I
    new-instance v10, Landroidx/compose/foundation/text/TextFieldKeyInputKt$textFieldKeyInput$2$1$1;

    invoke-direct {v10, v7}, Landroidx/compose/foundation/text/TextFieldKeyInputKt$textFieldKeyInput$2$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v10, Lkotlin/reflect/KFunction;

    .line 289
    .end local v9    # "$i$a$-cache-TextFieldKeyInputKt$textFieldKeyInput$2$1":I
    nop

    .line 290
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    move-object v6, v10

    .line 287
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v10    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 272
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v6, Lkotlin/reflect/KFunction;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v6}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v1
.end method
