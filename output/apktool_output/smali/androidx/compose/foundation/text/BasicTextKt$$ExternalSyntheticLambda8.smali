.class public final synthetic Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/BasicTextKt;"
    method = "BasicText_CL7eQgs$lambda$0$0"
    proto = "(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text/selection/SelectionRegistrar;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda8;->f$0:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda8;->f$0:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextKt;->$r8$lambda$n4vN65FWJZ64A2x_sVJud6oJ4vA(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
