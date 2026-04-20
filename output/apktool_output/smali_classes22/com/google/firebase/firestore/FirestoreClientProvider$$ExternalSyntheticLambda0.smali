.class public final synthetic Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/FirestoreClientProvider;"
    method = "lambda$executeIfShutdown$0"
    proto = "(Ljava/lang/Runnable;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/FirestoreClientProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/FirestoreClientProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/FirestoreClientProvider;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/FirestoreClientProvider;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirestoreClientProvider;->lambda$executeIfShutdown$0$com-google-firebase-firestore-FirestoreClientProvider(Ljava/lang/Runnable;)V

    return-void
.end method
