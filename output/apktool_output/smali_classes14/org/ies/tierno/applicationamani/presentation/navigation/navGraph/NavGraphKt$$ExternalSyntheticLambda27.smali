.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;"
    method = "NavGraph$lambda$35$lambda$34$lambda$33$lambda$32$lambda$29$lambda$28"
    proto = "(JJ)Lorg/koin/core/parameter/ParametersHolder;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda27;->f$0:J

    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda27;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda27;->f$0:J

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda27;->f$1:J

    invoke-static {v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;->NavGraph$lambda$35$lambda$34$lambda$33$lambda$32$lambda$29$lambda$28(JJ)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method
