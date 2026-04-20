.class public final synthetic Lcom/google/firebase/firestore/PersistentCacheIndexManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/PersistentCacheIndexManager;"
    method = "lambda$enableIndexAutoCreation$0"
    proto = "(Lcom/google/firebase/firestore/core/FirestoreClient;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-static {p1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->lambda$enableIndexAutoCreation$0(Lcom/google/firebase/firestore/core/FirestoreClient;)V

    return-void
.end method
