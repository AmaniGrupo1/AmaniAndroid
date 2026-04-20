.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;"
    method = "ViewPacientePrincipalScreen$lambda$16"
    proto = "(Landroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLandroidx/compose/runtime/State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroidx/compose/runtime/State;

.field public final synthetic f$3:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLandroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$0:Landroidx/navigation/NavController;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$3:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iput-wide p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$4:J

    iput-object p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$0:Landroidx/navigation/NavController;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$3:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$4:J

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/runtime/State;

    move-object v7, p1

    check-cast v7, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;->ViewPacientePrincipalScreen$lambda$16(Landroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLandroidx/compose/runtime/State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
