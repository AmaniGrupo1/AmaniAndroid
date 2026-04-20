.class public final Lcom/google/longrunning/WaitOperationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WaitOperationRequest.java"

# interfaces
.implements Lcom/google/longrunning/WaitOperationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/WaitOperationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/WaitOperationRequest;",
        "Lcom/google/longrunning/WaitOperationRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/WaitOperationRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 263
    invoke-static {}, Lcom/google/longrunning/WaitOperationRequest;->access$000()Lcom/google/longrunning/WaitOperationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/WaitOperationRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/longrunning/WaitOperationRequest$1;

    .line 256
    invoke-direct {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 317
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0}, Lcom/google/longrunning/WaitOperationRequest;->access$200(Lcom/google/longrunning/WaitOperationRequest;)V

    .line 318
    return-object p0
.end method

.method public clearTimeout()Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0}, Lcom/google/longrunning/WaitOperationRequest;->access$600(Lcom/google/longrunning/WaitOperationRequest;)V

    .line 416
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public hasTimeout()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->hasTimeout()Z

    move-result v0

    return v0
.end method

.method public mergeTimeout(Lcom/google/protobuf/Duration;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 401
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$500(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V

    .line 403
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 304
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$100(Lcom/google/longrunning/WaitOperationRequest;Ljava/lang/String;)V

    .line 305
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 331
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 332
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$300(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/ByteString;)V

    .line 333
    return-object p0
.end method

.method public setTimeout(Lcom/google/protobuf/Duration$Builder;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Duration$Builder;

    .line 387
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lcom/google/longrunning/WaitOperationRequest;->access$400(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V

    .line 389
    return-object p0
.end method

.method public setTimeout(Lcom/google/protobuf/Duration;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 372
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 373
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$400(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V

    .line 374
    return-object p0
.end method
