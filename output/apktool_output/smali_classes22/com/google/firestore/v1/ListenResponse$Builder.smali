.class public final Lcom/google/firestore/v1/ListenResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListenResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ListenResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListenResponse;",
        "Lcom/google/firestore/v1/ListenResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListenResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 542
    invoke-static {}, Lcom/google/firestore/v1/ListenResponse;->access$000()Lcom/google/firestore/v1/ListenResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 543
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListenResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListenResponse$1;

    .line 535
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocumentChange()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$700(Lcom/google/firestore/v1/ListenResponse;)V

    .line 699
    return-object p0
.end method

.method public clearDocumentDelete()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 769
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$1000(Lcom/google/firestore/v1/ListenResponse;)V

    .line 771
    return-object p0
.end method

.method public clearDocumentRemove()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 848
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$1300(Lcom/google/firestore/v1/ListenResponse;)V

    .line 849
    return-object p0
.end method

.method public clearFilter()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 943
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$1600(Lcom/google/firestore/v1/ListenResponse;)V

    .line 945
    return-object p0
.end method

.method public clearResponseType()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$100(Lcom/google/firestore/v1/ListenResponse;)V

    .line 554
    return-object p0
.end method

.method public clearTargetChange()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$400(Lcom/google/firestore/v1/ListenResponse;)V

    .line 627
    return-object p0
.end method

.method public getDocumentChange()Lcom/google/firestore/v1/DocumentChange;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getDocumentChange()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getFilter()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChange()Lcom/google/firestore/v1/TargetChange;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getTargetChange()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    return-object v0
.end method

.method public hasDocumentChange()Z
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasDocumentChange()Z

    move-result v0

    return v0
.end method

.method public hasDocumentDelete()Z
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasDocumentDelete()Z

    move-result v0

    return v0
.end method

.method public hasDocumentRemove()Z
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasDocumentRemove()Z

    move-result v0

    return v0
.end method

.method public hasFilter()Z
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasFilter()Z

    move-result v0

    return v0
.end method

.method public hasTargetChange()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasTargetChange()Z

    move-result v0

    return v0
.end method

.method public mergeDocumentChange(Lcom/google/firestore/v1/DocumentChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 685
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$600(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V

    .line 687
    return-object p0
.end method

.method public mergeDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 757
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$900(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V

    .line 759
    return-object p0
.end method

.method public mergeDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 834
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 835
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V

    .line 836
    return-object p0
.end method

.method public mergeFilter(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 927
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 929
    return-object p0
.end method

.method public mergeTargetChange(Lcom/google/firestore/v1/TargetChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 613
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$300(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V

    .line 615
    return-object p0
.end method

.method public setDocumentChange(Lcom/google/firestore/v1/DocumentChange$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentChange$Builder;

    .line 673
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentChange$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V

    .line 675
    return-object p0
.end method

.method public setDocumentChange(Lcom/google/firestore/v1/DocumentChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 660
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V

    .line 662
    return-object p0
.end method

.method public setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentDelete$Builder;

    .line 745
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 746
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentDelete$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$800(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V

    .line 747
    return-object p0
.end method

.method public setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 732
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 733
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$800(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V

    .line 734
    return-object p0
.end method

.method public setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentRemove$Builder;

    .line 821
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentRemove$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$1100(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V

    .line 823
    return-object p0
.end method

.method public setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 807
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 808
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1100(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V

    .line 809
    return-object p0
.end method

.method public setFilter(Lcom/google/firestore/v1/ExistenceFilter$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/ExistenceFilter$Builder;

    .line 911
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$1400(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 913
    return-object p0
.end method

.method public setFilter(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 894
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1400(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 896
    return-object p0
.end method

.method public setTargetChange(Lcom/google/firestore/v1/TargetChange$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TargetChange$Builder;

    .line 601
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TargetChange$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V

    .line 603
    return-object p0
.end method

.method public setTargetChange(Lcom/google/firestore/v1/TargetChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 588
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V

    .line 590
    return-object p0
.end method
