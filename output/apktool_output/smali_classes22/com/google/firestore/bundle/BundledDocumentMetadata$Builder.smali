.class public final Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BundledDocumentMetadata.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundledDocumentMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundledDocumentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/bundle/BundledDocumentMetadata;",
        "Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundledDocumentMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 421
    invoke-static {}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$000()Lcom/google/firestore/bundle/BundledDocumentMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/bundle/BundledDocumentMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata$1;

    .line 414
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllQueries(Ljava/lang/Iterable;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;"
        }
    .end annotation

    .line 700
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$1100(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/Iterable;)V

    .line 702
    return-object p0
.end method

.method public addQueries(Ljava/lang/String;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 685
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$1000(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/String;)V

    .line 687
    return-object p0
.end method

.method public addQueriesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 728
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 729
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$1300(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/ByteString;)V

    .line 730
    return-object p0
.end method

.method public clearExists()Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1

    .line 600
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$800(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 602
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 475
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$200(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 476
    return-object p0
.end method

.method public clearQueries()Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$1200(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 715
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$600(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 562
    return-object p0
.end method

.method public getExists()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getExists()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueries(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 642
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getQueries(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 656
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getQueriesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesCount()I
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getQueriesCount()I

    move-result v0

    return v0
.end method

.method public getQueriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 617
    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getQueriesList()Ljava/util/List;

    move-result-object v0

    .line 616
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 549
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 550
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$500(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/Timestamp;)V

    .line 551
    return-object p0
.end method

.method public setExists(Z)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 587
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$700(Lcom/google/firestore/bundle/BundledDocumentMetadata;Z)V

    .line 589
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 461
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$100(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/String;)V

    .line 463
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 489
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 490
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$300(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/ByteString;)V

    .line 491
    return-object p0
.end method

.method public setQueries(ILjava/lang/String;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 670
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 671
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$900(Lcom/google/firestore/bundle/BundledDocumentMetadata;ILjava/lang/String;)V

    .line 672
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 537
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$400(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/Timestamp;)V

    .line 539
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 524
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->copyOnWrite()V

    .line 525
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->access$400(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/Timestamp;)V

    .line 526
    return-object p0
.end method
