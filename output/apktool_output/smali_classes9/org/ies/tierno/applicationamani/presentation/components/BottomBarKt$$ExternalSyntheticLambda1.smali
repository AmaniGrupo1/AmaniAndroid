.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt;"
    method = "BottomBar$lambda$8$lambda$7$lambda$4$lambda$3"
    proto = "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda1;->f$0:Landroidx/navigation/NavController;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda1;->f$1:Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda1;->f$0:Landroidx/navigation/NavController;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt$$ExternalSyntheticLambda1;->f$1:Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/components/BottomBarKt;->BottomBar$lambda$8$lambda$7$lambda$4$lambda$3(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/components/BottomBarDestination;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
