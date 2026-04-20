.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt;"
    method = "PsicologoProfileScreen$lambda$11"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroidx/compose/runtime/State;

.field public final synthetic f$3:Landroidx/compose/runtime/State;

.field public final synthetic f$4:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$1:J

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$3:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$4:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$1:J

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$3:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda16;->f$4:Landroidx/compose/runtime/State;

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt;->PsicologoProfileScreen$lambda$11(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
