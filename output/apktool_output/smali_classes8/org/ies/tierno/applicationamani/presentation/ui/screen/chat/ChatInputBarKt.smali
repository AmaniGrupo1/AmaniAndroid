.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;
.super Ljava/lang/Object;
.source "ChatInputBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatInputBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatInputBar.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 6 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,277:1\n87#2:278\n84#2,9:279\n94#2:316\n81#3,6:288\n88#3,6:303\n96#3:315\n81#3,6:328\n88#3,6:343\n96#3:352\n81#3,6:377\n88#3,6:392\n96#3:415\n81#3,6:429\n88#3,6:444\n96#3:457\n391#4,9:294\n400#4:309\n401#4,2:313\n391#4,9:334\n400#4,3:349\n391#4,9:383\n400#4:398\n401#4,2:413\n391#4,9:435\n400#4:450\n401#4,2:455\n122#5:310\n122#5:311\n122#5:312\n122#5:317\n122#5:354\n122#5:355\n122#5:362\n122#5:363\n122#5:364\n122#5:366\n122#5:405\n122#5:406\n122#5:418\n122#5:451\n122#5:452\n122#5:453\n122#5:454\n99#6:318\n96#6,9:319\n106#6:353\n99#6:367\n96#6,9:368\n106#6:416\n99#6:419\n96#6,9:420\n106#6:458\n1128#7,6:356\n1128#7,6:399\n1128#7,6:407\n85#8:365\n85#8:417\n*S KotlinDebug\n*F\n+ 1 ChatInputBar.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt\n*L\n68#1:278\n68#1:279,9\n68#1:316\n68#1:288,6\n68#1:303,6\n68#1:315\n161#1:328,6\n161#1:343,6\n161#1:352\n83#1:377,6\n83#1:392,6\n83#1:415\n240#1:429,6\n240#1:444,6\n240#1:457\n68#1:294,9\n68#1:309\n68#1:313,2\n161#1:334,9\n161#1:349,3\n83#1:383,9\n83#1:398\n83#1:413,2\n240#1:435,9\n240#1:450\n240#1:455,2\n78#1:310\n79#1:311\n81#1:312\n164#1:317\n188#1:354\n190#1:355\n235#1:362\n236#1:363\n238#1:364\n86#1:366\n123#1:405\n141#1:406\n243#1:418\n248#1:451\n252#1:452\n260#1:453\n263#1:454\n161#1:318\n161#1:319,9\n161#1:353\n83#1:367\n83#1:368,9\n83#1:416\n240#1:419\n240#1:420,9\n240#1:458\n202#1:356,6\n91#1:399,6\n142#1:407,6\n125#1:365\n223#1:417\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\u001a{\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\u0010\u001a\r\u0010\u0011\u001a\u00020\u0001H\u0003\u00a2\u0006\u0002\u0010\u0012\u001aA\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0003\u00a2\u0006\u0002\u0010\u0016\u001a#\u0010\u0017\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007H\u0003\u00a2\u0006\u0002\u0010\u0019\u00a8\u0006\u001a\u00b2\u0006\n\u0010\u001b\u001a\u00020\u001cX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u001d\u001a\u00020\u001cX\u008a\u0084\u0002"
    }
    d2 = {
        "ChatInputBar",
        "",
        "text",
        "",
        "onTextChange",
        "Lkotlin/Function1;",
        "onSend",
        "Lkotlin/Function0;",
        "onMicClick",
        "onAttachFile",
        "onStopRecording",
        "isRecording",
        "",
        "recordingSeconds",
        "",
        "isOtherTyping",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZIZLandroidx/compose/runtime/Composer;II)V",
        "TypingIndicator",
        "(Landroidx/compose/runtime/Composer;I)V",
        "PillTextField",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "RecordingBar",
        "onStopClick",
        "(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "sendScale",
        "",
        "pulseAlpha"
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
.method public static final ChatInputBar(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZIZLandroidx/compose/runtime/Composer;II)V
    .locals 51
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "onTextChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onSend"    # Lkotlin/jvm/functions/Function0;
    .param p3, "onMicClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onAttachFile"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onStopRecording"    # Lkotlin/jvm/functions/Function0;
    .param p6, "isRecording"    # Z
    .param p7, "recordingSeconds"    # I
    .param p8, "isOtherTyping"    # Z
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;ZIZ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p10

    const-string v0, "text"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTextChange"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSend"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onMicClick"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAttachFile"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStopRecording"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const v0, -0x47187697

    move-object/from16 v9, p9

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v9, "C(ChatInputBar)N(text,onTextChange,onSend,onMicClick,onAttachFile,onStopRecording,isRecording,recordingSeconds,isOtherTyping)67@2916L4016:ChatInputBar.kt#5xjsc0"

    invoke-static {v12, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v9, p10

    .local v9, "$dirty":I
    and-int/lit8 v11, v10, 0x6

    if-nez v11, :cond_1

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    goto :goto_0

    :cond_0
    const/4 v11, 0x2

    :goto_0
    or-int/2addr v9, v11

    :cond_1
    and-int/lit8 v11, v10, 0x30

    if-nez v11, :cond_3

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_1

    :cond_2
    const/16 v11, 0x10

    :goto_1
    or-int/2addr v9, v11

    :cond_3
    and-int/lit16 v11, v10, 0x180

    if-nez v11, :cond_5

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x100

    goto :goto_2

    :cond_4
    const/16 v11, 0x80

    :goto_2
    or-int/2addr v9, v11

    :cond_5
    and-int/lit16 v11, v10, 0xc00

    if-nez v11, :cond_7

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x800

    goto :goto_3

    :cond_6
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v9, v11

    :cond_7
    and-int/lit16 v11, v10, 0x6000

    if-nez v11, :cond_9

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_4

    :cond_8
    const/16 v11, 0x2000

    :goto_4
    or-int/2addr v9, v11

    :cond_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v10

    if-nez v11, :cond_b

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v9, v11

    :cond_b
    const/high16 v11, 0x180000

    and-int/2addr v11, v10

    if-nez v11, :cond_d

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_c
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v9, v11

    :cond_d
    const/high16 v11, 0xc00000

    and-int/2addr v11, v10

    if-nez v11, :cond_f

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    if-eqz v11, :cond_e

    const/high16 v11, 0x800000

    goto :goto_7

    :cond_e
    const/high16 v11, 0x400000

    :goto_7
    or-int/2addr v9, v11

    :cond_f
    move/from16 v11, p11

    and-int/lit16 v13, v11, 0x100

    const/high16 v14, 0x6000000

    if-eqz v13, :cond_10

    or-int/2addr v9, v14

    move/from16 v14, p8

    goto :goto_9

    :cond_10
    and-int/2addr v14, v10

    if-nez v14, :cond_12

    move/from16 v14, p8

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x4000000

    goto :goto_8

    :cond_11
    const/high16 v15, 0x2000000

    :goto_8
    or-int/2addr v9, v15

    goto :goto_9

    :cond_12
    move/from16 v14, p8

    :goto_9
    move v15, v9

    .end local v9    # "$dirty":I
    .local v15, "$dirty":I
    const v9, 0x2492493

    and-int/2addr v9, v15

    const v0, 0x2492492

    if-eq v9, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    :goto_a
    and-int/lit8 v9, v15, 0x1

    invoke-interface {v12, v0, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz v13, :cond_14

    .line 65
    const/4 v0, 0x0

    move v14, v0

    .end local p8    # "isOtherTyping":Z
    .local v14, "isOtherTyping":Z
    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    const-string v9, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBar (ChatInputBar.kt:65)"

    const v13, -0x47187697

    invoke-static {v13, v15, v0, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 68
    :cond_15
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->imePadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .local v9, "modifier\\1":Landroidx/compose/ui/Modifier;
    const/4 v0, 0x0

    .local v0, "$changed\\1":I
    move-object v13, v12

    .local v13, "$composer\\1":Landroidx/compose/runtime/Composer;
    move/from16 v16, v0

    .end local v0    # "$changed\\1":I
    .local v16, "$changed\\1":I
    const/16 v17, 0x0

    .line 278
    .local v17, "$i$f$Column\\1\\68":I
    const v0, 0x4ff7456f

    const-string v7, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v13, v0, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 279
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v7

    .line 280
    .local v7, "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    .line 283
    .local v0, "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v18, v16, 0x3

    and-int/lit8 v18, v18, 0xe

    shr-int/lit8 v19, v16, 0x3

    and-int/lit8 v19, v19, 0x70

    or-int v1, v18, v19

    invoke-static {v7, v0, v13, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v18

    .line 287
    .local v18, "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 286
    shl-int/lit8 v1, v16, 0x3

    and-int/lit8 v1, v1, 0x70

    .line 284
    move/from16 v19, v1

    .local v19, "$changed\\2":I
    move-object v1, v13

    .local v1, "$composer\\2":Landroidx/compose/runtime/Composer;
    move-object/from16 p8, v18

    .local p8, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v20, v9

    .local v20, "modifier\\2":Landroidx/compose/ui/Modifier;
    const/16 v21, 0x0

    .line 288
    .local v21, "$i$f$Layout\\2\\284":I
    move-object/from16 v22, v0

    .end local v0    # "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    .local v22, "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    const v0, -0x451e1427

    const-string v2, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->hashCode(J)I

    move-result v23

    .line 290
    .local v23, "compositeKeyHash\\2":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 291
    .local v0, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v2, v20

    move-object/from16 v20, v7

    .end local v7    # "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v2, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v20, "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 293
    .local v7, "materialized\\2":Landroidx/compose/ui/Modifier;
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v24

    move-object/from16 v25, v1

    .end local v1    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\2":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v1, v19, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 292
    move-object/from16 v26, v25

    .local v26, "$composer\\3":Landroidx/compose/runtime/Composer;
    move/from16 v27, v1

    .local v27, "$changed\\3":I
    move-object/from16 v1, v24

    .local v1, "factory\\3":Lkotlin/jvm/functions/Function0;
    const/16 v24, 0x0

    .line 294
    .local v24, "$i$f$ReusableComposeNode\\3\\292":I
    move-object/from16 v28, v2

    .end local v2    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v28, "modifier\\2":Landroidx/compose/ui/Modifier;
    const v2, -0x20f7d59c

    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v29, v9

    move-object/from16 v9, v26

    .end local v26    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v9, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v29, "modifier\\1":Landroidx/compose/ui/Modifier;
    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 295
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 296
    :cond_16
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 297
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 298
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 300
    :cond_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 302
    :goto_b
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 303
    .local v3, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\302\\2":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v1

    .end local v1    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v30, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    move-object/from16 v26, v9

    move-object/from16 v9, p8

    .end local p8    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v9, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v26    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 304
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 305
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v31, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p8, v0

    .end local v0    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .local p8, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 306
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 307
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 308
    nop

    .line 302
    .end local v2    # "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\302\\2":I
    nop

    .line 309
    shr-int/lit8 v0, v27, 0x6

    and-int/lit8 v31, v0, 0xe

    .local v31, "$changed\\5":I
    move-object/from16 v0, v26

    .local v0, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 285
    .local v32, "$i$a$-Layout-ColumnKt$Column$1\\5\\309\\1":I
    const v1, 0x7cc0ae6e

    const-string v2, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v16, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v33, v2, 0x6

    .local v33, "$changed\\6":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$ChatInputBar_u24lambda_u248\\6":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v34, v1

    .end local v1    # "$this$ChatInputBar_u24lambda_u248\\6":Landroidx/compose/foundation/layout/ColumnScope;
    .local v34, "$this$ChatInputBar_u24lambda_u248\\6":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v1, v0

    .local v1, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v48, 0x0

    .line 69
    .local v48, "$i$a$-Column-ChatInputBarKt$ChatInputBar$1\\6\\285\\0":I
    const v2, -0x6591ba93

    const-string v3, "C:ChatInputBar.kt#5xjsc0"

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-eqz p6, :cond_18

    const v2, -0x659345f3

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "69@2998L126"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 71
    nop

    .line 72
    shr-int/lit8 v2, v15, 0x15

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v3, v15, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    .line 70
    invoke-static {v8, v6, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->RecordingBar(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 69
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v50, v0

    move-object v6, v1

    move-object/from16 v49, v30

    move-object/from16 v30, p8

    goto/16 :goto_d

    .line 74
    :cond_18
    const v2, -0x658f3127

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "76@3266L6,79@3397L11,81@3512L3322,75@3219L3615"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 77
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v1, v3}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v2

    .line 78
    const/4 v3, 0x4

    .local v3, "$this$dp\\7":I
    const/16 v35, 0x0

    .line 310
    .local v35, "$i$f$getDp\\7\\78":I
    move-object/from16 v36, v0

    .end local v0    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v36, "$composer\\5":Landroidx/compose/runtime/Composer;
    int-to-float v0, v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v42

    .line 78
    .end local v3    # "$this$dp\\7":I
    .end local v35    # "$i$f$getDp\\7\\78":I
    nop

    .line 79
    const/4 v0, 0x2

    .local v0, "$this$dp\\8":I
    const/4 v3, 0x0

    .line 311
    .local v3, "$i$f$getDp\\8\\79":I
    move-object/from16 v35, v2

    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v41

    .line 79
    .end local v0    # "$this$dp\\8":I
    .end local v3    # "$i$f$getDp\\8\\79":I
    nop

    .line 80
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v1, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v37

    .line 81
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x8

    .local v2, "$this$dp\\9":I
    const/4 v3, 0x0

    .line 312
    .local v3, "$i$f$getDp\\9\\81":I
    move-object/from16 v45, v1

    .end local v1    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v45, "$composer\\6":Landroidx/compose/runtime/Composer;
    int-to-float v1, v2

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 81
    .end local v2    # "$this$dp\\9":I
    .end local v3    # "$i$f$getDp\\9\\81":I
    const/4 v2, 0x4

    .local v2, "$this$dp\\10":I
    const/4 v3, 0x0

    .line 312
    .local v3, "$i$f$getDp\\10\\81":I
    move/from16 v39, v3

    .end local v3    # "$i$f$getDp\\10\\81":I
    .local v39, "$i$f$getDp\\10\\81":I
    int-to-float v3, v2

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 81
    .end local v2    # "$this$dp\\10":I
    .end local v39    # "$i$f$getDp\\10\\81":I
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v39

    .line 77
    check-cast v35, Landroidx/compose/ui/graphics/Shape;

    .line 80
    nop

    .line 79
    nop

    .line 78
    nop

    .line 82
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda9;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v49, v30

    move-object/from16 v50, v36

    move-object/from16 v6, v45

    move-object/from16 v30, p8

    .end local v36    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .end local v45    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local p8    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .local v6, "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v30, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .local v49, "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v50, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const/16 v1, 0x36

    const v2, -0x5f0800a2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v6, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v44, v0

    check-cast v44, Lkotlin/jvm/functions/Function2;

    .line 76
    move-object/from16 v36, v35

    move-object/from16 v35, v39

    const-wide/16 v39, 0x0

    const/16 v43, 0x0

    const v46, 0xc36006

    const/16 v47, 0x48

    .end local v6    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v45    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v35 .. v47}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 152
    .end local v45    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer\\6":Landroidx/compose/runtime/Composer;
    if-eqz v14, :cond_19

    const v0, -0x65588b8e

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "152@6885L17"

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->TypingIndicator(Landroidx/compose/runtime/Composer;I)V

    .line 152
    goto :goto_c

    :cond_19
    const v0, -0x65c086fd

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 74
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 69
    :goto_d
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 156
    nop

    .line 285
    .end local v6    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v33    # "$changed\\6":I
    .end local v34    # "$this$ChatInputBar_u24lambda_u248\\6":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v48    # "$i$a$-Column-ChatInputBarKt$ChatInputBar$1\\6\\285\\0":I
    invoke-static/range {v50 .. v50}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 309
    .end local v31    # "$changed\\5":I
    .end local v32    # "$i$a$-Layout-ColumnKt$Column$1\\5\\309\\1":I
    .end local v50    # "$composer\\5":Landroidx/compose/runtime/Composer;
    nop

    .line 313
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 294
    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 314
    nop

    .line 288
    .end local v24    # "$i$f$ReusableComposeNode\\3\\292":I
    .end local v26    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v27    # "$changed\\3":I
    .end local v49    # "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 315
    nop

    .line 278
    .end local v7    # "materialized\\2":Landroidx/compose/ui/Modifier;
    .end local v9    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v19    # "$changed\\2":I
    .end local v21    # "$i$f$Layout\\2\\284":I
    .end local v23    # "compositeKeyHash\\2":I
    .end local v25    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v28    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v30    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 316
    nop

    .end local v13    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed\\1":I
    .end local v17    # "$i$f$Column\\1\\68":I
    .end local v18    # "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "verticalArrangement\\1":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v22    # "horizontalAlignment\\1":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v29    # "modifier\\1":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 157
    :cond_1a
    move v9, v14

    goto :goto_e

    .line 55
    .end local v14    # "isOtherTyping":Z
    .local p8, "isOtherTyping":Z
    :cond_1b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v9, v14

    .line 157
    .end local p8    # "isOtherTyping":Z
    .local v9, "isOtherTyping":Z
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_1c

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda10;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZIZII)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1c
    return-void
.end method

.method static final ChatInputBar$lambda$8$lambda$7(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 55
    .param p0, "$text"    # Ljava/lang/String;
    .param p1, "$onTextChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$onSend"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$onMicClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$onAttachFile"    # Lkotlin/jvm/functions/Function0;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    move-object/from16 v0, p5

    move/from16 v1, p6

    const-string v2, "C82@3530L3290:ChatInputBar.kt#5xjsc0"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBar.<anonymous>.<anonymous> (ChatInputBar.kt:82)"

    const v6, -0x5f0800a2

    invoke-static {v6, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 84
    :cond_1
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 85
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 86
    const/16 v7, 0x8

    .local v7, "$this$dp\\1":I
    const/4 v8, 0x0

    .line 366
    .local v8, "$i$f$getDp\\1\\86":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 86
    .end local v7    # "$this$dp\\1":I
    .end local v8    # "$i$f$getDp\\1\\86":I
    const/16 v8, 0x8

    .local v8, "$this$dp\\2":I
    const/4 v9, 0x0

    .line 366
    .local v9, "$i$f$getDp\\2\\86":I
    int-to-float v10, v8

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 86
    .end local v8    # "$this$dp\\2":I
    .end local v9    # "$i$f$getDp\\2\\86":I
    invoke-static {v2, v7, v8}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 87
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v7

    .line 83
    nop

    .local v7, "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v8, 0x186

    .local v8, "$changed\\3":I
    move-object/from16 v9, p5

    .local v2, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v9, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 367
    .local v10, "$i$f$Row\\3\\83":I
    const v11, 0x3255a44b

    const-string v12, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 368
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v11

    .line 372
    .local v11, "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v12, v8, 0x3

    and-int/lit8 v12, v12, 0xe

    shr-int/lit8 v13, v8, 0x3

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v12, v13

    invoke-static {v11, v7, v9, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    .line 376
    .local v12, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 375
    shl-int/lit8 v13, v8, 0x3

    and-int/lit8 v13, v13, 0x70

    .line 373
    move-object v14, v12

    .local v14, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v15, v2

    .local v15, "modifier\\4":Landroidx/compose/ui/Modifier;
    move-object/from16 v16, v9

    .local v13, "$changed\\4":I
    .local v16, "$composer\\4":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 377
    .local v17, "$i$f$Layout\\4\\373":I
    const v3, -0x451e1427

    const-string v6, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v5, v16

    .end local v16    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 378
    invoke-static {v5, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    .line 379
    .local v3, "compositeKeyHash\\4":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 380
    .local v4, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v5, v15}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 382
    .local v6, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    shl-int/lit8 v0, v13, 0x6

    and-int/lit16 v0, v0, 0x380

    move/from16 v21, v0

    const/4 v0, 0x6

    or-int/lit8 v21, v21, 0x6

    .line 381
    nop

    .local v21, "$changed\\5":I
    move-object/from16 v22, v5

    .local v22, "$composer\\5":Landroidx/compose/runtime/Composer;
    move-object/from16 v23, v16

    .local v23, "factory\\5":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 383
    .local v16, "$i$f$ReusableComposeNode\\5\\381":I
    move/from16 v24, v0

    const v0, -0x20f7d59c

    const-string v1, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v25, v2

    move-object/from16 v2, v22

    .end local v22    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v25, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 384
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 385
    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 386
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    move-object/from16 v0, v23

    .end local v23    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v0, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 389
    .end local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v0, v23

    .end local v23    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 391
    :goto_1
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 392
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\391\\4":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v0

    .end local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v26, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v14, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 393
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 394
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v27, v2

    .end local v2    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v27, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 395
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 396
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 397
    nop

    .line 391
    .end local v1    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\391\\4":I
    nop

    .line 398
    shr-int/lit8 v0, v21, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\7":I
    move-object/from16 v1, v27

    .local v1, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 374
    .local v2, "$i$a$-Layout-RowKt$Row$1\\7\\398\\3":I
    move/from16 v22, v0

    .end local v0    # "$changed\\7":I
    .local v22, "$changed\\7":I
    const v0, 0x56ccd6f5

    move/from16 v23, v2

    .end local v2    # "$i$a$-Layout-RowKt$Row$1\\7\\398\\3":I
    .local v23, "$i$a$-Layout-RowKt$Row$1\\7\\398\\3":I
    const-string v2, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v8, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\8":I
    move-object/from16 v28, v0

    check-cast v28, Landroidx/compose/foundation/layout/RowScope;

    .local v28, "$this$ChatInputBar_u24lambda_u248_u24lambda_u247_u24lambda_u246\\8":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v1

    .local v0, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 89
    .local v41, "$i$a$-Row-ChatInputBarKt$ChatInputBar$1$1$1\\8\\374\\0":I
    move-object/from16 v42, v1

    .end local v1    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v42, "$composer\\7":Landroidx/compose/runtime/Composer;
    const v1, -0x3cf414f9

    move/from16 v43, v2

    .end local v2    # "$changed\\8":I
    .local v43, "$changed\\8":I
    const-string v2, "C90@3904L293,95@4277L922,88@3792L1407,115@5221L222,122@5465L39,124@5543L232,134@6045L11,135@6133L11,136@6233L11,137@6321L11,133@5962L426,141@6518L42,130@5797L1005:ChatInputBar.kt#5xjsc0"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 90
    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 91
    const v1, -0x1f75821

    const-string v2, "CC(remember):ChatInputBar.kt#9igjgp"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid\\9":Z
    move-object/from16 v30, v0

    .local v30, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 399
    .local v31, "$i$f$cache\\9\\91":I
    move/from16 v32, v1

    .end local v1    # "invalid\\9":Z
    .local v32, "invalid\\9":Z
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\9":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 400
    .local v33, "$i$a$-let-ComposerKt$cache$1\\10\\399\\9":I
    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v44, v3

    .end local v3    # "compositeKeyHash\\4":I
    .local v44, "compositeKeyHash\\4":I
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_4

    .line 401
    const/4 v3, 0x0

    .local v3, "$i$a$-cache-ChatInputBarKt$ChatInputBar$1$1$1$1\\11\\401\\8":I
    new-instance v34, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda4;

    invoke-direct/range {v34 .. v34}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda4;-><init>()V

    .end local v3    # "$i$a$-cache-ChatInputBarKt$ChatInputBar$1$1$1$1\\11\\401\\8":I
    move-object/from16 v3, v34

    .line 402
    .local v3, "value\\10":Ljava/lang/Object;
    move-object/from16 v34, v1

    move-object/from16 v1, v30

    .end local v30    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .local v34, "it\\9":Ljava/lang/Object;
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 403
    move-object/from16 v34, v3

    .end local v3    # "value\\10":Ljava/lang/Object;
    goto :goto_2

    .line 404
    .end local v34    # "it\\9":Ljava/lang/Object;
    .local v1, "it\\9":Ljava/lang/Object;
    .restart local v30    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    :cond_4
    move-object/from16 v34, v1

    move-object/from16 v1, v30

    .line 399
    .end local v30    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$a$-let-ComposerKt$cache$1\\10\\399\\9":I
    .local v1, "$this$cache\\9":Landroidx/compose/runtime/Composer;
    :goto_2
    nop

    .line 91
    .end local v1    # "$this$cache\\9":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$f$cache\\9\\91":I
    .end local v32    # "invalid\\9":Z
    move-object/from16 v31, v34

    check-cast v31, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 95
    nop

    .line 96
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda5;

    move-object/from16 v3, p3

    move-object/from16 v45, v4

    move-object/from16 v4, p4

    .end local v4    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .local v45, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-direct {v1, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const/16 v3, 0x36

    const v4, -0x2268f269

    move-object/from16 v46, v5

    const/4 v5, 0x1

    .end local v5    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v46, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v4, v5, v1, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lkotlin/jvm/functions/Function4;

    .line 89
    const/16 v30, 0x0

    const/16 v32, 0x0

    const-string v33, "mic_attach_transition"

    const/16 v34, 0x0

    const v37, 0x186180

    const/16 v38, 0x2a

    move-object/from16 v36, v0

    .end local v0    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v36, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v29 .. v38}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v29, v0

    check-cast v29, Landroidx/compose/ui/Modifier;

    const/16 v32, 0x2

    const/16 v33, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x0

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v32

    .line 116
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v33, v36

    .end local v36    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v33, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v29 .. v35}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->PillTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 123
    move-object/from16 v1, v33

    .end local v33    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x4

    .local v3, "$this$dp\\12":I
    const/4 v4, 0x0

    .line 405
    .local v4, "$i$f$getDp\\12\\123":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 123
    .end local v3    # "$this$dp\\12":I
    .end local v4    # "$i$f$getDp\\12\\123":I
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v3, v24

    invoke-static {v0, v1, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 126
    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const v0, 0x3f59999a    # 0.85f

    :goto_3
    move/from16 v29, v0

    .line 127
    const v0, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v0, v3, v4, v5, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroidx/compose/animation/core/AnimationSpec;

    .line 128
    nop

    .line 125
    const/16 v31, 0x0

    const-string v32, "send_scale"

    const/16 v33, 0x0

    const/16 v35, 0xc30

    const/16 v36, 0x14

    move-object/from16 v34, v1

    .end local v1    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v34, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v29 .. v36}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 133
    .end local v34    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v0, "sendScale$delegate\\8":Landroidx/compose/runtime/State;
    .restart local v1    # "$composer\\8":Landroidx/compose/runtime/Composer;
    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v20, 0x1

    xor-int/lit8 v3, v3, 0x1

    .line 134
    sget-object v29, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    .line 135
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v1, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v30

    .line 136
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v1, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v32

    const/16 v38, 0xe

    const/16 v39, 0x0

    const v34, 0x3df5c28f    # 0.12f

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v32 .. v39}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v34

    .line 137
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v1, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v32

    .line 138
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v1, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v47

    const/16 v53, 0xe

    const/16 v54, 0x0

    const v49, 0x3ec28f5c    # 0.38f

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-static/range {v47 .. v54}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v36

    .line 134
    nop

    .line 135
    nop

    .line 137
    nop

    .line 136
    nop

    .line 138
    sget v4, Landroidx/compose/material3/IconButtonDefaults;->$stable:I

    shl-int/lit8 v39, v4, 0xc

    .line 134
    const/16 v40, 0x0

    move-object/from16 v38, v1

    .end local v1    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v38, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v29 .. v40}, Landroidx/compose/material3/IconButtonDefaults;->filledIconButtonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/IconButtonColors;

    move-result-object v33

    .line 140
    .end local v38    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 141
    const/16 v5, 0x2c

    .local v5, "$this$dp\\13":I
    const/16 v18, 0x0

    .line 406
    .local v18, "$i$f$getDp\\13\\141":I
    move/from16 v31, v3

    int-to-float v3, v5

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 141
    .end local v5    # "$this$dp\\13":I
    .end local v18    # "$i$f$getDp\\13\\141":I
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 142
    const v4, -0x1f6125c

    invoke-static {v1, v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid\\14":Z
    move-object v4, v1

    .local v4, "$this$cache\\14":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 407
    .local v5, "$i$f$cache\\14\\142":I
    move-object/from16 v36, v1

    .end local v1    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v36    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\14":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 408
    .local v18, "$i$a$-let-ComposerKt$cache$1\\15\\407\\14":I
    if-nez v2, :cond_7

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v20, v2

    .end local v2    # "invalid\\14":Z
    .local v20, "invalid\\14":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_6

    goto :goto_4

    .line 412
    :cond_6
    goto :goto_5

    .line 408
    .end local v20    # "invalid\\14":Z
    .restart local v2    # "invalid\\14":Z
    :cond_7
    move/from16 v20, v2

    .line 409
    .end local v2    # "invalid\\14":Z
    .restart local v20    # "invalid\\14":Z
    :goto_4
    const/4 v2, 0x0

    .line 142
    .local v2, "$i$a$-cache-ChatInputBarKt$ChatInputBar$1$1$1$3\\16\\409\\8":I
    move-object/from16 v19, v1

    .end local v1    # "it\\14":Ljava/lang/Object;
    .local v19, "it\\14":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/State;)V

    .line 409
    .end local v2    # "$i$a$-cache-ChatInputBarKt$ChatInputBar$1$1$1$3\\16\\409\\8":I
    nop

    .line 410
    .local v1, "value\\15":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 411
    nop

    .line 407
    .end local v1    # "value\\15":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1\\15\\407\\14":I
    .end local v19    # "it\\14":Ljava/lang/Object;
    :goto_5
    nop

    .line 142
    .end local v4    # "$this$cache\\14":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache\\14\\142":I
    .end local v20    # "invalid\\14":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v36 .. v36}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v3, v1}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v30

    .line 132
    nop

    .line 142
    nop

    .line 133
    nop

    .line 134
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->getLambda$-1517561510$app()Lkotlin/jvm/functions/Function2;

    move-result-object v35

    .line 131
    const/16 v32, 0x0

    const/16 v34, 0x0

    const/high16 v37, 0x180000

    const/16 v38, 0x28

    move-object/from16 v29, p2

    invoke-static/range {v29 .. v38}, Landroidx/compose/material3/IconButtonKt;->FilledIconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 89
    move-object/from16 v1, v36

    .end local v36    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 149
    .end local v0    # "sendScale$delegate\\8":Landroidx/compose/runtime/State;
    nop

    .line 374
    .end local v1    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v28    # "$this$ChatInputBar_u24lambda_u248_u24lambda_u247_u24lambda_u246\\8":Landroidx/compose/foundation/layout/RowScope;
    .end local v41    # "$i$a$-Row-ChatInputBarKt$ChatInputBar$1$1$1\\8\\374\\0":I
    .end local v43    # "$changed\\8":I
    invoke-static/range {v42 .. v42}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 398
    .end local v22    # "$changed\\7":I
    .end local v23    # "$i$a$-Layout-RowKt$Row$1\\7\\398\\3":I
    .end local v42    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 413
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 383
    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 414
    nop

    .line 377
    .end local v16    # "$i$f$ReusableComposeNode\\5\\381":I
    .end local v21    # "$changed\\5":I
    .end local v26    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static/range {v46 .. v46}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 415
    nop

    .line 367
    .end local v6    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local v13    # "$changed\\4":I
    .end local v14    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v15    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v17    # "$i$f$Layout\\4\\373":I
    .end local v44    # "compositeKeyHash\\4":I
    .end local v45    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v46    # "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 416
    nop

    .end local v7    # "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    .end local v8    # "$changed\\3":I
    .end local v9    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$Row\\3\\83":I
    .end local v11    # "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v12    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v25    # "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 82
    :cond_8
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 150
    :cond_9
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$1$lambda$0(Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ContentTransform;
    .locals 14
    .param p0, "$this$AnimatedContent"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    const-string v0, "$this$AnimatedContent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v6, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const v9, 0x3f4ccccd    # 0.8f

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FJILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    .line 93
    invoke-static {v0, v1, v2, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v7, v5, v6, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    invoke-static {v0, v1, v2, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    const-wide/16 v8, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FJILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/compose/animation/AnimatedContentKt;->togetherWith(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    move-result-object v0

    return-object v0
.end method

.method static final ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$2(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/AnimatedContentScope;ZLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10
    .param p0, "$onMicClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "$onAttachFile"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$this$AnimatedContent"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p3, "isBlank"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "$this$AnimatedContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(isBlank):ChatInputBar.kt#5xjsc0"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBar.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ChatInputBar.kt:96)"

    const v2, -0x2268f269

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 97
    :cond_0
    if-eqz p3, :cond_1

    const v0, -0x52c89478

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "97@4357L363"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->getLambda$1334872975$app()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    const/high16 v8, 0x30000

    const/16 v9, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 97
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    .line 105
    :cond_1
    const v0, -0x52c224de

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "105@4782L369"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->getLambda$-1671831336$app()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    const/high16 v7, 0x30000

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 105
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 114
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$sendScale$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 365
    .local v3, "$i$f$getValue\\1\\125":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\125":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 125
    return v0
.end method

.method static final ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4(Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$sendScale$delegate"    # Landroidx/compose/runtime/State;
    .param p1, "$this$graphicsLayer"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;

    const-string v0, "$this$graphicsLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleY(F)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ChatInputBar$lambda$9(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZIZIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->ChatInputBar(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZIZLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final PillTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 47
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "onTextChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onSend"    # Lkotlin/jvm/functions/Function0;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    const v3, -0x10839e82

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(PillTextField)N(text,onTextChange,onSend,modifier)186@7687L11,191@7895L11,192@7955L10,194@8044L11,201@8308L35,203@8379L356,181@7528L1213:ChatInputBar.kt#5xjsc0"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p5

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x6

    const/4 v7, 0x4

    if-nez v6, :cond_1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v2, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v5, v8

    goto :goto_2

    :cond_3
    move-object/from16 v6, p1

    :goto_2
    and-int/lit16 v8, v2, 0x180

    const/16 v9, 0x100

    if-nez v8, :cond_5

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v5, v8

    :cond_5
    and-int/lit8 v8, p6, 0x8

    if-eqz v8, :cond_6

    or-int/lit16 v5, v5, 0xc00

    move-object/from16 v10, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v10, v2, 0xc00

    if-nez v10, :cond_8

    move-object/from16 v10, p3

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x800

    goto :goto_4

    :cond_7
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v5, v11

    goto :goto_5

    :cond_8
    move-object/from16 v10, p3

    :goto_5
    and-int/lit16 v11, v5, 0x493

    const/16 v12, 0x492

    if-eq v11, v12, :cond_9

    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    :goto_6
    and-int/lit8 v12, v5, 0x1

    invoke-interface {v4, v11, v12}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz v8, :cond_a

    .line 180
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .line 181
    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_a
    move-object v8, v10

    .line 180
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v8    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, -0x1

    const-string v11, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PillTextField (ChatInputBar.kt:180)"

    invoke-static {v3, v5, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 185
    :cond_b
    nop

    .line 187
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v10, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v4, v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v10

    .line 188
    const/16 v3, 0x1c

    .local v3, "$this$dp\\1":I
    const/4 v12, 0x0

    .line 354
    .local v12, "$i$f$getDp\\1\\188":I
    int-to-float v15, v3

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 188
    .end local v3    # "$this$dp\\1":I
    .end local v12    # "$i$f$getDp\\1\\188":I
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Shape;

    .line 186
    invoke-static {v8, v10, v11, v3}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 190
    const/16 v10, 0xc

    .local v10, "$this$dp\\2":I
    const/4 v11, 0x0

    .line 355
    .local v11, "$i$f$getDp\\2\\190":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 190
    .end local v10    # "$this$dp\\2":I
    .end local v11    # "$i$f$getDp\\2\\190":I
    const/16 v11, 0x8

    .local v11, "$this$dp\\3":I
    const/4 v12, 0x0

    .line 355
    .local v12, "$i$f$getDp\\3\\190":I
    int-to-float v15, v11

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 190
    .end local v11    # "$this$dp\\3":I
    .end local v12    # "$i$f$getDp\\3\\190":I
    invoke-static {v3, v10, v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 191
    new-instance v15, Landroidx/compose/ui/text/TextStyle;

    .line 192
    sget-object v10, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v11, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v10, v4, v11}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v16

    .line 193
    sget-object v10, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v11, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v10, v4, v11}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->getFontSize-XSAIIZE()J

    move-result-wide v18

    .line 191
    const v45, 0xfffffc

    const/16 v46, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v15 .. v46}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v11, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v12, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v11, v4, v12}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    new-instance v16, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 198
    sget-object v11, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getSentences-IUNYP9k()I

    move-result v17

    .line 197
    nop

    .line 199
    sget-object v11, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSend-eUduSuo()I

    move-result v20

    .line 197
    const/16 v24, 0x76

    const/16 v25, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v25}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    nop

    .line 202
    const v11, 0x1ea6f81

    const-string v12, "CC(remember):ChatInputBar.kt#9igjgp"

    invoke-static {v4, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v11, v5, 0xe

    if-ne v11, v7, :cond_c

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    and-int/lit16 v11, v5, 0x380

    if-ne v11, v9, :cond_d

    const/4 v13, 0x1

    goto :goto_9

    :cond_d
    const/4 v13, 0x0

    :goto_9
    or-int/2addr v7, v13

    .local v7, "invalid\\4":Z
    move-object v9, v4

    .local v9, "$this$cache\\4":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 356
    .local v11, "$i$f$cache\\4\\202":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it\\4":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 357
    .local v13, "$i$a$-let-ComposerKt$cache$1\\5\\356\\4":I
    if-nez v7, :cond_f

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_e

    goto :goto_a

    .line 361
    :cond_e
    goto :goto_b

    .line 358
    :cond_f
    :goto_a
    const/4 v14, 0x0

    .line 202
    .local v14, "$i$a$-cache-ChatInputBarKt$PillTextField$1\\6\\358\\0":I
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 358
    .end local v14    # "$i$a$-cache-ChatInputBarKt$PillTextField$1\\6\\358\\0":I
    nop

    .line 359
    .local v2, "value\\5":Ljava/lang/Object;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 360
    move-object v12, v2

    .line 356
    .end local v2    # "value\\5":Ljava/lang/Object;
    .end local v12    # "it\\4":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1\\5\\356\\4":I
    :goto_b
    nop

    .line 202
    .end local v7    # "invalid\\4":Z
    .end local v9    # "$this$cache\\4":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache\\4\\202":I
    move-object/from16 v23, v12

    check-cast v23, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 201
    new-instance v17, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x1f

    const/16 v25, 0x0

    invoke-direct/range {v17 .. v25}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 183
    nop

    .line 184
    nop

    .line 190
    nop

    .line 191
    nop

    .line 197
    nop

    .line 201
    nop

    .line 196
    nop

    .line 195
    move-object v14, v10

    check-cast v14, Landroidx/compose/ui/graphics/Brush;

    .line 204
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x36

    const v9, -0xb14cc5

    const/4 v10, 0x1

    invoke-static {v9, v10, v2, v4, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const/high16 v7, 0x30180000

    and-int/lit8 v9, v5, 0xe

    or-int/2addr v7, v9

    and-int/lit8 v9, v5, 0x70

    or-int/2addr v7, v9

    .line 182
    move v9, v5

    move-object v5, v15

    move-object v15, v2

    move-object v2, v3

    .end local v5    # "$dirty":I
    .local v9, "$dirty":I
    const/4 v3, 0x0

    move-object/from16 v6, v16

    move-object/from16 v16, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    move-object v10, v8

    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    const/4 v8, 0x0

    move v11, v9

    .end local v9    # "$dirty":I
    .local v11, "$dirty":I
    const/4 v9, 0x4

    move-object v12, v10

    .end local v10    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    const/4 v10, 0x0

    move v13, v11

    .end local v11    # "$dirty":I
    .local v13, "$dirty":I
    const/4 v11, 0x0

    move-object/from16 v18, v12

    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    const/4 v12, 0x0

    move/from16 v19, v13

    .end local v13    # "$dirty":I
    .local v19, "$dirty":I
    const/4 v13, 0x0

    move-object/from16 v20, v18

    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    const/high16 v18, 0x30000

    move/from16 v21, v19

    .end local v19    # "$dirty":I
    .local v21, "$dirty":I
    const/16 v19, 0x3d18

    move-object/from16 v1, v17

    move/from16 v17, v7

    move-object v7, v1

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 215
    :cond_10
    move-object/from16 v4, v20

    goto :goto_c

    .line 175
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v21    # "$dirty":I
    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$dirty":I
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move-object/from16 v16, v4

    move/from16 v21, v5

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$dirty":I
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$dirty":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v4, v10

    .line 215
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :goto_c
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method static final PillTextField$lambda$13$lambda$12(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardActionScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$text"    # Ljava/lang/String;
    .param p1, "$onSend"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$this$KeyboardActions"    # Landroidx/compose/foundation/text/KeyboardActionScope;

    const-string v0, "$this$KeyboardActions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PillTextField$lambda$14(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 27
    .param p0, "$text"    # Ljava/lang/String;
    .param p1, "innerTextField"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "innerTextField"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CN(innerTextField)211@8709L16:ChatInputBar.kt#5xjsc0"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0x6

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PillTextField.<anonymous> (ChatInputBar.kt:204)"

    const v5, -0xb14cc5

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 205
    :cond_3
    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x676c287e

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "207@8552L10,208@8617L11,205@8449L233"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 208
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v1, v4}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    .line 209
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v1, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v4

    const/16 v10, 0xe

    const/4 v11, 0x0

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    .line 207
    nop

    .line 209
    nop

    .line 208
    nop

    .line 206
    const-string v1, "Escribe un mensaje\u2026"

    move v5, v2

    .end local v2    # "$dirty":I
    .local v5, "$dirty":I
    const/4 v2, 0x0

    move v7, v5

    .end local v5    # "$dirty":I
    .local v7, "$dirty":I
    const-wide/16 v5, 0x0

    move v8, v7

    .end local v7    # "$dirty":I
    .local v8, "$dirty":I
    const/4 v7, 0x0

    move v9, v8

    .end local v8    # "$dirty":I
    .local v9, "$dirty":I
    const/4 v8, 0x0

    move v10, v9

    .end local v9    # "$dirty":I
    .local v10, "$dirty":I
    const/4 v9, 0x0

    move v12, v10

    .end local v10    # "$dirty":I
    .local v12, "$dirty":I
    const-wide/16 v10, 0x0

    move v13, v12

    .end local v12    # "$dirty":I
    .local v13, "$dirty":I
    const/4 v12, 0x0

    move v14, v13

    .end local v13    # "$dirty":I
    .local v14, "$dirty":I
    const/4 v13, 0x0

    move/from16 v16, v14

    .end local v14    # "$dirty":I
    .local v16, "$dirty":I
    const-wide/16 v14, 0x0

    move/from16 v17, v16

    .end local v16    # "$dirty":I
    .local v17, "$dirty":I
    const/16 v16, 0x0

    move/from16 v18, v17

    .end local v17    # "$dirty":I
    .local v18, "$dirty":I
    const/16 v17, 0x0

    move/from16 v19, v18

    .end local v18    # "$dirty":I
    .local v19, "$dirty":I
    const/16 v18, 0x0

    move/from16 v20, v19

    .end local v19    # "$dirty":I
    .local v20, "$dirty":I
    const/16 v19, 0x0

    move/from16 v22, v20

    .end local v20    # "$dirty":I
    .local v22, "$dirty":I
    const/16 v20, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    const v25, 0xfffa

    move/from16 v26, v22

    move-object/from16 v22, p2

    .end local v22    # "$dirty":I
    .local v26, "$dirty":I
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 205
    move-object/from16 v1, v22

    goto :goto_2

    .end local v26    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_4
    move/from16 v26, v2

    .end local v2    # "$dirty":I
    .restart local v26    # "$dirty":I
    const v2, 0x66ec6667

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 212
    and-int/lit8 v2, v26, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 204
    .end local v26    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_5
    move/from16 v26, v2

    .end local v2    # "$dirty":I
    .restart local v26    # "$dirty":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 213
    :cond_6
    :goto_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final PillTextField$lambda$15(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    or-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p5

    move-object v5, p6

    invoke-static/range {v1 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->PillTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final RecordingBar(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p0, "recordingSeconds"    # I
    .param p1, "onStopClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 221
    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x656aa0aa

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(RecordingBar)N(recordingSeconds,onStopClick)221@8871L43,222@8956L239,233@9240L6,236@9347L11,238@9446L1407,232@9201L1652:ChatInputBar.kt#5xjsc0"

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v2, 0x6

    if-nez v5, :cond_1

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v4, v5

    :cond_1
    and-int/lit8 v5, v2, 0x30

    if-nez v5, :cond_3

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    :cond_3
    move v12, v4

    .end local v4    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit8 v4, v12, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    and-int/lit8 v5, v12, 0x1

    invoke-interface {v14, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, -0x1

    const-string v5, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.RecordingBar (ChatInputBar.kt:220)"

    invoke-static {v3, v12, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 222
    :cond_5
    const-string v3, "pulse"

    const/4 v4, 0x6

    invoke-static {v3, v14, v4, v6}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v3

    .line 223
    .local v3, "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    nop

    .line 224
    nop

    .line 225
    nop

    .line 227
    const/16 v5, 0x320

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v4, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 228
    sget-object v6, Landroidx/compose/animation/core/RepeatMode;->Reverse:Landroidx/compose/animation/core/RepeatMode;

    .line 226
    const/4 v9, 0x4

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v7

    .line 230
    sget v4, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v4, v4, 0x61b0

    sget v5, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v5, v5, 0x9

    or-int v10, v4, v5

    .line 223
    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v8, "pulse_alpha"

    const/4 v11, 0x0

    move-object v4, v3

    move-object v9, v14

    .end local v3    # "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 234
    move-object/from16 v17, v4

    .end local v4    # "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "pulseAlpha$delegate":Landroidx/compose/runtime/State;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v14, v5}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v4

    .line 235
    const/4 v5, 0x4

    .local v5, "$this$dp\\1":I
    const/4 v6, 0x0

    .line 362
    .local v6, "$i$f$getDp\\1\\235":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 235
    .end local v5    # "$this$dp\\1":I
    .end local v6    # "$i$f$getDp\\1\\235":I
    nop

    .line 236
    const/4 v5, 0x2

    .local v5, "$this$dp\\2":I
    const/4 v6, 0x0

    .line 363
    .local v6, "$i$f$getDp\\2\\236":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 236
    .end local v5    # "$this$dp\\2":I
    .end local v6    # "$i$f$getDp\\2\\236":I
    nop

    .line 237
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v14, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v6

    .line 238
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/16 v8, 0x8

    .local v8, "$this$dp\\3":I
    const/4 v9, 0x0

    .line 364
    .local v9, "$i$f$getDp\\3\\238":I
    int-to-float v15, v8

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 238
    .end local v8    # "$this$dp\\3":I
    .end local v9    # "$i$f$getDp\\3\\238":I
    const/4 v9, 0x4

    .local v9, "$this$dp\\4":I
    const/4 v15, 0x0

    .line 364
    .local v15, "$i$f$getDp\\4\\238":I
    int-to-float v13, v9

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 238
    .end local v9    # "$this$dp\\4":I
    .end local v15    # "$i$f$getDp\\4\\238":I
    invoke-static {v5, v8, v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 234
    check-cast v4, Landroidx/compose/ui/graphics/Shape;

    .line 237
    nop

    .line 236
    nop

    .line 235
    nop

    .line 239
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda7;

    invoke-direct {v8, v0, v1, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V

    const/16 v9, 0x36

    const v13, 0x46b0742f

    const/4 v15, 0x1

    invoke-static {v13, v15, v8, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 233
    const-wide/16 v8, 0x0

    move v15, v12

    .end local v12    # "$dirty":I
    .local v15, "$dirty":I
    const/4 v12, 0x0

    move/from16 v16, v15

    .end local v15    # "$dirty":I
    .local v16, "$dirty":I
    const v15, 0xc36006

    move/from16 v18, v16

    .end local v16    # "$dirty":I
    .local v18, "$dirty":I
    const/16 v16, 0x48

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v3    # "pulseAlpha$delegate":Landroidx/compose/runtime/State;
    .end local v17    # "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    goto :goto_3

    .line 217
    .end local v18    # "$dirty":I
    .restart local v12    # "$dirty":I
    :cond_6
    move/from16 v18, v12

    .end local v12    # "$dirty":I
    .restart local v18    # "$dirty":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 276
    :cond_7
    :goto_3
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v4, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda8;-><init>(ILkotlin/jvm/functions/Function0;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method private static final RecordingBar$lambda$16(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$pulseAlpha$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 417
    .local v3, "$i$f$getValue\\1\\223":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\223":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 223
    return v0
.end method

.method static final RecordingBar$lambda$18(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 56
    .param p0, "$recordingSeconds"    # I
    .param p1, "$onStopClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$pulseAlpha$delegate"    # Landroidx/compose/runtime/State;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-string v2, "C239@9456L1391:ChatInputBar.kt#5xjsc0"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.RecordingBar.<anonymous> (ChatInputBar.kt:239)"

    const v6, 0x46b0742f

    invoke-static {v6, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 241
    :cond_1
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 242
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 243
    const/16 v3, 0xc

    .local v3, "$this$dp\\1":I
    const/4 v4, 0x0

    .line 418
    .local v4, "$i$f$getDp\\1\\243":I
    int-to-float v6, v3

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 243
    .end local v3    # "$this$dp\\1":I
    .end local v4    # "$i$f$getDp\\1\\243":I
    const/16 v4, 0x8

    .local v4, "$this$dp\\2":I
    const/4 v6, 0x0

    .line 418
    .local v6, "$i$f$getDp\\2\\243":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 243
    .end local v4    # "$this$dp\\2":I
    .end local v6    # "$i$f$getDp\\2\\243":I
    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 244
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    .line 240
    move-object/from16 v4, p3

    .local v4, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/16 v6, 0x186

    .local v2, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v3, "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    .local v6, "$changed\\3":I
    const/4 v7, 0x0

    .line 419
    .local v7, "$i$f$Row\\3\\240":I
    const v8, 0x3255a44b

    const-string v9, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v4, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 420
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v8

    .line 424
    .local v8, "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v9, v6, 0x3

    and-int/lit8 v9, v9, 0xe

    shr-int/lit8 v10, v6, 0x3

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v9, v10

    invoke-static {v8, v3, v4, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .line 428
    .local v9, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 427
    shl-int/lit8 v10, v6, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 425
    nop

    .local v10, "$changed\\4":I
    move-object v11, v4

    .local v11, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object v12, v2

    .local v12, "modifier\\4":Landroidx/compose/ui/Modifier;
    move-object v13, v9

    .local v13, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v14, 0x0

    .line 429
    .local v14, "$i$f$Layout\\4\\425":I
    const v15, -0x451e1427

    const-string v5, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v11, v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 430
    const/4 v5, 0x0

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    .line 431
    .local v5, "compositeKeyHash\\4":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 432
    .local v15, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v11, v12}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 434
    .local v0, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    shl-int/lit8 v1, v10, 0x6

    and-int/lit16 v1, v1, 0x380

    move/from16 v18, v1

    const/4 v1, 0x6

    or-int/lit8 v18, v18, 0x6

    .line 433
    nop

    .local v18, "$changed\\5":I
    move-object/from16 v19, v11

    .local v19, "$composer\\5":Landroidx/compose/runtime/Composer;
    move-object/from16 v20, v17

    .local v20, "factory\\5":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    .line 435
    .local v17, "$i$f$ReusableComposeNode\\5\\433":I
    move/from16 v21, v1

    const v1, -0x20f7d59c

    move-object/from16 v22, v2

    .end local v2    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v22, "modifier\\3":Landroidx/compose/ui/Modifier;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v23, v3

    move-object/from16 v3, v19

    .end local v19    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v23, "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 436
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 437
    :cond_2
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 438
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    move-object/from16 v1, v20

    .end local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v1, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 441
    .end local v1    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v1, v20

    .end local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 443
    :goto_1
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 444
    .local v19, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\443\\4":I
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v1

    .end local v1    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v24, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 445
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 446
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v3

    .end local v3    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 447
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 448
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 449
    nop

    .line 443
    .end local v2    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\443\\4":I
    nop

    .line 450
    shr-int/lit8 v1, v18, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\7":I
    move-object/from16 v2, v25

    .local v2, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 426
    .local v3, "$i$a$-Layout-RowKt$Row$1\\7\\450\\3":I
    move-object/from16 v19, v0

    .end local v0    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v19, "materialized\\4":Landroidx/compose/ui/Modifier;
    const v0, 0x56ccd6f5

    move/from16 v20, v1

    .end local v1    # "$changed\\7":I
    .local v20, "$changed\\7":I
    const-string v1, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v6, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed\\8":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v47, v2

    .local v47, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/16 v51, 0x0

    .line 246
    .local v51, "$i$a$-Row-ChatInputBarKt$RecordingBar$1$1\\8\\426\\0":I
    move-object/from16 v52, v0

    .end local v0    # "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    .local v52, "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    const v0, -0x310021fe

    move/from16 v53, v1

    .end local v1    # "$changed\\8":I
    .local v53, "$changed\\8":I
    const-string v1, "C249@9830L11,245@9671L216,251@9900L40,254@10054L10,255@10116L11,252@9953L198,257@10164L38,260@10313L11,258@10215L622:ChatInputBar.kt#5xjsc0"

    move-object/from16 v54, v2

    .end local v47    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v54, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 247
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 248
    const/16 v1, 0xa

    .local v1, "$this$dp\\9":I
    const/16 v26, 0x0

    .line 451
    .local v26, "$i$f$getDp\\9\\248":I
    move/from16 v55, v3

    .end local v3    # "$i$a$-Layout-RowKt$Row$1\\7\\450\\3":I
    .local v55, "$i$a$-Layout-RowKt$Row$1\\7\\450\\3":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 248
    .end local v1    # "$this$dp\\9":I
    .end local v26    # "$i$f$getDp\\9\\248":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 249
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    .line 250
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v27

    invoke-static/range {p2 .. p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->RecordingBar$lambda$16(Landroidx/compose/runtime/State;)F

    move-result v29

    const/16 v33, 0xe

    const/16 v34, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v27

    const/16 v30, 0x2

    const/16 v31, 0x0

    const/16 v29, 0x0

    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 246
    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 252
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0xc

    .local v1, "$this$dp\\10":I
    const/4 v3, 0x0

    .line 452
    .local v3, "$i$f$getDp\\10\\252":I
    move/from16 v26, v3

    .end local v3    # "$i$f$getDp\\10\\252":I
    .local v26, "$i$f$getDp\\10\\252":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 252
    .end local v1    # "$this$dp\\10":I
    .end local v26    # "$i$f$getDp\\10\\252":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v1, v21

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 254
    invoke-static/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt;->formatDuration(I)Ljava/lang/String;

    move-result-object v26

    .line 255
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v46

    .line 256
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v28

    .line 254
    nop

    .line 256
    nop

    .line 255
    nop

    .line 253
    const/16 v27, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const v50, 0xfffa

    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v47    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v26 .. v50}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 258
    .end local v47    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v27, v0

    check-cast v27, Landroidx/compose/ui/Modifier;

    const/16 v30, 0x2

    const/16 v31, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    move-object/from16 v26, v52

    .end local v52    # "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    .local v26, "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    .end local v26    # "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    .restart local v52    # "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 260
    const/16 v0, 0x10

    .local v0, "$this$dp\\11":I
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$f$getDp\\11\\260":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 260
    .end local v0    # "$this$dp\\11":I
    .end local v1    # "$i$f$getDp\\11\\260":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    .line 261
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v26

    const/16 v32, 0xe

    const v28, 0x3df5c28f    # 0.12f

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v26 .. v33}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v30

    .line 263
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v3, 0x28

    .local v3, "$this$dp\\12":I
    const/16 v16, 0x0

    .line 454
    .local v16, "$i$f$getDp\\12\\263":I
    move-object/from16 v21, v0

    int-to-float v0, v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 263
    .end local v3    # "$this$dp\\12":I
    .end local v16    # "$i$f$getDp\\12\\263":I
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v27

    .line 262
    nop

    .line 263
    nop

    .line 260
    move-object/from16 v29, v21

    check-cast v29, Landroidx/compose/ui/graphics/Shape;

    .line 261
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatInputBarKt;->getLambda$686590238$app()Lkotlin/jvm/functions/Function2;

    move-result-object v38

    .line 259
    const/16 v28, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v40, 0x30

    const/16 v41, 0x6

    const/16 v42, 0x3e4

    move-object/from16 v26, p1

    move-object/from16 v39, v2

    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v39, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v26 .. v42}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    .line 246
    .end local v39    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 274
    nop

    .line 426
    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v51    # "$i$a$-Row-ChatInputBarKt$RecordingBar$1$1\\8\\426\\0":I
    .end local v52    # "$this$RecordingBar_u24lambda_u2418_u24lambda_u2417\\8":Landroidx/compose/foundation/layout/RowScope;
    .end local v53    # "$changed\\8":I
    invoke-static/range {v54 .. v54}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 450
    .end local v20    # "$changed\\7":I
    .end local v54    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v55    # "$i$a$-Layout-RowKt$Row$1\\7\\450\\3":I
    nop

    .line 455
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 435
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 456
    nop

    .line 429
    .end local v17    # "$i$f$ReusableComposeNode\\5\\433":I
    .end local v18    # "$changed\\5":I
    .end local v24    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 457
    nop

    .line 419
    .end local v5    # "compositeKeyHash\\4":I
    .end local v10    # "$changed\\4":I
    .end local v11    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v12    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v13    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v14    # "$i$f$Layout\\4\\425":I
    .end local v15    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v19    # "materialized\\4":Landroidx/compose/ui/Modifier;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 458
    nop

    .end local v4    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v6    # "$changed\\3":I
    .end local v7    # "$i$f$Row\\3\\240":I
    .end local v8    # "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v9    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v23    # "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 239
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 275
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final RecordingBar$lambda$19(ILkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->RecordingBar(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final TypingIndicator(Landroidx/compose/runtime/Composer;I)V
    .locals 54
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 160
    move/from16 v0, p1

    const v1, 0x5ef40fe5

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .end local p0    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(TypingIndicator)160@6984L381:ChatInputBar.kt#5xjsc0"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v6, v0, 0x1

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.TypingIndicator (ChatInputBar.kt:159)"

    invoke-static {v1, v0, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 162
    :cond_1
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 163
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 164
    const/16 v1, 0x30

    .local v1, "$this$dp\\1":I
    const/4 v4, 0x0

    .line 317
    .local v4, "$i$f$getDp\\1\\164":I
    int-to-float v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 164
    .end local v1    # "$this$dp\\1":I
    .end local v4    # "$i$f$getDp\\1\\164":I
    const/4 v1, 0x4

    .local v1, "$this$dp\\2":I
    const/4 v4, 0x0

    .line 317
    .local v4, "$i$f$getDp\\2\\164":I
    int-to-float v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 164
    .end local v1    # "$this$dp\\2":I
    .end local v4    # "$i$f$getDp\\2\\164":I
    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 165
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    .line 161
    nop

    .local v1, "modifier\\3":Landroidx/compose/ui/Modifier;
    const/16 v5, 0x186

    .local v4, "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    .local v5, "$changed\\3":I
    move-object v6, v2

    .local v6, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 318
    .local v7, "$i$f$Row\\3\\161":I
    const v8, 0x3255a44b

    const-string v9, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v6, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 319
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v8

    .line 323
    .local v8, "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v9, v5, 0x3

    and-int/lit8 v9, v9, 0xe

    shr-int/lit8 v10, v5, 0x3

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v9, v10

    invoke-static {v8, v4, v6, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .line 327
    .local v9, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 326
    shl-int/lit8 v10, v5, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 324
    nop

    .local v10, "$changed\\4":I
    move-object v11, v1

    .local v11, "modifier\\4":Landroidx/compose/ui/Modifier;
    move-object v12, v6

    .local v12, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object v13, v9

    .local v13, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v14, 0x0

    .line 328
    .local v14, "$i$f$Layout\\4\\324":I
    const v15, -0x451e1427

    const-string v3, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v12, v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 329
    const/4 v3, 0x0

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    .line 330
    .local v3, "compositeKeyHash\\4":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 331
    .local v15, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 p0, v1

    .end local v1    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local p0, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v12, v11}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 333
    .local v1, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v2, v10, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    .line 332
    move-object/from16 v18, v16

    .local v2, "$changed\\5":I
    .local v18, "factory\\5":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v12

    .local v16, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 334
    .local v19, "$i$f$ReusableComposeNode\\5\\332":I
    move/from16 v20, v2

    .end local v2    # "$changed\\5":I
    .local v20, "$changed\\5":I
    const v2, -0x20f7d59c

    move/from16 v21, v3

    .end local v3    # "compositeKeyHash\\4":I
    .local v21, "compositeKeyHash\\4":I
    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v22, v4

    move-object/from16 v4, v16

    .end local v16    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v4, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v22, "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 335
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 336
    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 337
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    move-object/from16 v2, v18

    .end local v18    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 340
    .end local v2    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v2, v18

    .end local v18    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 342
    :goto_1
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 343
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\342\\4":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v23, v2

    .end local v2    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v23, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v13, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 344
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 345
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v4

    .end local v4    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v24, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 346
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 347
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 348
    nop

    .line 342
    .end local v3    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\342\\4":I
    nop

    .line 349
    shr-int/lit8 v2, v20, 0x6

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed\\7":I
    move-object/from16 v3, v24

    .local v3, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 325
    .local v4, "$i$a$-Layout-RowKt$Row$1\\7\\349\\3":I
    move-object/from16 v16, v1

    .end local v1    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v16, "materialized\\4":Landroidx/compose/ui/Modifier;
    const v1, 0x56ccd6f5

    move/from16 v18, v2

    .end local v2    # "$changed\\7":I
    .local v18, "$changed\\7":I
    const-string v2, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v5, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\8":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$TypingIndicator_u24lambda_u2410\\8":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v46, v3

    .local v46, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 167
    .local v50, "$i$a$-Row-ChatInputBarKt$TypingIndicator$1\\8\\325\\0":I
    move-object/from16 v51, v1

    .end local v1    # "$this$TypingIndicator_u24lambda_u2410\\8":Landroidx/compose/foundation/layout/RowScope;
    .local v51, "$this$TypingIndicator_u24lambda_u2410\\8":Landroidx/compose/foundation/layout/RowScope;
    const v1, -0x7599fbbd

    move/from16 v52, v2

    .end local v2    # "$changed\\8":I
    .local v52, "$changed\\8":I
    const-string v2, "C168@7245L10,169@7302L11,166@7168L191:ChatInputBar.kt#5xjsc0"

    move-object/from16 v53, v3

    .end local v46    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v53, "$composer\\7":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 169
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getLabelSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v45

    .line 170
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v25

    const/16 v31, 0xe

    const/16 v32, 0x0

    const v27, 0x3f19999a    # 0.6f

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v25 .. v32}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v27

    .line 168
    nop

    .line 170
    nop

    .line 169
    nop

    .line 167
    const-string v25, "Escribiendo..."

    const/16 v26, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x6

    const/16 v48, 0x0

    const v49, 0xfffa

    .end local v3    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v46    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v25 .. v49}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static/range {v46 .. v46}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 172
    nop

    .line 325
    .end local v46    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$a$-Row-ChatInputBarKt$TypingIndicator$1\\8\\325\\0":I
    .end local v51    # "$this$TypingIndicator_u24lambda_u2410\\8":Landroidx/compose/foundation/layout/RowScope;
    .end local v52    # "$changed\\8":I
    invoke-static/range {v53 .. v53}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 349
    .end local v4    # "$i$a$-Layout-RowKt$Row$1\\7\\349\\3":I
    .end local v18    # "$changed\\7":I
    .end local v53    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 350
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 334
    invoke-static/range {v24 .. v24}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 351
    nop

    .line 328
    .end local v19    # "$i$f$ReusableComposeNode\\5\\332":I
    .end local v20    # "$changed\\5":I
    .end local v23    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 352
    nop

    .line 318
    .end local v10    # "$changed\\4":I
    .end local v11    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v12    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v13    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v14    # "$i$f$Layout\\4\\324":I
    .end local v15    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v16    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local v21    # "compositeKeyHash\\4":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 353
    nop

    .end local v5    # "$changed\\3":I
    .end local v6    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$Row\\3\\161":I
    .end local v8    # "horizontalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v9    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "verticalAlignment\\3":Landroidx/compose/ui/Alignment$Vertical;
    .end local p0    # "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 159
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    :cond_4
    move-object/from16 v17, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 173
    :cond_5
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method static final TypingIndicator$lambda$11(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->TypingIndicator(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
