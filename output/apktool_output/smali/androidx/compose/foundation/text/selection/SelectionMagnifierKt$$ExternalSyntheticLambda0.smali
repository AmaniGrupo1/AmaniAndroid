.class public final synthetic Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;"
    method = "animatedSelectionMagnifier$lambda$0$1$0"
    proto = "(Landroidx/compose/runtime/State;)Landroidx/compose/ui/geometry/Offset;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->$r8$lambda$O5YDaFAAsyRvXThzqwro_LFBp0w(Landroidx/compose/runtime/State;)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    return-object v0
.end method
