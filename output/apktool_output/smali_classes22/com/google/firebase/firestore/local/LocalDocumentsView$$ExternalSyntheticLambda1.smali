.class public final synthetic Lcom/google/firebase/firestore/local/LocalDocumentsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/RealtimePipeline;"
    method = "matches$com_google_firebase_firebase_firestore"
    proto = "(Lcom/google/firebase/firestore/model/Document;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/RealtimePipeline;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/RealtimePipeline;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalDocumentsView$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/RealtimePipeline;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalDocumentsView$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/RealtimePipeline;

    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/RealtimePipeline;->matches$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/model/Document;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
