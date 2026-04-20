.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt;"
    method = "BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1"
    proto = "(Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda6;->f$0:Landroidx/navigation/NavController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt$$ExternalSyntheticLambda6;->f$0:Landroidx/navigation/NavController;

    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    invoke-static {v0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/BarraNavegationInferiorPsicologoKt;->BarraNavegationInferiorPsicologo$lambda$6$lambda$5$lambda$3$lambda$2$lambda$1(Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
