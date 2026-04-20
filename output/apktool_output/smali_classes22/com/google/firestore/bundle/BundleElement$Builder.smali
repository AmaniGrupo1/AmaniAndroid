.class public final Lcom/google/firestore/bundle/BundleElement$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BundleElement.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundleElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/bundle/BundleElement;",
        "Lcom/google/firestore/bundle/BundleElement$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundleElementOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 373
    invoke-static {}, Lcom/google/firestore/bundle/BundleElement;->access$000()Lcom/google/firestore/bundle/BundleElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/bundle/BundleElement$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/bundle/BundleElement$1;

    .line 366
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocument()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$1300(Lcom/google/firestore/bundle/BundleElement;)V

    .line 578
    return-object p0
.end method

.method public clearDocumentMetadata()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$1000(Lcom/google/firestore/bundle/BundleElement;)V

    .line 530
    return-object p0
.end method

.method public clearElementType()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 384
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$100(Lcom/google/firestore/bundle/BundleElement;)V

    .line 385
    return-object p0
.end method

.method public clearMetadata()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$400(Lcom/google/firestore/bundle/BundleElement;)V

    .line 434
    return-object p0
.end method

.method public clearNamedQuery()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$700(Lcom/google/firestore/bundle/BundleElement;)V

    .line 482
    return-object p0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentMetadata()Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getDocumentMetadata()Lcom/google/firestore/bundle/BundledDocumentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getElementTypeCase()Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getElementTypeCase()Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getMetadata()Lcom/google/firestore/bundle/BundleMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNamedQuery()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getNamedQuery()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasDocumentMetadata()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasDocumentMetadata()Z

    move-result v0

    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasMetadata()Z

    move-result v0

    return v0
.end method

.method public hasNamedQuery()Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasNamedQuery()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 568
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 569
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$1200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V

    .line 570
    return-object p0
.end method

.method public mergeDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 520
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$900(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 522
    return-object p0
.end method

.method public mergeMetadata(Lcom/google/firestore/bundle/BundleMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 424
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$300(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 426
    return-object p0
.end method

.method public mergeNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 472
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 473
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$600(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V

    .line 474
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 560
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$1100(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V

    .line 562
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 551
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$1100(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V

    .line 553
    return-object p0
.end method

.method public setDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    .line 512
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$800(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 514
    return-object p0
.end method

.method public setDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 503
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 504
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$800(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 505
    return-object p0
.end method

.method public setMetadata(Lcom/google/firestore/bundle/BundleMetadata$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/bundle/BundleMetadata$Builder;

    .line 416
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 418
    return-object p0
.end method

.method public setMetadata(Lcom/google/firestore/bundle/BundleMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 407
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 409
    return-object p0
.end method

.method public setNamedQuery(Lcom/google/firestore/bundle/NamedQuery$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/bundle/NamedQuery$Builder;

    .line 464
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 465
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/NamedQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$500(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V

    .line 466
    return-object p0
.end method

.method public setNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 455
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$500(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V

    .line 457
    return-object p0
.end method
