.class public final Lcom/google/api/Context$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Context.java"

# interfaces
.implements Lcom/google/api/ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Context;",
        "Lcom/google/api/Context$Builder;",
        ">;",
        "Lcom/google/api/ContextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 349
    invoke-static {}, Lcom/google/api/Context;->access$000()Lcom/google/api/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Context$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Context$1;

    .line 342
    invoke-direct {p0}, Lcom/google/api/Context$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Context$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/ContextRule;",
            ">;)",
            "Lcom/google/api/Context$Builder;"
        }
    .end annotation

    .line 494
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/ContextRule;>;"
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 495
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1}, Lcom/google/api/Context;->access$400(Lcom/google/api/Context;Ljava/lang/Iterable;)V

    .line 496
    return-object p0
.end method

.method public addRules(ILcom/google/api/ContextRule$Builder;)Lcom/google/api/Context$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/ContextRule$Builder;

    .line 478
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 479
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    .line 480
    invoke-virtual {p2}, Lcom/google/api/ContextRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/ContextRule;

    .line 479
    invoke-static {v0, p1, v1}, Lcom/google/api/Context;->access$300(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    .line 481
    return-object p0
.end method

.method public addRules(ILcom/google/api/ContextRule;)Lcom/google/api/Context$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/ContextRule;

    .line 448
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 449
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1, p2}, Lcom/google/api/Context;->access$300(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    .line 450
    return-object p0
.end method

.method public addRules(Lcom/google/api/ContextRule$Builder;)Lcom/google/api/Context$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/ContextRule$Builder;

    .line 463
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 464
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-virtual {p1}, Lcom/google/api/ContextRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/ContextRule;

    invoke-static {v0, v1}, Lcom/google/api/Context;->access$200(Lcom/google/api/Context;Lcom/google/api/ContextRule;)V

    .line 465
    return-object p0
.end method

.method public addRules(Lcom/google/api/ContextRule;)Lcom/google/api/Context$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/ContextRule;

    .line 433
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1}, Lcom/google/api/Context;->access$200(Lcom/google/api/Context;Lcom/google/api/ContextRule;)V

    .line 435
    return-object p0
.end method

.method public clearRules()Lcom/google/api/Context$Builder;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0}, Lcom/google/api/Context;->access$500(Lcom/google/api/Context;)V

    .line 510
    return-object p0
.end method

.method public getRules(I)Lcom/google/api/ContextRule;
    .locals 1
    .param p1, "index"    # I

    .line 390
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-virtual {v0, p1}, Lcom/google/api/Context;->getRules(I)Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-virtual {v0}, Lcom/google/api/Context;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/ContextRule;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    .line 365
    invoke-virtual {v0}, Lcom/google/api/Context;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/Context$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 522
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1}, Lcom/google/api/Context;->access$600(Lcom/google/api/Context;I)V

    .line 524
    return-object p0
.end method

.method public setRules(ILcom/google/api/ContextRule$Builder;)Lcom/google/api/Context$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/ContextRule$Builder;

    .line 418
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 419
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    .line 420
    invoke-virtual {p2}, Lcom/google/api/ContextRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/ContextRule;

    .line 419
    invoke-static {v0, p1, v1}, Lcom/google/api/Context;->access$100(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    .line 421
    return-object p0
.end method

.method public setRules(ILcom/google/api/ContextRule;)Lcom/google/api/Context$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/ContextRule;

    .line 403
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1, p2}, Lcom/google/api/Context;->access$100(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    .line 405
    return-object p0
.end method
