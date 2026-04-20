.class public final Lcom/google/firestore/v1/TargetChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TargetChange.java"

# interfaces
.implements Lcom/google/firestore/v1/TargetChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TargetChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/TargetChange;",
        "Lcom/google/firestore/v1/TargetChange$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TargetChangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 717
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->access$000()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 718
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/TargetChange$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/TargetChange$1;

    .line 710
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTargetIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/firestore/v1/TargetChange$Builder;"
        }
    .end annotation

    .line 890
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 891
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$600(Lcom/google/firestore/v1/TargetChange;Ljava/lang/Iterable;)V

    .line 892
    return-object p0
.end method

.method public addTargetIds(I)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 871
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 872
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$500(Lcom/google/firestore/v1/TargetChange;I)V

    .line 873
    return-object p0
.end method

.method public clearCause()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 978
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 979
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$1000(Lcom/google/firestore/v1/TargetChange;)V

    .line 980
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 1152
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1153
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$1500(Lcom/google/firestore/v1/TargetChange;)V

    .line 1154
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 1027
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1028
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$1200(Lcom/google/firestore/v1/TargetChange;)V

    .line 1029
    return-object p0
.end method

.method public clearTargetChangeType()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 783
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$300(Lcom/google/firestore/v1/TargetChange;)V

    .line 784
    return-object p0
.end method

.method public clearTargetIds()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 908
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$700(Lcom/google/firestore/v1/TargetChange;)V

    .line 909
    return-object p0
.end method

.method public getCause()Lcom/google/rpc/Status;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getCause()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChangeType()Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetChangeType()Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChangeTypeValue()I
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public getTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 836
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TargetChange;->getTargetIds(I)I

    move-result v0

    return v0
.end method

.method public getTargetIdsCount()I
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetIdsCount()I

    move-result v0

    return v0
.end method

.method public getTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    .line 803
    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetIdsList()Ljava/util/List;

    move-result-object v0

    .line 802
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCause()Z
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->hasCause()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeCause(Lcom/google/rpc/Status;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 967
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 968
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$900(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V

    .line 969
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1132
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1133
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$1400(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V

    .line 1134
    return-object p0
.end method

.method public setCause(Lcom/google/rpc/Status$Builder;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/Status$Builder;

    .line 955
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/TargetChange;->access$800(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V

    .line 957
    return-object p0
.end method

.method public setCause(Lcom/google/rpc/Status;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 942
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 943
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$800(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V

    .line 944
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1111
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1112
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/TargetChange;->access$1300(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V

    .line 1113
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1089
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1090
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$1300(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V

    .line 1091
    return-object p0
.end method

.method public setResumeToken(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1011
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1012
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$1100(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/ByteString;)V

    .line 1013
    return-object p0
.end method

.method public setTargetChangeType(Lcom/google/firestore/v1/TargetChange$TargetChangeType;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 769
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$200(Lcom/google/firestore/v1/TargetChange;Lcom/google/firestore/v1/TargetChange$TargetChangeType;)V

    .line 771
    return-object p0
.end method

.method public setTargetChangeTypeValue(I)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 743
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 744
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$100(Lcom/google/firestore/v1/TargetChange;I)V

    .line 745
    return-object p0
.end method

.method public setTargetIds(II)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 853
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/TargetChange;->access$400(Lcom/google/firestore/v1/TargetChange;II)V

    .line 855
    return-object p0
.end method
