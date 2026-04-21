.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function8;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;"
    method = "PsicologoAgendaScreen$lambda$88$lambda$87"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;JLjava/time/LocalDate;Ljava/time/LocalTime;ILjava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

.field public final synthetic f$1:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$3:Landroidx/compose/material3/SnackbarHostState;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$5:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$3:Landroidx/compose/material3/SnackbarHostState;

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$4:Landroidx/compose/runtime/State;

    iget-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda26;->f$5:Landroidx/compose/runtime/MutableState;

    move-object/from16 v7, p1

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v9, p2

    check-cast v9, Lj$/time/LocalDate;

    move-object/from16 v10, p3

    check-cast v10, Lj$/time/LocalTime;

    move-object/from16 v11, p4

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v12, p5

    check-cast v12, Ljava/lang/String;

    move-object/from16 v13, p6

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v15, p7

    check-cast v15, Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    move-object/from16 v16, p8

    check-cast v16, Ljava/math/BigDecimal;

    invoke-static/range {v1 .. v16}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;->PsicologoAgendaScreen$lambda$88$lambda$87(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;JLj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)Lkotlin/Unit;

    move-result-object v1

    return-object v1
.end method
