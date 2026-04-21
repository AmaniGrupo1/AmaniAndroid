.class public final synthetic Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlinx/coroutines/android/HandlerContext;"
    method = "scheduleResumeAfterDelay$lambda$1"
    proto = "(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/android/HandlerContext;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic f$1:Lkotlinx/coroutines/android/HandlerContext;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/android/HandlerContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Lkotlinx/coroutines/android/HandlerContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$0:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;->f$1:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v0, v1}, Lkotlinx/coroutines/android/HandlerContext;->scheduleResumeAfterDelay$lambda$1(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/android/HandlerContext;)V

    return-void
.end method
