.class public final Lcom/google/rpc/LocalizedMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocalizedMessage.java"

# interfaces
.implements Lcom/google/rpc/LocalizedMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/LocalizedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/LocalizedMessage;",
        "Lcom/google/rpc/LocalizedMessage$Builder;",
        ">;",
        "Lcom/google/rpc/LocalizedMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 266
    invoke-static {}, Lcom/google/rpc/LocalizedMessage;->access$000()Lcom/google/rpc/LocalizedMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/LocalizedMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/LocalizedMessage$1;

    .line 259
    invoke-direct {p0}, Lcom/google/rpc/LocalizedMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLocale()Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 328
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0}, Lcom/google/rpc/LocalizedMessage;->access$200(Lcom/google/rpc/LocalizedMessage;)V

    .line 329
    return-object p0
.end method

.method public clearMessage()Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0}, Lcom/google/rpc/LocalizedMessage;->access$500(Lcom/google/rpc/LocalizedMessage;)V

    .line 400
    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 313
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$100(Lcom/google/rpc/LocalizedMessage;Ljava/lang/String;)V

    .line 314
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 344
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 345
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$300(Lcom/google/rpc/LocalizedMessage;Lcom/google/protobuf/ByteString;)V

    .line 346
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$400(Lcom/google/rpc/LocalizedMessage;Ljava/lang/String;)V

    .line 387
    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 413
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 414
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$600(Lcom/google/rpc/LocalizedMessage;Lcom/google/protobuf/ByteString;)V

    .line 415
    return-object p0
.end method
