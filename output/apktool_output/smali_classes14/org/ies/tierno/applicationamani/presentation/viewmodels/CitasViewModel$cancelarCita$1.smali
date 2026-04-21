.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CitasViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->cancelarCita(J)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cancelarCita$1"
    f = "CitasViewModel.kt"
    i = {}
    l = {
        0x9c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $idCita:J

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->$idCita:J

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->$idCita:J

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 154
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$getCitasRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-result-object v1

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->$idCita:J

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->label:I

    invoke-virtual {v1, v3, v4, v5}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->cancelarCita-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 154
    return-object v0

    .line 156
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 157
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    .local v2, "it\\1":Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;
    const/4 v3, 0x0

    .line 158
    .local v3, "$i$a$-onSuccess-CitasViewModel$cancelarCita$1$1\\1\\157\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 159
    nop

    .line 157
    .end local v2    # "it\\1":Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;
    .end local v3    # "$i$a$-onSuccess-CitasViewModel$cancelarCita$1$1\\1\\157\\0":I
    :cond_1
    nop

    .line 160
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "e\\3":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 161
    .local v2, "$i$a$-onFailure-CitasViewModel$cancelarCita$1$2\\3\\160\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "Error al cancelar la cita"

    :cond_2
    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 162
    nop

    .line 160
    .end local v0    # "e\\3":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-CitasViewModel$cancelarCita$1$2\\3\\160\\0":I
    nop

    .line 163
    :cond_3
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
