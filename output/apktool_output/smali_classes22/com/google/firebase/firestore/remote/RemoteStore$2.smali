.class Lcom/google/firebase/firestore/remote/RemoteStore$2;
.super Ljava/lang/Object;
.source "RemoteStore.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/WriteStream$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/RemoteStore;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/ConnectivityMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/RemoteStore;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/RemoteStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 201
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteStore$2;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;

    .line 220
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$2;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->access$600(Lcom/google/firebase/firestore/remote/RemoteStore;Lio/grpc/Status;)V

    .line 221
    return-void
.end method

.method public onHandshakeComplete()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$2;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->access$400(Lcom/google/firebase/firestore/remote/RemoteStore;)V

    .line 210
    return-void
.end method

.method public onOpen()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$2;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->access$300(Lcom/google/firebase/firestore/remote/RemoteStore;)Lcom/google/firebase/firestore/remote/WriteStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->writeHandshake()V

    .line 205
    return-void
.end method

.method public onWriteResponse(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V
    .locals 1
    .param p1, "commitVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationResult;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p2, "mutationResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$2;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/remote/RemoteStore;->access$500(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V

    .line 216
    return-void
.end method
