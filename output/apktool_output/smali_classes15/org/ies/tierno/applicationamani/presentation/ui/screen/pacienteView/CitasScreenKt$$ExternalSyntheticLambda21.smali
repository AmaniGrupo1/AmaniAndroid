.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;"
    method = "CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$42$lambda$41"
    proto = "(Landroidx/compose/runtime/MutableState;Ljava/time/YearMonth;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda21;->f$0:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda21;->f$0:Landroidx/compose/runtime/MutableState;

    check-cast p1, Lj$/time/YearMonth;

    invoke-static {v0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$42$lambda$41(Landroidx/compose/runtime/MutableState;Lj$/time/YearMonth;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
