.class public final Lcom/google/api/DocumentationRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentationRule.java"

# interfaces
.implements Lcom/google/api/DocumentationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/DocumentationRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/DocumentationRule;",
        "Lcom/google/api/DocumentationRule$Builder;",
        ">;",
        "Lcom/google/api/DocumentationRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 352
    invoke-static {}, Lcom/google/api/DocumentationRule;->access$000()Lcom/google/api/DocumentationRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 353
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/DocumentationRule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/DocumentationRule$1;

    .line 345
    invoke-direct {p0}, Lcom/google/api/DocumentationRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeprecationDescription()Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 573
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0}, Lcom/google/api/DocumentationRule;->access$800(Lcom/google/api/DocumentationRule;)V

    .line 574
    return-object p0
.end method

.method public clearDescription()Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0}, Lcom/google/api/DocumentationRule;->access$500(Lcom/google/api/DocumentationRule;)V

    .line 501
    return-object p0
.end method

.method public clearSelector()Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 426
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0}, Lcom/google/api/DocumentationRule;->access$200(Lcom/google/api/DocumentationRule;)V

    .line 427
    return-object p0
.end method

.method public getDeprecationDescription()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDeprecationDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecationDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDeprecationDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecationDescription(Ljava/lang/String;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 558
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 559
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$700(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V

    .line 560
    return-object p0
.end method

.method public setDeprecationDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 588
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$900(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V

    .line 590
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 487
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$400(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V

    .line 488
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 514
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$600(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V

    .line 516
    return-object p0
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 407
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$100(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V

    .line 409
    return-object p0
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 445
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$300(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V

    .line 447
    return-object p0
.end method
