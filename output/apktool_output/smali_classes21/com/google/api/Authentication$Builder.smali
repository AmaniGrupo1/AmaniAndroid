.class public final Lcom/google/api/Authentication$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Authentication.java"

# interfaces
.implements Lcom/google/api/AuthenticationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Authentication;",
        "Lcom/google/api/Authentication$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 444
    invoke-static {}, Lcom/google/api/Authentication;->access$000()Lcom/google/api/Authentication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 445
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Authentication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Authentication$1;

    .line 437
    invoke-direct {p0}, Lcom/google/api/Authentication$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllProviders(Ljava/lang/Iterable;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthProvider;",
            ">;)",
            "Lcom/google/api/Authentication$Builder;"
        }
    .end annotation

    .line 743
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/AuthProvider;>;"
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 744
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$1000(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V

    .line 745
    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthenticationRule;",
            ">;)",
            "Lcom/google/api/Authentication$Builder;"
        }
    .end annotation

    .line 589
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/AuthenticationRule;>;"
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 590
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$400(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V

    .line 591
    return-object p0
.end method

.method public addProviders(ILcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/AuthProvider$Builder;

    .line 729
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 730
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 731
    invoke-virtual {p2}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/AuthProvider;

    .line 730
    invoke-static {v0, p1, v1}, Lcom/google/api/Authentication;->access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    .line 732
    return-object p0
.end method

.method public addProviders(ILcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthProvider;

    .line 703
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    .line 705
    return-object p0
.end method

.method public addProviders(Lcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/AuthProvider$Builder;

    .line 716
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {p1}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/AuthProvider;

    invoke-static {v0, v1}, Lcom/google/api/Authentication;->access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V

    .line 718
    return-object p0
.end method

.method public addProviders(Lcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/AuthProvider;

    .line 690
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 691
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V

    .line 692
    return-object p0
.end method

.method public addRules(ILcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/AuthenticationRule$Builder;

    .line 573
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 575
    invoke-virtual {p2}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/AuthenticationRule;

    .line 574
    invoke-static {v0, p1, v1}, Lcom/google/api/Authentication;->access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    .line 576
    return-object p0
.end method

.method public addRules(ILcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthenticationRule;

    .line 543
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 544
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    .line 545
    return-object p0
.end method

.method public addRules(Lcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/AuthenticationRule$Builder;

    .line 558
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 559
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {p1}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, v1}, Lcom/google/api/Authentication;->access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V

    .line 560
    return-object p0
.end method

.method public addRules(Lcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/AuthenticationRule;

    .line 528
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V

    .line 530
    return-object p0
.end method

.method public clearProviders()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 756
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0}, Lcom/google/api/Authentication;->access$1100(Lcom/google/api/Authentication;)V

    .line 757
    return-object p0
.end method

.method public clearRules()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0}, Lcom/google/api/Authentication;->access$500(Lcom/google/api/Authentication;)V

    .line 605
    return-object p0
.end method

.method public getProviders(I)Lcom/google/api/AuthProvider;
    .locals 1
    .param p1, "index"    # I

    .line 653
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication;->getProviders(I)Lcom/google/api/AuthProvider;

    move-result-object v0

    return-object v0
.end method

.method public getProvidersCount()I
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getProvidersCount()I

    move-result v0

    return v0
.end method

.method public getProvidersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 632
    invoke-virtual {v0}, Lcom/google/api/Authentication;->getProvidersList()Ljava/util/List;

    move-result-object v0

    .line 631
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p1, "index"    # I

    .line 485
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication;->getRules(I)Lcom/google/api/AuthenticationRule;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 460
    invoke-virtual {v0}, Lcom/google/api/Authentication;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 459
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeProviders(I)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 767
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$1200(Lcom/google/api/Authentication;I)V

    .line 769
    return-object p0
.end method

.method public removeRules(I)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 617
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$600(Lcom/google/api/Authentication;I)V

    .line 619
    return-object p0
.end method

.method public setProviders(ILcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/AuthProvider$Builder;

    .line 677
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 679
    invoke-virtual {p2}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/AuthProvider;

    .line 678
    invoke-static {v0, p1, v1}, Lcom/google/api/Authentication;->access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    .line 680
    return-object p0
.end method

.method public setProviders(ILcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthProvider;

    .line 664
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    .line 666
    return-object p0
.end method

.method public setRules(ILcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/AuthenticationRule$Builder;

    .line 513
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 514
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 515
    invoke-virtual {p2}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/AuthenticationRule;

    .line 514
    invoke-static {v0, p1, v1}, Lcom/google/api/Authentication;->access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    .line 516
    return-object p0
.end method

.method public setRules(ILcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthenticationRule;

    .line 498
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 499
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    .line 500
    return-object p0
.end method
