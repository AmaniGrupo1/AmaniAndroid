.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->markMessagesAsDelivered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,500:1\n1915#2,2:501\n*S KotlinDebug\n*F\n+ 1 ChatViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1\n*L\n257#1:501,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$markMessagesAsDelivered$1"
    f = "ChatViewModel.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x103
    }
    m = "invokeSuspend"
    n = {
        "$this$forEach\\1",
        "element\\1",
        "message\\2",
        "$i$f$forEach\\1\\257",
        "$i$a$-forEach-ChatViewModel$markMessagesAsDelivered$1$1\\2\\501\\0"
    }
    s = {
        "L$0",
        "L$3",
        "L$4",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 256
    iget v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;
    :pswitch_0
    iget v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->I$1:I

    .local v2, "$i$a$-forEach-ChatViewModel$markMessagesAsDelivered$1$1\\2\\501\\0":I
    iget v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->I$0:I

    .local v3, "$i$f$forEach\\1\\257":I
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lorg/ies/tierno/applicationamani/domain/models/Message;

    .local v4, "message\\2":Lorg/ies/tierno/applicationamani/domain/models/Message;
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$3:Ljava/lang/Object;

    .local v5, "element\\1":Ljava/lang/Object;
    iget-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iget-object v8, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$forEach\\1":Ljava/lang/Iterable;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    check-cast v9, Lkotlin/Result;

    invoke-virtual {v9}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-object v14, v0

    move v15, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_1

    .end local v2    # "$i$a$-forEach-ChatViewModel$markMessagesAsDelivered$1$1\\2\\501\\0":I
    .end local v3    # "$i$f$forEach\\1\\257":I
    .end local v4    # "message\\2":Lorg/ies/tierno/applicationamani/domain/models/Message;
    .end local v5    # "element\\1":Ljava/lang/Object;
    .end local v8    # "$this$forEach\\1":Ljava/lang/Iterable;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_messages$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach\\1":Ljava/lang/Iterable;
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    const/4 v4, 0x0

    .line 501
    .local v4, "$i$f$forEach\\1\\257":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v14, v0

    move-object v8, v2

    move-object v7, v3

    move v3, v4

    move-object v6, v5

    move-object v2, v1

    move-object/from16 v1, p1

    .end local v2    # "$this$forEach\\1":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach\\1\\257":I
    .end local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v3    # "$i$f$forEach\\1\\257":I
    .restart local v8    # "$this$forEach\\1":Ljava/lang/Iterable;
    .local v14, "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "element\\1":Ljava/lang/Object;
    move-object v4, v5

    check-cast v4, Lorg/ies/tierno/applicationamani/domain/models/Message;

    .local v4, "message\\2":Lorg/ies/tierno/applicationamani/domain/models/Message;
    const/4 v15, 0x0

    .line 258
    .local v15, "$i$a$-forEach-ChatViewModel$markMessagesAsDelivered$1$1\\2\\501\\0":I
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/domain/models/Message;->isDelivered()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getSenderId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getCurrentUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 259
    invoke-static {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getMarkMessageDeliveredUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;

    move-result-object v9

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getCurrentUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J

    move-result-wide v12

    .restart local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$1:Ljava/lang/Object;

    iput-object v6, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$3:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->L$4:Ljava/lang/Object;

    iput v3, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->I$0:I

    iput v15, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->I$1:I

    const/4 v0, 0x1

    iput v0, v14, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;->label:I

    invoke-virtual/range {v9 .. v14}, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;->invoke-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_0

    .line 256
    .end local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;
    return-object v2

    .line 259
    :cond_0
    :goto_1
    nop

    .line 261
    :cond_1
    nop

    .line 501
    .end local v4    # "message\\2":Lorg/ies/tierno/applicationamani/domain/models/Message;
    .end local v5    # "element\\1":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-ChatViewModel$markMessagesAsDelivered$1$1\\2\\501\\0":I
    move-object/from16 v0, p0

    goto :goto_0

    .line 502
    :cond_2
    nop

    .line 262
    .end local v3    # "$i$f$forEach\\1\\257":I
    .end local v8    # "$this$forEach\\1":Ljava/lang/Iterable;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
