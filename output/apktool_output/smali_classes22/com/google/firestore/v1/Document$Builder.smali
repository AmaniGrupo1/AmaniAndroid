.class public final Lcom/google/firestore/v1/Document$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Document.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Document;",
        "Lcom/google/firestore/v1/Document$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 598
    invoke-static {}, Lcom/google/firestore/v1/Document;->access$000()Lcom/google/firestore/v1/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 599
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Document$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Document$1;

    .line 591
    invoke-direct {p0}, Lcom/google/firestore/v1/Document$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCreateTime()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 1055
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1056
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$700(Lcom/google/firestore/v1/Document;)V

    .line 1057
    return-object p0
.end method

.method public clearFields()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 720
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 721
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 722
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 656
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$200(Lcom/google/firestore/v1/Document;)V

    .line 657
    return-object p0
.end method

.method public clearUpdateTime()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1151
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$1000(Lcom/google/firestore/v1/Document;)V

    .line 1152
    return-object p0
.end method

.method public containsFields(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 716
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCreateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getCreateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 768
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    .line 803
    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 802
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 842
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 843
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 844
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 845
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 881
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 882
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 883
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 884
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 885
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasCreateTime()Z
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->hasCreateTime()Z

    move-result v0

    return v0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->hasUpdateTime()Z

    move-result v0

    return v0
.end method

.method public mergeCreateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1040
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1041
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$600(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1042
    return-object p0
.end method

.method public mergeUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1135
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1136
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$900(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1137
    return-object p0
.end method

.method public putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Document$Builder;"
        }
    .end annotation

    .line 960
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 961
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 962
    return-object p0
.end method

.method public putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Document$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 923
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 924
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 925
    iget-object v2, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/Document;

    invoke-static {v2}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    return-object p0
.end method

.method public removeFields(Ljava/lang/String;)Lcom/google/firestore/v1/Document$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 757
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 758
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 759
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v1}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    return-object p0
.end method

.method public setCreateTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Document$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1024
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1025
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Document;->access$500(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1026
    return-object p0
.end method

.method public setCreateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1007
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1008
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$500(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1009
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 641
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 642
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$100(Lcom/google/firestore/v1/Document;Ljava/lang/String;)V

    .line 643
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 671
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$300(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/ByteString;)V

    .line 673
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Document$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1119
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Document;->access$800(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1121
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1102
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1103
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$800(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1104
    return-object p0
.end method
