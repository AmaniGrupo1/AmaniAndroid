.class public final Lcom/google/firestore/v1/WriteResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WriteResult.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/WriteResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/WriteResult;",
        "Lcom/google/firestore/v1/WriteResult$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 366
    invoke-static {}, Lcom/google/firestore/v1/WriteResult;->access$000()Lcom/google/firestore/v1/WriteResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/WriteResult$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/WriteResult$1;

    .line 359
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTransformResults(Ljava/lang/Iterable;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/WriteResult$Builder;"
        }
    .end annotation

    .line 606
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 607
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResult;->access$700(Lcom/google/firestore/v1/WriteResult;Ljava/lang/Iterable;)V

    .line 608
    return-object p0
.end method

.method public addTransformResults(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 590
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 591
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    .line 592
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 591
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/WriteResult;->access$600(Lcom/google/firestore/v1/WriteResult;ILcom/google/firestore/v1/Value;)V

    .line 593
    return-object p0
.end method

.method public addTransformResults(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 560
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/WriteResult;->access$600(Lcom/google/firestore/v1/WriteResult;ILcom/google/firestore/v1/Value;)V

    .line 562
    return-object p0
.end method

.method public addTransformResults(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 575
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/WriteResult;->access$500(Lcom/google/firestore/v1/WriteResult;Lcom/google/firestore/v1/Value;)V

    .line 577
    return-object p0
.end method

.method public addTransformResults(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 545
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 546
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResult;->access$500(Lcom/google/firestore/v1/WriteResult;Lcom/google/firestore/v1/Value;)V

    .line 547
    return-object p0
.end method

.method public clearTransformResults()Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 621
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteResult;->access$800(Lcom/google/firestore/v1/WriteResult;)V

    .line 622
    return-object p0
.end method

.method public clearUpdateTime()Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 461
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteResult;->access$300(Lcom/google/firestore/v1/WriteResult;)V

    .line 462
    return-object p0
.end method

.method public getTransformResults(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 502
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/WriteResult;->getTransformResults(I)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getTransformResultsCount()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResult;->getTransformResultsCount()I

    move-result v0

    return v0
.end method

.method public getTransformResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    .line 477
    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResult;->getTransformResultsList()Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResult;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResult;->hasUpdateTime()Z

    move-result v0

    return v0
.end method

.method public mergeUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 445
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResult;->access$200(Lcom/google/firestore/v1/WriteResult;Lcom/google/protobuf/Timestamp;)V

    .line 447
    return-object p0
.end method

.method public removeTransformResults(I)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 634
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResult;->access$900(Lcom/google/firestore/v1/WriteResult;I)V

    .line 636
    return-object p0
.end method

.method public setTransformResults(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 530
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    .line 532
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 531
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/WriteResult;->access$400(Lcom/google/firestore/v1/WriteResult;ILcom/google/firestore/v1/Value;)V

    .line 533
    return-object p0
.end method

.method public setTransformResults(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 515
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/WriteResult;->access$400(Lcom/google/firestore/v1/WriteResult;ILcom/google/firestore/v1/Value;)V

    .line 517
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 429
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/WriteResult;->access$100(Lcom/google/firestore/v1/WriteResult;Lcom/google/protobuf/Timestamp;)V

    .line 431
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 412
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResult$Builder;->copyOnWrite()V

    .line 413
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResult;->access$100(Lcom/google/firestore/v1/WriteResult;Lcom/google/protobuf/Timestamp;)V

    .line 414
    return-object p0
.end method
