.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;"
    method = "NavGraph$lambda$35$lambda$34$lambda$33"
    proto = "(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavHostController;

.field public final synthetic f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field public final synthetic f$2:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;->f$2:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavHostController;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda0;->f$2:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    invoke-static {v0, v1, v2, p1}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;->NavGraph$lambda$35$lambda$34$lambda$33(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
