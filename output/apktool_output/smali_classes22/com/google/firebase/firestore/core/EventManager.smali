.class public final Lcom/google/firebase/firestore/core/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;,
        Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;,
        Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;,
        Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    }
.end annotation


# instance fields
.field private onlineState:Lcom/google/firebase/firestore/core/OnlineState;

.field private final queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/QueryOrPipeline;",
            "Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshotsInSyncListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/SyncEngine;)V
    .locals 1
    .param p1, "syncEngine"    # Lcom/google/firebase/firestore/core/SyncEngine;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    .line 82
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 85
    iput-object p1, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    .line 87
    invoke-virtual {p1, p0}, Lcom/google/firebase/firestore/core/SyncEngine;->setCallback(Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;)V

    .line 88
    return-void
.end method

.method private raiseSnapshotsInSyncEvent()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/EventListener;

    .line 222
    .local v1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 223
    .end local v1    # "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public addQueryListener(Lcom/google/firebase/firestore/core/QueryListener;)I
    .locals 8
    .param p1, "queryListener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 112
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->getQuery()Lcom/google/firebase/firestore/core/QueryOrPipeline;

    move-result-object v0

    .line 113
    .local v0, "query":Lcom/google/firebase/firestore/core/QueryOrPipeline;
    sget-object v1, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->NO_ACTION_REQUIRED:Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    .line 115
    .local v1, "listenerAction":Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 116
    .local v2, "queryInfo":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    if-nez v2, :cond_1

    .line 117
    new-instance v3, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    invoke-direct {v3}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;-><init>()V

    move-object v2, v3

    .line 118
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->listensToRemoteStore()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->INITIALIZE_LOCAL_LISTEN_AND_REQUIRE_WATCH_CONNECTION:Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    goto :goto_0

    .line 122
    :cond_0
    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->INITIALIZE_LOCAL_LISTEN_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    :goto_0
    move-object v1, v3

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->hasRemoteListeners()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->listensToRemoteStore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    sget-object v1, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->REQUIRE_WATCH_CONNECTION_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    .line 129
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/core/QueryListener;->onOnlineStateChanged(Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v3

    .line 133
    .local v3, "raisedEvent":Z
    xor-int/lit8 v4, v3, 0x1

    const-string v5, "onOnlineStateChanged() shouldn\'t raise an event for brand-new listeners."

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$100(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 137
    invoke-static {v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$100(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/core/QueryListener;->onViewSnapshot(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z

    move-result v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/EventManager;->raiseSnapshotsInSyncEvent()V

    .line 143
    :cond_3
    sget-object v4, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerSetupAction:[I

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 159
    :pswitch_0
    iget-object v4, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v4, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->listenToRemoteStore(Lcom/google/firebase/firestore/core/QueryOrPipeline;)V

    .line 160
    goto :goto_2

    .line 152
    :pswitch_1
    iget-object v4, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 153
    invoke-virtual {v4, v0, v6}, Lcom/google/firebase/firestore/core/SyncEngine;->listen(Lcom/google/firebase/firestore/core/QueryOrPipeline;Z)I

    move-result v4

    .line 152
    invoke-static {v2, v4}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$202(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;I)I

    .line 157
    goto :goto_2

    .line 145
    :pswitch_2
    iget-object v4, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 146
    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/google/firebase/firestore/core/SyncEngine;->listen(Lcom/google/firebase/firestore/core/QueryOrPipeline;Z)I

    move-result v4

    .line 145
    invoke-static {v2, v4}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$202(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;I)I

    .line 150
    nop

    .line 165
    :goto_2
    invoke-static {v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$200(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)I

    move-result v4

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 213
    return-void
.end method

.method public handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 6
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "raisedEvent":Z
    iput-object p1, p0, Lcom/google/firebase/firestore/core/EventManager;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 261
    iget-object v1, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 262
    .local v2, "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    invoke-static {v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/QueryListener;

    .line 263
    .local v4, "listener":Lcom/google/firebase/firestore/core/QueryListener;
    invoke-virtual {v4, p1}, Lcom/google/firebase/firestore/core/QueryListener;->onOnlineStateChanged(Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 266
    .end local v4    # "listener":Lcom/google/firebase/firestore/core/QueryListener;
    :cond_0
    goto :goto_1

    .line 267
    .end local v2    # "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    :cond_1
    goto :goto_0

    .line 268
    :cond_2
    if-eqz v0, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/EventManager;->raiseSnapshotsInSyncEvent()V

    .line 271
    :cond_3
    return-void
.end method

.method public onError(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lio/grpc/Status;)V
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .param p2, "error"    # Lio/grpc/Status;

    .line 248
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 249
    .local v0, "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    if-eqz v0, :cond_0

    .line 250
    invoke-static {v0}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/QueryListener;

    .line 251
    .local v2, "listener":Lcom/google/firebase/firestore/core/QueryListener;
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/QueryListener;->onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 252
    .end local v2    # "listener":Lcom/google/firebase/firestore/core/QueryListener;
    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public onViewSnapshots(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "snapshotList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    const/4 v0, 0x0

    .line 229
    .local v0, "raisedEvent":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 230
    .local v2, "viewSnapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getQuery()Lcom/google/firebase/firestore/core/QueryOrPipeline;

    move-result-object v3

    .line 231
    .local v3, "query":Lcom/google/firebase/firestore/core/QueryOrPipeline;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 232
    .local v4, "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    if-eqz v4, :cond_2

    .line 233
    invoke-static {v4}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/QueryListener;

    .line 234
    .local v6, "listener":Lcom/google/firebase/firestore/core/QueryListener;
    invoke-virtual {v6, v2}, Lcom/google/firebase/firestore/core/QueryListener;->onViewSnapshot(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 237
    .end local v6    # "listener":Lcom/google/firebase/firestore/core/QueryListener;
    :cond_0
    goto :goto_1

    .line 238
    :cond_1
    invoke-static {v4, v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$102(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;Lcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 240
    .end local v2    # "viewSnapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    .end local v3    # "query":Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .end local v4    # "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    :cond_2
    goto :goto_0

    .line 241
    :cond_3
    if-eqz v0, :cond_4

    .line 242
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/EventManager;->raiseSnapshotsInSyncEvent()V

    .line 244
    :cond_4
    return-void
.end method

.method public removeQueryListener(Lcom/google/firebase/firestore/core/QueryListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 170
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->getQuery()Lcom/google/firebase/firestore/core/QueryOrPipeline;

    move-result-object v0

    .line 171
    .local v0, "query":Lcom/google/firebase/firestore/core/QueryOrPipeline;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 172
    .local v1, "queryInfo":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    sget-object v2, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->NO_ACTION_REQUIRED:Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    .line 173
    .local v2, "listenerAction":Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;
    if-nez v1, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->listensToRemoteStore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->TERMINATE_LOCAL_LISTEN_AND_REQUIRE_WATCH_DISCONNECTION:Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    goto :goto_0

    .line 180
    :cond_1
    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->TERMINATE_LOCAL_LISTEN_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    :goto_0
    move-object v2, v3

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->hasRemoteListeners()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->listensToRemoteStore()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    sget-object v2, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->REQUIRE_WATCH_DISCONNECTION_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    .line 187
    :cond_3
    :goto_1
    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerRemovalAction:[I

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 203
    :pswitch_0
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->stopListeningToRemoteStore(Lcom/google/firebase/firestore/core/QueryOrPipeline;)V

    .line 204
    goto :goto_2

    .line 196
    :pswitch_1
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/google/firebase/firestore/core/SyncEngine;->stopListening(Lcom/google/firebase/firestore/core/QueryOrPipeline;Z)V

    .line 201
    goto :goto_2

    .line 189
    :pswitch_2
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/google/firebase/firestore/core/SyncEngine;->stopListening(Lcom/google/firebase/firestore/core/QueryOrPipeline;Z)V

    .line 194
    nop

    .line 208
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method
