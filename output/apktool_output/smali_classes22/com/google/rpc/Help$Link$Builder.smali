.class public final Lcom/google/rpc/Help$Link$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Help.java"

# interfaces
.implements Lcom/google/rpc/Help$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/Help$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/Help$Link;",
        "Lcom/google/rpc/Help$Link$Builder;",
        ">;",
        "Lcom/google/rpc/Help$LinkOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 317
    invoke-static {}, Lcom/google/rpc/Help$Link;->access$000()Lcom/google/rpc/Help$Link;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/Help$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/Help$1;

    .line 310
    invoke-direct {p0}, Lcom/google/rpc/Help$Link$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDescription()Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0}, Lcom/google/rpc/Help$Link;->access$200(Lcom/google/rpc/Help$Link;)V

    .line 372
    return-object p0
.end method

.method public clearUrl()Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 440
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0}, Lcom/google/rpc/Help$Link;->access$500(Lcom/google/rpc/Help$Link;)V

    .line 441
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 357
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 358
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$100(Lcom/google/rpc/Help$Link;Ljava/lang/String;)V

    .line 359
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 385
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$300(Lcom/google/rpc/Help$Link;Lcom/google/protobuf/ByteString;)V

    .line 387
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 426
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 427
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$400(Lcom/google/rpc/Help$Link;Ljava/lang/String;)V

    .line 428
    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 454
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 455
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$600(Lcom/google/rpc/Help$Link;Lcom/google/protobuf/ByteString;)V

    .line 456
    return-object p0
.end method
