.class public final Lcom/google/firestore/v1/RunQueryResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RunQueryResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/RunQueryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunQueryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RunQueryResponse;",
        "Lcom/google/firestore/v1/RunQueryResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunQueryResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 376
    invoke-static {}, Lcom/google/firestore/v1/RunQueryResponse;->access$000()Lcom/google/firestore/v1/RunQueryResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RunQueryResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RunQueryResponse$1;

    .line 369
    invoke-direct {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocument()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 499
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$500(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 500
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$800(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 607
    return-object p0
.end method

.method public clearSkippedResults()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 649
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$1000(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 650
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 428
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$200(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 429
    return-object p0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getSkippedResults()I
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getSkippedResults()I

    move-result v0

    return v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 487
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 488
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$400(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V

    .line 489
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 588
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$700(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 590
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 475
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 476
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunQueryResponse;->access$300(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V

    .line 477
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 462
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$300(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V

    .line 464
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 570
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 571
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunQueryResponse;->access$600(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 572
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 551
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$600(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 553
    return-object p0
.end method

.method public setSkippedResults(I)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 634
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$900(Lcom/google/firestore/v1/RunQueryResponse;I)V

    .line 636
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 410
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$100(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/ByteString;)V

    .line 412
    return-object p0
.end method
