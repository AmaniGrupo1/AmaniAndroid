.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "esMenor",
        "nombre",
        "",
        "telefono",
        "email",
        "dni"
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$tutorValido$1"
    f = "LoginViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move-object v5, p4

    check-cast v5, Ljava/lang/String;

    move-object v6, p5

    check-cast v6, Ljava/lang/String;

    move-object v7, p6

    check-cast v7, Lkotlin/coroutines/Continuation;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->invoke(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;

    invoke-direct {v0, p6}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->Z$0:Z

    iput-object p2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$2:Ljava/lang/Object;

    iput-object p5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$3:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->Z$0:Z

    .local v0, "esMenor":Z
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "nombre":Ljava/lang/String;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "telefono":Ljava/lang/String;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "email":Ljava/lang/String;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "dni":Ljava/lang/String;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 310
    iget v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;->label:I

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 311
    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 312
    goto :goto_0

    .line 314
    :cond_0
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 315
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 316
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 317
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string v8, "^[A-Za-z0-9+_.-]+@(.+)$"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 318
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 319
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string v8, "^[0-9]{8}[A-Za-z]$"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 320
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
