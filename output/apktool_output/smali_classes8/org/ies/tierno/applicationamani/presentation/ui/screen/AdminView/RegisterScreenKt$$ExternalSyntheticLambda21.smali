.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt;"
    method = "RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$158$lambda$155"
    proto = "(ZLandroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

.field public final synthetic f$3:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field public final synthetic f$4:Landroidx/compose/ui/text/font/FontFamily;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$0:Z

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$2:Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$3:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$4:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$5:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$0:Z

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$2:Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$3:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$4:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda21;->f$5:Landroidx/compose/runtime/MutableState;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt;->RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$158$lambda$155(ZLandroidx/compose/runtime/State;Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
