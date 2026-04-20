.class public final Lcom/google/firestore/v1/GetDocumentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GetDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/GetDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/GetDocumentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/GetDocumentRequest;",
        "Lcom/google/firestore/v1/GetDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/GetDocumentRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 463
    invoke-static {}, Lcom/google/firestore/v1/GetDocumentRequest;->access$000()Lcom/google/firestore/v1/GetDocumentRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/GetDocumentRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest$1;

    .line 456
    invoke-direct {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsistencySelector()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 474
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$100(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 475
    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$700(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 639
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$300(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 534
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1200(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 787
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 690
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$900(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 691
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 623
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$600(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 625
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 769
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1100(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V

    .line 771
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 608
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$500(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 610
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 592
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$500(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 594
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 518
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$200(Lcom/google/firestore/v1/GetDocumentRequest;Ljava/lang/String;)V

    .line 520
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 548
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$400(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 550
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 753
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 754
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1000(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V

    .line 755
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 736
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1000(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V

    .line 738
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 676
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$800(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 678
    return-object p0
.end method
