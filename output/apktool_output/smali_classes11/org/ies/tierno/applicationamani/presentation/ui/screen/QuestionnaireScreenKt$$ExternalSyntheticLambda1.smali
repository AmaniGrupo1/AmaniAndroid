.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;"
    method = "QuestionnaireScreen$lambda$9$lambda$8$lambda$5$lambda$4$lambda$3$lambda$2"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;IZ)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda1;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    iput p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda1;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;

    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreenKt;->QuestionnaireScreen$lambda$9$lambda$8$lambda$5$lambda$4$lambda$3$lambda$2(Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;IZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
