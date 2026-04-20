.class public final Lcom/google/firebase/firestore/RealtimePipelineSource;
.super Ljava/lang/Object;
.source "RealtimePipeline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u0011J\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u000cJ\u0015\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/google/firebase/firestore/RealtimePipelineSource;",
        "",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "<init>",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;)V",
        "convertFrom",
        "Lcom/google/firebase/firestore/RealtimePipeline;",
        "query",
        "Lcom/google/firebase/firestore/Query;",
        "collection",
        "path",
        "",
        "ref",
        "Lcom/google/firebase/firestore/CollectionReference;",
        "stage",
        "Lcom/google/firebase/firestore/pipeline/CollectionSource;",
        "collection$com_google_firebase_firebase_firestore",
        "collectionGroup",
        "collectionId",
        "Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;",
        "collectionGroup$com_google_firebase_firebase_firestore",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 1
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "firestore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-void
.end method


# virtual methods
.method public final collection(Lcom/google/firebase/firestore/CollectionReference;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 4
    .param p1, "ref"    # Lcom/google/firebase/firestore/CollectionReference;

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    nop

    .line 88
    new-instance v0, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/firestore/CollectionReference;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    const-string v2, "fromString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v2, Lcom/google/firebase/firestore/remote/RemoteSerializer;

    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    .line 91
    new-instance v3, Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;-><init>()V

    .line 88
    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/pipeline/CollectionSource;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/RealtimePipelineSource;->collection$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/CollectionSource;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public final collection(Ljava/lang/String;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "collection(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/RealtimePipelineSource;->collection(Lcom/google/firebase/firestore/CollectionReference;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final collection$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/CollectionSource;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 5
    .param p1, "stage"    # Lcom/google/firebase/firestore/pipeline/CollectionSource;

    const-string v0, "stage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/CollectionSource;->getSerializer$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/remote/RemoteSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline;

    .line 108
    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 109
    new-instance v2, Lcom/google/firebase/firestore/remote/RemoteSerializer;

    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    .line 110
    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v3

    const-string v4, "getUserDataReader(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    move-object v4, p1

    check-cast v4, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 107
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided collection is from a different Firestore instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final collectionGroup(Ljava/lang/String;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 2
    .param p1, "collectionId"    # Ljava/lang/String;

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    new-instance v1, Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;

    invoke-direct {v1}, Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/RealtimePipelineSource;->collectionGroup$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final collectionGroup$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 5
    .param p1, "stage"    # Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    const-string v0, "stage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline;

    .line 126
    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 127
    new-instance v2, Lcom/google/firebase/firestore/remote/RemoteSerializer;

    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    .line 128
    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v3

    const-string v4, "getUserDataReader(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v4, p1

    check-cast v4, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 125
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    .line 130
    return-object v0
.end method

.method public final convertFrom(Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/firestore/Query;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p1, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p1, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/core/Query;->toRealtimePipeline(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    const-string v1, "toRealtimePipeline(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided query is from a different Firestore instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
