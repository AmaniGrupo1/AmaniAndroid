.class public final synthetic Lcom/google/common/util/concurrent/Futures$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/common/util/concurrent/Futures;"
    method = "lambda$inCompletionOrder$1"
    proto = "(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableList;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableList;

    iput p3, p0, Lcom/google/common/util/concurrent/Futures$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Lcom/google/common/util/concurrent/Futures$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->lambda$inCompletionOrder$1(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method
