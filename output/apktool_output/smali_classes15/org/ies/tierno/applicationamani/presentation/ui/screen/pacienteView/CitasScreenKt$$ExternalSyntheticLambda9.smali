.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;"
    method = "CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52$lambda$51$lambda$50$lambda$49"
    proto = "(Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;Landroid/content/Context;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda9;->f$0:Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda9;->f$0:Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52$lambda$51$lambda$50$lambda$49(Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;Landroid/content/Context;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
