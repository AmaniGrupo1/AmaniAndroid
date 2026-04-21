.class public final synthetic Landroidx/compose/foundation/BasicTooltipKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/BasicTooltipKt;"
    method = "anchorSemantics$lambda$0"
    proto = "(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$2:Landroidx/compose/foundation/BasicTooltipState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/BasicTooltipState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/BasicTooltipKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/foundation/BasicTooltipKt$$ExternalSyntheticLambda8;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/foundation/BasicTooltipKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/foundation/BasicTooltipState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/BasicTooltipKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroidx/compose/foundation/BasicTooltipKt$$ExternalSyntheticLambda8;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/foundation/BasicTooltipKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/foundation/BasicTooltipState;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {v0, v1, v2, p1}, Landroidx/compose/foundation/BasicTooltipKt;->anchorSemantics$lambda$0(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
