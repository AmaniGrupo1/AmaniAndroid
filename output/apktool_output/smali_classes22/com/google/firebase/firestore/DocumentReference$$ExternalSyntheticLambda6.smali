.class public final synthetic Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/DocumentReference;"
    method = "lambda$addSnapshotListenerInternal$8"
    proto = "(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Landroid/app/Activity;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/firebase/firestore/ListenerRegistration;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/core/Query;

.field public final synthetic f$1:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

.field public final synthetic f$2:Lcom/google/firebase/firestore/core/AsyncEventListener;

.field public final synthetic f$3:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/firestore/core/Query;

    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$1:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iput-object p3, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$2:Lcom/google/firebase/firestore/core/AsyncEventListener;

    iput-object p4, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$3:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$1:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$2:Lcom/google/firebase/firestore/core/AsyncEventListener;

    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;->f$3:Landroid/app/Activity;

    check-cast p1, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/firestore/DocumentReference;->lambda$addSnapshotListenerInternal$8(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Landroid/app/Activity;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method
