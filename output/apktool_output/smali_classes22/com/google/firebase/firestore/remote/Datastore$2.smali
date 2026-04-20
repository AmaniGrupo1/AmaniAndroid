.class Lcom/google/firebase/firestore/remote/Datastore$2;
.super Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;
.source "Datastore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/Datastore;->executePipeline(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/PipelineResultObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener<",
        "Lcom/google/firestore/v1/ExecutePipelineResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private executionTime:Lcom/google/firebase/Timestamp;

.field final synthetic this$0:Lcom/google/firebase/firestore/remote/Datastore;

.field final synthetic val$observer:Lcom/google/firebase/firestore/PipelineResultObserver;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/PipelineResultObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/Datastore;

    .line 250
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->val$observer:Lcom/google/firebase/firestore/PipelineResultObserver;

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;-><init>()V

    .line 252
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->executionTime:Lcom/google/firebase/Timestamp;

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 275
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->val$observer:Lcom/google/firebase/firestore/PipelineResultObserver;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->executionTime:Lcom/google/firebase/Timestamp;

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/PipelineResultObserver;->onComplete(Lcom/google/firebase/Timestamp;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v0

    .line 279
    .local v0, "exception":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAUTHENTICATED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    if-ne v1, v2, :cond_1

    .line 280
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-static {v1}, Lcom/google/firebase/firestore/remote/Datastore;->access$000(Lcom/google/firebase/firestore/remote/Datastore;)Lcom/google/firebase/firestore/remote/FirestoreChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->invalidateToken()V

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->val$observer:Lcom/google/firebase/firestore/PipelineResultObserver;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/PipelineResultObserver;->onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 284
    .end local v0    # "exception":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    :goto_0
    return-void
.end method

.method public onMessage(Lcom/google/firestore/v1/ExecutePipelineResponse;)V
    .locals 9
    .param p1, "message"    # Lcom/google/firestore/v1/ExecutePipelineResponse;

    .line 256
    invoke-virtual {p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->hasExecutionTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    iget-object v0, v0, Lcom/google/firebase/firestore/remote/Datastore;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getExecutionTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->executionTime:Lcom/google/firebase/Timestamp;

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getResultsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 260
    .local v1, "document":Lcom/google/firestore/v1/Document;
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "documentName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->val$observer:Lcom/google/firebase/firestore/PipelineResultObserver;

    .line 262
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    iget-object v4, v4, Lcom/google/firebase/firestore/remote/Datastore;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v4, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    .line 263
    :goto_1
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v6

    .line 264
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->hasCreateTime()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    iget-object v7, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    iget-object v7, v7, Lcom/google/firebase/firestore/remote/Datastore;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getCreateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/Timestamp;

    move-result-object v7

    goto :goto_2

    .line 266
    :cond_2
    move-object v7, v5

    .line 267
    :goto_2
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->hasUpdateTime()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 268
    iget-object v5, p0, Lcom/google/firebase/firestore/remote/Datastore$2;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    iget-object v5, v5, Lcom/google/firebase/firestore/remote/Datastore;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/Timestamp;

    move-result-object v5

    goto :goto_3

    .line 269
    :cond_3
    nop

    .line 261
    :goto_3
    invoke-interface {v3, v4, v6, v7, v5}, Lcom/google/firebase/firestore/PipelineResultObserver;->onDocument(Lcom/google/firebase/firestore/model/DocumentKey;Ljava/util/Map;Lcom/google/firebase/Timestamp;Lcom/google/firebase/Timestamp;)V

    .line 270
    .end local v1    # "document":Lcom/google/firestore/v1/Document;
    .end local v2    # "documentName":Ljava/lang/String;
    goto :goto_0

    .line 271
    :cond_4
    return-void
.end method

.method public bridge synthetic onMessage(Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p1, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/remote/Datastore$2;->onMessage(Lcom/google/firestore/v1/ExecutePipelineResponse;)V

    return-void
.end method
