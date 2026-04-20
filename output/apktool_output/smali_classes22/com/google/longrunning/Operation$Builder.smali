.class public final Lcom/google/longrunning/Operation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Operation.java"

# interfaces
.implements Lcom/google/longrunning/OperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/Operation;",
        "Lcom/google/longrunning/Operation$Builder;",
        ">;",
        "Lcom/google/longrunning/OperationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 542
    invoke-static {}, Lcom/google/longrunning/Operation;->access$000()Lcom/google/longrunning/Operation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 543
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/Operation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/longrunning/Operation$1;

    .line 535
    invoke-direct {p0}, Lcom/google/longrunning/Operation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDone()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$900(Lcom/google/longrunning/Operation;)V

    .line 769
    return-object p0
.end method

.method public clearError()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 839
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$1200(Lcom/google/longrunning/Operation;)V

    .line 841
    return-object p0
.end method

.method public clearMetadata()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 721
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$700(Lcom/google/longrunning/Operation;)V

    .line 723
    return-object p0
.end method

.method public clearName()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$300(Lcom/google/longrunning/Operation;)V

    .line 617
    return-object p0
.end method

.method public clearResponse()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$1500(Lcom/google/longrunning/Operation;)V

    .line 955
    return-object p0
.end method

.method public clearResult()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$100(Lcom/google/longrunning/Operation;)V

    .line 554
    return-object p0
.end method

.method public getDone()Z
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getDone()Z

    move-result v0

    return v0
.end method

.method public getError()Lcom/google/rpc/Status;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getError()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/protobuf/Any;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getMetadata()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/Any;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getResponse()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getResultCase()Lcom/google/longrunning/Operation$ResultCase;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getResultCase()Lcom/google/longrunning/Operation$ResultCase;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->hasMetadata()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lcom/google/rpc/Status;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 827
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 828
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1100(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V

    .line 829
    return-object p0
.end method

.method public mergeMetadata(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 707
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$600(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    .line 709
    return-object p0
.end method

.method public mergeResponse(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 934
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 935
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1400(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    .line 936
    return-object p0
.end method

.method public setDone(Z)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 752
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 753
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$800(Lcom/google/longrunning/Operation;Z)V

    .line 754
    return-object p0
.end method

.method public setError(Lcom/google/rpc/Status$Builder;)Lcom/google/longrunning/Operation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/Status$Builder;

    .line 815
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lcom/google/longrunning/Operation;->access$1000(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V

    .line 817
    return-object p0
.end method

.method public setError(Lcom/google/rpc/Status;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 802
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1000(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V

    .line 804
    return-object p0
.end method

.method public setMetadata(Lcom/google/protobuf/Any$Builder;)Lcom/google/longrunning/Operation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 692
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 693
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/longrunning/Operation;->access$500(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    .line 694
    return-object p0
.end method

.method public setMetadata(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 676
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$500(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    .line 678
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 600
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$200(Lcom/google/longrunning/Operation;Ljava/lang/String;)V

    .line 602
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 632
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 633
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$400(Lcom/google/longrunning/Operation;Lcom/google/protobuf/ByteString;)V

    .line 634
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Any$Builder;)Lcom/google/longrunning/Operation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 915
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 916
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/longrunning/Operation;->access$1300(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    .line 917
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 895
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 896
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1300(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    .line 897
    return-object p0
.end method
