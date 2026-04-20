.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;"
    method = "PrincipalClienteScreen$lambda$18$lambda$11$lambda$10$lambda$9$lambda$8"
    proto = "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$1:Landroidx/compose/material3/DrawerState;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda5;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/material3/DrawerState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda5;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/material3/DrawerState;

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;->PrincipalClienteScreen$lambda$18$lambda$11$lambda$10$lambda$9$lambda$8(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
