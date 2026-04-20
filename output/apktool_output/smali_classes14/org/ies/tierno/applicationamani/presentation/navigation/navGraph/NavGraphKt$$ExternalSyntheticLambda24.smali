.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;"
    method = "NavGraph$lambda$35$lambda$34$lambda$33$lambda$10"
    proto = "(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavHostController;

.field public final synthetic f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda24;->f$0:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda24;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda24;->f$0:Landroidx/navigation/NavHostController;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt$$ExternalSyntheticLambda24;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    move-object v2, p1

    check-cast v2, Landroidx/compose/animation/AnimatedContentScope;

    move-object v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraphKt;->NavGraph$lambda$35$lambda$34$lambda$33$lambda$10(Landroidx/navigation/NavHostController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
