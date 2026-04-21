.class public final Lcom/google/api/MonitoredResource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoredResource.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MonitoredResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MonitoredResource;",
        "Lcom/google/api/MonitoredResource$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 345
    invoke-static {}, Lcom/google/api/MonitoredResource;->access$000()Lcom/google/api/MonitoredResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/MonitoredResource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/MonitoredResource$1;

    .line 338
    invoke-direct {p0}, Lcom/google/api/MonitoredResource$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLabels()Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 452
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 453
    return-object p0
.end method

.method public clearType()Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 407
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$200(Lcom/google/api/MonitoredResource;)V

    .line 408
    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 447
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/MonitoredResource;

    invoke-virtual {v1}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

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

    .line 478
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

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

    .line 491
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    .line 492
    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 491
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 511
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/MonitoredResource;

    .line 512
    invoke-virtual {v1}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 513
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

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 529
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/MonitoredResource;

    .line 530
    invoke-virtual {v1}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 531
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 532
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/MonitoredResource$Builder;"
        }
    .end annotation

    .line 565
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 567
    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/MonitoredResource$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 549
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 550
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 551
    iget-object v2, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/api/MonitoredResource;

    invoke-static {v2}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/api/MonitoredResource$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 468
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 469
    iget-object v1, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/MonitoredResource;

    invoke-static {v1}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResource;->access$100(Lcom/google/api/MonitoredResource;Ljava/lang/String;)V

    .line 393
    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 423
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResource;->access$300(Lcom/google/api/MonitoredResource;Lcom/google/protobuf/ByteString;)V

    .line 425
    return-object p0
.end method
