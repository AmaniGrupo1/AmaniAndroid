.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;"
    method = "PrincipalClienteScreen$lambda$18"
    proto = "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Ljava/util/List;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$1:Landroidx/compose/material3/DrawerState;

.field public final synthetic f$2:Landroidx/compose/material3/ColorScheme;

.field public final synthetic f$3:Landroidx/compose/material3/Typography;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/material3/DrawerState;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/material3/ColorScheme;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/material3/Typography;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/material3/DrawerState;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/material3/ColorScheme;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/material3/Typography;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;->PrincipalClienteScreen$lambda$18(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Ljava/util/List;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
