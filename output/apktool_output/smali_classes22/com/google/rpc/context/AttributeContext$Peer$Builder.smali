.class public final Lcom/google/rpc/context/AttributeContext$Peer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$PeerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Peer;",
        "Lcom/google/rpc/context/AttributeContext$Peer$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$PeerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 669
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->access$000()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 670
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 662
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIp()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$200(Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 724
    return-object p0
.end method

.method public clearLabels()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 805
    return-object p0
.end method

.method public clearPort()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$500(Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 779
    return-object p0
.end method

.method public clearPrincipal()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 967
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 968
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$800(Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 969
    return-object p0
.end method

.method public clearRegionCode()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 1047
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$1100(Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 1048
    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 799
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 840
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 839
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 857
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 858
    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 859
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 873
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 874
    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 875
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 876
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getPort()J
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPort()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrincipal()Ljava/lang/String;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPrincipal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipalBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPrincipalBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getRegionCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Peer$Builder;"
        }
    .end annotation

    .line 905
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 906
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 907
    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 890
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 891
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 892
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 893
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v2}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 818
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 819
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    return-object p0
.end method

.method public setIp(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 709
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$100(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V

    .line 711
    return-object p0
.end method

.method public setIpBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 737
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 738
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$300(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V

    .line 739
    return-object p0
.end method

.method public setPort(J)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 764
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 765
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Peer;->access$400(Lcom/google/rpc/context/AttributeContext$Peer;J)V

    .line 766
    return-object p0
.end method

.method public setPrincipal(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 952
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 953
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$700(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V

    .line 954
    return-object p0
.end method

.method public setPrincipalBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 984
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$900(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V

    .line 986
    return-object p0
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1031
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 1032
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$1000(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V

    .line 1033
    return-object p0
.end method

.method public setRegionCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1063
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 1064
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$1200(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V

    .line 1065
    return-object p0
.end method
