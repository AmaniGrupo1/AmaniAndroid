.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt;"
    method = "RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75$lambda$74$lambda$73$lambda$72"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda35;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda35;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda35;->f$2:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda35;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda35;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda35;->f$2:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt;->RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75$lambda$74$lambda$73$lambda$72(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
