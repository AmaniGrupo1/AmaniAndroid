.class public final Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExecutePipelineResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ExecutePipelineResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ExecutePipelineResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ExecutePipelineResponse;",
        "Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ExecutePipelineResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 523
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$000()Lcom/google/firestore/v1/ExecutePipelineResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 524
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ExecutePipelineResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ExecutePipelineResponse$1;

    .line 516
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllResults(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Document;",
            ">;)",
            "Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;"
        }
    .end annotation

    .line 797
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Document;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 798
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$600(Lcom/google/firestore/v1/ExecutePipelineResponse;Ljava/lang/Iterable;)V

    .line 799
    return-object p0
.end method

.method public addResults(ILcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 773
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 774
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    .line 775
    invoke-virtual {p2}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 774
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$500(Lcom/google/firestore/v1/ExecutePipelineResponse;ILcom/google/firestore/v1/Document;)V

    .line 776
    return-object p0
.end method

.method public addResults(ILcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Document;

    .line 727
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 728
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$500(Lcom/google/firestore/v1/ExecutePipelineResponse;ILcom/google/firestore/v1/Document;)V

    .line 729
    return-object p0
.end method

.method public addResults(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 750
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$400(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/firestore/v1/Document;)V

    .line 752
    return-object p0
.end method

.method public addResults(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 704
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$400(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/firestore/v1/Document;)V

    .line 706
    return-object p0
.end method

.method public clearExecutionTime()Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1

    .line 960
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 961
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$1100(Lcom/google/firestore/v1/ExecutePipelineResponse;)V

    .line 962
    return-object p0
.end method

.method public clearResults()Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1

    .line 819
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 820
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$700(Lcom/google/firestore/v1/ExecutePipelineResponse;)V

    .line 821
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1

    .line 571
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 572
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$200(Lcom/google/firestore/v1/ExecutePipelineResponse;)V

    .line 573
    return-object p0
.end method

.method public getExecutionTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getExecutionTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResults(I)Lcom/google/firestore/v1/Document;
    .locals 1
    .param p1, "index"    # I

    .line 637
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getResults(I)Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getResultsCount()I
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getResultsCount()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    .line 596
    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getResultsList()Ljava/util/List;

    move-result-object v0

    .line 595
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasExecutionTime()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->hasExecutionTime()Z

    move-result v0

    return v0
.end method

.method public mergeExecutionTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 941
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 942
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$1000(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/protobuf/Timestamp;)V

    .line 943
    return-object p0
.end method

.method public removeResults(I)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 841
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 842
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$800(Lcom/google/firestore/v1/ExecutePipelineResponse;I)V

    .line 843
    return-object p0
.end method

.method public setExecutionTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 921
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 922
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$900(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/protobuf/Timestamp;)V

    .line 923
    return-object p0
.end method

.method public setExecutionTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 900
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 901
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$900(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/protobuf/Timestamp;)V

    .line 902
    return-object p0
.end method

.method public setResults(ILcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 681
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    .line 683
    invoke-virtual {p2}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 682
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$300(Lcom/google/firestore/v1/ExecutePipelineResponse;ILcom/google/firestore/v1/Document;)V

    .line 684
    return-object p0
.end method

.method public setResults(ILcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Document;

    .line 658
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$300(Lcom/google/firestore/v1/ExecutePipelineResponse;ILcom/google/firestore/v1/Document;)V

    .line 660
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 555
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->access$100(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/protobuf/ByteString;)V

    .line 557
    return-object p0
.end method
