.class public final Lcom/google/firestore/bundle/BundleMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BundleMetadata.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundleMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/bundle/BundleMetadata;",
        "Lcom/google/firestore/bundle/BundleMetadata$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundleMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 367
    invoke-static {}, Lcom/google/firestore/bundle/BundleMetadata;->access$000()Lcom/google/firestore/bundle/BundleMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 368
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/bundle/BundleMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/bundle/BundleMetadata$1;

    .line 360
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCreateTime()Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 507
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleMetadata;->access$600(Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 508
    return-object p0
.end method

.method public clearId()Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleMetadata;->access$200(Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 422
    return-object p0
.end method

.method public clearTotalBytes()Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 627
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleMetadata;->access$1200(Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 628
    return-object p0
.end method

.method public clearTotalDocuments()Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleMetadata;->access$1000(Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 588
    return-object p0
.end method

.method public clearVersion()Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1

    .line 546
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 547
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleMetadata;->access$800(Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 548
    return-object p0
.end method

.method public getCreateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getCreateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalDocuments()I
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getTotalDocuments()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCreateTime()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->hasCreateTime()Z

    move-result v0

    return v0
.end method

.method public mergeCreateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 495
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 496
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->access$500(Lcom/google/firestore/bundle/BundleMetadata;Lcom/google/protobuf/Timestamp;)V

    .line 497
    return-object p0
.end method

.method public setCreateTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 483
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 484
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleMetadata;->access$400(Lcom/google/firestore/bundle/BundleMetadata;Lcom/google/protobuf/Timestamp;)V

    .line 485
    return-object p0
.end method

.method public setCreateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 470
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->access$400(Lcom/google/firestore/bundle/BundleMetadata;Lcom/google/protobuf/Timestamp;)V

    .line 472
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 407
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->access$100(Lcom/google/firestore/bundle/BundleMetadata;Ljava/lang/String;)V

    .line 409
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 435
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 436
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->access$300(Lcom/google/firestore/bundle/BundleMetadata;Lcom/google/protobuf/ByteString;)V

    .line 437
    return-object p0
.end method

.method public setTotalBytes(J)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 613
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/bundle/BundleMetadata;->access$1100(Lcom/google/firestore/bundle/BundleMetadata;J)V

    .line 615
    return-object p0
.end method

.method public setTotalDocuments(I)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 573
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->access$900(Lcom/google/firestore/bundle/BundleMetadata;I)V

    .line 575
    return-object p0
.end method

.method public setVersion(I)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 533
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->copyOnWrite()V

    .line 534
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->access$700(Lcom/google/firestore/bundle/BundleMetadata;I)V

    .line 535
    return-object p0
.end method
