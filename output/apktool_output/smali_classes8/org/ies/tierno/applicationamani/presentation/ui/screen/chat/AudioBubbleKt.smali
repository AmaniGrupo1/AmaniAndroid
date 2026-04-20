.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;
.super Ljava/lang/Object;
.source "AudioBubble.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioBubble.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioBubble.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,170:1\n122#2:171\n122#2:204\n122#2:205\n122#2:206\n122#2:207\n122#2:208\n122#2:209\n122#2:210\n122#2:215\n122#2:216\n122#2:253\n122#2:260\n99#3:172\n96#3,9:173\n106#3:214\n99#3:217\n96#3,9:218\n106#3:252\n81#4,6:182\n88#4,6:197\n96#4:213\n81#4,6:227\n88#4,6:242\n96#4:251\n391#5,9:188\n400#5:203\n401#5,2:211\n391#5,9:233\n400#5,3:248\n1128#6,6:254\n85#7:261\n*S KotlinDebug\n*F\n+ 1 AudioBubble.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt\n*L\n56#1:171\n60#1:204\n61#1:205\n68#1:206\n87#1:207\n94#1:208\n96#1:209\n117#1:210\n153#1:215\n154#1:216\n81#1:253\n75#1:260\n54#1:172\n54#1:173,9\n54#1:214\n151#1:217\n151#1:218,9\n151#1:252\n54#1:182,6\n54#1:197,6\n54#1:213\n151#1:227,6\n151#1:242,6\n151#1:251\n54#1:188,9\n54#1:203\n54#1:211,2\n151#1:233,9\n151#1:248,3\n71#1:254,6\n145#1:261\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a?\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\tH\u0007\u00a2\u0006\u0002\u0010\u000b\u001a1\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016\u00b2\u0006\n\u0010\u0017\u001a\u00020\u000eX\u008a\u0084\u0002"
    }
    d2 = {
        "AudioBubble",
        "",
        "message",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "isOwn",
        "",
        "audioUiState",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;",
        "onPlayPause",
        "Lkotlin/Function2;",
        "",
        "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "RoundedAudioProgressBar",
        "progress",
        "",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "trackColor",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "RoundedAudioProgressBar-eopBjH0",
        "(FJJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "app",
        "animatedProgress"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final AudioBubble(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 76
    .param p0, "message"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p1, "isOwn"    # Z
    .param p2, "audioUiState"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    .param p3, "onPlayPause"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            "Z",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    move/from16 v9, p5

    const-string v0, "message"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUiState"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlayPause"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const v0, 0x848046d

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(AudioBubble)N(message,isOwn,audioUiState,onPlayPause)53@2362L3110:AudioBubble.kt#5xjsc0"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p5

    .local v3, "$dirty":I
    and-int/lit8 v4, v9, 0x6

    if-nez v4, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v9, 0x30

    if-nez v4, :cond_3

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_1

    :cond_2
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    :cond_3
    and-int/lit16 v4, v9, 0x180

    if-nez v4, :cond_5

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_2

    :cond_4
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v3, v4

    :cond_5
    and-int/lit16 v4, v9, 0xc00

    if-nez v4, :cond_7

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_3

    :cond_6
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v3, v4

    :cond_7
    move v11, v3

    .end local v3    # "$dirty":I
    .local v11, "$dirty":I
    and-int/lit16 v3, v11, 0x493

    const/16 v4, 0x492

    const/4 v13, 0x1

    if-eq v3, v4, :cond_8

    move v3, v13

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v11, 0x1

    invoke-interface {v10, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubble (AudioBubble.kt:42)"

    invoke-static {v0, v11, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 44
    :cond_9
    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getActiveMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 45
    .local v14, "isCurrentMessage":Z
    if-eqz v14, :cond_a

    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getStatus()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    move-result-object v0

    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->PLAYING:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    if-ne v0, v3, :cond_a

    move v3, v13

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    .line 46
    .local v3, "isPlaying":Z
    :goto_5
    if-eqz v14, :cond_b

    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getStatus()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    move-result-object v0

    sget-object v4, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->LOADING:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    if-ne v0, v4, :cond_b

    move v0, v13

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    move v15, v0

    .line 47
    .local v15, "isLoading":Z
    if-eqz v14, :cond_c

    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getStatus()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    move-result-object v0

    sget-object v4, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->ERROR:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    if-ne v0, v4, :cond_c

    move v4, v13

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    .line 49
    .local v4, "isError":Z
    :goto_7
    if-eqz v7, :cond_d

    .line 50
    const v0, 0x1658e3df

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "49@2266L11"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v10, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_8

    .line 52
    :cond_d
    const v0, 0x1658eb9d

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "51@2328L11"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v10, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 49
    :goto_8
    move-wide/from16 v16, v5

    .line 55
    .local v16, "contentColor":J
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    .line 56
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v6, 0x4

    .local v6, "$this$dp\\1":I
    const/16 v18, 0x0

    .line 171
    .local v18, "$i$f$getDp\\1\\56":I
    int-to-float v12, v6

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 56
    .end local v6    # "$this$dp\\1":I
    .end local v18    # "$i$f$getDp\\1\\56":I
    const/4 v12, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v13, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 55
    nop

    .line 54
    move-object v12, v5

    .local v0, "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    .local v12, "modifier\\2":Landroidx/compose/ui/Modifier;
    const/16 v5, 0x186

    move/from16 v26, v5

    .local v26, "$changed\\2":I
    move-object v5, v10

    .local v5, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 172
    .local v27, "$i$f$Row\\2\\54":I
    const v6, 0x3255a44b

    const-string v7, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 173
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v7

    .line 177
    .local v7, "horizontalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v6, v26, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v18, v26, 0x3

    and-int/lit8 v18, v18, 0x70

    or-int v6, v6, v18

    invoke-static {v7, v0, v5, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v28

    .line 181
    .local v28, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 180
    shl-int/lit8 v6, v26, 0x3

    and-int/lit8 v6, v6, 0x70

    .line 178
    move/from16 v29, v6

    .local v29, "$changed\\3":I
    move-object v6, v5

    .local v6, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object/from16 v30, v28

    .local v30, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v31, v12

    .local v31, "modifier\\3":Landroidx/compose/ui/Modifier;
    const/16 v32, 0x0

    .line 182
    .local v32, "$i$f$Layout\\3\\178":I
    const v13, -0x451e1427

    move-object/from16 v33, v0

    .end local v0    # "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    .local v33, "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    const-string v0, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v6, v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    .line 184
    .local v13, "compositeKeyHash\\3":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 185
    .local v0, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v34, v7

    move-object/from16 v7, v31

    .end local v31    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v7, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v34, "horizontalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {v6, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 187
    .local v8, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    shl-int/lit8 v1, v29, 0x6

    and-int/lit16 v1, v1, 0x380

    .end local v7    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .restart local v31    # "modifier\\3":Landroidx/compose/ui/Modifier;
    const/4 v7, 0x6

    or-int/2addr v1, v7

    .line 186
    move-object/from16 v35, v18

    .local v35, "factory\\4":Lkotlin/jvm/functions/Function0;
    move-object/from16 v36, v6

    .local v36, "$composer\\4":Landroidx/compose/runtime/Composer;
    move/from16 v37, v1

    .local v37, "$changed\\4":I
    const/16 v38, 0x0

    .line 188
    .local v38, "$i$f$ReusableComposeNode\\4\\186":I
    const v1, -0x20f7d59c

    move/from16 v39, v7

    const-string v7, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v9, v36

    .end local v36    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v9, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v9, v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 189
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 190
    :cond_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 191
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 192
    move-object/from16 v7, v35

    .end local v35    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v7, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 194
    .end local v7    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v35    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_f
    move-object/from16 v7, v35

    .end local v35    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v7    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 196
    :goto_9
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 197
    .local v18, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\196\\3":I
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    move-object/from16 v35, v7

    move-object/from16 v7, v30

    .end local v30    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v7, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v35    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v1, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v0

    .end local v0    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v30, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 200
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 201
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 202
    nop

    .line 196
    .end local v1    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\196\\3":I
    nop

    .line 203
    shr-int/lit8 v0, v37, 0x6

    and-int/lit8 v36, v0, 0xe

    .local v36, "$changed\\6":I
    move-object v0, v9

    .local v0, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v40, 0x0

    .line 179
    .local v40, "$i$a$-Layout-RowKt$Row$1\\6\\203\\2":I
    const v1, 0x56ccd6f5

    const-string v2, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v26, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v41, v2, 0x6

    .local v41, "$changed\\7":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v42, v1

    .end local v1    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .local v42, "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    move-object v1, v0

    .local v1, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v68, 0x0

    .line 58
    .local v68, "$i$a$-Row-AudioBubbleKt$AudioBubble$1\\7\\179\\0":I
    const v2, -0x188b448c

    move-object/from16 v43, v0

    .end local v0    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v43, "$composer\\6":Landroidx/compose/runtime/Composer;
    const-string v0, "C86@3607L39,116@4764L39,131@5351L10,129@5282L184:AudioBubble.kt#5xjsc0"

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-eqz v15, :cond_10

    const v0, -0x188c5c09

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "58@2521L162"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 60
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x20

    .local v2, "$this$dp\\8":I
    const/16 v18, 0x0

    .line 204
    .local v18, "$i$f$getDp\\8\\60":I
    move-object/from16 v23, v1

    .end local v1    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v23, "$composer\\7":Landroidx/compose/runtime/Composer;
    int-to-float v1, v2

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 60
    .end local v2    # "$this$dp\\8":I
    .end local v18    # "$i$f$getDp\\8\\60":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 61
    const/4 v1, 0x2

    .local v1, "$this$dp\\9":I
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$f$getDp\\9\\61":I
    move-object/from16 v18, v0

    int-to-float v0, v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v19

    .line 61
    .end local v1    # "$this$dp\\9":I
    .end local v2    # "$i$f$getDp\\9\\61":I
    nop

    .line 60
    nop

    .line 62
    nop

    .line 61
    nop

    .line 59
    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x186

    const/16 v25, 0x18

    move-wide/from16 v74, v16

    move-object/from16 v16, v18

    move-wide/from16 v17, v74

    .end local v16    # "contentColor":J
    .local v17, "contentColor":J
    invoke-static/range {v16 .. v25}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 58
    move-wide/from16 v16, v17

    move-object/from16 v0, v23

    .end local v17    # "contentColor":J
    .end local v23    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v16    # "contentColor":J
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v25, v5

    move-object/from16 v71, v7

    move-object/from16 v69, v30

    move-object/from16 v70, v43

    move-object/from16 v30, v6

    goto/16 :goto_a

    .line 64
    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\7":Landroidx/compose/runtime/Composer;
    :cond_10
    move-object v0, v1

    .end local v1    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const v1, -0x18891dd1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "68@2879L708,64@2713L874"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    .line 67
    const/16 v22, 0xe

    const/16 v23, 0x0

    const v18, 0x3e19999a    # 0.15f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v45

    .line 68
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v23, v0

    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v23    # "$composer\\7":Landroidx/compose/runtime/Composer;
    const/16 v0, 0x24

    .local v0, "$this$dp\\10":I
    const/16 v18, 0x0

    .line 206
    .local v18, "$i$f$getDp\\10\\68":I
    move-object/from16 v19, v1

    int-to-float v1, v0

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 68
    .end local v0    # "$this$dp\\10":I
    .end local v18    # "$i$f$getDp\\10\\68":I
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 66
    move-object/from16 v44, v19

    check-cast v44, Landroidx/compose/ui/graphics/Shape;

    .line 67
    nop

    .line 69
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v25, v5

    move-object/from16 v71, v7

    move-object/from16 v7, v23

    move-object/from16 v69, v30

    move-object/from16 v70, v43

    move-object/from16 v30, v6

    move-wide/from16 v5, v16

    .end local v6    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v16    # "contentColor":J
    .end local v23    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v43    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v5, "contentColor":J
    .local v7, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\2":Landroidx/compose/runtime/Composer;
    .local v30, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v69, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v70, "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v71, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;Lkotlin/jvm/functions/Function2;ZZJ)V

    .end local v5    # "contentColor":J
    .restart local v16    # "contentColor":J
    const/16 v1, 0x36

    const v2, -0x401193f0

    const/4 v5, 0x1

    invoke-static {v2, v5, v0, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v52, v0

    check-cast v52, Lkotlin/jvm/functions/Function2;

    .line 65
    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const v54, 0xc00006

    const/16 v55, 0x78

    move-object/from16 v53, v7

    move-object/from16 v43, v18

    .end local v7    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v53, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v43 .. v55}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 64
    move-object/from16 v0, v53

    .end local v53    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 87
    :goto_a
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x8

    .local v2, "$this$dp\\11":I
    const/4 v5, 0x0

    .line 207
    .local v5, "$i$f$getDp\\11\\87":I
    int-to-float v6, v2

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 87
    .end local v2    # "$this$dp\\11":I
    .end local v5    # "$i$f$getDp\\11\\87":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v2, v39

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 89
    if-eqz v4, :cond_11

    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    const v5, -0x187a09d5

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "92@3867L11,89@3720L227,95@3960L39,98@4106L10,99@4167L11,96@4012L234"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 91
    sget-object v5, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v5}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/material/icons/filled/RefreshKt;->getRefresh(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v43

    .line 93
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v0, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v46

    .line 94
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/16 v6, 0x14

    .local v6, "$this$dp\\12":I
    const/4 v7, 0x0

    .line 208
    .local v7, "$i$f$getDp\\12\\94":I
    const-wide/16 v72, 0x0

    int-to-float v1, v6

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 94
    .end local v6    # "$this$dp\\12":I
    .end local v7    # "$i$f$getDp\\12\\94":I
    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v45

    .line 91
    nop

    .line 92
    nop

    .line 94
    nop

    .line 93
    nop

    .line 90
    const-string v44, "Reintentar"

    const/16 v49, 0x1b0

    const/16 v50, 0x0

    move-object/from16 v48, v0

    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v48, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v43 .. v50}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 96
    .end local v48    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x4

    .local v2, "$this$dp\\13":I
    const/4 v5, 0x0

    .line 209
    .local v5, "$i$f$getDp\\13\\96":I
    int-to-float v6, v2

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 96
    .end local v2    # "$this$dp\\13":I
    .end local v5    # "$i$f$getDp\\13\\96":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getErrorMessage()Ljava/lang/String;

    move-result-object v43

    .line 99
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getLabelSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v63

    .line 100
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v45

    .line 101
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v1

    check-cast v19, Landroidx/compose/ui/Modifier;

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move-object/from16 v18, v42

    .end local v42    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .local v18, "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v44

    .line 98
    move-object/from16 v1, v18

    .line 101
    .end local v18    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .local v1, "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    nop

    .line 100
    nop

    .line 99
    nop

    .line 97
    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const v67, 0xfff8

    move-object/from16 v64, v0

    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v64, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v43 .. v67}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 89
    .end local v64    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_c

    .end local v1    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .restart local v42    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    :cond_11
    move-object/from16 v1, v42

    const-wide/16 v72, 0x0

    .line 103
    .end local v42    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .restart local v1    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    const v2, -0x1871a65b

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "103@4276L468"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 105
    if-eqz v14, :cond_12

    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getDurationMs()J

    move-result-wide v5

    cmp-long v2, v5, v72

    if-lez v2, :cond_12

    .line 106
    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getPositionMs()J

    move-result-wide v5

    long-to-float v2, v5

    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getDurationMs()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v2, v5

    .line 107
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v7

    goto :goto_b

    .line 105
    :cond_12
    const/4 v6, 0x0

    .line 109
    move v7, v6

    .line 111
    :goto_b
    nop

    .line 112
    const/16 v22, 0xe

    const/16 v23, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v5

    .line 113
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v2

    check-cast v19, Landroidx/compose/ui/Modifier;

    const/16 v22, 0x2

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move-object/from16 v18, v1

    .end local v1    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .restart local v18    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    .line 104
    .end local v18    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .restart local v1    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v0

    move-wide/from16 v19, v5

    move-wide/from16 v17, v16

    move/from16 v16, v7

    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v16    # "contentColor":J
    .restart local v17    # "contentColor":J
    .local v22, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v16 .. v24}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->RoundedAudioProgressBar-eopBjH0(FJJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 103
    move-wide/from16 v16, v17

    .end local v17    # "contentColor":J
    .end local v22    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v16    # "contentColor":J
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 117
    :goto_c
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x8

    .local v5, "$this$dp\\14":I
    const/4 v6, 0x0

    .line 210
    .local v6, "$i$f$getDp\\14\\117":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 117
    .end local v5    # "$this$dp\\14":I
    .end local v6    # "$i$f$getDp\\14\\117":I
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v2, v0, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 119
    if-eqz v14, :cond_14

    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getStatus()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    move-result-object v2

    sget-object v5, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->IDLE:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    if-eq v2, v5, :cond_14

    .line 120
    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getPositionMs()J

    move-result-wide v5

    const/16 v2, 0x3e8

    move-object/from16 v18, v1

    .end local v1    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .restart local v18    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    int-to-long v1, v2

    div-long/2addr v5, v1

    long-to-int v5, v5

    .line 121
    .local v5, "pos\\7":I
    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getDurationMs()J

    move-result-wide v6

    cmp-long v6, v6, v72

    if-lez v6, :cond_13

    .line 122
    invoke-virtual/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getDurationMs()J

    move-result-wide v6

    div-long/2addr v6, v1

    long-to-int v1, v6

    .line 123
    .local v1, "dur\\7":I
    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt;->formatDuration(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v43, v1

    .end local v1    # "dur\\7":I
    goto :goto_d

    .line 125
    :cond_13
    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v43, v1

    .end local v5    # "pos\\7":I
    goto :goto_d

    .line 119
    .end local v18    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .local v1, "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    :cond_14
    move-object/from16 v18, v1

    .line 128
    .end local v1    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .restart local v18    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v43, v1

    .line 119
    :goto_d
    nop

    .line 132
    .local v43, "timeText\\7":Ljava/lang/String;
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getLabelSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v63

    .line 133
    if-eqz v4, :cond_15

    const v1, 0x203ef676

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "132@5421L11"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide/from16 v45, v1

    goto :goto_e

    :cond_15
    const v1, 0x203ef7dd

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide/from16 v45, v16

    .line 131
    :goto_e
    nop

    .line 133
    nop

    .line 132
    nop

    .line 130
    const/16 v44, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const v67, 0xfffa

    move-object/from16 v64, v0

    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v64    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static/range {v43 .. v67}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 58
    .end local v64    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 135
    .end local v43    # "timeText\\7":Ljava/lang/String;
    nop

    .line 179
    .end local v0    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v18    # "$this$AudioBubble_u24lambda_u244\\7":Landroidx/compose/foundation/layout/RowScope;
    .end local v41    # "$changed\\7":I
    .end local v68    # "$i$a$-Row-AudioBubbleKt$AudioBubble$1\\7\\179\\0":I
    invoke-static/range {v70 .. v70}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 203
    .end local v36    # "$changed\\6":I
    .end local v40    # "$i$a$-Layout-RowKt$Row$1\\6\\203\\2":I
    .end local v70    # "$composer\\6":Landroidx/compose/runtime/Composer;
    nop

    .line 211
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 188
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 212
    nop

    .line 182
    .end local v9    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v35    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v37    # "$changed\\4":I
    .end local v38    # "$i$f$ReusableComposeNode\\4\\186":I
    invoke-static/range {v30 .. v30}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 213
    nop

    .line 172
    .end local v8    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .end local v13    # "compositeKeyHash\\3":I
    .end local v29    # "$changed\\3":I
    .end local v30    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v31    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v32    # "$i$f$Layout\\3\\178":I
    .end local v69    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v71    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 214
    nop

    .end local v12    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v25    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v26    # "$changed\\2":I
    .end local v27    # "$i$f$Row\\2\\54":I
    .end local v28    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v33    # "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    .end local v34    # "horizontalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v3    # "isPlaying":Z
    .end local v4    # "isError":Z
    .end local v14    # "isCurrentMessage":Z
    .end local v15    # "isLoading":Z
    .end local v16    # "contentColor":J
    goto :goto_f

    .line 37
    :cond_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 136
    :cond_17
    :goto_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda1;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda1;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_18
    return-void
.end method

.method static final AudioBubble$lambda$4$lambda$3(Lorg/ies/tierno/applicationamani/domain/models/Message;Lkotlin/jvm/functions/Function2;ZZJLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16
    .param p0, "$message"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p1, "$onPlayPause"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$isPlaying"    # Z
    .param p3, "$isError"    # Z
    .param p4, "$contentColor"    # J
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p6

    move/from16 v11, p7

    const-string v2, "C70@2939L153,75@3164L409,69@2897L676:AudioBubble.kt#5xjsc0"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v11, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v11, 0x1

    invoke-interface {v8, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubble.<anonymous>.<anonymous> (AudioBubble.kt:69)"

    const v5, -0x401193f0

    invoke-static {v5, v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 71
    :cond_1
    const v2, 0x7e03b029

    const-string v3, "CC(remember):AudioBubble.kt#9igjgp"

    invoke-static {v8, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .local v2, "invalid\\1":Z
    move-object/from16 v3, p6

    .local v3, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 254
    .local v5, "$i$f$cache\\1\\71":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it\\1":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 255
    .local v7, "$i$a$-let-ComposerKt$cache$1\\2\\254\\1":I
    if-nez v2, :cond_3

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v6, v9, :cond_2

    goto :goto_1

    .line 259
    :cond_2
    goto :goto_2

    .line 256
    :cond_3
    :goto_1
    const/4 v9, 0x0

    .line 71
    .local v9, "$i$a$-cache-AudioBubbleKt$AudioBubble$1$1$1\\3\\256\\0":I
    new-instance v10, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda2;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;Lkotlin/jvm/functions/Function2;)V

    .line 256
    .end local v9    # "$i$a$-cache-AudioBubbleKt$AudioBubble$1$1$1\\3\\256\\0":I
    nop

    .line 257
    .local v10, "value\\2":Ljava/lang/Object;
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    move-object v6, v10

    .line 254
    .end local v6    # "it\\1":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1\\2\\254\\1":I
    .end local v10    # "value\\2":Ljava/lang/Object;
    :goto_2
    nop

    .line 71
    .end local v2    # "invalid\\1":Z
    .end local v3    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\1\\71":I
    move-object v2, v6

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 75
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x24

    .local v5, "$this$dp\\4":I
    const/4 v6, 0x0

    .line 260
    .local v6, "$i$f$getDp\\4\\75":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 75
    .end local v5    # "$this$dp\\4":I
    .end local v6    # "$i$f$getDp\\4\\75":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 76
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda3;

    move/from16 v12, p2

    move/from16 v13, p3

    move-wide/from16 v14, p4

    invoke-direct {v5, v12, v13, v14, v15}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda3;-><init>(ZZJ)V

    const/16 v6, 0x36

    const v7, 0x19f46bd3

    invoke-static {v7, v4, v5, v8, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 70
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v9, 0x30030

    const/16 v10, 0x1c

    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 69
    :cond_4
    move/from16 v12, p2

    move/from16 v13, p3

    move-wide/from16 v14, p4

    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 84
    :cond_5
    :goto_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final AudioBubble$lambda$4$lambda$3$lambda$1$lambda$0(Lorg/ies/tierno/applicationamani/domain/models/Message;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 2
    .param p0, "$message"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p1, "$onPlayPause"    # Lkotlin/jvm/functions/Function2;

    .line 72
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 73
    .local v0, "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final AudioBubble$lambda$4$lambda$3$lambda$2(ZZJLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$isPlaying"    # Z
    .param p1, "$isError"    # Z
    .param p2, "$contentColor"    # J
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "C76@3186L369:AudioBubble.kt#5xjsc0"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p5, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p5, 0x1

    invoke-interface {p4, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubble.<anonymous>.<anonymous>.<anonymous> (AudioBubble.kt:76)"

    const v2, 0x19f46bd3

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 78
    :cond_1
    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    if-eqz p0, :cond_2

    invoke-static {v0}, Landroidx/compose/material/icons/filled/PauseKt;->getPause(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroidx/compose/material/icons/filled/PlayArrowKt;->getPlayArrow(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 79
    if-eqz p0, :cond_3

    const-string v0, "Pausar"

    goto :goto_2

    :cond_3
    const-string v0, "Reproducir"

    :goto_2
    move-object v2, v0

    .line 80
    if-eqz p1, :cond_4

    const v0, 0x6e88e738

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "79@3441L11"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, p4, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v3

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide v4, v3

    goto :goto_3

    :cond_4
    const v0, 0x6e88e89f

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide v4, p2

    .line 81
    :goto_3
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v3, 0x14

    .local v3, "$this$dp\\1":I
    const/4 v6, 0x0

    .line 253
    .local v6, "$i$f$getDp\\1\\81":I
    int-to-float v7, v3

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 81
    .end local v3    # "$this$dp\\1":I
    .end local v6    # "$i$f$getDp\\1\\81":I
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 78
    nop

    .line 79
    nop

    .line 81
    nop

    .line 80
    nop

    .line 77
    const/16 v7, 0x180

    const/4 v8, 0x0

    move-object v6, p4

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    .line 76
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p4    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_5
    move-object v6, p4

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 83
    :cond_6
    :goto_4
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p4
.end method

.method static final AudioBubble$lambda$5(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->AudioBubble(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final RoundedAudioProgressBar-eopBjH0(FJJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 43
    .param p0, "progress"    # F
    .param p1, "color"    # J
    .param p3, "trackColor"    # J
    .param p5, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 144
    move/from16 v1, p0

    move/from16 v7, p7

    const v0, 0x1310fa72

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(RoundedAudioProgressBar)N(progress,color:c#ui.graphics.Color,trackColor:c#ui.graphics.Color,modifier)144@5653L161,150@5820L569:AudioBubble.kt#5xjsc0"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p7

    .local v2, "$dirty":I
    and-int/lit8 v3, v7, 0x6

    if-nez v3, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v7, 0x30

    if-nez v3, :cond_3

    move-wide/from16 v3, p1

    invoke-interface {v13, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    goto :goto_2

    :cond_3
    move-wide/from16 v3, p1

    :goto_2
    and-int/lit16 v5, v7, 0x180

    if-nez v5, :cond_5

    move-wide/from16 v5, p3

    invoke-interface {v13, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v2, v8

    goto :goto_4

    :cond_5
    move-wide/from16 v5, p3

    :goto_4
    and-int/lit8 v8, p8, 0x8

    if-eqz v8, :cond_6

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v9, p5

    goto :goto_6

    :cond_6
    and-int/lit16 v9, v7, 0xc00

    if-nez v9, :cond_8

    move-object/from16 v9, p5

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x800

    goto :goto_5

    :cond_7
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v2, v10

    goto :goto_6

    :cond_8
    move-object/from16 v9, p5

    :goto_6
    and-int/lit16 v10, v2, 0x493

    const/16 v11, 0x492

    const/4 v12, 0x1

    const/4 v14, 0x0

    if-eq v10, v11, :cond_9

    move v10, v12

    goto :goto_7

    :cond_9
    move v10, v14

    :goto_7
    and-int/lit8 v11, v2, 0x1

    invoke-interface {v13, v10, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v10

    if-eqz v10, :cond_11

    if-eqz v8, :cond_a

    .line 143
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_8

    .line 144
    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p5    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_a
    move-object v8, v9

    .line 143
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v8    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, -0x1

    const-string v10, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.RoundedAudioProgressBar (AudioBubble.kt:143)"

    invoke-static {v0, v2, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 146
    :cond_b
    const/4 v0, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v10, v8

    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    invoke-static {v1, v0, v9}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v8

    .line 147
    const/16 v11, 0xc8

    const/4 v15, 0x0

    const/4 v0, 0x6

    invoke-static {v11, v14, v15, v0, v15}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    check-cast v11, Landroidx/compose/animation/core/AnimationSpec;

    .line 148
    nop

    .line 145
    move-object/from16 v16, v10

    .end local v10    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    const/4 v10, 0x0

    move/from16 v17, v9

    move-object v9, v11

    const-string v11, "audio_progress"

    move/from16 v18, v12

    const/4 v12, 0x0

    move/from16 v19, v14

    const/16 v14, 0xc30

    move-object/from16 v20, v15

    const/16 v15, 0x14

    move/from16 p6, v0

    move/from16 v21, v2

    move-object/from16 v0, v16

    move/from16 v20, v17

    move/from16 v2, v18

    move/from16 v1, v19

    .end local v2    # "$dirty":I
    .end local v16    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "$dirty":I
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 152
    .local v8, "animatedProgress$delegate":Landroidx/compose/runtime/State;
    nop

    .line 153
    const/4 v9, 0x6

    .local v9, "$this$dp\\1":I
    const/4 v10, 0x0

    .line 215
    .local v10, "$i$f$getDp\\1\\153":I
    int-to-float v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 153
    .end local v9    # "$this$dp\\1":I
    .end local v10    # "$i$f$getDp\\1\\153":I
    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 154
    const/4 v10, 0x3

    .local v10, "$this$dp\\2":I
    const/4 v11, 0x0

    .line 216
    .local v11, "$i$f$getDp\\2\\154":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 154
    .end local v10    # "$this$dp\\2":I
    .end local v11    # "$i$f$getDp\\2\\154":I
    invoke-static {v10}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v9, v10}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 155
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-wide v15, v5

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 156
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v6

    .line 151
    const/16 v9, 0x180

    .local v9, "$changed\\3":I
    move-object v10, v13

    .local v5, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v6, "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    .local v10, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 217
    .local v11, "$i$f$Row\\3\\151":I
    const v12, 0x3255a44b

    const-string v14, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v10, v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 218
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v12

    .line 222
    .local v12, "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0xe

    shr-int/lit8 v15, v9, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v14, v15

    invoke-static {v12, v6, v10, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v23

    .line 226
    .local v23, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 225
    shl-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 223
    move-object/from16 v15, v23

    .local v15, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v24, v5

    .local v24, "modifier\\4":Landroidx/compose/ui/Modifier;
    move/from16 v25, v14

    .local v25, "$changed\\4":I
    move-object v14, v10

    .local v14, "$composer\\4":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 227
    .local v26, "$i$f$Layout\\4\\223":I
    const v2, -0x451e1427

    const-string v1, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v14, v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    .line 229
    .local v1, "compositeKeyHash\\4":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 230
    .local v2, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v24, v1

    .end local v1    # "compositeKeyHash\\4":I
    .local v0, "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v24, "compositeKeyHash\\4":I
    .local v27, "modifier":Landroidx/compose/ui/Modifier;
    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 232
    .local v1, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    move-object/from16 v28, v0

    .end local v0    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .local v28, "modifier\\4":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v25, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 231
    nop

    .local v0, "$changed\\5":I
    move-object/from16 v29, v16

    .local v29, "factory\\5":Lkotlin/jvm/functions/Function0;
    move-object/from16 v30, v14

    .local v30, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 233
    .local v31, "$i$f$ReusableComposeNode\\5\\231":I
    move/from16 v32, v0

    .end local v0    # "$changed\\5":I
    .local v32, "$changed\\5":I
    const v0, -0x20f7d59c

    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v4, v30

    .end local v30    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 234
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 235
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 236
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    move-object/from16 v0, v29

    .end local v29    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v0, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 239
    .end local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_d
    move-object/from16 v0, v29

    .end local v29    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 241
    :goto_9
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 242
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\241\\4":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v0

    .end local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 243
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v2

    .end local v2    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .local v30, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v0, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 246
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 247
    nop

    .line 241
    .end local v3    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\241\\4":I
    nop

    .line 248
    shr-int/lit8 v0, v32, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\7":I
    move-object v2, v4

    .local v2, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 224
    .local v3, "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    move/from16 v33, v0

    .end local v0    # "$changed\\7":I
    .local v33, "$changed\\7":I
    const v0, 0x56ccd6f5

    move-object/from16 v34, v1

    .end local v1    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v34, "materialized\\4":Landroidx/compose/ui/Modifier;
    const-string v1, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v9, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed\\8":I
    move-object/from16 v35, v0

    check-cast v35, Landroidx/compose/foundation/layout/RowScope;

    .local v35, "$this$RoundedAudioProgressBar_eopBjH0_u24lambda_u247\\8":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v2

    .local v0, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 158
    .local v41, "$i$a$-Row-AudioBubbleKt$RoundedAudioProgressBar$1\\8\\224\\0":I
    move/from16 p6, v1

    .end local v1    # "$changed\\8":I
    .local p6, "$changed\\8":I
    const v1, -0x43fb1633

    move-object/from16 v42, v2

    .end local v2    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v42, "$composer\\7":Landroidx/compose/runtime/Composer;
    const-string v2, "C:AudioBubble.kt#5xjsc0"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->RoundedAudioProgressBar_eopBjH0$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    const v1, -0x43fab07c

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "158@6076L176"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 160
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 161
    move/from16 p5, v3

    move-object/from16 v22, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .end local v3    # "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    .end local v4    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v22, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local p5, "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    invoke-static {v1, v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v36

    .line 162
    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->RoundedAudioProgressBar_eopBjH0$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v37

    const/16 v39, 0x2

    const/16 v40, 0x0

    const/16 v38, 0x0

    invoke-static/range {v35 .. v40}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 163
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object v4, v14

    move-object v14, v1

    move-object v1, v15

    move-wide/from16 v15, p1

    .end local v14    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v15    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v1, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v4, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 159
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 158
    goto :goto_a

    .end local v1    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .end local p5    # "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    .restart local v3    # "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    .local v4, "$composer\\5":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .restart local v15    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_e
    move/from16 p5, v3

    move-object/from16 v22, v4

    move-object v4, v14

    move-object v1, v15

    .end local v3    # "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    .end local v14    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v15    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v1    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v4, "$composer\\4":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .restart local p5    # "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    const v2, -0x44568ed4

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 166
    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->RoundedAudioProgressBar_eopBjH0$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v2

    const v3, 0x3f7fbe77    # 0.999f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f

    const v2, -0x43f71ce5

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "166@6316L57"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 167
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v36, v2

    check-cast v36, Landroidx/compose/ui/Modifier;

    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->RoundedAudioProgressBar_eopBjH0$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v2

    sub-float v37, v20, v2

    const/16 v39, 0x2

    const/16 v40, 0x0

    const/16 v38, 0x0

    invoke-static/range {v35 .. v40}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 166
    goto :goto_b

    :cond_f
    const v2, -0x44568ed4

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 158
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 169
    nop

    .line 224
    .end local v0    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v35    # "$this$RoundedAudioProgressBar_eopBjH0_u24lambda_u247\\8":Landroidx/compose/foundation/layout/RowScope;
    .end local v41    # "$i$a$-Row-AudioBubbleKt$RoundedAudioProgressBar$1\\8\\224\\0":I
    .end local p6    # "$changed\\8":I
    invoke-static/range {v42 .. v42}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 248
    .end local v33    # "$changed\\7":I
    .end local v42    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local p5    # "$i$a$-Layout-RowKt$Row$1\\7\\248\\3":I
    nop

    .line 249
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 233
    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 250
    nop

    .line 227
    .end local v22    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .end local v29    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v31    # "$i$f$ReusableComposeNode\\5\\231":I
    .end local v32    # "$changed\\5":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 251
    nop

    .line 217
    .end local v1    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v4    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v24    # "compositeKeyHash\\4":I
    .end local v25    # "$changed\\4":I
    .end local v26    # "$i$f$Layout\\4\\223":I
    .end local v28    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v30    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v34    # "materialized\\4":Landroidx/compose/ui/Modifier;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 252
    nop

    .end local v5    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v6    # "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    .end local v9    # "$changed\\3":I
    .end local v10    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$Row\\3\\151":I
    .end local v12    # "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v23    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 170
    .end local v8    # "animatedProgress$delegate":Landroidx/compose/runtime/State;
    :cond_10
    move-object/from16 v6, v27

    goto :goto_c

    .line 138
    .end local v21    # "$dirty":I
    .end local v27    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "$dirty":I
    .local p5, "modifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move/from16 v21, v2

    .end local v2    # "$dirty":I
    .restart local v21    # "$dirty":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v6, v9

    .line 170
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v6, "modifier":Landroidx/compose/ui/Modifier;
    :goto_c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_12

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;-><init>(FJJLandroidx/compose/ui/Modifier;II)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method private static final RoundedAudioProgressBar_eopBjH0$lambda$6(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$animatedProgress$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 261
    .local v3, "$i$f$getValue\\1\\145":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\145":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 145
    return v0
.end method

.method static final RoundedAudioProgressBar_eopBjH0$lambda$8(FJJLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10

    or-int/lit8 v0, p6, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move/from16 v9, p7

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->RoundedAudioProgressBar-eopBjH0(FJJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
