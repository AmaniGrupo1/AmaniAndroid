.class public final Lcom/google/api/Quota$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Quota.java"

# interfaces
.implements Lcom/google/api/QuotaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Quota;",
        "Lcom/google/api/Quota$Builder;",
        ">;",
        "Lcom/google/api/QuotaOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 503
    invoke-static {}, Lcom/google/api/Quota;->access$000()Lcom/google/api/Quota;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Quota$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Quota$1;

    .line 496
    invoke-direct {p0}, Lcom/google/api/Quota$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLimits(Ljava/lang/Iterable;)Lcom/google/api/Quota$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/QuotaLimit;",
            ">;)",
            "Lcom/google/api/Quota$Builder;"
        }
    .end annotation

    .line 628
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/QuotaLimit;>;"
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$400(Lcom/google/api/Quota;Ljava/lang/Iterable;)V

    .line 630
    return-object p0
.end method

.method public addAllMetricRules(Ljava/lang/Iterable;)Lcom/google/api/Quota$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricRule;",
            ">;)",
            "Lcom/google/api/Quota$Builder;"
        }
    .end annotation

    .line 788
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MetricRule;>;"
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 789
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$1000(Lcom/google/api/Quota;Ljava/lang/Iterable;)V

    .line 790
    return-object p0
.end method

.method public addLimits(ILcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/QuotaLimit$Builder;

    .line 614
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 616
    invoke-virtual {p2}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/QuotaLimit;

    .line 615
    invoke-static {v0, p1, v1}, Lcom/google/api/Quota;->access$300(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    .line 617
    return-object p0
.end method

.method public addLimits(ILcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/QuotaLimit;

    .line 588
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$300(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    .line 590
    return-object p0
.end method

.method public addLimits(Lcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/QuotaLimit$Builder;

    .line 601
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {p1}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/QuotaLimit;

    invoke-static {v0, v1}, Lcom/google/api/Quota;->access$200(Lcom/google/api/Quota;Lcom/google/api/QuotaLimit;)V

    .line 603
    return-object p0
.end method

.method public addLimits(Lcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/QuotaLimit;

    .line 575
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$200(Lcom/google/api/Quota;Lcom/google/api/QuotaLimit;)V

    .line 577
    return-object p0
.end method

.method public addMetricRules(ILcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MetricRule$Builder;

    .line 773
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 774
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 775
    invoke-virtual {p2}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricRule;

    .line 774
    invoke-static {v0, p1, v1}, Lcom/google/api/Quota;->access$900(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    .line 776
    return-object p0
.end method

.method public addMetricRules(ILcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricRule;

    .line 745
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 746
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$900(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    .line 747
    return-object p0
.end method

.method public addMetricRules(Lcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/MetricRule$Builder;

    .line 759
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 760
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {p1}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricRule;

    invoke-static {v0, v1}, Lcom/google/api/Quota;->access$800(Lcom/google/api/Quota;Lcom/google/api/MetricRule;)V

    .line 761
    return-object p0
.end method

.method public addMetricRules(Lcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/MetricRule;

    .line 731
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 732
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$800(Lcom/google/api/Quota;Lcom/google/api/MetricRule;)V

    .line 733
    return-object p0
.end method

.method public clearLimits()Lcom/google/api/Quota$Builder;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0}, Lcom/google/api/Quota;->access$500(Lcom/google/api/Quota;)V

    .line 642
    return-object p0
.end method

.method public clearMetricRules()Lcom/google/api/Quota$Builder;
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 802
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0}, Lcom/google/api/Quota;->access$1100(Lcom/google/api/Quota;)V

    .line 803
    return-object p0
.end method

.method public getLimits(I)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p1, "index"    # I

    .line 538
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0, p1}, Lcom/google/api/Quota;->getLimits(I)Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method public getLimitsCount()I
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->getLimitsCount()I

    move-result v0

    return v0
.end method

.method public getLimitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 517
    invoke-virtual {v0}, Lcom/google/api/Quota;->getLimitsList()Ljava/util/List;

    move-result-object v0

    .line 516
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricRules(I)Lcom/google/api/MetricRule;
    .locals 1
    .param p1, "index"    # I

    .line 691
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0, p1}, Lcom/google/api/Quota;->getMetricRules(I)Lcom/google/api/MetricRule;

    move-result-object v0

    return-object v0
.end method

.method public getMetricRulesCount()I
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->getMetricRulesCount()I

    move-result v0

    return v0
.end method

.method public getMetricRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricRule;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 668
    invoke-virtual {v0}, Lcom/google/api/Quota;->getMetricRulesList()Ljava/util/List;

    move-result-object v0

    .line 667
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeLimits(I)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 652
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 653
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$600(Lcom/google/api/Quota;I)V

    .line 654
    return-object p0
.end method

.method public removeMetricRules(I)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 814
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$1200(Lcom/google/api/Quota;I)V

    .line 816
    return-object p0
.end method

.method public setLimits(ILcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/QuotaLimit$Builder;

    .line 562
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 564
    invoke-virtual {p2}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/QuotaLimit;

    .line 563
    invoke-static {v0, p1, v1}, Lcom/google/api/Quota;->access$100(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    .line 565
    return-object p0
.end method

.method public setLimits(ILcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/QuotaLimit;

    .line 549
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 550
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$100(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    .line 551
    return-object p0
.end method

.method public setMetricRules(ILcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MetricRule$Builder;

    .line 717
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 719
    invoke-virtual {p2}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricRule;

    .line 718
    invoke-static {v0, p1, v1}, Lcom/google/api/Quota;->access$700(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    .line 720
    return-object p0
.end method

.method public setMetricRules(ILcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricRule;

    .line 703
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$700(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    .line 705
    return-object p0
.end method
