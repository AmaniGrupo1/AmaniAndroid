.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel$1$1;
.super Ljava/lang/Object;
.source "ListarPsicologosAdminViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 21
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel$1$1;->emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "lista"    # Ljava/util/List;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;->access$get_psicologo$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
