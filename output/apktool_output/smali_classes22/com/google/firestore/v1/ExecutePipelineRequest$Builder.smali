.class public final Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExecutePipelineRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ExecutePipelineRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ExecutePipelineRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ExecutePipelineRequest;",
        "Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ExecutePipelineRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 580
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$000()Lcom/google/firestore/v1/ExecutePipelineRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 581
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ExecutePipelineRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest$1;

    .line 573
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsistencySelector()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$200(Lcom/google/firestore/v1/ExecutePipelineRequest;)V

    .line 604
    return-object p0
.end method

.method public clearDatabase()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 658
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$400(Lcom/google/firestore/v1/ExecutePipelineRequest;)V

    .line 659
    return-object p0
.end method

.method public clearNewTransaction()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1300(Lcom/google/firestore/v1/ExecutePipelineRequest;)V

    .line 896
    return-object p0
.end method

.method public clearPipelineType()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 591
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$100(Lcom/google/firestore/v1/ExecutePipelineRequest;)V

    .line 592
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 990
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 991
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1600(Lcom/google/firestore/v1/ExecutePipelineRequest;)V

    .line 992
    return-object p0
.end method

.method public clearStructuredPipeline()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$800(Lcom/google/firestore/v1/ExecutePipelineRequest;)V

    .line 746
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 804
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 805
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1000(Lcom/google/firestore/v1/ExecutePipelineRequest;)V

    .line 806
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/ExecutePipelineRequest$ConsistencySelectorCase;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/ExecutePipelineRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineTypeCase()Lcom/google/firestore/v1/ExecutePipelineRequest$PipelineTypeCase;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getPipelineTypeCase()Lcom/google/firestore/v1/ExecutePipelineRequest$PipelineTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredPipeline()Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getStructuredPipeline()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasNewTransaction()Z
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->hasNewTransaction()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasStructuredPipeline()Z
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->hasStructuredPipeline()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 879
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 880
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1200(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 881
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 974
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 975
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1500(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/Timestamp;)V

    .line 976
    return-object p0
.end method

.method public mergeStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 732
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 733
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$700(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/StructuredPipeline;)V

    .line 734
    return-object p0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 644
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 645
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$300(Lcom/google/firestore/v1/ExecutePipelineRequest;Ljava/lang/String;)V

    .line 646
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 672
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$500(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/ByteString;)V

    .line 674
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions$Builder;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$Builder;

    .line 864
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 865
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1100(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 866
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 848
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1100(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 850
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 958
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 959
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1400(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/Timestamp;)V

    .line 960
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 941
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 942
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$1400(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/Timestamp;)V

    .line 943
    return-object p0
.end method

.method public setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline$Builder;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredPipeline$Builder;

    .line 720
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 721
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$600(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/StructuredPipeline;)V

    .line 722
    return-object p0
.end method

.method public setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 707
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$600(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/StructuredPipeline;)V

    .line 709
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 789
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->access$900(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/ByteString;)V

    .line 791
    return-object p0
.end method
