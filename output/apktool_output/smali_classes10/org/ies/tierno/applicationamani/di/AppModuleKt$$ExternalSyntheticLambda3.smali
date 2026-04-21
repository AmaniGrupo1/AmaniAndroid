.class public final synthetic Lorg/ies/tierno/applicationamani/di/AppModuleKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/di/AppModuleKt;"
    method = "appModule$lambda$52$lambda$12"
    proto = "(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-static {p1, p2}, Lorg/ies/tierno/applicationamani/di/AppModuleKt;->appModule$lambda$52$lambda$12(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    move-result-object p1

    return-object p1
.end method
