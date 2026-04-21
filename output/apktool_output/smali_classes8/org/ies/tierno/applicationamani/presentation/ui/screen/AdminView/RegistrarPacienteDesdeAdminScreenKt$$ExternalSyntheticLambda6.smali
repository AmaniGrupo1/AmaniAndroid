.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;"
    method = "RegistrarPacienteDesdeAdminScreen$lambda$44"
    proto = "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;->f$0:Landroidx/navigation/NavController;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;->f$0:Landroidx/navigation/NavController;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt$$ExternalSyntheticLambda6;->f$2:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, v2, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreenKt;->RegistrarPacienteDesdeAdminScreen$lambda$44(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
