.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;
.super Ljava/lang/Object;
.source "MessageBubble.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageBubble.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageBubble.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 AnnotatedString.kt\nandroidx/compose/ui/text/AnnotatedStringKt\n+ 8 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 9 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n*L\n1#1,245:1\n75#2:246\n122#3:247\n122#3:248\n122#3:277\n122#3:278\n122#3:279\n122#3:280\n132#3:281\n122#3:300\n122#3:301\n122#3:302\n122#3:303\n122#3:304\n99#4,6:249\n106#4:285\n81#5,6:255\n88#5,6:270\n96#5:284\n81#5,6:315\n88#5,6:330\n96#5:339\n81#5,6:352\n88#5,6:367\n96#5:376\n391#6,9:261\n400#6:276\n401#6,2:282\n391#6,9:321\n400#6,3:336\n391#6,9:358\n400#6,3:373\n1580#7:286\n1398#7,6:287\n1580#7:293\n1398#7,6:294\n87#8:305\n84#8,9:306\n94#8:340\n70#9:341\n66#9,10:342\n77#9:377\n*S KotlinDebug\n*F\n+ 1 MessageBubble.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt\n*L\n55#1:246\n57#1:247\n62#1:248\n69#1:277\n70#1:278\n72#1:279\n82#1:280\n83#1:281\n170#1:300\n171#1:301\n172#1:302\n241#1:303\n85#1:304\n59#1:249,6\n59#1:285\n59#1:255,6\n59#1:270,6\n59#1:284\n85#1:315,6\n85#1:330,6\n85#1:339\n213#1:352,6\n213#1:367,6\n213#1:376\n59#1:261,9\n59#1:276\n59#1:282,2\n85#1:321,9\n85#1:336,3\n213#1:358,9\n213#1:373,3\n134#1:286\n137#1:287,6\n150#1:293\n153#1:294,6\n85#1:305\n85#1:306,9\n85#1:340\n213#1:341\n213#1:342,10\n213#1:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aY\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00010\u000eH\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u001d\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0005H\u0003\u00a2\u0006\u0002\u0010\u0012\u001a \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a!\u0010\u0015\u001a\u00020\u00012\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a+\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "MessageBubble",
        "",
        "message",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "isFirstInGroup",
        "",
        "isLastInGroup",
        "currentUserId",
        "",
        "psychologistInfo",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;",
        "audioUiState",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;",
        "onPlayPause",
        "Lkotlin/Function2;",
        "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZLjava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "MessageWithTimestamp",
        "isOwn",
        "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLandroidx/compose/runtime/Composer;I)V",
        "messageBubbleShape",
        "Landroidx/compose/foundation/shape/RoundedCornerShape;",
        "PsychologistAvatar",
        "size",
        "Landroidx/compose/ui/unit/Dp;",
        "PsychologistAvatar-ziNgDLE",
        "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;FLandroidx/compose/runtime/Composer;I)V",
        "StatusIcon",
        "isRead",
        "isDelivered",
        "tint",
        "Landroidx/compose/ui/graphics/Color;",
        "StatusIcon-gKt5lHk",
        "(ZZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V",
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


