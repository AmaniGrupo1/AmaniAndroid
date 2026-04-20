.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2$1;
.super Ljava/lang/Object;
.source "CitasViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 60
    move-object v0, p1

    check-cast v0, Lkotlin/Unit;

    invoke-virtual {p0, v0, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2$1;->emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "it"    # Lkotlin/Unit;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_disponibilidadDia$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;->getFecha()Lj$/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .local v0, "fecha\\1":Lj$/time/LocalDate;
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$a$-let-CitasViewModel$2$1$1\\1\\61\\0":I
    invoke-virtual {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->cargarDisponibilidad(Lj$/time/LocalDate;)V

    .line 63
    nop

    .line 61
    .end local v0    # "fecha\\1":Lj$/time/LocalDate;
    .end local v2    # "$i$a$-let-CitasViewModel$2$1$1\\1\\61\\0":I
    :cond_0
    nop

    .line 64
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
