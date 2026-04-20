.class public final Lcom/google/api/SystemParameterRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SystemParameterRule.java"

# interfaces
.implements Lcom/google/api/SystemParameterRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SystemParameterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SystemParameterRule;",
        "Lcom/google/api/SystemParameterRule$Builder;",
        ">;",
        "Lcom/google/api/SystemParameterRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 386
    invoke-static {}, Lcom/google/api/SystemParameterRule;->access$000()Lcom/google/api/SystemParameterRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SystemParameterRule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/SystemParameterRule$1;

    .line 379
    invoke-direct {p0}, Lcom/google/api/SystemParameterRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllParameters(Ljava/lang/Iterable;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameter;",
            ">;)",
            "Lcom/google/api/SystemParameterRule$Builder;"
        }
    .end annotation

    .line 635
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/SystemParameter;>;"
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$700(Lcom/google/api/SystemParameterRule;Ljava/lang/Iterable;)V

    .line 637
    return-object p0
.end method

.method public addParameters(ILcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/SystemParameter$Builder;

    .line 617
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 619
    invoke-virtual {p2}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameter;

    .line 618
    invoke-static {v0, p1, v1}, Lcom/google/api/SystemParameterRule;->access$600(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 620
    return-object p0
.end method

.method public addParameters(ILcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameter;

    .line 583
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 584
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$600(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 585
    return-object p0
.end method

.method public addParameters(Lcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/SystemParameter$Builder;

    .line 600
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {p1}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameter;

    invoke-static {v0, v1}, Lcom/google/api/SystemParameterRule;->access$500(Lcom/google/api/SystemParameterRule;Lcom/google/api/SystemParameter;)V

    .line 602
    return-object p0
.end method

.method public addParameters(Lcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameter;

    .line 566
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 567
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$500(Lcom/google/api/SystemParameterRule;Lcom/google/api/SystemParameter;)V

    .line 568
    return-object p0
.end method

.method public clearParameters()Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 652
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0}, Lcom/google/api/SystemParameterRule;->access$800(Lcom/google/api/SystemParameterRule;)V

    .line 653
    return-object p0
.end method

.method public clearSelector()Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 452
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0}, Lcom/google/api/SystemParameterRule;->access$200(Lcom/google/api/SystemParameterRule;)V

    .line 453
    return-object p0
.end method

.method public getParameters(I)Lcom/google/api/SystemParameter;
    .locals 1
    .param p1, "index"    # I

    .line 517
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameterRule;->getParameters(I)Lcom/google/api/SystemParameter;

    move-result-object v0

    return-object v0
.end method

.method public getParametersCount()I
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getParametersCount()I

    move-result v0

    return v0
.end method

.method public getParametersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 488
    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getParametersList()Ljava/util/List;

    move-result-object v0

    .line 487
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeParameters(I)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 667
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$900(Lcom/google/api/SystemParameterRule;I)V

    .line 669
    return-object p0
.end method

.method public setParameters(ILcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/SystemParameter$Builder;

    .line 549
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 550
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 551
    invoke-virtual {p2}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameter;

    .line 550
    invoke-static {v0, p1, v1}, Lcom/google/api/SystemParameterRule;->access$400(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 552
    return-object p0
.end method

.method public setParameters(ILcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameter;

    .line 532
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$400(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 534
    return-object p0
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 436
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$100(Lcom/google/api/SystemParameterRule;Ljava/lang/String;)V

    .line 437
    return-object p0
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 469
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$300(Lcom/google/api/SystemParameterRule;Lcom/google/protobuf/ByteString;)V

    .line 471
    return-object p0
.end method
