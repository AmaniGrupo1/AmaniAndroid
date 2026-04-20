.class public final Lcom/google/firestore/v1/DocumentRemove$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentRemove.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentRemoveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentRemove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentRemove;",
        "Lcom/google/firestore/v1/DocumentRemove$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentRemoveOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 386
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->access$000()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentRemove$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/DocumentRemove$1;

    .line 379
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRemovedTargetIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/firestore/v1/DocumentRemove$Builder;"
        }
    .end annotation

    .line 543
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 544
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$600(Lcom/google/firestore/v1/DocumentRemove;Ljava/lang/Iterable;)V

    .line 545
    return-object p0
.end method

.method public addRemovedTargetIds(I)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 528
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$500(Lcom/google/firestore/v1/DocumentRemove;I)V

    .line 530
    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 444
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->access$200(Lcom/google/firestore/v1/DocumentRemove;)V

    .line 445
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->access$1000(Lcom/google/firestore/v1/DocumentRemove;)V

    .line 641
    return-object p0
.end method

.method public clearRemovedTargetIds()Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->access$700(Lcom/google/firestore/v1/DocumentRemove;)V

    .line 558
    return-object p0
.end method

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getDocument()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getDocumentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 501
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIds(I)I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsCount()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIdsCount()I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    .line 476
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v0

    .line 475
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 626
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 627
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$900(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/Timestamp;)V

    .line 628
    return-object p0
.end method

.method public setDocument(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$100(Lcom/google/firestore/v1/DocumentRemove;Ljava/lang/String;)V

    .line 431
    return-object p0
.end method

.method public setDocumentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 459
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$300(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/ByteString;)V

    .line 461
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 612
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentRemove;->access$800(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/Timestamp;)V

    .line 614
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 597
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$800(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/Timestamp;)V

    .line 599
    return-object p0
.end method

.method public setRemovedTargetIds(II)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 514
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/DocumentRemove;->access$400(Lcom/google/firestore/v1/DocumentRemove;II)V

    .line 516
    return-object p0
.end method
