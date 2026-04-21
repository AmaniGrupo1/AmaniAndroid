.class public final synthetic Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/selection/SelectionManager;"
    method = "_init_$lambda$2"
    proto = "(Landroidx/compose/foundation/text/selection/SelectionManager;ZJ)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->_init_$lambda$2(Landroidx/compose/foundation/text/selection/SelectionManager;ZJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
