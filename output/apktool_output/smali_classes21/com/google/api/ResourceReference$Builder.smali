.class public final Lcom/google/api/ResourceReference$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ResourceReference.java"

# interfaces
.implements Lcom/google/api/ResourceReferenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ResourceReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ResourceReference;",
        "Lcom/google/api/ResourceReference$Builder;",
        ">;",
        "Lcom/google/api/ResourceReferenceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 346
    invoke-static {}, Lcom/google/api/ResourceReference;->access$000()Lcom/google/api/ResourceReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 347
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ResourceReference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/ResourceReference$1;

    .line 339
    invoke-direct {p0}, Lcom/google/api/ResourceReference$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChildType()Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0}, Lcom/google/api/ResourceReference;->access$500(Lcom/google/api/ResourceReference;)V

    .line 550
    return-object p0
.end method

.method public clearType()Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0}, Lcom/google/api/ResourceReference;->access$200(Lcom/google/api/ResourceReference;)V

    .line 433
    return-object p0
.end method

.method public getChildType()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getChildType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getChildTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setChildType(Ljava/lang/String;)Lcom/google/api/ResourceReference$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 525
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$400(Lcom/google/api/ResourceReference;Ljava/lang/String;)V

    .line 527
    return-object p0
.end method

.method public setChildTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceReference$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 573
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$600(Lcom/google/api/ResourceReference;Lcom/google/protobuf/ByteString;)V

    .line 575
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/ResourceReference$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 410
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$100(Lcom/google/api/ResourceReference;Ljava/lang/String;)V

    .line 412
    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceReference$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 454
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 455
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$300(Lcom/google/api/ResourceReference;Lcom/google/protobuf/ByteString;)V

    .line 456
    return-object p0
.end method