# direct methods
.method public static final MessageBubble(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZLjava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 53
    .param p0, "message"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p1, "isFirstInGroup"    # Z
    .param p2, "isLastInGroup"    # Z
    .param p3, "currentUserId"    # Ljava/lang/String;
    .param p4, "psychologistInfo"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;
    .param p5, "audioUiState"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    .param p6, "onPlayPause"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            "ZZ",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;",
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

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    const-string v0, "message"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentUserId"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUiState"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlayPause"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const v0, -0x165c0020

    move-object/from16 v9, p7

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v10, "C(MessageBubble)N(message,isFirstInGroup,isLastInGroup,currentUserId,psychologistInfo,audioUiState,onPlayPause)54@2396L7,58@2482L1829:MessageBubble.kt#5xjsc0"

    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v10, p8

    .local v10, "$dirty":I
    and-int/lit8 v11, v8, 0x6

    if-nez v11, :cond_1

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    goto :goto_0

    :cond_0
    const/4 v11, 0x2

    :goto_0
    or-int/2addr v10, v11

    :cond_1
    and-int/lit8 v11, v8, 0x30

    if-nez v11, :cond_3

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_1

    :cond_2
    const/16 v11, 0x10

    :goto_1
    or-int/2addr v10, v11

    :cond_3
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_5

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x100

    goto :goto_2

    :cond_4
    const/16 v11, 0x80

    :goto_2
    or-int/2addr v10, v11

    :cond_5
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_7

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x800

    goto :goto_3

    :cond_6
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v10, v11

    :cond_7
    and-int/lit16 v11, v8, 0x6000

    if-nez v11, :cond_9

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_4

    :cond_8
    const/16 v11, 0x2000

    :goto_4
    or-int/2addr v10, v11

    :cond_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v8

    if-nez v11, :cond_b

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v10, v11

    :cond_b
    const/high16 v11, 0x180000

    and-int/2addr v11, v8

    if-nez v11, :cond_d

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_c
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v10, v11

    :cond_d
    const v11, 0x92493

    and-int/2addr v11, v10

    const v12, 0x92492

    if-eq v11, v12, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    and-int/lit8 v12, v10, 0x1

    invoke-interface {v9, v11, v12}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, -0x1

    const-string v12, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubble (MessageBubble.kt:52)"

    invoke-static {v0, v10, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 54
    :cond_f
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 55
    .local v0, "isOwn":Z
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .local v11, "this_\\1":Landroidx/compose/runtime/CompositionLocal;
    const/4 v12, 0x0

    .local v12, "$changed\\1":I
    move-object v15, v9

    .local v15, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 246
    .local v16, "$i$f$getCurrent\\1\\55":I
    const v13, 0x789c5f52

    const-string v14, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v15, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v11    # "this_\\1":Landroidx/compose/runtime/CompositionLocal;
    .end local v12    # "$changed\\1":I
    .end local v15    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$getCurrent\\1\\55":I
    check-cast v13, Landroid/content/res/Configuration;

    iget v11, v13, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 55
    nop

    .line 57
    .local v11, "screenWidth":I
    if-eqz v3, :cond_10

    const/16 v12, 0x8

    .local v12, "$this$dp\\2":I
    const/4 v13, 0x0

    .line 247
    .local v13, "$i$f$getDp\\2\\57":I
    int-to-float v14, v12

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    .end local v12    # "$this$dp\\2":I
    .end local v13    # "$i$f$getDp\\2\\57":I
    goto :goto_8

    .line 57
    :cond_10
    const/4 v12, 0x2

    .local v12, "$this$dp\\3":I
    const/4 v13, 0x0

    .line 247
    .local v13, "$i$f$getDp\\3\\57":I
    int-to-float v14, v12

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    move v12, v14

    .line 57
    .end local v12    # "$this$dp\\3":I
    .end local v13    # "$i$f$getDp\\3\\57":I
    :goto_8
    move/from16 v22, v12

    .line 60
    .local v22, "bottomPadding":F
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 61
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v12, v13, v15, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 62
    const/16 v15, 0x8

    .local v15, "$this$dp\\4":I
    const/16 v16, 0x0

    .line 248
    .local v16, "$i$f$getDp\\4\\62":I
    int-to-float v13, v15

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v13

    .line 62
    .end local v15    # "$this$dp\\4":I
    .end local v16    # "$i$f$getDp\\4\\62":I
    const/4 v15, 0x0

    .local v15, "$this$dp\\5":I
    const/16 v16, 0x0

    .line 248
    .local v16, "$i$f$getDp\\5\\62":I
    int-to-float v14, v15

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    .line 62
    .end local v15    # "$this$dp\\5":I
    .end local v16    # "$i$f$getDp\\5\\62":I
    invoke-static {v12, v13, v14}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 63
    const/16 v23, 0x7

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 64
    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    if-eqz v0, :cond_11

    invoke-virtual {v13}, Landroidx/compose/foundation/layout/Arrangement;->getEnd()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v13

    goto :goto_9

    :cond_11
    invoke-virtual {v13}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v13

    .line 65
    :goto_9
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v14

    .line 59
    nop

    .local v12, "modifier\\6":Landroidx/compose/ui/Modifier;
    .local v13, "horizontalArrangement\\6":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v14, "verticalAlignment\\6":Landroidx/compose/ui/Alignment$Vertical;
    move-object v15, v9

    .local v15, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x180

    .local v16, "$changed\\6":I
    const/16 v18, 0x0

    .line 249
    .local v18, "$i$f$Row\\6\\59":I
    const v4, 0x3255a44b

    const-string v8, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v15, v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 250
    shr-int/lit8 v4, v16, 0x3

    and-int/lit8 v4, v4, 0xe

    shr-int/lit8 v8, v16, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v4, v8

    invoke-static {v13, v14, v15, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .line 254
    .local v4, "measurePolicy\\6":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 253
    shl-int/lit8 v8, v16, 0x3

    and-int/lit8 v8, v8, 0x70

    .line 251
    nop

    .local v8, "$changed\\7":I
    move-object/from16 v19, v15

    .local v19, "$composer\\7":Landroidx/compose/runtime/Composer;
    move-object/from16 v20, v4

    .local v20, "measurePolicy\\7":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v21, v12

    .local v21, "modifier\\7":Landroidx/compose/ui/Modifier;
    const/16 v23, 0x0

    .line 255
    .local v23, "$i$f$Layout\\7\\251":I
    move-object/from16 v24, v4

    .end local v4    # "measurePolicy\\6":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v24, "measurePolicy\\6":Landroidx/compose/ui/layout/MeasurePolicy;
    const v4, -0x451e1427

    move/from16 v25, v8

    .end local v8    # "$changed\\7":I
    .local v25, "$changed\\7":I
    const-string v8, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v26, v9

    move-object/from16 v9, v19

    .end local v19    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v9, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v9, v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 256
    const/4 v4, 0x0

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    .line 257
    .local v4, "compositeKeyHash\\7":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 258
    .local v8, "localMap\\7":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 p7, v4

    move/from16 v19, v10

    move-object/from16 v4, v21

    .end local v10    # "$dirty":I
    .end local v21    # "modifier\\7":Landroidx/compose/ui/Modifier;
    .local v4, "modifier\\7":Landroidx/compose/ui/Modifier;
    .local v19, "$dirty":I
    .local p7, "compositeKeyHash\\7":I
    invoke-static {v9, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 260
    .local v10, "materialized\\7":Landroidx/compose/ui/Modifier;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    move-object/from16 v27, v4

    .end local v4    # "modifier\\7":Landroidx/compose/ui/Modifier;
    .local v27, "modifier\\7":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v4, v25, 0x6

    and-int/lit16 v4, v4, 0x380

    move/from16 v28, v4

    const/4 v4, 0x6

    or-int/lit8 v28, v28, 0x6

    .line 259
    move-object/from16 v29, v9

    .local v28, "$changed\\8":I
    .local v29, "$composer\\8":Landroidx/compose/runtime/Composer;
    move-object/from16 v30, v21

    .local v30, "factory\\8":Lkotlin/jvm/functions/Function0;
    const/16 v21, 0x0

    .line 261
    .local v21, "$i$f$ReusableComposeNode\\8\\259":I
    move/from16 v31, v4

    const v4, -0x20f7d59c

    move-object/from16 v32, v9

    .end local v9    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v32, "$composer\\7":Landroidx/compose/runtime/Composer;
    const-string v9, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v33, v12

    move-object/from16 v12, v29

    .end local v29    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v12, "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v33, "modifier\\6":Landroidx/compose/ui/Modifier;
    invoke-static {v12, v4, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 262
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 263
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 264
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 265
    move-object/from16 v4, v30

    .end local v30    # "factory\\8":Lkotlin/jvm/functions/Function0;
    .local v4, "factory\\8":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    .line 267
    .end local v4    # "factory\\8":Lkotlin/jvm/functions/Function0;
    .restart local v30    # "factory\\8":Lkotlin/jvm/functions/Function0;
    :cond_13
    move-object/from16 v4, v30

    .end local v30    # "factory\\8":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory\\8":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 269
    :goto_a
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240\\9":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 270
    .local v29, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\9\\269\\7":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v34, v4

    .end local v4    # "factory\\8":Lkotlin/jvm/functions/Function0;
    .local v34, "factory\\8":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    move-object/from16 v30, v12

    move-object/from16 v12, v20

    .end local v20    # "measurePolicy\\7":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v12, "measurePolicy\\7":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v30, "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static {v9, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 271
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v9, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 272
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v35, v8

    .end local v8    # "localMap\\7":Landroidx/compose/runtime/CompositionLocalMap;
    .local v35, "localMap\\7":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v9, v4, v8}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 273
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v9, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 274
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v9, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 275
    nop

    .line 269
    .end local v9    # "$this$Layout_u24lambda_u240\\9":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\9\\269\\7":I
    nop

    .line 276
    shr-int/lit8 v4, v28, 0x6

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed\\10":I
    move-object/from16 v8, v30

    .local v8, "$composer\\10":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 252
    .local v9, "$i$a$-Layout-RowKt$Row$1\\10\\276\\6":I
    move/from16 v20, v4

    .end local v4    # "$changed\\10":I
    .local v20, "$changed\\10":I
    const v4, 0x56ccd6f5

    move/from16 v29, v9

    .end local v9    # "$i$a$-Layout-RowKt$Row$1\\10\\276\\6":I
    .local v29, "$i$a$-Layout-RowKt$Row$1\\10\\276\\6":I
    const-string v9, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v8, v4, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v9, v16, 0x6

    and-int/lit8 v9, v9, 0x70

    or-int/lit8 v9, v9, 0x6

    .local v9, "$changed\\11":I
    check-cast v4, Landroidx/compose/foundation/layout/RowScope;

    .local v4, "$this$MessageBubble_u24lambda_u242\\11":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v46, v8

    .local v46, "$composer\\11":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 67
    .local v49, "$i$a$-Row-MessageBubbleKt$MessageBubble$1\\11\\252\\0":I
    move-object/from16 v50, v4

    .end local v4    # "$this$MessageBubble_u24lambda_u242\\11":Landroidx/compose/foundation/layout/RowScope;
    .local v50, "$this$MessageBubble_u24lambda_u242\\11":Landroidx/compose/foundation/layout/RowScope;
    const v4, -0x560678c

    move-object/from16 v51, v8

    .end local v8    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v51, "$composer\\10":Landroidx/compose/runtime/Composer;
    const-string v8, "C83@3480L825,75@3090L1215:MessageBubble.kt#5xjsc0"

    move/from16 v52, v9

    move-object/from16 v9, v46

    .end local v46    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v9, "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v52, "$changed\\11":I
    invoke-static {v9, v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-nez v0, :cond_15

    const v4, -0x560ced8

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, ""

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 68
    if-eqz v3, :cond_14

    const v4, -0x5605d9f

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "68@2853L69,69@2939L39"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 69
    const/16 v4, 0x20

    .local v4, "$this$dp\\12":I
    const/4 v8, 0x0

    .line 277
    .local v8, "$i$f$getDp\\12\\69":I
    move/from16 v36, v8

    .end local v8    # "$i$f$getDp\\12\\69":I
    .local v36, "$i$f$getDp\\12\\69":I
    int-to-float v8, v4

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .end local v4    # "$this$dp\\12":I
    .end local v36    # "$i$f$getDp\\12\\69":I
    shr-int/lit8 v8, v19, 0xc

    and-int/lit8 v8, v8, 0xe

    or-int/lit8 v8, v8, 0x30

    .line 69
    invoke-static {v5, v4, v9, v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->PsychologistAvatar-ziNgDLE(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;FLandroidx/compose/runtime/Composer;I)V

    .line 70
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/4 v8, 0x6

    .local v8, "$this$dp\\13":I
    const/16 v36, 0x0

    .line 278
    .local v36, "$i$f$getDp\\13\\70":I
    int-to-float v5, v8

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 70
    .end local v8    # "$this$dp\\13":I
    .end local v36    # "$i$f$getDp\\13\\70":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move/from16 v5, v31

    invoke-static {v4, v9, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 68
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_b

    .line 71
    :cond_14
    const v4, -0x55df04a

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "71@3016L40"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 72
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x26

    .local v5, "$this$dp\\14":I
    const/4 v8, 0x0

    .line 279
    .local v8, "$i$f$getDp\\14\\72":I
    move/from16 v36, v8

    .end local v8    # "$i$f$getDp\\14\\72":I
    .local v36, "$i$f$getDp\\14\\72":I
    int-to-float v8, v5

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 72
    .end local v5    # "$this$dp\\14":I
    .end local v36    # "$i$f$getDp\\14\\72":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v4, v9, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 71
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 67
    :goto_b
    goto :goto_c

    :cond_15
    const v4, -0x58b5e22

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 77
    invoke-static {v0, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->messageBubbleShape(ZZZ)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    .line 78
    if-eqz v0, :cond_16

    .line 79
    const v5, -0x423cb6ec

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "78@3238L11"

    invoke-static {v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v8, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v9, v8}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v36

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide/from16 v38, v36

    goto :goto_d

    .line 81
    :cond_16
    const v5, -0x423cad6e

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "80@3314L11"

    invoke-static {v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v8, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v9, v8}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v36

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide/from16 v38, v36

    .line 78
    :goto_d
    nop

    .line 82
    if-eqz v0, :cond_17

    const/4 v5, 0x1

    .local v5, "$this$dp\\15":I
    const/4 v8, 0x0

    .line 280
    .local v8, "$i$f$getDp\\15\\82":I
    int-to-float v2, v5

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    move/from16 v42, v2

    .end local v5    # "$this$dp\\15":I
    .end local v8    # "$i$f$getDp\\15\\82":I
    goto :goto_e

    .line 82
    :cond_17
    const/4 v2, 0x0

    .local v2, "$this$dp\\16":I
    const/4 v5, 0x0

    .line 280
    .local v5, "$i$f$getDp\\16\\82":I
    int-to-float v8, v2

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    move/from16 v42, v8

    .line 82
    .end local v2    # "$this$dp\\16":I
    .end local v5    # "$i$f$getDp\\16\\82":I
    :goto_e
    nop

    .line 83
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    int-to-float v5, v11

    const v8, 0x3f47ae14    # 0.78f

    mul-float/2addr v5, v8

    .local v5, "$this$dp\\17":F
    const/4 v8, 0x0

    .line 281
    .local v8, "$i$f$getDp\\17\\83":I
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 83
    .end local v5    # "$this$dp\\17":F
    .end local v8    # "$i$f$getDp\\17\\83":I
    move-object/from16 v17, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v36

    .line 77
    move-object/from16 v37, v17

    check-cast v37, Landroidx/compose/ui/graphics/Shape;

    .line 78
    nop

    .line 82
    nop

    .line 84
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0, v6, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda0;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;)V

    const/16 v3, 0x36

    const v5, -0x4dc2ada1

    invoke-static {v5, v4, v2, v9, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lkotlin/jvm/functions/Function2;

    .line 76
    const-wide/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/high16 v47, 0xc00000

    const/16 v48, 0x68

    move-object/from16 v46, v9

    .end local v9    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .restart local v46    # "$composer\\11":Landroidx/compose/runtime/Composer;
    invoke-static/range {v36 .. v48}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 67
    .end local v46    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer\\11":Landroidx/compose/runtime/Composer;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 106
    nop

    .line 252
    .end local v9    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-Row-MessageBubbleKt$MessageBubble$1\\11\\252\\0":I
    .end local v50    # "$this$MessageBubble_u24lambda_u242\\11":Landroidx/compose/foundation/layout/RowScope;
    .end local v52    # "$changed\\11":I
    invoke-static/range {v51 .. v51}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 276
    .end local v20    # "$changed\\10":I
    .end local v29    # "$i$a$-Layout-RowKt$Row$1\\10\\276\\6":I
    .end local v51    # "$composer\\10":Landroidx/compose/runtime/Composer;
    nop

    .line 282
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 261
    invoke-static/range {v30 .. v30}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 283
    nop

    .line 255
    .end local v21    # "$i$f$ReusableComposeNode\\8\\259":I
    .end local v28    # "$changed\\8":I
    .end local v30    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v34    # "factory\\8":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v32 .. v32}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 284
    nop

    .line 249
    .end local v10    # "materialized\\7":Landroidx/compose/ui/Modifier;
    .end local v12    # "measurePolicy\\7":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "$i$f$Layout\\7\\251":I
    .end local v25    # "$changed\\7":I
    .end local v27    # "modifier\\7":Landroidx/compose/ui/Modifier;
    .end local v32    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v35    # "localMap\\7":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p7    # "compositeKeyHash\\7":I
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 285
    nop

    .end local v13    # "horizontalArrangement\\6":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v14    # "verticalAlignment\\6":Landroidx/compose/ui/Alignment$Vertical;
    .end local v15    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed\\6":I
    .end local v18    # "$i$f$Row\\6\\59":I
    .end local v24    # "measurePolicy\\6":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v33    # "modifier\\6":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "isOwn":Z
    .end local v11    # "screenWidth":I
    .end local v22    # "bottomPadding":F
    goto :goto_f

    .line 44
    .end local v19    # "$dirty":I
    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$dirty":I
    :cond_18
    move-object/from16 v26, v9

    move/from16 v19, v10

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v10    # "$dirty":I
    .restart local v19    # "$dirty":I
    .restart local v26    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 107
    :cond_19
    :goto_f
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda1;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda1;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZLjava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method static final MessageBubble$lambda$2$lambda$1(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 35
    .param p0, "$message"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p1, "$isOwn"    # Z
    .param p2, "$audioUiState"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    .param p3, "$onPlayPause"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p4

    move/from16 v1, p5

    const-string v2, "C84@3494L801:MessageBubble.kt#5xjsc0"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const v2, -0x4dc2ada1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubble.<anonymous>.<anonymous> (MessageBubble.kt:84)"

    invoke-static {v2, v1, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 85
    :cond_1
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v6, 0xc

    .local v6, "$this$dp\\1":I
    const/4 v7, 0x0

    .line 304
    .local v7, "$i$f$getDp\\1\\85":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 85
    .end local v6    # "$this$dp\\1":I
    .end local v7    # "$i$f$getDp\\1\\85":I
    const/16 v7, 0x8

    .local v7, "$this$dp\\2":I
    const/4 v8, 0x0

    .line 304
    .local v8, "$i$f$getDp\\2\\85":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 85
    .end local v7    # "$this$dp\\2":I
    .end local v8    # "$i$f$getDp\\2\\85":I
    invoke-static {v2, v6, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .local v2, "modifier\\3":Landroidx/compose/ui/Modifier;
    const/4 v6, 0x6

    .local v6, "$changed\\3":I
    move-object/from16 v7, p4

    .local v7, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 305
    .local v8, "$i$f$Column\\3\\85":I
    const v9, 0x4ff7456f

    const-string v10, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v7, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 306
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v9

    .line 307
    .local v9, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 310
    .local v10, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v6, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v9, v10, v7, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 314
    .local v11, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 313
    shl-int/lit8 v12, v6, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 311
    move-object v13, v7

    .local v13, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object v14, v11

    .local v14, "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v15, v2

    .local v12, "$changed\\4":I
    .local v15, "modifier\\4":Landroidx/compose/ui/Modifier;
    const/16 v16, 0x0

    .line 315
    .local v16, "$i$f$Layout\\4\\311":I
    const v3, -0x451e1427

    const-string v4, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v13, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 316
    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    .line 317
    .local v3, "compositeKeyHash\\4":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 318
    .local v4, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v13, v15}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 320
    .local v5, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    shl-int/lit8 v0, v12, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 319
    nop

    .local v0, "$changed\\5":I
    move-object/from16 v19, v13

    .local v19, "$composer\\5":Landroidx/compose/runtime/Composer;
    move-object/from16 v20, v18

    .local v20, "factory\\5":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 321
    .local v18, "$i$f$ReusableComposeNode\\5\\319":I
    move/from16 v21, v0

    .end local v0    # "$changed\\5":I
    .local v21, "$changed\\5":I
    const v0, -0x20f7d59c

    const-string v1, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v22, v2

    move-object/from16 v2, v19

    .end local v19    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v22, "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 322
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 323
    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 324
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    move-object/from16 v0, v20

    .end local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v0, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 327
    .end local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v0, v20

    .end local v20    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 329
    :goto_1
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 330
    .local v19, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\329\\4":I
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v23, v0

    .end local v0    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v23, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v14, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 331
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 332
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v2

    .end local v2    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v24, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 333
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 334
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 335
    nop

    .line 329
    .end local v1    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\329\\4":I
    nop

    .line 336
    shr-int/lit8 v0, v21, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\7":I
    move-object/from16 v1, v24

    .local v1, "$composer\\7":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 312
    .local v2, "$i$a$-Layout-ColumnKt$Column$1\\7\\336\\3":I
    move/from16 v19, v0

    .end local v0    # "$changed\\7":I
    .local v19, "$changed\\7":I
    const v0, 0x7cc0ae6e

    move/from16 v20, v2

    .end local v2    # "$i$a$-Layout-ColumnKt$Column$1\\7\\336\\3":I
    .local v20, "$i$a$-Layout-ColumnKt$Column$1\\7\\336\\3":I
    const-string v2, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v6, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\8":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$MessageBubble_u24lambda_u242_u24lambda_u241_u24lambda_u240\\8":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v29, v1

    .local v29, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 86
    .local v31, "$i$a$-Column-MessageBubbleKt$MessageBubble$1$1$1\\8\\312\\0":I
    move-object/from16 v32, v0

    .end local v0    # "$this$MessageBubble_u24lambda_u242_u24lambda_u241_u24lambda_u240\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .local v32, "$this$MessageBubble_u24lambda_u242_u24lambda_u241_u24lambda_u240\\8":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x661dbc2

    move-object/from16 v33, v1

    .end local v1    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v33, "$composer\\7":Landroidx/compose/runtime/Composer;
    const-string v1, "C:MessageBubble.kt#5xjsc0"

    move/from16 v34, v2

    move-object/from16 v2, v29

    .end local v29    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v34, "$changed\\8":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getAttachmentType()Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 87
    :goto_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const v0, 0x662d0ba

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "87@3687L239"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 88
    const/16 v30, 0x0

    move-object/from16 v25, p0

    move/from16 v26, p1

    move-object/from16 v27, p2

    move-object/from16 v28, p3

    move-object/from16 v29, v2

    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v29    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-static/range {v25 .. v30}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->AudioBubble(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 87
    .end local v29    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v17, v3

    goto :goto_4

    .line 95
    :cond_5
    const v0, 0x667991b

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, ""

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getContent()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x66877ad

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "96@4067L148"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 98
    nop

    .line 99
    nop

    .line 97
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "compositeKeyHash\\4":I
    .local v17, "compositeKeyHash\\4":I
    invoke-static {v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->MessageWithTimestamp(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLandroidx/compose/runtime/Composer;I)V

    .line 96
    goto :goto_3

    .end local v17    # "compositeKeyHash\\4":I
    .restart local v3    # "compositeKeyHash\\4":I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v17, v3

    .end local v3    # "compositeKeyHash\\4":I
    .restart local v17    # "compositeKeyHash\\4":I
    const v3, 0x62b3fb9

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_3
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 95
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 86
    :goto_4
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 104
    nop

    .line 312
    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-Column-MessageBubbleKt$MessageBubble$1$1$1\\8\\312\\0":I
    .end local v32    # "$this$MessageBubble_u24lambda_u242_u24lambda_u241_u24lambda_u240\\8":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v34    # "$changed\\8":I
    invoke-static/range {v33 .. v33}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 336
    .end local v19    # "$changed\\7":I
    .end local v20    # "$i$a$-Layout-ColumnKt$Column$1\\7\\336\\3":I
    .end local v33    # "$composer\\7":Landroidx/compose/runtime/Composer;
    nop

    .line 337
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 321
    invoke-static/range {v24 .. v24}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 338
    nop

    .line 315
    .end local v18    # "$i$f$ReusableComposeNode\\5\\319":I
    .end local v21    # "$changed\\5":I
    .end local v23    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 339
    nop

    .line 305
    .end local v4    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local v12    # "$changed\\4":I
    .end local v13    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .end local v14    # "measurePolicy\\4":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v15    # "modifier\\4":Landroidx/compose/ui/Modifier;
    .end local v16    # "$i$f$Layout\\4\\311":I
    .end local v17    # "compositeKeyHash\\4":I
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 340
    nop

    .end local v6    # "$changed\\3":I
    .end local v7    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$Column\\3\\85":I
    .end local v9    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v10    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v11    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "modifier\\3":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    .line 84
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 105
    :cond_8
    :goto_5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final MessageBubble$lambda$3(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZLjava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->MessageBubble(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZLjava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final MessageWithTimestamp(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLandroidx/compose/runtime/Composer;I)V
    .locals 43
    .param p0, "message"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p1, "isOwn"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 113
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    const v0, -0x4d83881f

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(MessageWithTimestamp)N(message,isOwn):MessageBubble.kt#5xjsc0"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit8 v6, v5, 0x13

    const/16 v8, 0x12

    const/4 v10, 0x1

    if-eq v6, v8, :cond_4

    move v6, v10

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v8, v5, 0x1

    invoke-interface {v4, v6, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    const-string v8, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageWithTimestamp (MessageBubble.kt:112)"

    invoke-static {v0, v5, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 114
    :cond_5
    if-eqz v2, :cond_6

    .line 115
    const v0, 0x53e1793

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "114@4462L11"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v4, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v11

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_3

    .line 117
    :cond_6
    const v0, 0x53e1f51

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "116@4524L11"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v4, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v11

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 114
    :goto_3
    nop

    .line 119
    .local v11, "contentColor":J
    if-eqz v2, :cond_7

    .line 120
    const v0, 0x53e2cb3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "119@4612L11"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v4, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v13

    const/16 v19, 0xe

    const/16 v20, 0x0

    const v15, 0x3f19999a    # 0.6f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_4

    .line 122
    :cond_7
    const v0, 0x53e3693

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "121@4693L11"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v4, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v13

    const/16 v19, 0xe

    const/16 v20, 0x0

    const v15, 0x3f19999a    # 0.6f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 119
    :goto_4
    nop

    .line 124
    .local v13, "timestampColor":J
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getTimestamp()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "timestampText":Ljava/lang/String;
    const-string v8, "  "

    if-eqz v2, :cond_8

    const/16 p2, 0xb

    const v0, -0x5d759239

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "129@4990L125,144@5529L10,142@5455L182"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroidx/compose/foundation/text/InlineTextContent;

    .line 129
    new-instance v16, Landroidx/compose/ui/text/Placeholder;

    const/16 v17, 0xe

    move/from16 v19, v17

    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v17

    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v19

    sget-object v21, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->Companion:Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getCenter-J6kI3mc()I

    move-result v21

    const/16 v22, 0x0

    invoke-direct/range {v16 .. v22}, Landroidx/compose/ui/text/Placeholder;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    move-object/from16 v7, v16

    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda2;

    invoke-direct {v9, v1, v13, v14}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda2;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;J)V

    const/16 v15, 0x36

    move/from16 v38, v5

    .end local v5    # "$dirty":I
    .local v38, "$dirty":I
    const v5, -0x64557566

    invoke-static {v5, v10, v9, v4, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 128
    invoke-direct {v0, v7, v5}, Landroidx/compose/foundation/text/InlineTextContent;-><init>(Landroidx/compose/ui/text/Placeholder;Lkotlin/jvm/functions/Function3;)V

    const-string v5, "statusIcon"

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 134
    .local v7, "inlineContent":Ljava/util/Map;
    const/4 v9, 0x0

    .line 286
    .local v9, "$i$f$buildAnnotatedString\\1\\134":I
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    move-object/from16 v39, v7

    const/4 v7, 0x0

    const/4 v15, 0x0

    .end local v7    # "inlineContent":Ljava/util/Map;
    .local v39, "inlineContent":Ljava/util/Map;
    invoke-direct {v0, v15, v10, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v0

    .local v10, "$this$MessageWithTimestamp_u24lambda_u246\\2":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/16 v40, 0x0

    .line 135
    .local v40, "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$1\\2\\286\\0":I
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getContent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v10, v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 137
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v18

    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    const v36, 0xfffc

    const/16 v37, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

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

    move-wide/from16 v16, v13

    .end local v13    # "timestampColor":J
    .local v16, "timestampColor":J
    invoke-direct/range {v15 .. v37}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide/from16 v30, v16

    .end local v16    # "timestampColor":J
    .local v15, "style\\3":Landroidx/compose/ui/text/SpanStyle;
    .local v30, "timestampColor":J
    move-object v8, v10

    .local v8, "$this$withStyle\\3":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/4 v13, 0x0

    .line 287
    .local v13, "$i$f$withStyle\\3\\137":I
    invoke-virtual {v8, v15}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result v14

    .line 288
    .local v14, "index\\3":I
    nop

    .line 289
    move-object/from16 p2, v8

    .local p2, "$this$MessageWithTimestamp_u24lambda_u246_u24lambda_u245\\4":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/16 v16, 0x0

    .line 138
    .local v16, "$i$a$-withStyle-MessageBubbleKt$MessageWithTimestamp$annotatedText$1$1\\4\\289\\2":I
    move-object/from16 v7, p2

    .end local p2    # "$this$MessageWithTimestamp_u24lambda_u246_u24lambda_u245\\4":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .local v7, "$this$MessageWithTimestamp_u24lambda_u246_u24lambda_u245\\4":Landroidx/compose/ui/text/AnnotatedString$Builder;
    :try_start_0
    invoke-virtual {v7, v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 139
    nop

    .end local v7    # "$this$MessageWithTimestamp_u24lambda_u246_u24lambda_u245\\4":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v16    # "$i$a$-withStyle-MessageBubbleKt$MessageWithTimestamp$annotatedText$1$1\\4\\289\\2":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    nop

    .line 291
    invoke-virtual {v8, v14}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 292
    nop

    .line 288
    nop

    .line 140
    .end local v8    # "$this$withStyle\\3":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v13    # "$i$f$withStyle\\3\\137":I
    .end local v14    # "index\\3":I
    .end local v15    # "style\\3":Landroidx/compose/ui/text/SpanStyle;
    const-string v7, " "

    invoke-virtual {v10, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 141
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v10, v5, v8, v7, v8}, Landroidx/compose/foundation/text/InlineTextContentKt;->appendInlineContent$default(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 142
    nop

    .line 286
    .end local v10    # "$this$MessageWithTimestamp_u24lambda_u246\\2":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v40    # "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$1\\2\\286\\0":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 134
    .end local v9    # "$i$f$buildAnnotatedString\\1\\134":I
    nop

    .line 145
    .local v0, "annotatedText":Landroidx/compose/ui/text/AnnotatedString;
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v4, v7}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    .line 144
    nop

    .line 146
    nop

    .line 147
    nop

    .line 145
    nop

    .line 143
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide/from16 v41, v11

    move-object v12, v6

    move-wide/from16 v6, v41

    .end local v11    # "contentColor":J
    .local v6, "contentColor":J
    .local v12, "timestampText":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v13, v12

    .end local v12    # "timestampText":Ljava/lang/String;
    .local v13, "timestampText":Ljava/lang/String;
    const/4 v12, 0x0

    move-object v15, v13

    .end local v13    # "timestampText":Ljava/lang/String;
    .local v15, "timestampText":Ljava/lang/String;
    const-wide/16 v13, 0x0

    move-object/from16 v16, v15

    .end local v15    # "timestampText":Ljava/lang/String;
    .local v16, "timestampText":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v17, v16

    .end local v16    # "timestampText":Ljava/lang/String;
    .local v17, "timestampText":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v19, v17

    .end local v17    # "timestampText":Ljava/lang/String;
    .local v19, "timestampText":Ljava/lang/String;
    const-wide/16 v17, 0x0

    move-object/from16 v20, v19

    .end local v19    # "timestampText":Ljava/lang/String;
    .local v20, "timestampText":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v21, v20

    .end local v20    # "timestampText":Ljava/lang/String;
    .local v21, "timestampText":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v22, v21

    .end local v21    # "timestampText":Ljava/lang/String;
    .local v22, "timestampText":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v23, v22

    .end local v22    # "timestampText":Ljava/lang/String;
    .local v23, "timestampText":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x17ffa

    move-object/from16 v26, v4

    move-object/from16 v1, v23

    move-object/from16 v23, v39

    move-object v4, v0

    .end local v0    # "annotatedText":Landroidx/compose/ui/text/AnnotatedString;
    .end local v39    # "inlineContent":Ljava/util/Map;
    .local v1, "timestampText":Ljava/lang/String;
    .local v4, "annotatedText":Landroidx/compose/ui/text/AnnotatedString;
    .local v23, "inlineContent":Ljava/util/Map;
    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v4 .. v29}, Landroidx/compose/material3/TextKt;->Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 126
    move-object/from16 v4, v26

    .end local v23    # "inlineContent":Ljava/util/Map;
    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    .line 291
    .end local v1    # "timestampText":Ljava/lang/String;
    .local v6, "timestampText":Ljava/lang/String;
    .restart local v8    # "$this$withStyle\\3":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .restart local v9    # "$i$f$buildAnnotatedString\\1\\134":I
    .restart local v10    # "$this$MessageWithTimestamp_u24lambda_u246\\2":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .restart local v11    # "contentColor":J
    .local v13, "$i$f$withStyle\\3\\137":I
    .restart local v14    # "index\\3":I
    .local v15, "style\\3":Landroidx/compose/ui/text/SpanStyle;
    .restart local v39    # "inlineContent":Ljava/util/Map;
    .restart local v40    # "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$1\\2\\286\\0":I
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-wide v6, v11

    move-object/from16 v23, v39

    .end local v11    # "contentColor":J
    .end local v39    # "inlineContent":Ljava/util/Map;
    .restart local v1    # "timestampText":Ljava/lang/String;
    .local v6, "contentColor":J
    .restart local v23    # "inlineContent":Ljava/util/Map;
    invoke-virtual {v8, v14}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw v0

    .line 149
    .end local v1    # "timestampText":Ljava/lang/String;
    .end local v8    # "$this$withStyle\\3":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v9    # "$i$f$buildAnnotatedString\\1\\134":I
    .end local v10    # "$this$MessageWithTimestamp_u24lambda_u246\\2":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v14    # "index\\3":I
    .end local v15    # "style\\3":Landroidx/compose/ui/text/SpanStyle;
    .end local v23    # "inlineContent":Ljava/util/Map;
    .end local v30    # "timestampColor":J
    .end local v38    # "$dirty":I
    .end local v40    # "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$1\\2\\286\\0":I
    .restart local v5    # "$dirty":I
    .local v6, "timestampText":Ljava/lang/String;
    .restart local v11    # "contentColor":J
    .local v13, "timestampColor":J
    :cond_8
    move/from16 v38, v5

    move-object v1, v6

    move-wide v6, v11

    move-wide/from16 v30, v13

    const/16 p2, 0xb

    .end local v5    # "$dirty":I
    .end local v11    # "contentColor":J
    .end local v13    # "timestampColor":J
    .restart local v1    # "timestampText":Ljava/lang/String;
    .local v6, "contentColor":J
    .restart local v30    # "timestampColor":J
    .restart local v38    # "$dirty":I
    const v0, -0x5d692d15

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "158@5984L10,156@5910L139"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 150
    const/4 v5, 0x0

    .line 293
    .local v5, "$i$f$buildAnnotatedString\\5\\150":I
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    const/4 v9, 0x0

    const/4 v15, 0x0

    invoke-direct {v0, v15, v10, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v0

    .local v9, "$this$MessageWithTimestamp_u24lambda_u248\\6":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/4 v10, 0x0

    .line 151
    .local v10, "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$2\\6\\293\\0":I
    invoke-virtual/range {p0 .. p0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v9, v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 153
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v18

    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    const v36, 0xfffc

    const/16 v37, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-wide/from16 v16, v30

    .end local v30    # "timestampColor":J
    .local v16, "timestampColor":J
    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v15 .. v37}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide/from16 v30, v16

    .end local v16    # "timestampColor":J
    .local v15, "style\\7":Landroidx/compose/ui/text/SpanStyle;
    .restart local v30    # "timestampColor":J
    move-object v8, v9

    .local v8, "$this$withStyle\\7":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/4 v11, 0x0

    .line 294
    .local v11, "$i$f$withStyle\\7\\153":I
    invoke-virtual {v8, v15}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result v12

    .line 295
    .local v12, "index\\7":I
    nop

    .line 296
    move-object v13, v8

    .local v13, "$this$MessageWithTimestamp_u24lambda_u248_u24lambda_u247\\8":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/4 v14, 0x0

    .line 154
    .local v14, "$i$a$-withStyle-MessageBubbleKt$MessageWithTimestamp$annotatedText$2$1\\8\\296\\6":I
    :try_start_1
    invoke-virtual {v13, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 155
    nop

    .end local v13    # "$this$MessageWithTimestamp_u24lambda_u248_u24lambda_u247\\8":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v14    # "$i$a$-withStyle-MessageBubbleKt$MessageWithTimestamp$annotatedText$2$1\\8\\296\\6":I
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    nop

    .line 298
    invoke-virtual {v8, v12}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 299
    nop

    .line 295
    nop

    .line 156
    .end local v8    # "$this$withStyle\\7":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v11    # "$i$f$withStyle\\7\\153":I
    .end local v12    # "index\\7":I
    .end local v15    # "style\\7":Landroidx/compose/ui/text/SpanStyle;
    nop

    .line 293
    .end local v9    # "$this$MessageWithTimestamp_u24lambda_u248\\6":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v10    # "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$2\\6\\293\\0":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 150
    .end local v5    # "$i$f$buildAnnotatedString\\5\\150":I
    nop

    .line 159
    .restart local v0    # "annotatedText":Landroidx/compose/ui/text/AnnotatedString;
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v8, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v4, v8}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    .line 158
    nop

    .line 160
    nop

    .line 159
    nop

    .line 157
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x1fffa

    move-object/from16 v26, v4

    move-object v4, v0

    .end local v0    # "annotatedText":Landroidx/compose/ui/text/AnnotatedString;
    .local v4, "annotatedText":Landroidx/compose/ui/text/AnnotatedString;
    .restart local v26    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v4 .. v29}, Landroidx/compose/material3/TextKt;->Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 149
    .end local v4    # "annotatedText":Landroidx/compose/ui/text/AnnotatedString;
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v1    # "timestampText":Ljava/lang/String;
    .end local v6    # "contentColor":J
    .end local v30    # "timestampColor":J
    goto :goto_6

    .line 298
    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "timestampText":Ljava/lang/String;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$i$f$buildAnnotatedString\\5\\150":I
    .restart local v6    # "contentColor":J
    .restart local v8    # "$this$withStyle\\7":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .restart local v9    # "$this$MessageWithTimestamp_u24lambda_u248\\6":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .restart local v10    # "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$2\\6\\293\\0":I
    .restart local v11    # "$i$f$withStyle\\7\\153":I
    .restart local v12    # "index\\7":I
    .restart local v15    # "style\\7":Landroidx/compose/ui/text/SpanStyle;
    .restart local v30    # "timestampColor":J
    :catchall_1
    move-exception v0

    move-object/from16 v26, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v26    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-virtual {v8, v12}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw v0

    .line 109
    .end local v1    # "timestampText":Ljava/lang/String;
    .end local v6    # "contentColor":J
    .end local v8    # "$this$withStyle\\7":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v9    # "$this$MessageWithTimestamp_u24lambda_u248\\6":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v10    # "$i$a$-buildAnnotatedString-MessageBubbleKt$MessageWithTimestamp$annotatedText$2\\6\\293\\0":I
    .end local v11    # "$i$f$withStyle\\7\\153":I
    .end local v12    # "index\\7":I
    .end local v15    # "style\\7":Landroidx/compose/ui/text/SpanStyle;
    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v30    # "timestampColor":J
    .end local v38    # "$dirty":I
    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$dirty":I
    :cond_9
    move-object/from16 v26, v4

    move/from16 v38, v5

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$dirty":I
    .restart local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v38    # "$dirty":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 163
    :cond_a
    :goto_6
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda3;

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda3;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;ZI)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_7

    :cond_b
    move-object/from16 v4, p0

    :goto_7
    return-void
.end method

.method static final MessageWithTimestamp$lambda$4(Lorg/ies/tierno/applicationamani/domain/models/Message;JLjava/lang/String;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$message"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p1, "$timestampColor"    # J
    .param p3, "it"    # Ljava/lang/String;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)130@5008L93:MessageBubble.kt#5xjsc0"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p5, 0x11

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p5, 0x1

    invoke-interface {p4, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageWithTimestamp.<anonymous> (MessageBubble.kt:130)"

    const v2, -0x64557566

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead()Z

    move-result v3

    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->isDelivered()Z

    move-result v4

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p4

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->StatusIcon-gKt5lHk(ZZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 130
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p4    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v6, p4

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 132
    :cond_3
    :goto_1
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p4
.end method

.method static final MessageWithTimestamp$lambda$9(Lorg/ies/tierno/applicationamani/domain/models/Message;ZILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->MessageWithTimestamp(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final PsychologistAvatar-ziNgDLE(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;FLandroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p0, "psychologistInfo"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;
    .param p1, "size"    # F
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 195
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const v3, -0x5d93c2f6

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(PsychologistAvatar)N(psychologistInfo,size:c#ui.unit.Dp):MessageBubble.kt#5xjsc0"

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v2, 0x6

    if-nez v5, :cond_1

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    :cond_3
    and-int/lit8 v5, v4, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    and-int/lit8 v6, v4, 0x1

    invoke-interface {v14, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PsychologistAvatar (MessageBubble.kt:194)"

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 196
    :cond_5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 197
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 198
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v3, v5}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 196
    nop

    .line 200
    .local v6, "modifier":Landroidx/compose/ui/Modifier;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    const v3, 0x51d6865e

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "200@7032L170"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 202
    move v3, v4

    .end local v4    # "$dirty":I
    .local v3, "$dirty":I
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Foto de "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    nop

    .line 201
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xff8

    invoke-static/range {v4 .. v19}, Lcoil/compose/SingletonAsyncImageKt;->AsyncImage-gl8XCv8(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    .line 200
    move-object v4, v6

    move-object/from16 v14, v16

    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_5

    .line 206
    .end local v3    # "$dirty":I
    .local v4, "$dirty":I
    .restart local v6    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_7
    move v3, v4

    move-object v4, v6

    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "$dirty":I
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    const v5, 0x51d99acf

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "210@7417L11,211@7456L305,207@7308L453"

    invoke-static {v14, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 207
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->firstOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    goto :goto_4

    :cond_8
    const/16 v5, 0x3f

    .line 209
    .local v5, "initial":C
    :goto_4
    nop

    .line 210
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Shape;

    .line 211
    sget-object v8, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v9, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v8, v14, v9}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v8

    .line 212
    new-instance v10, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda4;

    invoke-direct {v10, v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda4;-><init>(C)V

    const/16 v11, 0x36

    const v12, -0x2da794b7

    invoke-static {v12, v7, v10, v14, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 208
    move v10, v5

    move-object v5, v6

    move-wide v6, v8

    .end local v5    # "initial":C
    .local v10, "initial":C
    const-wide/16 v8, 0x0

    move v11, v10

    .end local v10    # "initial":C
    .local v11, "initial":C
    const/4 v10, 0x0

    move v12, v11

    .end local v11    # "initial":C
    .local v12, "initial":C
    const/4 v11, 0x0

    move v15, v12

    .end local v12    # "initial":C
    .local v15, "initial":C
    const/4 v12, 0x0

    move/from16 v16, v15

    .end local v15    # "initial":C
    .local v16, "initial":C
    const/high16 v15, 0xc00000

    move/from16 v17, v16

    .end local v16    # "initial":C
    .local v17, "initial":C
    const/16 v16, 0x78

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 206
    .end local v17    # "initial":C
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v4    # "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_6

    .line 191
    .end local v3    # "$dirty":I
    .local v4, "$dirty":I
    :cond_9
    move v3, v4

    .end local v4    # "$dirty":I
    .restart local v3    # "$dirty":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 222
    :cond_a
    :goto_6
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_b

    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda5;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;FI)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_b
    return-void
.end method

.method static final PsychologistAvatar_ziNgDLE$lambda$11(CLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 53
    .param p0, "$initial"    # C
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "C212@7470L281:MessageBubble.kt#5xjsc0"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

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

    const-string v3, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PsychologistAvatar.<anonymous> (MessageBubble.kt:212)"

    const v5, -0x2da794b7

    invoke-static {v5, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 213
    :cond_1
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    .local v2, "contentAlignment\\1":Landroidx/compose/ui/Alignment;
    const/16 v3, 0x30

    .local v3, "$changed\\1":I
    move-object/from16 v5, p1

    .local v5, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 341
    .local v6, "$i$f$Box\\1\\213":I
    const v7, 0x3e277f0a

    const-string v8, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo"

    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 342
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 344
    .local v7, "modifier\\1":Landroidx/compose/ui/Modifier;
    const/4 v8, 0x0

    .line 347
    .local v8, "propagateMinConstraints\\1":Z
    invoke-static {v2, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .line 351
    .local v9, "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 350
    shl-int/lit8 v10, v3, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 348
    move-object v11, v5

    .local v10, "$changed\\2":I
    .local v11, "$composer\\2":Landroidx/compose/runtime/Composer;
    move-object v12, v9

    .local v12, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v13, v7

    .local v13, "modifier\\2":Landroidx/compose/ui/Modifier;
    const/4 v14, 0x0

    .line 352
    .local v14, "$i$f$Layout\\2\\348":I
    const v15, -0x451e1427

    const-string v4, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v11, v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 353
    const/4 v4, 0x0

    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    .line 354
    .local v4, "compositeKeyHash\\2":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 355
    .local v15, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v11, v13}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 357
    .local v0, "materialized\\2":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    shl-int/lit8 v1, v10, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 356
    move-object/from16 v17, v11

    .local v17, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object/from16 v18, v16

    .local v1, "$changed\\3":I
    .local v18, "factory\\3":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 358
    .local v16, "$i$f$ReusableComposeNode\\3\\356":I
    move/from16 v19, v1

    .end local v1    # "$changed\\3":I
    .local v19, "$changed\\3":I
    const v1, -0x20f7d59c

    move-object/from16 v20, v2

    .end local v2    # "contentAlignment\\1":Landroidx/compose/ui/Alignment;
    .local v20, "contentAlignment\\1":Landroidx/compose/ui/Alignment;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move/from16 v21, v3

    move-object/from16 v3, v17

    .end local v17    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v21, "$changed\\1":I
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 359
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 360
    :cond_2
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 361
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    move-object/from16 v1, v18

    .end local v18    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v1, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 364
    .end local v1    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "factory\\3":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v1, v18

    .end local v18    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 366
    :goto_1
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 367
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\366\\2":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v22, v1

    .end local v1    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v22, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 368
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 369
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v23, v3

    .end local v3    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v23, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 370
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 371
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 372
    nop

    .line 366
    .end local v2    # "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\366\\2":I
    nop

    .line 373
    shr-int/lit8 v1, v19, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\5":I
    move-object/from16 v2, v23

    .local v2, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 349
    .local v3, "$i$a$-Layout-BoxKt$Box$1\\5\\373\\1":I
    move-object/from16 v17, v0

    .end local v0    # "materialized\\2":Landroidx/compose/ui/Modifier;
    .local v17, "materialized\\2":Landroidx/compose/ui/Modifier;
    const v0, 0x6d423196

    move/from16 v18, v1

    .end local v1    # "$changed\\5":I
    .local v18, "$changed\\5":I
    const-string v1, "C72@3469L9:Box.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v21, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed\\6":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$PsychologistAvatar_ziNgDLE_u24lambda_u2411_u24lambda_u2410\\6":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v45, v2

    .local v45, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 214
    .local v49, "$i$a$-Box-MessageBubbleKt$PsychologistAvatar$1$1\\6\\349\\0":I
    move-object/from16 v50, v0

    .end local v0    # "$this$PsychologistAvatar_ziNgDLE_u24lambda_u2411_u24lambda_u2410\\6":Landroidx/compose/foundation/layout/BoxScope;
    .local v50, "$this$PsychologistAvatar_ziNgDLE_u24lambda_u2411_u24lambda_u2410\\6":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x638507f0

    move/from16 v51, v1

    .end local v1    # "$changed\\6":I
    .local v51, "$changed\\6":I
    const-string v1, "C215@7624L10,216@7689L11,213@7529L208:MessageBubble.kt#5xjsc0"

    move-object/from16 v52, v2

    .end local v45    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v52, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 215
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v24

    .line 216
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v44

    .line 217
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v26

    .line 215
    nop

    .line 217
    nop

    .line 216
    nop

    .line 214
    const/16 v25, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const v48, 0xfffa

    .end local v2    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v45    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v24 .. v48}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static/range {v45 .. v45}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 219
    nop

    .line 349
    .end local v45    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-Box-MessageBubbleKt$PsychologistAvatar$1$1\\6\\349\\0":I
    .end local v50    # "$this$PsychologistAvatar_ziNgDLE_u24lambda_u2411_u24lambda_u2410\\6":Landroidx/compose/foundation/layout/BoxScope;
    .end local v51    # "$changed\\6":I
    invoke-static/range {v52 .. v52}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 373
    .end local v3    # "$i$a$-Layout-BoxKt$Box$1\\5\\373\\1":I
    .end local v18    # "$changed\\5":I
    .end local v52    # "$composer\\5":Landroidx/compose/runtime/Composer;
    nop

    .line 374
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 358
    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 375
    nop

    .line 352
    .end local v16    # "$i$f$ReusableComposeNode\\3\\356":I
    .end local v19    # "$changed\\3":I
    .end local v22    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 376
    nop

    .line 341
    .end local v4    # "compositeKeyHash\\2":I
    .end local v10    # "$changed\\2":I
    .end local v11    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v12    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v13    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v14    # "$i$f$Layout\\2\\348":I
    .end local v15    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v17    # "materialized\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 377
    nop

    .end local v5    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$Box\\1\\213":I
    .end local v7    # "modifier\\1":Landroidx/compose/ui/Modifier;
    .end local v8    # "propagateMinConstraints\\1":Z
    .end local v9    # "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "contentAlignment\\1":Landroidx/compose/ui/Alignment;
    .end local v21    # "$changed\\1":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 212
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 220
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final PsychologistAvatar_ziNgDLE$lambda$12(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;FILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->PsychologistAvatar-ziNgDLE(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;FLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final StatusIcon-gKt5lHk(ZZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "isRead"    # Z
    .param p1, "isDelivered"    # Z
    .param p2, "tint"    # Landroidx/compose/ui/graphics/Color;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 225
    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v4, p4

    const v0, -0x41dc2539

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(StatusIcon)N(isRead,isDelivered,tint:c#ui.graphics.Color)237@8261L200:MessageBubble.kt#5xjsc0"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p4

    .local v3, "$dirty":I
    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v3, v5

    :cond_1
    and-int/lit8 v5, v4, 0x30

    if-nez v5, :cond_3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v3, v5

    :cond_3
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_4

    or-int/lit16 v3, v3, 0x180

    move-object/from16 v6, p2

    goto :goto_3

    :cond_4
    and-int/lit16 v6, v4, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_2

    :cond_5
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v3, v7

    goto :goto_3

    :cond_6
    move-object/from16 v6, p2

    :goto_3
    move v13, v3

    .end local v3    # "$dirty":I
    .local v13, "$dirty":I
    and-int/lit16 v3, v13, 0x93

    const/16 v7, 0x92

    if-eq v3, v7, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v7, v13, 0x1

    invoke-interface {v10, v3, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v5, :cond_8

    const/4 v3, 0x0

    .end local p2    # "tint":Landroidx/compose/ui/graphics/Color;
    .local v3, "tint":Landroidx/compose/ui/graphics/Color;
    goto :goto_5

    .end local v3    # "tint":Landroidx/compose/ui/graphics/Color;
    .restart local p2    # "tint":Landroidx/compose/ui/graphics/Color;
    :cond_8
    move-object v3, v6

    .end local p2    # "tint":Landroidx/compose/ui/graphics/Color;
    .restart local v3    # "tint":Landroidx/compose/ui/graphics/Color;
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    const-string v6, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.StatusIcon (MessageBubble.kt:224)"

    invoke-static {v0, v13, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 226
    :cond_9
    nop

    .line 227
    if-eqz v1, :cond_a

    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/DoneAllKt;->getDoneAll(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    .line 228
    :cond_a
    if-eqz v2, :cond_b

    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/CheckKt;->getCheck(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    .line 229
    :cond_b
    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/icons/filled/CheckKt;->getCheck(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    move-object v5, v0

    .line 226
    :goto_6
    nop

    .line 231
    .local v5, "icon":Landroidx/compose/ui/graphics/vector/ImageVector;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v6

    :goto_7
    move-wide v8, v6

    goto :goto_8

    :cond_c
    if-eqz v1, :cond_d

    const v0, -0x318b8036

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "231@8067L11"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 232
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v10, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v6

    .line 231
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_7

    .line 233
    :cond_d
    if-eqz v2, :cond_e

    const v0, -0x318a681f

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "233@8139L11"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 234
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v10, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v6

    .line 233
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide v8, v6

    goto :goto_8

    .line 235
    :cond_e
    const v0, -0x31896dd2

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "235@8203L11"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 236
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v10, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v14

    const/16 v20, 0xe

    const/16 v21, 0x0

    const v16, 0x3f19999a    # 0.6f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v6

    .line 235
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide v8, v6

    .line 231
    :goto_8
    nop

    .line 239
    .local v8, "color":J
    nop

    .line 240
    if-eqz v1, :cond_f

    const-string v0, "Le\u00eddo"

    :goto_9
    move-object v6, v0

    goto :goto_a

    :cond_f
    if-eqz v2, :cond_10

    const-string v0, "Entregado"

    goto :goto_9

    :cond_10
    const-string v0, "Enviado"

    goto :goto_9

    .line 241
    :goto_a
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v7, 0xe

    .local v7, "$this$dp\\1":I
    const/4 v11, 0x0

    .line 303
    .local v11, "$i$f$getDp\\1\\241":I
    int-to-float v12, v7

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 241
    .end local v7    # "$this$dp\\1":I
    .end local v11    # "$i$f$getDp\\1\\241":I
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 242
    nop

    .line 238
    const/16 v11, 0x180

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v5    # "icon":Landroidx/compose/ui/graphics/vector/ImageVector;
    .end local v8    # "color":J
    goto :goto_b

    .line 224
    .end local v3    # "tint":Landroidx/compose/ui/graphics/Color;
    .restart local p2    # "tint":Landroidx/compose/ui/graphics/Color;
    :cond_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v6

    .line 244
    .end local p2    # "tint":Landroidx/compose/ui/graphics/Color;
    .restart local v3    # "tint":Landroidx/compose/ui/graphics/Color;
    :cond_12
    :goto_b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_13

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda6;

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda6;-><init>(ZZLandroidx/compose/ui/graphics/Color;II)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_13
    return-void
.end method

.method static final StatusIcon_gKt5lHk$lambda$13(ZZLandroidx/compose/ui/graphics/Color;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p4

    move-object v4, p5

    invoke-static/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->StatusIcon-gKt5lHk(ZZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final messageBubbleShape(ZZZ)Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 6
    .param p0, "isOwn"    # Z
    .param p1, "isFirstInGroup"    # Z
    .param p2, "isLastInGroup"    # Z

    .line 170
    const/16 v0, 0x12

    .local v0, "$this$dp\\1":I
    const/4 v1, 0x0

    .line 300
    .local v1, "$i$f$getDp\\1\\170":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 170
    .end local v0    # "$this$dp\\1":I
    .end local v1    # "$i$f$getDp\\1\\170":I
    nop

    .line 171
    .local v0, "full":F
    const/4 v1, 0x6

    .local v1, "$this$dp\\2":I
    const/4 v2, 0x0

    .line 301
    .local v2, "$i$f$getDp\\2\\171":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 171
    .end local v1    # "$this$dp\\2":I
    .end local v2    # "$i$f$getDp\\2\\171":I
    nop

    .line 172
    .local v1, "reduced":F
    const/4 v2, 0x4

    .local v2, "$this$dp\\3":I
    const/4 v3, 0x0

    .line 302
    .local v3, "$i$f$getDp\\3\\172":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 172
    .end local v2    # "$this$dp\\3":I
    .end local v3    # "$i$f$getDp\\3\\172":I
    nop

    .line 174
    .local v2, "tail":F
    if-eqz p0, :cond_3

    .line 176
    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 177
    :goto_0
    if-eqz p1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    .line 179
    :goto_1
    if-eqz p2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    .line 176
    :goto_2
    nop

    .line 177
    nop

    .line 179
    nop

    .line 178
    nop

    .line 175
    invoke-static {v3, v4, v5, v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    goto :goto_6

    .line 183
    :cond_3
    if-eqz p2, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    .line 184
    :goto_3
    if-eqz p2, :cond_5

    move v4, v0

    goto :goto_4

    :cond_5
    move v4, v1

    .line 185
    :goto_4
    if-eqz p1, :cond_6

    move v5, v0

    goto :goto_5

    :cond_6
    move v5, v1

    .line 183
    :goto_5
    nop

    .line 184
    nop

    .line 186
    nop

    .line 185
    nop

    .line 182
    invoke-static {v3, v4, v0, v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    .line 174
    :goto_6
    return-object v3
.end method
