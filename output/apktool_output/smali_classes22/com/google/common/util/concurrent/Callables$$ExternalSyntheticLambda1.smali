.class public final synthetic Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/common/util/concurrent/Callables;"
    method = "lambda$asAsyncCallable$1"
    proto = "(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final synthetic f$1:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Callables;->lambda$asAsyncCallable$1(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
