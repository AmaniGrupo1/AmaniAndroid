.class public final Lcom/google/api/Usage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Usage.java"

# interfaces
.implements Lcom/google/api/UsageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Usage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Usage;",
        "Lcom/google/api/Usage$Builder;",
        ">;",
        "Lcom/google/api/UsageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 530
    invoke-static {}, Lcom/google/api/Usage;->access$000()Lcom/google/api/Usage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 531
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Usage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Usage$1;

    .line 523
    invoke-direct {p0}, Lcom/google/api/Usage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRequirements(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 643
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 644
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$300(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    .line 645
    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/UsageRule;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 821
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/UsageRule;>;"
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$900(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    .line 823
    return-object p0
.end method

.method public addRequirements(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 626
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 627
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$200(Lcom/google/api/Usage;Ljava/lang/String;)V

    .line 628
    return-object p0
.end method

.method public addRequirementsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 675
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 676
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$500(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    .line 677
    return-object p0
.end method

.method public addRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/UsageRule$Builder;

    .line 805
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 807
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/UsageRule;

    .line 806
    invoke-static {v0, p1, v1}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 808
    return-object p0
.end method

.method public addRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/UsageRule;

    .line 775
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 776
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 777
    return-object p0
.end method

.method public addRules(Lcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/UsageRule$Builder;

    .line 790
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {p1}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/UsageRule;

    invoke-static {v0, v1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    .line 792
    return-object p0
.end method

.method public addRules(Lcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/UsageRule;

    .line 760
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    .line 762
    return-object p0
.end method

.method public clearProducerNotificationChannel()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 931
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 932
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1300(Lcom/google/api/Usage;)V

    .line 933
    return-object p0
.end method

.method public clearRequirements()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$400(Lcom/google/api/Usage;)V

    .line 660
    return-object p0
.end method

.method public clearRules()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 835
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 836
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1000(Lcom/google/api/Usage;)V

    .line 837
    return-object p0
.end method

.method public getProducerNotificationChannel()Ljava/lang/String;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequirements(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 577
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirements(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequirementsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 593
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirementsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsCount()I

    move-result v0

    return v0
.end method

.method public getRequirementsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 548
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsList()Ljava/util/List;

    move-result-object v0

    .line 547
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/UsageRule;
    .locals 1
    .param p1, "index"    # I

    .line 717
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRules(I)Lcom/google/api/UsageRule;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 692
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 691
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 849
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 850
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1100(Lcom/google/api/Usage;I)V

    .line 851
    return-object p0
.end method

.method public setProducerNotificationChannel(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 911
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1200(Lcom/google/api/Usage;Ljava/lang/String;)V

    .line 913
    return-object p0
.end method

.method public setProducerNotificationChannelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 953
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1400(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    .line 955
    return-object p0
.end method

.method public setRequirements(ILjava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 609
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 610
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$100(Lcom/google/api/Usage;ILjava/lang/String;)V

    .line 611
    return-object p0
.end method

.method public setRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/UsageRule$Builder;

    .line 745
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 746
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 747
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/UsageRule;

    .line 746
    invoke-static {v0, p1, v1}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 748
    return-object p0
.end method

.method public setRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/UsageRule;

    .line 730
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 732
    return-object p0
.end method
