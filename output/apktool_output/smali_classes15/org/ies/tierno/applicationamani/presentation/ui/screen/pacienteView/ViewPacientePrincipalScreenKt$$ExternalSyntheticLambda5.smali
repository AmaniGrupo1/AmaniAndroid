.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;"
    method = "ViewPacientePrincipalScreen$lambda$17"
    proto = "(Landroidx/navigation/NavController;JLorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;JLorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$0:Landroidx/navigation/NavController;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$1:J

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$2:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iput p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$3:I

    iput p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$0:Landroidx/navigation/NavController;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$1:J

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$2:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iget v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$3:I

    iget v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda5;->f$4:I

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;->ViewPacientePrincipalScreen$lambda$17(Landroidx/navigation/NavController;JLorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
