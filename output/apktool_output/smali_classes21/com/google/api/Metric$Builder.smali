.class public final Lcom/google/api/Metric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Metric.java"

# interfaces
.implements Lcom/google/api/MetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Metric;",
        "Lcom/google/api/Metric$Builder;",
        ">;",
        "Lcom/google/api/MetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 313
    invoke-static {}, Lcom/google/api/Metric;->access$000()Lcom/google/api/Metric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Metric$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Metric$1;

    .line 306
    invoke-direct {p0}, Lcom/google/api/Metric$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLabels()Lcom/google/api/Metric$Builder;
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 414
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 415
    return-object p0
.end method

.method public clearType()Lcom/google/api/Metric$Builder;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$200(Lcom/google/api/Metric;)V

    .line 372
    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 409
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/Metric;

    invoke-virtual {v1}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

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

    .line 439
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-virtual {v0}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

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

    .line 451
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    .line 452
    invoke-virtual {v0}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 451
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 470
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/Metric;

    .line 471
    invoke-virtual {v1}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 472
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

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 487
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/Metric;

    .line 488
    invoke-virtual {v1}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 489
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 490
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-virtual {v0}, Lcom/google/api/Metric;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-virtual {v0}, Lcom/google/api/Metric;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/api/Metric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Metric$Builder;"
        }
    .end annotation

    .line 521
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 522
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 523
    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/Metric$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 506
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 507
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 508
    iget-object v2, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/api/Metric;

    invoke-static {v2}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/api/Metric$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 429
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 430
    iget-object v1, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/api/Metric;

    invoke-static {v1}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/Metric$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 357
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0, p1}, Lcom/google/api/Metric;->access$100(Lcom/google/api/Metric;Ljava/lang/String;)V

    .line 358
    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Metric$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 386
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 387
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0, p1}, Lcom/google/api/Metric;->access$300(Lcom/google/api/Metric;Lcom/google/protobuf/ByteString;)V

    .line 388
    return-object p0
.end method
