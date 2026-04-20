.class public final Lcom/google/firestore/v1/DocumentDelete$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentDelete.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentDeleteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentDelete;",
        "Lcom/google/firestore/v1/DocumentDelete$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentDeleteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 382
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->access$000()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentDelete$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/DocumentDelete$1;

    .line 375
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRemovedTargetIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/firestore/v1/DocumentDelete$Builder;"
        }
    .end annotation

    .line 539
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentDelete;->access$600(Lcom/google/firestore/v1/DocumentDelete;Ljava/lang/Iterable;)V

    .line 541
    return-object p0
.end method

.method public addRemovedTargetIds(I)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 524
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 525
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentDelete;->access$500(Lcom/google/firestore/v1/DocumentDelete;I)V

    .line 526
    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 440
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentDelete;->access$200(Lcom/google/firestore/v1/DocumentDelete;)V

    .line 441
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentDelete;->access$1000(Lcom/google/firestore/v1/DocumentDelete;)V

    .line 637
    return-object p0
.end method

.method public clearRemovedTargetIds()Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentDelete;->access$700(Lcom/google/firestore/v1/DocumentDelete;)V

    .line 554
    return-object p0
.end method

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getDocument()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getDocumentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 497
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentDelete;->getRemovedTargetIds(I)I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsCount()I
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getRemovedTargetIdsCount()I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    .line 472
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v0

    .line 471
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 622
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 623
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentDelete;->access$900(Lcom/google/firestore/v1/DocumentDelete;Lcom/google/protobuf/Timestamp;)V

    .line 624
    return-object p0
.end method

.method public setDocument(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 425
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 426
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentDelete;->access$100(Lcom/google/firestore/v1/DocumentDelete;Ljava/lang/String;)V

    .line 427
    return-object p0
.end method

.method public setDocumentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 455
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentDelete;->access$300(Lcom/google/firestore/v1/DocumentDelete;Lcom/google/protobuf/ByteString;)V

    .line 457
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 608
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentDelete;->access$800(Lcom/google/firestore/v1/DocumentDelete;Lcom/google/protobuf/Timestamp;)V

    .line 610
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 593
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentDelete;->access$800(Lcom/google/firestore/v1/DocumentDelete;Lcom/google/protobuf/Timestamp;)V

    .line 595
    return-object p0
.end method

.method public setRemovedTargetIds(II)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 510
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->copyOnWrite()V

    .line 511
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/DocumentDelete;->access$400(Lcom/google/firestore/v1/DocumentDelete;II)V

    .line 512
    return-object p0
.end method
