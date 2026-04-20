.class public final Lcom/google/api/ConfigChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConfigChange.java"

# interfaces
.implements Lcom/google/api/ConfigChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ConfigChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ConfigChange;",
        "Lcom/google/api/ConfigChange$Builder;",
        ">;",
        "Lcom/google/api/ConfigChangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 594
    invoke-static {}, Lcom/google/api/ConfigChange;->access$000()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ConfigChange$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/ConfigChange$1;

    .line 587
    invoke-direct {p0}, Lcom/google/api/ConfigChange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdvices(ILcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Advice$Builder;

    .line 1037
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1038
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 1039
    invoke-virtual {p2}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Advice;

    .line 1038
    invoke-static {v0, p1, v1}, Lcom/google/api/ConfigChange;->access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    .line 1040
    return-object p0
.end method

.method public addAdvices(ILcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Advice;

    .line 1009
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1010
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    .line 1011
    return-object p0
.end method

.method public addAdvices(Lcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Advice$Builder;

    .line 1023
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1024
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {p1}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Advice;

    invoke-static {v0, v1}, Lcom/google/api/ConfigChange;->access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V

    .line 1025
    return-object p0
.end method

.method public addAdvices(Lcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Advice;

    .line 995
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 996
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V

    .line 997
    return-object p0
.end method

.method public addAllAdvices(Ljava/lang/Iterable;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Advice;",
            ">;)",
            "Lcom/google/api/ConfigChange$Builder;"
        }
    .end annotation

    .line 1052
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Advice;>;"
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1053
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1600(Lcom/google/api/ConfigChange;Ljava/lang/Iterable;)V

    .line 1054
    return-object p0
.end method

.method public clearAdvices()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1065
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1066
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$1700(Lcom/google/api/ConfigChange;)V

    .line 1067
    return-object p0
.end method

.method public clearChangeType()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 916
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 917
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$1200(Lcom/google/api/ConfigChange;)V

    .line 918
    return-object p0
.end method

.method public clearElement()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 680
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$200(Lcom/google/api/ConfigChange;)V

    .line 681
    return-object p0
.end method

.method public clearNewValue()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 834
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 835
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)V

    .line 836
    return-object p0
.end method

.method public clearOldValue()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 760
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$500(Lcom/google/api/ConfigChange;)V

    .line 762
    return-object p0
.end method

.method public getAdvices(I)Lcom/google/api/Advice;
    .locals 1
    .param p1, "index"    # I

    .line 955
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0, p1}, Lcom/google/api/ConfigChange;->getAdvices(I)Lcom/google/api/Advice;

    move-result-object v0

    return-object v0
.end method

.method public getAdvicesCount()I
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getAdvicesCount()I

    move-result v0

    return v0
.end method

.method public getAdvicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 932
    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getAdvicesList()Ljava/util/List;

    move-result-object v0

    .line 931
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChangeType()Lcom/google/api/ChangeType;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getChangeType()Lcom/google/api/ChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getChangeTypeValue()I
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public getElement()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElementBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAdvices(I)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1078
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1079
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1800(Lcom/google/api/ConfigChange;I)V

    .line 1080
    return-object p0
.end method

.method public setAdvices(ILcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Advice$Builder;

    .line 981
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 982
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 983
    invoke-virtual {p2}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Advice;

    .line 982
    invoke-static {v0, p1, v1}, Lcom/google/api/ConfigChange;->access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    .line 984
    return-object p0
.end method

.method public setAdvices(ILcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Advice;

    .line 967
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 968
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    .line 969
    return-object p0
.end method

.method public setChangeType(Lcom/google/api/ChangeType;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/ChangeType;

    .line 903
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 904
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1100(Lcom/google/api/ConfigChange;Lcom/google/api/ChangeType;)V

    .line 905
    return-object p0
.end method

.method public setChangeTypeValue(I)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 877
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1000(Lcom/google/api/ConfigChange;I)V

    .line 879
    return-object p0
.end method

.method public setElement(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 658
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$100(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    .line 660
    return-object p0
.end method

.method public setElementBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 702
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$300(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    .line 704
    return-object p0
.end method

.method public setNewValue(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 820
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$700(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    .line 822
    return-object p0
.end method

.method public setNewValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 850
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 851
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$900(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    .line 852
    return-object p0
.end method

.method public setOldValue(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 746
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 747
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$400(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    .line 748
    return-object p0
.end method

.method public setOldValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 776
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 777
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$600(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    .line 778
    return-object p0
.end method
