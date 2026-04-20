.class public final Lcom/google/longrunning/OperationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OperationInfo.java"

# interfaces
.implements Lcom/google/longrunning/OperationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/OperationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/OperationInfo;",
        "Lcom/google/longrunning/OperationInfo$Builder;",
        ">;",
        "Lcom/google/longrunning/OperationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 339
    invoke-static {}, Lcom/google/longrunning/OperationInfo;->access$000()Lcom/google/longrunning/OperationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/OperationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/longrunning/OperationInfo$1;

    .line 332
    invoke-direct {p0}, Lcom/google/longrunning/OperationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMetadataType()Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0}, Lcom/google/longrunning/OperationInfo;->access$500(Lcom/google/longrunning/OperationInfo;)V

    .line 522
    return-object p0
.end method

.method public clearResponseType()Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0}, Lcom/google/longrunning/OperationInfo;->access$200(Lcom/google/longrunning/OperationInfo;)V

    .line 422
    return-object p0
.end method

.method public getMetadataType()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getMetadataType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getMetadataTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getResponseType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getResponseTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setMetadataType(Ljava/lang/String;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 501
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$400(Lcom/google/longrunning/OperationInfo;Ljava/lang/String;)V

    .line 503
    return-object p0
.end method

.method public setMetadataTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 541
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 542
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$600(Lcom/google/longrunning/OperationInfo;Lcom/google/protobuf/ByteString;)V

    .line 543
    return-object p0
.end method

.method public setResponseType(Ljava/lang/String;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$100(Lcom/google/longrunning/OperationInfo;Ljava/lang/String;)V

    .line 402
    return-object p0
.end method

.method public setResponseTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 442
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 443
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$300(Lcom/google/longrunning/OperationInfo;Lcom/google/protobuf/ByteString;)V

    .line 444
    return-object p0
.end method
