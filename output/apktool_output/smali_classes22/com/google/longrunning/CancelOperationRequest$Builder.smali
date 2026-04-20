.class public final Lcom/google/longrunning/CancelOperationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CancelOperationRequest.java"

# interfaces
.implements Lcom/google/longrunning/CancelOperationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/CancelOperationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/CancelOperationRequest;",
        "Lcom/google/longrunning/CancelOperationRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/CancelOperationRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 186
    invoke-static {}, Lcom/google/longrunning/CancelOperationRequest;->access$000()Lcom/google/longrunning/CancelOperationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/CancelOperationRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/longrunning/CancelOperationRequest$1;

    .line 179
    invoke-direct {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;->copyOnWrite()V

    .line 240
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0}, Lcom/google/longrunning/CancelOperationRequest;->access$200(Lcom/google/longrunning/CancelOperationRequest;)V

    .line 241
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/CancelOperationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/CancelOperationRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;->copyOnWrite()V

    .line 227
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/CancelOperationRequest;->access$100(Lcom/google/longrunning/CancelOperationRequest;Ljava/lang/String;)V

    .line 228
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 254
    invoke-virtual {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;->copyOnWrite()V

    .line 255
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/CancelOperationRequest;->access$300(Lcom/google/longrunning/CancelOperationRequest;Lcom/google/protobuf/ByteString;)V

    .line 256
    return-object p0
.end method
