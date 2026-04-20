.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt;"
    method = "AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90$lambda$89$lambda$88$lambda$85$lambda$84"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Z)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda10;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt$$ExternalSyntheticLambda10;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreenKt;->AgregaPsicologoScreen$lambda$95$lambda$94$lambda$90$lambda$89$lambda$88$lambda$85$lambda$84(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
