.class public final Lcom/google/firestore/v1/WriteRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WriteRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/WriteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/WriteRequest;",
        "Lcom/google/firestore/v1/WriteRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 680
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->access$000()Lcom/google/firestore/v1/WriteRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 681
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/WriteRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/WriteRequest$1;

    .line 673
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllWrites(Ljava/lang/Iterable;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Write;",
            ">;)",
            "Lcom/google/firestore/v1/WriteRequest$Builder;"
        }
    .end annotation

    .line 1013
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Write;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1014
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$1000(Lcom/google/firestore/v1/WriteRequest;Ljava/lang/Iterable;)V

    .line 1015
    return-object p0
.end method

.method public addWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 994
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 995
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    .line 996
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 995
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/WriteRequest;->access$900(Lcom/google/firestore/v1/WriteRequest;ILcom/google/firestore/v1/Write;)V

    .line 997
    return-object p0
.end method

.method public addWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 958
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 959
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/WriteRequest;->access$900(Lcom/google/firestore/v1/WriteRequest;ILcom/google/firestore/v1/Write;)V

    .line 960
    return-object p0
.end method

.method public addWrites(Lcom/google/firestore/v1/Write$Builder;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 976
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 977
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/WriteRequest;->access$800(Lcom/google/firestore/v1/WriteRequest;Lcom/google/firestore/v1/Write;)V

    .line 978
    return-object p0
.end method

.method public addWrites(Lcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Write;

    .line 940
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 941
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$800(Lcom/google/firestore/v1/WriteRequest;Lcom/google/firestore/v1/Write;)V

    .line 942
    return-object p0
.end method

.method public clearDatabase()Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 742
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteRequest;->access$200(Lcom/google/firestore/v1/WriteRequest;)V

    .line 743
    return-object p0
.end method

.method public clearLabels()Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1

    .line 1152
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1153
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteRequest;->access$1500(Lcom/google/firestore/v1/WriteRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1154
    return-object p0
.end method

.method public clearStreamId()Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteRequest;->access$500(Lcom/google/firestore/v1/WriteRequest;)V

    .line 822
    return-object p0
.end method

.method public clearStreamToken()Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1

    .line 1126
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1127
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteRequest;->access$1400(Lcom/google/firestore/v1/WriteRequest;)V

    .line 1128
    return-object p0
.end method

.method public clearWrites()Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1

    .line 1030
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1031
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteRequest;->access$1100(Lcom/google/firestore/v1/WriteRequest;)V

    .line 1032
    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1148
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v1}, Lcom/google/firestore/v1/WriteRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

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

    .line 1177
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getLabelsMap()Ljava/util/Map;

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

    .line 1188
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    .line 1189
    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 1188
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1206
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/WriteRequest;

    .line 1207
    invoke-virtual {v1}, Lcom/google/firestore/v1/WriteRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 1208
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

    .line 1221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1222
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/WriteRequest;

    .line 1223
    invoke-virtual {v1}, Lcom/google/firestore/v1/WriteRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 1224
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1225
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getStreamId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWrites(I)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "index"    # I

    .line 888
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->getWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v0

    return-object v0
.end method

.method public getWritesCount()I
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getWritesCount()I

    move-result v0

    return v0
.end method

.method public getWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    .line 857
    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getWritesList()Ljava/util/List;

    move-result-object v0

    .line 856
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/v1/WriteRequest$Builder;"
        }
    .end annotation

    .line 1254
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1255
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteRequest;->access$1500(Lcom/google/firestore/v1/WriteRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1256
    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1240
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1241
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1242
    iget-object v2, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v2}, Lcom/google/firestore/v1/WriteRequest;->access$1500(Lcom/google/firestore/v1/WriteRequest;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1167
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1168
    iget-object v1, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v1}, Lcom/google/firestore/v1/WriteRequest;->access$1500(Lcom/google/firestore/v1/WriteRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    return-object p0
.end method

.method public removeWrites(I)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1047
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1048
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$1200(Lcom/google/firestore/v1/WriteRequest;I)V

    .line 1049
    return-object p0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 726
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$100(Lcom/google/firestore/v1/WriteRequest;Ljava/lang/String;)V

    .line 728
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 758
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 759
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$300(Lcom/google/firestore/v1/WriteRequest;Lcom/google/protobuf/ByteString;)V

    .line 760
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 805
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$400(Lcom/google/firestore/v1/WriteRequest;Ljava/lang/String;)V

    .line 807
    return-object p0
.end method

.method public setStreamIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 837
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 838
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$600(Lcom/google/firestore/v1/WriteRequest;Lcom/google/protobuf/ByteString;)V

    .line 839
    return-object p0
.end method

.method public setStreamToken(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1100
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 1101
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteRequest;->access$1300(Lcom/google/firestore/v1/WriteRequest;Lcom/google/protobuf/ByteString;)V

    .line 1102
    return-object p0
.end method

.method public setWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 922
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    .line 924
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 923
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/WriteRequest;->access$700(Lcom/google/firestore/v1/WriteRequest;ILcom/google/firestore/v1/Write;)V

    .line 925
    return-object p0
.end method

.method public setWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 904
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/WriteRequest;->access$700(Lcom/google/firestore/v1/WriteRequest;ILcom/google/firestore/v1/Write;)V

    .line 906
    return-object p0
.end method
