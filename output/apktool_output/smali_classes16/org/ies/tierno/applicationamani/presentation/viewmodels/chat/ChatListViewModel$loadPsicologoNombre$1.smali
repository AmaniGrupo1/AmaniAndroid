.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->loadPsicologoNombre(J)V
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
    value = "SMAP\nChatListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatListViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadPsicologoNombre$1"
    f = "ChatListViewModel.kt"
    i = {}
    l = {
        0x94
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $idUsuarioPsicologo:J

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->$idUsuarioPsicologo:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->$idUsuarioPsicologo:J

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 145
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 145
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 147
    nop

    .line 148
    :try_start_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$getProfileUseCaseGeneral$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    move-result-object v1

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->$idUsuarioPsicologo:J

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->label:I

    invoke-virtual {v1, v4, v5, v6}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->getPsicologoById-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 145
    return-object v0

    .line 148
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 149
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "Tu Psic\u00f3logo"

    if-eqz v4, :cond_7

    :try_start_2
    move-object v4, v0

    check-cast v4, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;

    .local v4, "profile\\1":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    const/4 v6, 0x0

    .line 150
    .local v6, "$i$a$-onSuccess-ChatListViewModel$loadPsicologoNombre$1$1\\1\\149\\0":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v7

    .local v8, "$this$invokeSuspend_u24lambda_u244_u24lambda_u242\\2":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 151
    .local v9, "$i$a$-buildString-ChatListViewModel$loadPsicologoNombre$1$1$nombre$1\\2\\150\\1":I
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;->getUsuario()Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->getNombre()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 168
    .local v10, "it\\3":Ljava/lang/String;
    const/4 v11, 0x0

    .line 151
    .local v11, "$i$a$-let-ChatListViewModel$loadPsicologoNombre$1$1$nombre$1$1\\3\\151\\2":I
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .end local v10    # "it\\3":Ljava/lang/String;
    .end local v11    # "$i$a$-let-ChatListViewModel$loadPsicologoNombre$1$1$nombre$1$1\\3\\151\\2":I
    :cond_1
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;->getUsuario()Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->getApellido()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .local v10, "it\\4":Ljava/lang/String;
    const/4 v11, 0x0

    .line 153
    .local v11, "$i$a$-let-ChatListViewModel$loadPsicologoNombre$1$1$nombre$1$2\\4\\152\\2":I
    move-object v12, v8

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_2

    move v12, v3

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_1
    if-eqz v12, :cond_3

    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    nop

    .line 152
    .end local v10    # "it\\4":Ljava/lang/String;
    .end local v11    # "$i$a$-let-ChatListViewModel$loadPsicologoNombre$1$1$nombre$1$2\\4\\152\\2":I
    :cond_4
    nop

    .line 156
    nop

    .line 150
    .end local v8    # "$this$invokeSuspend_u24lambda_u244_u24lambda_u242\\2":Ljava/lang/StringBuilder;
    .end local v9    # "$i$a$-buildString-ChatListViewModel$loadPsicologoNombre$1$1$nombre$1\\2\\150\\1":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "nombre\\1":Ljava/lang/String;
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_partnerNombre$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    if-eqz v3, :cond_6

    .line 168
    const/4 v3, 0x0

    .line 157
    .local v3, "$i$a$-ifEmpty-ChatListViewModel$loadPsicologoNombre$1$1$1\\5\\157\\1":I
    move-object v8, v5

    .end local v3    # "$i$a$-ifEmpty-ChatListViewModel$loadPsicologoNombre$1$1$1\\5\\157\\1":I
    :cond_6
    invoke-interface {v1, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 158
    nop

    .line 149
    .end local v4    # "profile\\1":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    .end local v6    # "$i$a$-onSuccess-ChatListViewModel$loadPsicologoNombre$1$1\\1\\149\\0":I
    .end local v7    # "nombre\\1":Ljava/lang/String;
    :cond_7
    nop

    .line 158
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_8

    .local v3, "it\\7":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$a$-onFailure-ChatListViewModel$loadPsicologoNombre$1$2\\7\\158\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_partnerNombre$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    nop

    .line 158
    .end local v3    # "it\\7":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-onFailure-ChatListViewModel$loadPsicologoNombre$1$2\\7\\158\\0":I
    :cond_8
    nop

    .line 162
    .end local v0    # "result":Ljava/lang/Object;
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 163
    nop

    .line 164
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 162
    :goto_3
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadPsicologoNombre$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
