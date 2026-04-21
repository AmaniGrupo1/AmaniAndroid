.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;"
    method = "QuestionnaireScreen$lambda$9"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/material3/Typography;Lorg/ies/tierno/applicationamani/domain/models/Question;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

.field public final synthetic f$1:Landroidx/compose/material3/Typography;

.field public final synthetic f$2:Lorg/ies/tierno/applicationamani/domain/models/Question;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/material3/Typography;Lorg/ies/tierno/applicationamani/domain/models/Question;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/material3/Typography;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;->f$2:Lorg/ies/tierno/applicationamani/domain/models/Question;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/material3/Typography;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda3;->f$2:Lorg/ies/tierno/applicationamani/domain/models/Question;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;->QuestionnaireScreen$lambda$9(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;Landroidx/compose/material3/Typography;Lorg/ies/tierno/applicationamani/domain/models/Question;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
