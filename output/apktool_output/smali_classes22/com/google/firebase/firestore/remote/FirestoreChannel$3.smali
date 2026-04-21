.class Lcom/google/firebase/firestore/remote/FirestoreChannel$3;
.super Lio/grpc/ClientCall$Listener;
.source "FirestoreChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/FirestoreChannel;->runStreamingResponseRpc(Lio/grpc/MethodDescriptor;Ljava/lang/Object;Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientCall$Listener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

.field final synthetic val$call:Lio/grpc/ClientCall;

.field final synthetic val$callback:Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;Lio/grpc/ClientCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 227
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;->this$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;->val$callback:Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;->val$call:Lio/grpc/ClientCall;

    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 237
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;->val$callback:Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;->onClose(Lio/grpc/Status;)V

    .line 238
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 230
    .local p1, "message":Ljava/lang/Object;, "TRespT;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;->val$callback:Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;->onMessage(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;->val$call:Lio/grpc/ClientCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    .line 233
    return-void
.end method
