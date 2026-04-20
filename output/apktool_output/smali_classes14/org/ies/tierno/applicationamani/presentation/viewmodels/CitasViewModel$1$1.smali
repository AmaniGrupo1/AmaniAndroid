.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1$1;
.super Ljava/lang/Object;
.source "CitasViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
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
.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 48
    move-object v0, p1

    check-cast v0, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    invoke-virtual {p0, v0, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1$1;->emit(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final emit(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "session"    # Lorg/ies/tierno/applicationamani/data/local/UserSession;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_userSession$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 51
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_psicologoId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPaciente()Ljava/lang/Long;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPaciente()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$cargarPsicologoAsignado(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;J)V

    .line 55
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
