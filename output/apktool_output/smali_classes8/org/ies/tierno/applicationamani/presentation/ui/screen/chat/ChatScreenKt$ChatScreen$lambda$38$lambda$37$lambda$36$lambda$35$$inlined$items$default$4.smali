.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->ChatScreen(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 ChatScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,523:1\n203#2,10:524\n217#2:540\n1128#3,6:534\n*S KotlinDebug\n*F\n+ 1 ChatScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt\n*L\n212#1:534,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $audioUiState$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $items:Ljava/util/List;

.field final synthetic $uiState$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $viewModel$inlined:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$viewModel$inlined:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$uiState$delegate$inlined:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$audioUiState$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 178
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p1, "$this$items"    # Landroidx/compose/foundation/lazy/LazyItemScope;
    .param p2, "it"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "CN(it)178@8834L22:LazyDsl.kt#428nma"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p4

    .local v3, "$dirty":I
    and-int/lit8 v4, p4, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p1

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    :goto_1
    and-int/lit8 v5, p4, 0x30

    if-nez v5, :cond_3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit16 v5, v3, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x0

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    move v5, v7

    :goto_3
    and-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v6, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)"

    const v8, 0x2fd4df92

    invoke-static {v8, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_5
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v6, v3, 0xe

    .local v6, "$changed\\1":I
    check-cast v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;

    .local v5, "item\\1":Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;
    move-object/from16 v8, p1

    .local v8, "$this$ChatScreen_u24lambda_u2438_u24lambda_u2437_u24lambda_u2436_u24lambda_u2435_u24lambda_u2434\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v9, p3

    .local v9, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 524
    .local v18, "$i$a$-items$default-ChatScreenKt$ChatScreen$7$1$3$1$2\\1\\179\\0":I
    const v10, -0x6396039b

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v10, "CN(item):ChatScreen.kt#5xjsc0"

    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 525
    instance-of v10, v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$DateSeparator;

    if-eqz v10, :cond_6

    const v10, 0x2613f5f4

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v10, "203@8508L29"

    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object v10, v5

    check-cast v10, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$DateSeparator;

    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$DateSeparator;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->access$DateSeparatorChip(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v2, v9

    goto/16 :goto_6

    .line 526
    :cond_6
    instance-of v7, v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    if-eqz v7, :cond_9

    const v7, 0x26140414

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "211@9093L143,204@8601L669"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 527
    move-object v7, v5

    check-cast v7, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->getMsg()Lorg/ies/tierno/applicationamani/domain/models/Message;

    move-result-object v7

    .line 528
    move-object v10, v5

    check-cast v10, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup()Z

    move-result v10

    .line 529
    move-object v11, v5

    check-cast v11, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup()Z

    move-result v11

    .line 530
    iget-object v12, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$uiState$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v12}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->access$ChatScreen$lambda$0(Landroidx/compose/runtime/State;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;

    move-result-object v12

    invoke-virtual {v12}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;->getCurrentUserId()Ljava/lang/String;

    move-result-object v12

    .line 531
    iget-object v13, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$uiState$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v13}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->access$ChatScreen$lambda$0(Landroidx/compose/runtime/State;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;

    move-result-object v13

    invoke-virtual {v13}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;->getAssignedPsychologist()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

    move-result-object v13

    .line 532
    iget-object v14, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$audioUiState$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v14}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->access$ChatScreen$lambda$1(Landroidx/compose/runtime/State;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object v14

    .line 533
    const v15, 0x26143f86

    const-string v1, "CC(remember):ChatScreen.kt#9igjgp"

    invoke-static {v9, v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$viewModel$inlined:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid\\2":Z
    move-object v15, v9

    .local v15, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 534
    .local v16, "$i$f$cache\\2\\533":I
    move/from16 v17, v1

    .end local v1    # "invalid\\2":Z
    .local v17, "invalid\\2":Z
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\2":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 535
    .local v19, "$i$a$-let-ComposerKt$cache$1\\3\\534\\2":I
    if-nez v17, :cond_8

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_7

    goto :goto_4

    .line 539
    :cond_7
    goto :goto_5

    .line 536
    :cond_8
    :goto_4
    const/4 v2, 0x0

    .line 533
    .local v2, "$i$a$-cache-ChatScreenKt$ChatScreen$7$1$3$1$2$1\\4\\536\\1":I
    move-object/from16 v20, v1

    .end local v1    # "it\\2":Ljava/lang/Object;
    .local v20, "it\\2":Ljava/lang/Object;
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$7$1$3$1$2$1$1;

    move/from16 v21, v2

    .end local v2    # "$i$a$-cache-ChatScreenKt$ChatScreen$7$1$3$1$2$1\\4\\536\\1":I
    .local v21, "$i$a$-cache-ChatScreenKt$ChatScreen$7$1$3$1$2$1\\4\\536\\1":I
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4;->$viewModel$inlined:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$7$1$3$1$2$1$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 536
    .end local v21    # "$i$a$-cache-ChatScreenKt$ChatScreen$7$1$3$1$2$1\\4\\536\\1":I
    nop

    .line 537
    .local v1, "value\\3":Ljava/lang/Object;
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 538
    nop

    .line 534
    .end local v1    # "value\\3":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1\\3\\534\\2":I
    .end local v20    # "it\\2":Ljava/lang/Object;
    :goto_5
    nop

    .line 533
    .end local v15    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache\\2\\533":I
    .end local v17    # "invalid\\2":Z
    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 526
    const/16 v17, 0x0

    move-object/from16 v16, v9

    move-object v9, v7

    .end local v9    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v16, "$composer\\1":Landroidx/compose/runtime/Composer;
    invoke-static/range {v9 .. v17}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->MessageBubble(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZLjava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v2, v16

    .end local v16    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\1":Landroidx/compose/runtime/Composer;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 524
    :goto_6
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 540
    nop

    .line 179
    .end local v2    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v5    # "item\\1":Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;
    .end local v6    # "$changed\\1":I
    .end local v8    # "$this$ChatScreen_u24lambda_u2438_u24lambda_u2437_u24lambda_u2436_u24lambda_u2435_u24lambda_u2434\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v18    # "$i$a$-items$default-ChatScreenKt$ChatScreen$7$1$3$1$2\\1\\179\\0":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_7

    .line 524
    .restart local v5    # "item\\1":Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;
    .restart local v6    # "$changed\\1":I
    .restart local v8    # "$this$ChatScreen_u24lambda_u2438_u24lambda_u2437_u24lambda_u2436_u24lambda_u2435_u24lambda_u2434\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .restart local v9    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$i$a$-items$default-ChatScreenKt$ChatScreen$7$1$3$1$2\\1\\179\\0":I
    :cond_9
    move-object v2, v9

    .end local v9    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\1":Landroidx/compose/runtime/Composer;
    const v1, 0x2613ef5e

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 178
    .end local v2    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v5    # "item\\1":Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;
    .end local v6    # "$changed\\1":I
    .end local v8    # "$this$ChatScreen_u24lambda_u2438_u24lambda_u2437_u24lambda_u2436_u24lambda_u2435_u24lambda_u2434\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v18    # "$i$a$-items$default-ChatScreenKt$ChatScreen$7$1$3$1$2\\1\\179\\0":I
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    :cond_b
    :goto_7
    return-void
.end method
