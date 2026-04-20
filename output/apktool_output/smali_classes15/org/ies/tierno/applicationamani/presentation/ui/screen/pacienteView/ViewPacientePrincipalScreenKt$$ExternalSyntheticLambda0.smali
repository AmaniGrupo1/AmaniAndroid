.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;"
    method = "ViewPacientePrincipalScreen$lambda$16$lambda$15$lambda$11$lambda$10$lambda$9"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;J)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda0;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda0;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;->ViewPacientePrincipalScreen$lambda$16$lambda$15$lambda$11$lambda$10$lambda$9(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;J)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
