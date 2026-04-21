.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CrearPreguntaViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->guardarPregunta()V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel$guardarPregunta$1"
    f = "CrearPreguntaViewModel.kt"
    i = {}
    l = {
        0x54
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 82
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_1

    .line 82
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    nop

    .line 84
    :try_start_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->access$getCrearPreguntaUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;

    move-result-object v1

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->access$get_request$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->label:I

    invoke-virtual {v1, v3, v4}, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;->invoke(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 82
    return-object v0

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->access$get_guardadoExitoso$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel$guardarPregunta$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;->access$get_guardadoExitoso$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
