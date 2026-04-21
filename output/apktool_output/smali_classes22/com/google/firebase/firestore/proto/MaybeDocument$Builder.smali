.class public final Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MaybeDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/MaybeDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/MaybeDocument;",
        "Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$000()Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/MaybeDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/proto/MaybeDocument$1;

    .line 417
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocument()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 580
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$700(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 581
    return-object p0
.end method

.method public clearDocumentType()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 435
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$100(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 436
    return-object p0
.end method

.method public clearHasCommittedMutations()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$1200(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 702
    return-object p0
.end method

.method public clearNoDocument()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 508
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$400(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 509
    return-object p0
.end method

.method public clearUnknownDocument()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 652
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$1000(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 653
    return-object p0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getHasCommittedMutations()Z
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getHasCommittedMutations()Z

    move-result v0

    return v0
.end method

.method public getNoDocument()Lcom/google/firebase/firestore/proto/NoDocument;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getNoDocument()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownDocument()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getUnknownDocument()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasNoDocument()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasNoDocument()Z

    move-result v0

    return v0
.end method

.method public hasUnknownDocument()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasUnknownDocument()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 567
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$600(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firestore/v1/Document;)V

    .line 569
    return-object p0
.end method

.method public mergeNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/NoDocument;

    .line 495
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 496
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$300(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 497
    return-object p0
.end method

.method public mergeUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 639
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$900(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 641
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 555
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$500(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firestore/v1/Document;)V

    .line 557
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 542
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 543
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$500(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firestore/v1/Document;)V

    .line 544
    return-object p0
.end method

.method public setHasCommittedMutations(Z)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 684
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$1100(Lcom/google/firebase/firestore/proto/MaybeDocument;Z)V

    .line 686
    return-object p0
.end method

.method public setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument$Builder;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    .line 483
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 484
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$200(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 485
    return-object p0
.end method

.method public setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/NoDocument;

    .line 470
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$200(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 472
    return-object p0
.end method

.method public setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    .line 627
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$800(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 629
    return-object p0
.end method

.method public setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 614
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$800(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 616
    return-object p0
.end method
