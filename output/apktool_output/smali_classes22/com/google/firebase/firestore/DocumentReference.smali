.class public final Lcom/google/firebase/firestore/DocumentReference;
.super Ljava/lang/Object;
.source "DocumentReference.java"


# instance fields
.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/DocumentKey;

    iput-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 71
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 72
    return-void
.end method

.method private addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 5
    .param p1, "userExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "options"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 511
    .local p4, "userListener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    new-instance v0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p4}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/EventListener;)V

    .line 539
    .local v0, "viewListener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    new-instance v1, Lcom/google/firebase/firestore/core/AsyncEventListener;

    invoke-direct {v1, p1, v0}, Lcom/google/firebase/firestore/core/AsyncEventListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)V

    .line 542
    .local v1, "asyncListener":Lcom/google/firebase/firestore/core/AsyncEventListener;, "Lcom/google/firebase/firestore/core/AsyncEventListener<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/DocumentReference;->asQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    .line 544
    .local v2, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance v4, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2, p2, v1, p3}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/ListenerRegistration;

    return-object v3
.end method

.method private asQuery()Lcom/google/firebase/firestore/core/Query;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/Query;->atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    return-object v0
.end method

.method public static forPath(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/FirebaseFirestore;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 3
    .param p0, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 76
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {p0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid document reference. Document references must have an even number of segments, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getViaSnapshotListener(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1, "source"    # Lcom/google/firebase/firestore/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Source;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 304
    .local v0, "res":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 306
    .local v1, "registration":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/firestore/ListenerRegistration;>;"
    new-instance v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    invoke-direct {v2}, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;-><init>()V

    .line 307
    .local v2, "options":Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    .line 308
    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    .line 309
    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    .line 311
    sget-object v3, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v1, p1}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;)V

    .line 312
    const/4 v5, 0x0

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v3

    .line 364
    .local v3, "listenerRegistration":Lcom/google/firebase/firestore/ListenerRegistration;
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    return-object v4
.end method

.method private static internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .locals 1
    .param p0, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;

    .line 590
    sget-object v0, Lcom/google/firebase/firestore/ListenSource;->DEFAULT:Lcom/google/firebase/firestore/ListenSource;

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/ListenSource;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object v0

    return-object v0
.end method

.method private static internalOptions(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/ListenSource;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .locals 4
    .param p0, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .param p1, "source"    # Lcom/google/firebase/firestore/ListenSource;

    .line 595
    new-instance v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;-><init>()V

    .line 596
    .local v0, "internalOptions":Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    sget-object v1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    .line 597
    sget-object v1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    .line 598
    iput-boolean v3, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    .line 599
    iput-object p1, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    .line 600
    return-object v0
.end method

.method static synthetic lambda$addSnapshotListenerInternal$7(Lcom/google/firebase/firestore/core/AsyncEventListener;Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V
    .locals 0
    .param p0, "asyncListener"    # Lcom/google/firebase/firestore/core/AsyncEventListener;
    .param p1, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;
    .param p2, "queryListener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 551
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/AsyncEventListener;->mute()V

    .line 552
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/core/FirestoreClient;->stopListening(Lcom/google/firebase/firestore/core/QueryListener;)V

    .line 553
    return-void
.end method

.method static synthetic lambda$addSnapshotListenerInternal$8(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Landroid/app/Activity;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 2
    .param p0, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p1, "options"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .param p2, "asyncListener"    # Lcom/google/firebase/firestore/core/AsyncEventListener;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 546
    new-instance v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;-><init>(Lcom/google/firebase/firestore/core/Query;)V

    .line 547
    invoke-virtual {p4, v0, p1, p2}, Lcom/google/firebase/firestore/core/FirestoreClient;->listen(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/core/QueryListener;

    move-result-object v0

    .line 548
    .local v0, "queryListener":Lcom/google/firebase/firestore/core/QueryListener;
    new-instance v1, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p4, v0}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/firestore/core/AsyncEventListener;Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V

    invoke-static {p3, v1}, Lcom/google/firebase/firestore/core/ActivityScope;->bind(Landroid/app/Activity;Lcom/google/firebase/firestore/ListenerRegistration;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$delete$2(Ljava/util/List;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "mutations"    # Ljava/util/List;
    .param p1, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 257
    invoke-virtual {p1, p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getViaSnapshotListener$5(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 6
    .param p0, "res"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p1, "registration"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "source"    # Lcom/google/firebase/firestore/Source;
    .param p3, "snapshot"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .param p4, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 318
    const-string v0, "Failed to register a listener for a single document"

    if-eqz p4, :cond_0

    .line 319
    invoke-virtual {p0, p4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 320
    return-void

    .line 324
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/ListenerRegistration;

    .line 328
    .local v2, "actualRegistration":Lcom/google/firebase/firestore/ListenerRegistration;
    invoke-interface {v2}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 330
    invoke-virtual {p3}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    new-instance v3, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v4, "Failed to get document because the client is offline."

    sget-object v5, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p3}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    invoke-virtual {p3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    if-ne p2, v3, :cond_2

    .line 347
    new-instance v3, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v4, "Failed to get document from server. (However, this document does exist in the local cache. Run again without setting source to SERVER to retrieve the cached document.)"

    sget-object v5, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v2    # "actualRegistration":Lcom/google/firebase/firestore/ListenerRegistration;
    :goto_0
    nop

    .line 362
    return-void

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 360
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 356
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 357
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method static synthetic lambda$set$0(Ljava/util/List;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "mutations"    # Ljava/util/List;
    .param p1, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 180
    invoke-virtual {p1, p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$update$1(Ljava/util/List;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "mutations"    # Ljava/util/List;
    .param p1, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 244
    invoke-virtual {p1, p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private update(Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "parsedData"    # Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->toMutation(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance v2, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 244
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 245
    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->voidErrorTransformer()Lcom/google/android/gms/tasks/Continuation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 243
    return-object v1
.end method


# virtual methods
.method public addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 407
    .local p2, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 463
    .local p3, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    const-string v0, "Provided activity must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v0, "Provided MetadataChanges value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v0, "Provided EventListener must not be null."

    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 467
    invoke-static {p2}, Lcom/google/firebase/firestore/DocumentReference;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object v1

    .line 466
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 378
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 422
    .local p2, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Lcom/google/firebase/firestore/SnapshotListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 3
    .param p1, "options"    # Lcom/google/firebase/firestore/SnapshotListenOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/SnapshotListenOptions;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 483
    .local p2, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    const-string v0, "Provided options value must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v0, "Provided EventListener must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    nop

    .line 486
    invoke-virtual {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 487
    invoke-virtual {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions;->getMetadataChanges()Lcom/google/firebase/firestore/MetadataChanges;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions;->getSource()Lcom/google/firebase/firestore/ListenSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/ListenSource;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object v1

    .line 488
    invoke-virtual {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 485
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 391
    .local p2, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 440
    .local p3, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    const-string v0, "Provided executor must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v0, "Provided MetadataChanges value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v0, "Provided EventListener must not be null."

    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {p2}, Lcom/google/firebase/firestore/DocumentReference;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;
    .locals 3
    .param p1, "collectionPath"    # Ljava/lang/String;

    .line 142
    const-string v0, "Provided collection path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/google/firebase/firestore/CollectionReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 144
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/CollectionReference;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 143
    return-object v0
.end method

.method public delete()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    sget-object v2, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance v2, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 257
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 258
    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->voidErrorTransformer()Lcom/google/android/gms/tasks/Continuation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 256
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 559
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 560
    return v0

    .line 562
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/DocumentReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 563
    return v2

    .line 566
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/DocumentReference;

    .line 568
    .local v1, "that":Lcom/google/firebase/firestore/DocumentReference;
    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v4, v1, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v4, v1, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "source"    # Lcom/google/firebase/firestore/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Source;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/google/firebase/firestore/Source;->CACHE:Lcom/google/firebase/firestore/Source;

    if-ne p1, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance v1, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    sget-object v1, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 286
    return-object v0

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/DocumentReference;->getViaSnapshotListener(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    .line 128
    .local v0, "databaseId":Lcom/google/firebase/firestore/model/DatabaseId;
    nop

    .line 130
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/firestore/DocumentReference;->getPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 128
    const-string v2, "projects/%s/databases/%s/documents/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getParent()Lcom/google/firebase/firestore/CollectionReference;
    .locals 3

    .line 110
    new-instance v0, Lcom/google/firebase/firestore/CollectionReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/CollectionReference;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    .line 574
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 575
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method synthetic lambda$addSnapshotListenerInternal$6$com-google-firebase-firestore-DocumentReference(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 6
    .param p1, "userListener"    # Lcom/google/firebase/firestore/EventListener;
    .param p2, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .param p3, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 513
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 514
    invoke-interface {p1, v0, p3}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 515
    return-void

    .line 518
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const-string v4, "Got event without value or error set"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 519
    nop

    .line 520
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v3

    if-gt v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 519
    const-string v3, "Too many documents returned on a document query"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 523
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/DocumentSet;->getDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v1

    .line 525
    .local v1, "document":Lcom/google/firebase/firestore/model/Document;
    if-eqz v1, :cond_3

    .line 526
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 527
    .local v2, "hasPendingWrites":Z
    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 529
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v4

    .line 528
    invoke-static {v3, v1, v4, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->fromDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;ZZ)Lcom/google/firebase/firestore/DocumentSnapshot;

    move-result-object v2

    .line 530
    .local v2, "documentSnapshot":Lcom/google/firebase/firestore/DocumentSnapshot;
    goto :goto_2

    .line 532
    .end local v2    # "documentSnapshot":Lcom/google/firebase/firestore/DocumentSnapshot;
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 533
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->fromNoDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Z)Lcom/google/firebase/firestore/DocumentSnapshot;

    move-result-object v2

    .line 535
    .restart local v2    # "documentSnapshot":Lcom/google/firebase/firestore/DocumentSnapshot;
    :goto_2
    invoke-interface {p1, v2, v0}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 536
    return-void
.end method

.method synthetic lambda$get$3$com-google-firebase-firestore-DocumentReference(Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 287
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->getDocumentFromLocalCache(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$get$4$com-google-firebase-firestore-DocumentReference(Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/DocumentSnapshot;
    .locals 7
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/firestore/model/Document;

    .line 292
    .local v4, "doc":Lcom/google/firebase/firestore/model/Document;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 293
    .local v6, "hasPendingWrites":Z
    new-instance v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/DocumentSnapshot;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;ZZ)V

    return-object v1
.end method

.method public set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/firebase/firestore/SetOptions;->OVERWRITE:Lcom/google/firebase/firestore/SetOptions;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "options"    # Lcom/google/firebase/firestore/SetOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/firestore/SetOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 172
    const-string v0, "Provided data must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "Provided options must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p2}, Lcom/google/firebase/firestore/SetOptions;->isMerge()Z

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/SetOptions;->getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseMergeData(Ljava/lang/Object;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/UserDataReader;->parseSetData(Ljava/lang/Object;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v0

    :goto_0
    nop

    .line 178
    .local v0, "parsed":Lcom/google/firebase/firestore/core/UserData$ParsedSetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    sget-object v2, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/core/UserData$ParsedSetData;->toMutation(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance v3, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 180
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/Task;

    sget-object v3, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 181
    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->voidErrorTransformer()Lcom/google/android/gms/tasks/Continuation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 179
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentReference{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firestore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs update(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "moreFieldsAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 234
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    .line 236
    const/4 v1, 0x1

    invoke-static {v1, p1, p2, p3}, Lcom/google/firebase/firestore/util/Util;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/List;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 238
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public varargs update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "moreFieldsAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 213
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    invoke-static {v1, p1, p2, p3}, Lcom/google/firebase/firestore/util/Util;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/List;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 217
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 194
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/Map;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 195
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method
