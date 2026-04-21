.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt;"
    method = "PsicologoProfileScreen$lambda$11$lambda$10$lambda$7$lambda$6"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLandroid/net/Uri;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda11;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda11;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda11;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda11;->f$1:J

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, p1}, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt;->PsicologoProfileScreen$lambda$11$lambda$10$lambda$7$lambda$6(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLandroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
