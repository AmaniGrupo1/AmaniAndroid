.class public final synthetic Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/RealtimePipeline;"
    method = "addSnapshotListener$lambda$3"
    proto = "(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/firebase/firestore/ListenerRegistration;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/RealtimePipeline;

.field public final synthetic f$1:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

.field public final synthetic f$2:Lcom/google/firebase/firestore/core/AsyncEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/RealtimePipeline;

    iput-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;->f$1:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    iput-object p3, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;->f$2:Lcom/google/firebase/firestore/core/AsyncEventListener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/RealtimePipeline;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;->f$1:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;->f$2:Lcom/google/firebase/firestore/core/AsyncEventListener;

    check-cast p1, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/RealtimePipeline;->addSnapshotListener$lambda$3(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method
