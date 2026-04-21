.class public final Lcom/google/firestore/v1/StructuredPipeline$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredPipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredPipelineOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredPipeline;",
        "Lcom/google/firestore/v1/StructuredPipeline$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredPipelineOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 328
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->access$000()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredPipeline$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredPipeline$1;

    .line 321
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOptions()Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 430
    return-object p0
.end method

.method public clearPipeline()Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$300(Lcom/google/firestore/v1/StructuredPipeline;)V

    .line 400
    return-object p0
.end method

.method public containsOptions(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 424
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getOptions()Ljava/util/Map;
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

    .line 457
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsMap()Ljava/util/Map;
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

    .line 472
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    .line 473
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 472
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 494
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    .line 495
    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    .line 496
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

.method public getOptionsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 514
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    .line 515
    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    .line 516
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 517
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getPipeline()Lcom/google/firestore/v1/Pipeline;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getPipeline()Lcom/google/firestore/v1/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public hasPipeline()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->hasPipeline()Z

    move-result v0

    return v0
.end method

.method public mergePipeline(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Pipeline;

    .line 387
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->access$200(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V

    .line 389
    return-object p0
.end method

.method public putAllOptions(Ljava/util/Map;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredPipeline$Builder;"
        }
    .end annotation

    .line 554
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 556
    return-object p0
.end method

.method public putOptions(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 536
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 537
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 538
    iget-object v2, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v2}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-object p0
.end method

.method public removeOptions(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 447
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 448
    iget-object v1, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v1}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-object p0
.end method

.method public setPipeline(Lcom/google/firestore/v1/Pipeline$Builder;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Pipeline$Builder;

    .line 375
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 376
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Pipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredPipeline;->access$100(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V

    .line 377
    return-object p0
.end method

.method public setPipeline(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Pipeline;

    .line 362
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 363
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->access$100(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V

    .line 364
    return-object p0
.end method
