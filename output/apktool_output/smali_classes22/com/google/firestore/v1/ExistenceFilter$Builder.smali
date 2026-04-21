.class public final Lcom/google/firestore/v1/ExistenceFilter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExistenceFilter.java"

# interfaces
.implements Lcom/google/firestore/v1/ExistenceFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ExistenceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ExistenceFilter;",
        "Lcom/google/firestore/v1/ExistenceFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ExistenceFilterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 338
    invoke-static {}, Lcom/google/firestore/v1/ExistenceFilter;->access$000()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ExistenceFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ExistenceFilter$1;

    .line 331
    invoke-direct {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCount()Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 445
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/ExistenceFilter;->access$400(Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 446
    return-object p0
.end method

.method public clearTargetId()Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/ExistenceFilter;->access$200(Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 379
    return-object p0
.end method

.method public clearUnchangedNames()Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/ExistenceFilter;->access$700(Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 577
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getCount()I

    move-result v0

    return v0
.end method

.method public getTargetId()I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getTargetId()I

    move-result v0

    return v0
.end method

.method public getUnchangedNames()Lcom/google/firestore/v1/BloomFilter;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getUnchangedNames()Lcom/google/firestore/v1/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method public hasUnchangedNames()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->hasUnchangedNames()Z

    move-result v0

    return v0
.end method

.method public mergeUnchangedNames(Lcom/google/firestore/v1/BloomFilter;)Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BloomFilter;

    .line 554
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->access$600(Lcom/google/firestore/v1/ExistenceFilter;Lcom/google/firestore/v1/BloomFilter;)V

    .line 556
    return-object p0
.end method

.method public setCount(I)Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 422
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 423
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->access$300(Lcom/google/firestore/v1/ExistenceFilter;I)V

    .line 424
    return-object p0
.end method

.method public setTargetId(I)Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 364
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->access$100(Lcom/google/firestore/v1/ExistenceFilter;I)V

    .line 366
    return-object p0
.end method

.method public setUnchangedNames(Lcom/google/firestore/v1/BloomFilter$Builder;)Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/BloomFilter$Builder;

    .line 532
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/BloomFilter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ExistenceFilter;->access$500(Lcom/google/firestore/v1/ExistenceFilter;Lcom/google/firestore/v1/BloomFilter;)V

    .line 534
    return-object p0
.end method

.method public setUnchangedNames(Lcom/google/firestore/v1/BloomFilter;)Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BloomFilter;

    .line 509
    invoke-virtual {p0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->access$500(Lcom/google/firestore/v1/ExistenceFilter;Lcom/google/firestore/v1/BloomFilter;)V

    .line 511
    return-object p0
.end method
