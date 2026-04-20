.class public final Lcom/google/firestore/v1/Function$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Function.java"

# interfaces
.implements Lcom/google/firestore/v1/FunctionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Function;",
        "Lcom/google/firestore/v1/Function$Builder;",
        ">;",
        "Lcom/google/firestore/v1/FunctionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 482
    invoke-static {}, Lcom/google/firestore/v1/Function;->access$000()Lcom/google/firestore/v1/Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 483
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Function$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Function$1;

    .line 475
    invoke-direct {p0}, Lcom/google/firestore/v1/Function$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllArgs(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Function$Builder;"
        }
    .end annotation

    .line 696
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$700(Lcom/google/firestore/v1/Function;Ljava/lang/Iterable;)V

    .line 698
    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Function$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 682
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 684
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 683
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Function;->access$600(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    .line 685
    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 656
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Function;->access$600(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    .line 658
    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Function$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 669
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Function;->access$500(Lcom/google/firestore/v1/Function;Lcom/google/firestore/v1/Value;)V

    .line 671
    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 643
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 644
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$500(Lcom/google/firestore/v1/Function;Lcom/google/firestore/v1/Value;)V

    .line 645
    return-object p0
.end method

.method public clearArgs()Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$800(Lcom/google/firestore/v1/Function;)V

    .line 710
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$200(Lcom/google/firestore/v1/Function;)V

    .line 553
    return-object p0
.end method

.method public clearOptions()Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 746
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 747
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 748
    return-object p0
.end method

.method public containsOptions(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 741
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 742
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Function;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getArgs(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 606
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Function;->getArgs(I)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getArgsCount()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getArgsCount()I

    move-result v0

    return v0
.end method

.method public getArgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 585
    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getArgsList()Ljava/util/List;

    move-result-object v0

    .line 584
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
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

    .line 771
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

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

    .line 782
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 783
    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 782
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 800
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Function;

    .line 801
    invoke-virtual {v1}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    .line 802
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

    .line 815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 816
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Function;

    .line 817
    invoke-virtual {v1}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    .line 818
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 819
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public putAllOptions(Ljava/util/Map;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Function$Builder;"
        }
    .end annotation

    .line 848
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 850
    return-object p0
.end method

.method public putOptions(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 834
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 835
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 836
    iget-object v2, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/Function;

    invoke-static {v2}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    return-object p0
.end method

.method public removeArgs(I)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 720
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 721
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$900(Lcom/google/firestore/v1/Function;I)V

    .line 722
    return-object p0
.end method

.method public removeOptions(Ljava/lang/String;)Lcom/google/firestore/v1/Function$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 761
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 762
    iget-object v1, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Function;

    invoke-static {v1}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Function$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 630
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 632
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 631
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Function;->access$400(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    .line 633
    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 617
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Function;->access$400(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    .line 619
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 534
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$100(Lcom/google/firestore/v1/Function;Ljava/lang/String;)V

    .line 536
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 570
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 571
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$300(Lcom/google/firestore/v1/Function;Lcom/google/protobuf/ByteString;)V

    .line 572
    return-object p0
.end method
