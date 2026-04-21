.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt;"
    method = "AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47"
    proto = "(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda28;->f$0:J

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda28;->f$1:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda28;->f$2:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda28;->f$0:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda28;->f$1:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda28;->f$2:Landroidx/compose/runtime/State;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt;->AgregaPsicologoScreen$lambda$95$lambda$94$lambda$61$lambda$60$lambda$47(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
