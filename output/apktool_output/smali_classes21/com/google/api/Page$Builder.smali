.class public final Lcom/google/api/Page$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Page.java"

# interfaces
.implements Lcom/google/api/PageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Page;",
        "Lcom/google/api/Page$Builder;",
        ">;",
        "Lcom/google/api/PageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 476
    invoke-static {}, Lcom/google/api/Page;->access$000()Lcom/google/api/Page;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 477
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Page$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Page$1;

    .line 469
    invoke-direct {p0}, Lcom/google/api/Page$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSubpages(Ljava/lang/Iterable;)Lcom/google/api/Page$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Page;",
            ">;)",
            "Lcom/google/api/Page$Builder;"
        }
    .end annotation

    .line 819
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Page;>;"
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 820
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$1000(Lcom/google/api/Page;Ljava/lang/Iterable;)V

    .line 821
    return-object p0
.end method

.method public addSubpages(ILcom/google/api/Page$Builder;)Lcom/google/api/Page$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Page$Builder;

    .line 804
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 805
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    .line 806
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Page;

    .line 805
    invoke-static {v0, p1, v1}, Lcom/google/api/Page;->access$900(Lcom/google/api/Page;ILcom/google/api/Page;)V

    .line 807
    return-object p0
.end method

.method public addSubpages(ILcom/google/api/Page;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 776
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 777
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1, p2}, Lcom/google/api/Page;->access$900(Lcom/google/api/Page;ILcom/google/api/Page;)V

    .line 778
    return-object p0
.end method

.method public addSubpages(Lcom/google/api/Page$Builder;)Lcom/google/api/Page$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Page$Builder;

    .line 790
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {p1}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Page;

    invoke-static {v0, v1}, Lcom/google/api/Page;->access$800(Lcom/google/api/Page;Lcom/google/api/Page;)V

    .line 792
    return-object p0
.end method

.method public addSubpages(Lcom/google/api/Page;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Page;

    .line 762
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 763
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$800(Lcom/google/api/Page;Lcom/google/api/Page;)V

    .line 764
    return-object p0
.end method

.method public clearContent()Lcom/google/api/Page$Builder;
    .locals 1

    .line 667
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0}, Lcom/google/api/Page;->access$500(Lcom/google/api/Page;)V

    .line 669
    return-object p0
.end method

.method public clearName()Lcom/google/api/Page$Builder;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 582
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0}, Lcom/google/api/Page;->access$200(Lcom/google/api/Page;)V

    .line 583
    return-object p0
.end method

.method public clearSubpages()Lcom/google/api/Page$Builder;
    .locals 1

    .line 832
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0}, Lcom/google/api/Page;->access$1100(Lcom/google/api/Page;)V

    .line 834
    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubpages(I)Lcom/google/api/Page;
    .locals 1
    .param p1, "index"    # I

    .line 722
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0, p1}, Lcom/google/api/Page;->getSubpages(I)Lcom/google/api/Page;

    move-result-object v0

    return-object v0
.end method

.method public getSubpagesCount()I
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getSubpagesCount()I

    move-result v0

    return v0
.end method

.method public getSubpagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    .line 699
    invoke-virtual {v0}, Lcom/google/api/Page;->getSubpagesList()Ljava/util/List;

    move-result-object v0

    .line 698
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeSubpages(I)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 845
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 846
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$1200(Lcom/google/api/Page;I)V

    .line 847
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 653
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 654
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$400(Lcom/google/api/Page;Ljava/lang/String;)V

    .line 655
    return-object p0
.end method

.method public setContentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 683
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$600(Lcom/google/api/Page;Lcom/google/protobuf/ByteString;)V

    .line 685
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$100(Lcom/google/api/Page;Ljava/lang/String;)V

    .line 557
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 609
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 610
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$300(Lcom/google/api/Page;Lcom/google/protobuf/ByteString;)V

    .line 611
    return-object p0
.end method

.method public setSubpages(ILcom/google/api/Page$Builder;)Lcom/google/api/Page$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Page$Builder;

    .line 748
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    .line 750
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Page;

    .line 749
    invoke-static {v0, p1, v1}, Lcom/google/api/Page;->access$700(Lcom/google/api/Page;ILcom/google/api/Page;)V

    .line 751
    return-object p0
.end method

.method public setSubpages(ILcom/google/api/Page;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 734
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1, p2}, Lcom/google/api/Page;->access$700(Lcom/google/api/Page;ILcom/google/api/Page;)V

    .line 736
    return-object p0
.end method
