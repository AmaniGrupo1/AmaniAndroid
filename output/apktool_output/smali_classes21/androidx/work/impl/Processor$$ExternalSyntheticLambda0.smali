.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/Processor;"
    method = "lambda$runOnExecuted$2"
    proto = "(Landroidx/work/impl/model/WorkGenerationalId;Z)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/Processor;

.field public final synthetic f$1:Landroidx/work/impl/model/WorkGenerationalId;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/Processor;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iput-boolean p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iget-boolean v2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->lambda$runOnExecuted$2$androidx-work-impl-Processor(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void
.end method
