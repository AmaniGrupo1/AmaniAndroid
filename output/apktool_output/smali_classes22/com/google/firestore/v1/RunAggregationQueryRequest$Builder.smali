.class public final Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RunAggregationQueryRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunAggregationQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 605
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$000()Lcom/google/firestore/v1/RunAggregationQueryRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 606
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RunAggregationQueryRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryRequest$1;

    .line 598
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsistencySelector()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$200(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 629
    return-object p0
.end method

.method public clearNewTransaction()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 944
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 945
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1300(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 946
    return-object p0
.end method

.method public clearParent()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$400(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 704
    return-object p0
.end method

.method public clearQueryType()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$100(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 617
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 1040
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 1041
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1600(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 1042
    return-object p0
.end method

.method public clearStructuredAggregationQuery()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 795
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$800(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 796
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 854
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 855
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1000(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 856
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getQueryTypeCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredAggregationQuery()Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getStructuredAggregationQuery()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasNewTransaction()Z
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasNewTransaction()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasStructuredAggregationQuery()Z
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasStructuredAggregationQuery()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 929
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1200(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 931
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1024
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 1025
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1026
    return-object p0
.end method

.method public mergeStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 782
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 783
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$700(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 784
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions$Builder;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$Builder;

    .line 914
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 915
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1100(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 916
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 898
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 899
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1100(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 900
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 684
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$300(Lcom/google/firestore/v1/RunAggregationQueryRequest;Ljava/lang/String;)V

    .line 686
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 722
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V

    .line 724
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1008
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 1009
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1400(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1010
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 991
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1400(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 993
    return-object p0
.end method

.method public setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    .line 770
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 771
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$600(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 772
    return-object p0
.end method

.method public setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 757
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$600(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 759
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 839
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$900(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V

    .line 841
    return-object p0
.end method
