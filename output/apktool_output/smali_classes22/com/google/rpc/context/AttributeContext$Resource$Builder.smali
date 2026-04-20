.class public final Lcom/google/rpc/context/AttributeContext$Resource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Resource;",
        "Lcom/google/rpc/context/AttributeContext$Resource$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7873
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9400()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7874
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 7866
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLabels()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8186
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8187
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8188
    return-object p0
.end method

.method public clearName()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8049
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8050
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9900(Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 8051
    return-object p0
.end method

.method public clearService()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7934
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7935
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9600(Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 7936
    return-object p0
.end method

.method public clearType()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8141
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8142
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10200(Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 8143
    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 8181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 8182
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
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

    .line 8212
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 8167
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

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

    .line 8224
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8225
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 8224
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 8242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 8243
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8244
    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 8245
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

    .line 8259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 8260
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8261
    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 8262
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8265
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 8263
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 7977
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8001
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 7889
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7904
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getServiceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 8093
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8109
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Resource$Builder;"
        }
    .end annotation

    .line 8294
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8295
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8296
    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 8278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 8279
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 8280
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8281
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v2}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8282
    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 8201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 8202
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8203
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8204
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8025
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8026
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9800(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    .line 8027
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8075
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8076
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10000(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    .line 8077
    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7919
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7920
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9500(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    .line 7921
    return-object p0
.end method

.method public setServiceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 7951
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7952
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9700(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    .line 7953
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8125
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8126
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10100(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    .line 8127
    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8159
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8160
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10300(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    .line 8161
    return-object p0
.end method
