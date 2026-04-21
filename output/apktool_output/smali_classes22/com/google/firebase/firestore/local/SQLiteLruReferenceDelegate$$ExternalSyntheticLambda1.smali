.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;"
    method = "lambda$removeOrphanedDocuments$2"
    proto = "([ILjava/util/List;[Lcom/google/firebase/firestore/model/ResourcePath;Landroid/database/Cursor;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:[Lcom/google/firebase/firestore/model/ResourcePath;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;[ILjava/util/List;[Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$1:[I

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$3:[Lcom/google/firebase/firestore/model/ResourcePath;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$1:[I

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;->f$3:[Lcom/google/firebase/firestore/model/ResourcePath;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->lambda$removeOrphanedDocuments$2$com-google-firebase-firestore-local-SQLiteLruReferenceDelegate([ILjava/util/List;[Lcom/google/firebase/firestore/model/ResourcePath;Landroid/database/Cursor;)V

    return-void
.end method
