.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt;"
    method = "TarjetaFranja$lambda$19"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

.field public final synthetic f$1:Landroidx/compose/material3/Typography;

.field public final synthetic f$2:Landroidx/compose/material3/ColorScheme;

.field public final synthetic f$3:Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$0:Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$1:Landroidx/compose/material3/Typography;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/material3/ColorScheme;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$3:Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$0:Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$1:Landroidx/compose/material3/Typography;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/material3/ColorScheme;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt$$ExternalSyntheticLambda8;->f$3:Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/VistaDiariaHorasKt;->TarjetaFranja$lambda$19(Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
