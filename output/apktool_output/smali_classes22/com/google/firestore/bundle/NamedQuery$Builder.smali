.class public final Lcom/google/firestore/bundle/NamedQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NamedQuery.java"

# interfaces
.implements Lcom/google/firestore/bundle/NamedQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/NamedQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/bundle/NamedQuery;",
        "Lcom/google/firestore/bundle/NamedQuery$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/NamedQueryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 336
    invoke-static {}, Lcom/google/firestore/bundle/NamedQuery;->access$000()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/bundle/NamedQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/bundle/NamedQuery$1;

    .line 329
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBundledQuery()Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/NamedQuery;->access$600(Lcom/google/firestore/bundle/NamedQuery;)V

    .line 487
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 398
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/NamedQuery;->access$200(Lcom/google/firestore/bundle/NamedQuery;)V

    .line 399
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/NamedQuery;->access$900(Lcom/google/firestore/bundle/NamedQuery;)V

    .line 564
    return-object p0
.end method

.method public getBundledQuery()Lcom/google/firestore/bundle/BundledQuery;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getBundledQuery()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasBundledQuery()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->hasBundledQuery()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 474
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 475
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/NamedQuery;->access$500(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V

    .line 476
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 550
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/NamedQuery;->access$800(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V

    .line 552
    return-object p0
.end method

.method public setBundledQuery(Lcom/google/firestore/bundle/BundledQuery$Builder;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/bundle/BundledQuery$Builder;

    .line 462
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/NamedQuery;->access$400(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V

    .line 464
    return-object p0
.end method

.method public setBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 449
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 450
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/NamedQuery;->access$400(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V

    .line 451
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/NamedQuery;->access$100(Lcom/google/firestore/bundle/NamedQuery;Ljava/lang/String;)V

    .line 384
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 414
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/NamedQuery;->access$300(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/ByteString;)V

    .line 416
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 537
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/NamedQuery;->access$700(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V

    .line 539
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 523
    invoke-virtual {p0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/NamedQuery;->access$700(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V

    .line 525
    return-object p0
.end method
