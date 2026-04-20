.class public final Lcom/google/firestore/v1/Pipeline$Stage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Pipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/Pipeline$StageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Pipeline$Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Pipeline$Stage;",
        "Lcom/google/firestore/v1/Pipeline$Stage$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Pipeline$StageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 625
    invoke-static {}, Lcom/google/firestore/v1/Pipeline$Stage;->access$000()Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Pipeline$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Pipeline$1;

    .line 618
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllArgs(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Pipeline$Stage$Builder;"
        }
    .end annotation

    .line 839
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$700(Lcom/google/firestore/v1/Pipeline$Stage;Ljava/lang/Iterable;)V

    .line 841
    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 825
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 827
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 826
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$600(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    .line 828
    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 799
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->access$600(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    .line 801
    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 812
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$500(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/firestore/v1/Value;)V

    .line 814
    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 786
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$500(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/firestore/v1/Value;)V

    .line 788
    return-object p0
.end method

.method public clearArgs()Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$800(Lcom/google/firestore/v1/Pipeline$Stage;)V

    .line 853
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$200(Lcom/google/firestore/v1/Pipeline$Stage;)V

    .line 696
    return-object p0
.end method

.method public clearOptions()Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 890
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 891
    return-object p0
.end method

.method public containsOptions(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 884
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 885
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getArgs(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 749
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->getArgs(I)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getArgsCount()I
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getArgsCount()I

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

    .line 727
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 728
    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getArgsList()Ljava/util/List;

    move-result-object v0

    .line 727
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getNameBytes()Lcom/google/protobuf/ByteString;

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

    .line 914
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

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

    .line 925
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 926
    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 925
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 942
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 943
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 944
    invoke-virtual {v1}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    .line 945
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

    .line 958
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 959
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 960
    invoke-virtual {v1}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v1

    .line 961
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 962
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public putAllOptions(Ljava/util/Map;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Pipeline$Stage$Builder;"
        }
    .end annotation

    .line 991
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 993
    return-object p0
.end method

.method public putOptions(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 976
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 977
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 978
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 979
    iget-object v2, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v2}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    return-object p0
.end method

.method public removeArgs(I)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 863
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 864
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$900(Lcom/google/firestore/v1/Pipeline$Stage;I)V

    .line 865
    return-object p0
.end method

.method public removeOptions(Ljava/lang/String;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 903
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 904
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 905
    iget-object v1, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 773
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 774
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 775
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 774
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$400(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    .line 776
    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 760
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->access$400(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V

    .line 762
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 677
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$100(Lcom/google/firestore/v1/Pipeline$Stage;Ljava/lang/String;)V

    .line 679
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 713
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->access$300(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/protobuf/ByteString;)V

    .line 715
    return-object p0
.end method
