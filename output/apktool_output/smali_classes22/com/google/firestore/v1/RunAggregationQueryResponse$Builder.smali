.class public final Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RunAggregationQueryResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/RunAggregationQueryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunAggregationQueryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
        "Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunAggregationQueryResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 347
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$000()Lcom/google/firestore/v1/RunAggregationQueryResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RunAggregationQueryResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse$1;

    .line 340
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReadTime()Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 592
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$800(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V

    .line 593
    return-object p0
.end method

.method public clearResult()Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$300(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V

    .line 431
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 479
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$500(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V

    .line 480
    return-object p0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/google/firestore/v1/AggregationResult;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getResult()Lcom/google/firestore/v1/AggregationResult;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->hasResult()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 573
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$700(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 575
    return-object p0
.end method

.method public mergeResult(Lcom/google/firestore/v1/AggregationResult;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/AggregationResult;

    .line 416
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$200(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V

    .line 418
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 554
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$600(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 556
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 534
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$600(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 536
    return-object p0
.end method

.method public setResult(Lcom/google/firestore/v1/AggregationResult$Builder;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/AggregationResult$Builder;

    .line 402
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 403
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/AggregationResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$100(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V

    .line 404
    return-object p0
.end method

.method public setResult(Lcom/google/firestore/v1/AggregationResult;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/AggregationResult;

    .line 387
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$100(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V

    .line 389
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 462
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$400(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/ByteString;)V

    .line 464
    return-object p0
.end method
