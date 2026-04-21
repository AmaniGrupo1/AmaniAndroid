.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;"
    method = "CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$44$lambda$43"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/runtime/MutableState;Ljava/time/LocalDate;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda22;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda22;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/runtime/MutableState;

    check-cast p1, Lj$/time/LocalDate;

    invoke-static {v0, v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$44$lambda$43(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/runtime/MutableState;Lj$/time/LocalDate;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
