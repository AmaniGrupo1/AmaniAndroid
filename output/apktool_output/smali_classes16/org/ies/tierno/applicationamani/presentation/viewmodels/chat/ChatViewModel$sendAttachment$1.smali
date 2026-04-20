.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->sendAttachment(Landroid/net/Uri;)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$sendAttachment$1"
    f = "ChatViewModel.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x18b,
        0x18d
    }
    m = "invokeSuspend"
    n = {
        "conversationId",
        "conversationId",
        "result"
    }
    s = {
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->$uri:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->$uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 390
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;

    .local v0, "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "conversationId":Ljava/lang/String;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .end local v0    # "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    .end local v1    # "conversationId":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "conversationId":Ljava/lang/String;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v1    # "conversationId":Ljava/lang/String;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 391
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 392
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopTyping()V

    .line 394
    sget-object v1, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getCurrentUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getOtherUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;->generateRoomId(JJ)Ljava/lang/String;

    move-result-object v1

    .line 395
    .restart local v1    # "conversationId":Ljava/lang/String;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getFileStorageService$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    move-result-object v2

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->$uri:Landroid/net/Uri;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->label:I

    invoke-virtual {v2, v3, v1, v4}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->uploadFile(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 390
    return-object v0

    :cond_0
    :goto_0
    check-cast v2, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;

    .line 396
    .local v2, "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    instance-of v3, v2, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;

    if-eqz v3, :cond_4

    .line 397
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getSendMessageUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;

    move-result-object v4

    .line 398
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getCurrentUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J

    move-result-wide v5

    .line 399
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getOtherUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J

    move-result-wide v7

    .line 400
    nop

    .line 401
    move-object v3, v2

    check-cast v3, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 402
    move-object v3, v2

    check-cast v3, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;->getType()Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    move-result-object v11

    .line 403
    move-object v3, v2

    check-cast v3, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;->getFileName()Ljava/lang/String;

    move-result-object v12

    move-object v13, p0

    check-cast v13, Lkotlin/coroutines/Continuation;

    .line 397
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->label:I

    const-string v9, ""

    invoke-virtual/range {v4 .. v13}, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;->invoke-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 390
    return-object v0

    .line 397
    :cond_1
    move-object v0, v2

    move-object v2, v3

    .end local v2    # "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    .restart local v0    # "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    :goto_1
    nop

    .line 404
    invoke-static {v2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lkotlin/Unit;

    .local v3, "it\\1":Lkotlin/Unit;
    const/4 v4, 0x0

    .line 405
    .local v4, "$i$a$-onSuccess-ChatViewModel$sendAttachment$1$1\\1\\404\\0":I
    nop

    .line 404
    .end local v3    # "it\\1":Lkotlin/Unit;
    .end local v4    # "$i$a$-onSuccess-ChatViewModel$sendAttachment$1$1\\1\\404\\0":I
    :cond_2
    nop

    .line 405
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3

    .local v4, "e\\3":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 406
    .local v5, "$i$a$-onFailure-ChatViewModel$sendAttachment$1$2\\3\\405\\0":I
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 407
    nop

    .line 405
    .end local v4    # "e\\3":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-onFailure-ChatViewModel$sendAttachment$1$2\\3\\405\\0":I
    nop

    :cond_3
    invoke-static {v2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_2

    .line 409
    .end local v0    # "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    .restart local v2    # "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    :cond_4
    instance-of v0, v2, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    if-eqz v0, :cond_5

    .line 410
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 413
    .end local v2    # "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 395
    .restart local v2    # "result":Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
