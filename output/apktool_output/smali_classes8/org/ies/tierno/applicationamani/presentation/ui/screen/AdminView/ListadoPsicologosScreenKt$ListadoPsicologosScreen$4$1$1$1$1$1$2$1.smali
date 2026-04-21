.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;
.super Ljava/lang/Object;
.source "ListadoPsicologosScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
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
.field final synthetic $loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field final synthetic $pacienteId:J

.field final synthetic $psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$pacienteId:J

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 161
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1$1;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$pacienteId:J

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1;->$psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$2$1$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 164
    return-void
.end method
