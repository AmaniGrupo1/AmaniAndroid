.class public final synthetic Lcom/google/firebase/firestore/core/TransactionRunner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/core/TransactionRunner;"
    method = "lambda$runWithBackoff$1"
    proto = "(Lcom/google/firebase/firestore/core/Transaction;Lcom/google/android/gms/tasks/Task;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/core/TransactionRunner;

.field public final synthetic f$1:Lcom/google/firebase/firestore/core/Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/TransactionRunner;Lcom/google/firebase/firestore/core/Transaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/TransactionRunner$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/core/TransactionRunner;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/TransactionRunner$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/firestore/core/Transaction;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/TransactionRunner$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/core/TransactionRunner;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/TransactionRunner$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/firestore/core/Transaction;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/firestore/core/TransactionRunner;->lambda$runWithBackoff$1$com-google-firebase-firestore-core-TransactionRunner(Lcom/google/firebase/firestore/core/Transaction;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
