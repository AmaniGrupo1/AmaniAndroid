.class public final synthetic Lio/grpc/internal/BackoffPolicyRetryScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/grpc/internal/BackoffPolicyRetryScheduler;"
    method = "lambda$reset$0"
    proto = "()V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/grpc/internal/BackoffPolicyRetryScheduler;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/BackoffPolicyRetryScheduler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler$$ExternalSyntheticLambda0;->f$0:Lio/grpc/internal/BackoffPolicyRetryScheduler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler$$ExternalSyntheticLambda0;->f$0:Lio/grpc/internal/BackoffPolicyRetryScheduler;

    invoke-virtual {v0}, Lio/grpc/internal/BackoffPolicyRetryScheduler;->lambda$reset$0$io-grpc-internal-BackoffPolicyRetryScheduler()V

    return-void
.end method
