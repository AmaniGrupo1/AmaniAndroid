.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;"
    method = "TestScreen$lambda$21"
    proto = "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;ILandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/font/FontFamily;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$2:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    iput p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$2:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;

    iget v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt$$ExternalSyntheticLambda3;->f$3:I

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TestScreenKt;->TestScreen$lambda$21(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;ILandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
