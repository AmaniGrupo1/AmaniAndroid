.class public final Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt;
.super Ljava/lang/Object;
.source "TextFieldPressGestureFilter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldPressGestureFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldPressGestureFilter.kt\nandroidx/compose/foundation/text/TextFieldPressGestureFilterKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 5 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,86:1\n599#2:87\n596#2,6:88\n1128#3,3:94\n1131#3,3:98\n1128#3,6:101\n1128#3,6:107\n1128#3,6:113\n597#4:97\n66#5,5:119\n*S KotlinDebug\n*F\n+ 1 TextFieldPressGestureFilter.kt\nandroidx/compose/foundation/text/TextFieldPressGestureFilterKt\n*L\n41#1:87\n41#1:88,6\n41#1:94,3\n41#1:98,3\n42#1:101,6\n44#1:107,6\n53#1:113,6\n41#1:97\n45#1:119,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0000\u00a8\u0006\n"
    }
    d2 = {
        "tapPressTextFieldModifier",
        "Landroidx/compose/ui/Modifier;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "enabled",
        "",
        "onTap",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/geometry/Offset;",
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
.method public static synthetic $r8$lambda$_mTH2cLvy8nafp99RKgHfp0ZpmQ(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt;->tapPressTextFieldModifier$lambda$0$1$0(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static final tapPressTextFieldModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0, "$this$tapPressTextFieldModifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "enabled"    # Z
    .param p3, "onTap"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 39
    if-eqz p2, :cond_0

    .line 40
    new-instance v0, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static synthetic tapPressTextFieldModifier$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 34
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 36
    const/4 p2, 0x1

    .line 34
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt;->tapPressTextFieldModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method static final tapPressTextFieldModifier$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0, "$onTap"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "$this$composed"    # Landroidx/compose/ui/Modifier;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const v2, -0x620472b

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "C40@1628L24,41@1690L58,42@1778L27,43@1854L343,43@1818L379,52@2251L1562:TextFieldPressGestureFilter.kt#423gt5"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.text.tapPressTextFieldModifier.<anonymous> (TextFieldPressGestureFilter.kt:40)"

    move/from16 v5, p4

    invoke-static {v2, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    .line 41
    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "$changed$iv":I
    move-object/from16 v4, p3

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 87
    .local v6, "$i$f$rememberCoroutineScope":I
    const v7, 0x2e20b340

    const-string v8, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp"

    invoke-static {v4, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 88
    nop

    .line 92
    move-object v7, v4

    .line 93
    .local v7, "composer$iv":Landroidx/compose/runtime/Composer;
    const v8, 0x28c0fdc4

    const-string v9, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v4, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v8, 0x0

    .local v8, "invalid$iv$iv":Z
    move-object v9, v4

    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 94
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 95
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_1

    .line 96
    const/4 v13, 0x0

    .line 93
    .local v13, "$i$a$-cache-EffectsKt$rememberCoroutineScope$2$iv":I
    const/4 v14, 0x0

    .line 97
    .local v14, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 93
    .end local v14    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    check-cast v14, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v14, v7}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    .line 96
    .end local v13    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$2$iv":I
    nop

    .line 98
    .local v13, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 99
    move-object v11, v13

    .end local v13    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 100
    :cond_1
    nop

    .line 94
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_1
    nop

    .line 93
    .end local v8    # "invalid$iv$iv":Z
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 87
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 93
    nop

    .line 41
    .end local v3    # "$changed$iv":I
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$rememberCoroutineScope":I
    .end local v7    # "composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 42
    .local v11, "scope":Lkotlinx/coroutines/CoroutineScope;
    const v3, 0xd4e2cf

    const-string v4, "CC(remember):TextFieldPressGestureFilter.kt#9igjgp"

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object/from16 v6, p3

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 101
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 102
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_2

    .line 103
    const/4 v10, 0x0

    .line 42
    .local v10, "$i$a$-cache-TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$pressedInteraction$1":I
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v13, v13, v12, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    .line 103
    .end local v10    # "$i$a$-cache-TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$pressedInteraction$1":I
    nop

    .line 104
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 105
    move-object v8, v10

    .end local v10    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 106
    :cond_2
    nop

    .line 101
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_2
    nop

    .line 42
    .end local v3    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    move-object v3, v8

    check-cast v3, Landroidx/compose/runtime/MutableState;

    .local v3, "pressedInteraction":Landroidx/compose/runtime/MutableState;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 43
    move-object/from16 v6, p0

    invoke-static {v6, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 44
    .local v7, "onTapState":Landroidx/compose/runtime/State;
    const v8, 0xd4f86c

    invoke-static {v1, v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "invalid$iv":Z
    move-object/from16 v9, p3

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 108
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_4

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_3

    goto :goto_3

    .line 112
    :cond_3
    goto :goto_4

    .line 109
    :cond_4
    :goto_3
    const/4 v14, 0x0

    .line 44
    .local v14, "$i$a$-cache-TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$1":I
    new-instance v15, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$$ExternalSyntheticLambda1;

    invoke-direct {v15, v3, v0}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 109
    .end local v14    # "$i$a$-cache-TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$1":I
    nop

    .line 110
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    move-object v12, v15

    .line 107
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 44
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v12, v1, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 53
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const v8, 0xd52ecf

    invoke-static {v1, v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    .local v4, "invalid$iv":Z
    move-object/from16 v8, p3

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 113
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 114
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_6

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v10, v13, :cond_5

    goto :goto_5

    .line 118
    :cond_5
    goto :goto_6

    .line 115
    :cond_6
    :goto_5
    const/4 v13, 0x0

    .line 53
    .local v13, "$i$a$-cache-TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2":I
    new-instance v14, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;

    invoke-direct {v14, v11, v3, v0, v7}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;)V

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 115
    .end local v13    # "$i$a$-cache-TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2":I
    nop

    .line 116
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    move-object v10, v14

    .line 113
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 53
    .end local v4    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v2, v0, v10}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v2
.end method

.method private static final tapPressTextFieldModifier$lambda$0$1$0(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 3
    .param p0, "$pressedInteraction"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "$this$DisposableEffect"    # Landroidx/compose/runtime/DisposableEffectScope;

    .line 45
    move-object v0, p2

    .local v0, "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$f$onDispose":I
    new-instance v2, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast v2, Landroidx/compose/runtime/DisposableEffectResult;

    .line 123
    nop

    .line 51
    .end local v0    # "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    .end local v1    # "$i$f$onDispose":I
    return-object v2
.end method
