.class public Lcom/google/firebase/firestore/core/QueryListener;
.super Ljava/lang/Object;
.source "QueryListener.java"


# instance fields
.field private final listener:Lcom/google/firebase/firestore/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private onlineState:Lcom/google/firebase/firestore/core/OnlineState;

.field private final options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

.field private final query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

.field private raisedInitialEvent:Z

.field private snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)V
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .param p2, "options"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/QueryOrPipeline;",
            "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p3, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    .line 48
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    iput-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 56
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->isPipeline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    .line 60
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->pipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v1

    .line 61
    invoke-virtual {v1, p2}, Lcom/google/firebase/firestore/RealtimePipeline;->withListenOptions$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/core/EventManager$ListenOptions;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    goto :goto_0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/core/QueryListener;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    .line 65
    :goto_0
    iput-object p3, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    .line 66
    iput-object p2, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    .line 67
    return-void
.end method

.method private raiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)V
    .locals 10
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 196
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Trying to raise initial event for second time"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    nop

    .line 199
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getQuery()Lcom/google/firebase/firestore/core/QueryOrPipeline;

    move-result-object v4

    .line 200
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v5

    .line 201
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v6

    .line 202
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v7

    .line 203
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges()Z

    move-result v8

    .line 204
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults()Z

    move-result v9

    .line 198
    invoke-static/range {v4 .. v9}, Lcom/google/firebase/firestore/core/ViewSnapshot;->fromInitialDocuments(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object p1

    .line 205
    iput-boolean v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    .line 206
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 207
    return-void
.end method

.method private shouldRaiseEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z
    .locals 4
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 180
    return v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 184
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasPendingWrites()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasPendingWrites()Z

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 185
    .local v1, "hasPendingWritesChanged":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 192
    :cond_2
    return v2

    .line 186
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-boolean v0, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    return v0
.end method

.method private shouldRaiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/core/OnlineState;)Z
    .locals 5
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .param p2, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 144
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Determining whether to raise first event but already had first event."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return v1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryListener;->listensToRemoteStore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    return v1

    .line 160
    :cond_1
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 163
    .local v0, "maybeOnline":Z
    iget-object v2, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-boolean v2, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v1

    const-string v2, "Waiting for sync, but snapshot is not from cache"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 165
    return v3

    .line 170
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    .line 172
    invoke-virtual {p2, v2}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 170
    :goto_1
    return v1
.end method


# virtual methods
.method public getQuery()Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    return-object v0
.end method

.method public listensToRemoteStore()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-object v0, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    sget-object v2, Lcom/google/firebase/firestore/ListenSource;->CACHE:Lcom/google/firebase/firestore/ListenSource;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/ListenSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 79
    :cond_0
    return v1
.end method

.method public onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2
    .param p1, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 129
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 130
    return-void
.end method

.method public onOnlineStateChanged(Lcom/google/firebase/firestore/core/OnlineState;)Z
    .locals 2
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 134
    iput-object p1, p0, Lcom/google/firebase/firestore/core/QueryListener;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "raisedEvent":Z
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-direct {p0, v1, p1}, Lcom/google/firebase/firestore/core/QueryListener;->shouldRaiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/core/QueryListener;->raiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :cond_0
    return v0
.end method

.method public onViewSnapshot(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z
    .locals 12
    .param p1, "newSnapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 88
    nop

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    const-string v2, "We got a new snapshot with no changes?"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "raisedEvent":Z
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-boolean v1, v1, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    if-nez v1, :cond_4

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 96
    .local v6, "documentChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 97
    .local v2, "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-eq v3, v4, :cond_2

    .line 98
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    :cond_2
    goto :goto_2

    .line 101
    :cond_3
    new-instance v2, Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 103
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getQuery()Lcom/google/firebase/firestore/core/QueryOrPipeline;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getOldDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v5

    .line 107
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v7

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v8

    .line 109
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange()Z

    move-result v9

    .line 111
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults()Z

    move-result v11

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/core/ViewSnapshot;-><init>(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/model/DocumentSet;Ljava/util/List;ZLcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)V

    move-object p1, v2

    .line 114
    .end local v6    # "documentChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    :cond_4
    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    if-nez v1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/core/QueryListener;->shouldRaiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/QueryListener;->raiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)V

    .line 117
    const/4 v0, 0x1

    goto :goto_3

    .line 119
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/QueryListener;->shouldRaiseEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 121
    const/4 v0, 0x1

    .line 124
    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 125
    return v0
.end method
