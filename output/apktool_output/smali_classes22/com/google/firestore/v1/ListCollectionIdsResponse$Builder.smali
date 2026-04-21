.class public final Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListCollectionIdsResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ListCollectionIdsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListCollectionIdsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListCollectionIdsResponse;",
        "Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListCollectionIdsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 318
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$000()Lcom/google/firestore/v1/ListCollectionIdsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListCollectionIdsResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsResponse$1;

    .line 311
    invoke-direct {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCollectionIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;"
        }
    .end annotation

    .line 417
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 418
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$300(Lcom/google/firestore/v1/ListCollectionIdsResponse;Ljava/lang/Iterable;)V

    .line 419
    return-object p0
.end method

.method public addCollectionIds(Ljava/lang/String;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 403
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$200(Lcom/google/firestore/v1/ListCollectionIdsResponse;Ljava/lang/String;)V

    .line 404
    return-object p0
.end method

.method public addCollectionIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 445
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$500(Lcom/google/firestore/v1/ListCollectionIdsResponse;Lcom/google/protobuf/ByteString;)V

    .line 447
    return-object p0
.end method

.method public clearCollectionIds()Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$400(Lcom/google/firestore/v1/ListCollectionIdsResponse;)V

    .line 432
    return-object p0
.end method

.method public clearNextPageToken()Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$700(Lcom/google/firestore/v1/ListCollectionIdsResponse;)V

    .line 501
    return-object p0
.end method

.method public getCollectionIds(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 359
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 373
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIdsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionIdsCount()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIdsCount()I

    move-result v0

    return v0
.end method

.method public getCollectionIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    .line 334
    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIdsList()Ljava/util/List;

    move-result-object v0

    .line 333
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getNextPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCollectionIds(ILjava/lang/String;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$100(Lcom/google/firestore/v1/ListCollectionIdsResponse;ILjava/lang/String;)V

    .line 389
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 487
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$600(Lcom/google/firestore/v1/ListCollectionIdsResponse;Ljava/lang/String;)V

    .line 488
    return-object p0
.end method

.method public setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 514
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$800(Lcom/google/firestore/v1/ListCollectionIdsResponse;Lcom/google/protobuf/ByteString;)V

    .line 516
    return-object p0
.end method
