.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;"
    method = "PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$62"
    proto = "(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/ColorScheme;

.field public final synthetic f$1:Landroidx/compose/material3/Typography;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda47;->f$0:Landroidx/compose/material3/ColorScheme;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda47;->f$1:Landroidx/compose/material3/Typography;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda47;->f$0:Landroidx/compose/material3/ColorScheme;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$$ExternalSyntheticLambda47;->f$1:Landroidx/compose/material3/Typography;

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;->PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$62(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
