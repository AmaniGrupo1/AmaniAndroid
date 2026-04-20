.class public final Lcom/google/firebase/firestore/PersistentCacheIndexManager;
.super Ljava/lang/Object;
.source "PersistentCacheIndexManager.java"


# instance fields
.field private client:Lcom/google/firebase/firestore/FirestoreClientProvider;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/FirestoreClientProvider;)V
    .locals 0
    .param p1, "client"    # Lcom/google/firebase/firestore/FirestoreClientProvider;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->client:Lcom/google/firebase/firestore/FirestoreClientProvider;

    .line 37
    return-void
.end method

.method static synthetic lambda$disableIndexAutoCreation$1(Lcom/google/firebase/firestore/core/FirestoreClient;)V
    .locals 1
    .param p0, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->setIndexAutoCreationEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$enableIndexAutoCreation$0(Lcom/google/firebase/firestore/core/FirestoreClient;)V
    .locals 1
    .param p0, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->setIndexAutoCreationEnabled(Z)V

    return-void
.end method


# virtual methods
.method public deleteAllIndexes()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->client:Lcom/google/firebase/firestore/FirestoreClientProvider;

    new-instance v1, Lcom/google/firebase/firestore/PersistentCacheIndexManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirestoreClientProvider;->procedure(Landroidx/core/util/Consumer;)V

    .line 63
    return-void
.end method

.method public disableIndexAutoCreation()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->client:Lcom/google/firebase/firestore/FirestoreClientProvider;

    new-instance v1, Lcom/google/firebase/firestore/PersistentCacheIndexManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirestoreClientProvider;->procedure(Landroidx/core/util/Consumer;)V

    .line 55
    return-void
.end method

.method public enableIndexAutoCreation()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->client:Lcom/google/firebase/firestore/FirestoreClientProvider;

    new-instance v1, Lcom/google/firebase/firestore/PersistentCacheIndexManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirestoreClientProvider;->procedure(Landroidx/core/util/Consumer;)V

    .line 47
    return-void
.end method
