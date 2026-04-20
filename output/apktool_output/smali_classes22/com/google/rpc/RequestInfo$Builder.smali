.class public final Lcom/google/rpc/RequestInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RequestInfo.java"

# interfaces
.implements Lcom/google/rpc/RequestInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/RequestInfo;",
        "Lcom/google/rpc/RequestInfo$Builder;",
        ">;",
        "Lcom/google/rpc/RequestInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 266
    invoke-static {}, Lcom/google/rpc/RequestInfo;->access$000()Lcom/google/rpc/RequestInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/RequestInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/RequestInfo$1;

    .line 259
    invoke-direct {p0}, Lcom/google/rpc/RequestInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequestId()Lcom/google/rpc/RequestInfo$Builder;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/google/rpc/RequestInfo$Builder;->copyOnWrite()V

    .line 324
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-static {v0}, Lcom/google/rpc/RequestInfo;->access$200(Lcom/google/rpc/RequestInfo;)V

    .line 325
    return-object p0
.end method

.method public clearServingData()Lcom/google/rpc/RequestInfo$Builder;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/google/rpc/RequestInfo$Builder;->copyOnWrite()V

    .line 398
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-static {v0}, Lcom/google/rpc/RequestInfo;->access$500(Lcom/google/rpc/RequestInfo;)V

    .line 399
    return-object p0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServingData()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->getServingData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServingDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RequestInfo;->getServingDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/rpc/RequestInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/google/rpc/RequestInfo$Builder;->copyOnWrite()V

    .line 310
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/RequestInfo;->access$100(Lcom/google/rpc/RequestInfo;Ljava/lang/String;)V

    .line 311
    return-object p0
.end method

.method public setRequestIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/RequestInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 339
    invoke-virtual {p0}, Lcom/google/rpc/RequestInfo$Builder;->copyOnWrite()V

    .line 340
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/RequestInfo;->access$300(Lcom/google/rpc/RequestInfo;Lcom/google/protobuf/ByteString;)V

    .line 341
    return-object p0
.end method

.method public setServingData(Ljava/lang/String;)Lcom/google/rpc/RequestInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 383
    invoke-virtual {p0}, Lcom/google/rpc/RequestInfo$Builder;->copyOnWrite()V

    .line 384
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/RequestInfo;->access$400(Lcom/google/rpc/RequestInfo;Ljava/lang/String;)V

    .line 385
    return-object p0
.end method

.method public setServingDataBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/RequestInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 413
    invoke-virtual {p0}, Lcom/google/rpc/RequestInfo$Builder;->copyOnWrite()V

    .line 414
    iget-object v0, p0, Lcom/google/rpc/RequestInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RequestInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/RequestInfo;->access$600(Lcom/google/rpc/RequestInfo;Lcom/google/protobuf/ByteString;)V

    .line 415
    return-object p0
.end method
