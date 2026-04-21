.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;"
    method = "PacienteCard$lambda$52$lambda$51$lambda$50"
    proto = "(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;ZLandroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda3;->f$0:Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;

    iput-boolean p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda3;->f$0:Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;

    iget-boolean v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->PacienteCard$lambda$52$lambda$51$lambda$50(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;ZLandroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
