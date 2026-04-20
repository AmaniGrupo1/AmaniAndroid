.class public final Lcom/google/firestore/v1/CommitRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommitRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/CommitRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/CommitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/CommitRequest;",
        "Lcom/google/firestore/v1/CommitRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CommitRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 392
    invoke-static {}, Lcom/google/firestore/v1/CommitRequest;->access$000()Lcom/google/firestore/v1/CommitRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/CommitRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/CommitRequest$1;

    .line 385
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllWrites(Ljava/lang/Iterable;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Write;",
            ">;)",
            "Lcom/google/firestore/v1/CommitRequest$Builder;"
        }
    .end annotation

    .line 611
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Write;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitRequest;->access$700(Lcom/google/firestore/v1/CommitRequest;Ljava/lang/Iterable;)V

    .line 613
    return-object p0
.end method

.method public addWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 595
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 596
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    .line 597
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 596
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/CommitRequest;->access$600(Lcom/google/firestore/v1/CommitRequest;ILcom/google/firestore/v1/Write;)V

    .line 598
    return-object p0
.end method

.method public addWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 565
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitRequest;->access$600(Lcom/google/firestore/v1/CommitRequest;ILcom/google/firestore/v1/Write;)V

    .line 567
    return-object p0
.end method

.method public addWrites(Lcom/google/firestore/v1/Write$Builder;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 580
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 581
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/CommitRequest;->access$500(Lcom/google/firestore/v1/CommitRequest;Lcom/google/firestore/v1/Write;)V

    .line 582
    return-object p0
.end method

.method public addWrites(Lcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Write;

    .line 550
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitRequest;->access$500(Lcom/google/firestore/v1/CommitRequest;Lcom/google/firestore/v1/Write;)V

    .line 552
    return-object p0
.end method

.method public clearDatabase()Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 450
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CommitRequest;->access$200(Lcom/google/firestore/v1/CommitRequest;)V

    .line 451
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 680
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CommitRequest;->access$1100(Lcom/google/firestore/v1/CommitRequest;)V

    .line 681
    return-object p0
.end method

.method public clearWrites()Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CommitRequest;->access$800(Lcom/google/firestore/v1/CommitRequest;)V

    .line 627
    return-object p0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWrites(I)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "index"    # I

    .line 507
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/CommitRequest;->getWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v0

    return-object v0
.end method

.method public getWritesCount()I
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitRequest;->getWritesCount()I

    move-result v0

    return v0
.end method

.method public getWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    .line 482
    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitRequest;->getWritesList()Ljava/util/List;

    move-result-object v0

    .line 481
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeWrites(I)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 639
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitRequest;->access$900(Lcom/google/firestore/v1/CommitRequest;I)V

    .line 641
    return-object p0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 436
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitRequest;->access$100(Lcom/google/firestore/v1/CommitRequest;Ljava/lang/String;)V

    .line 437
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 465
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 466
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitRequest;->access$300(Lcom/google/firestore/v1/CommitRequest;Lcom/google/protobuf/ByteString;)V

    .line 467
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 666
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 667
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitRequest;->access$1000(Lcom/google/firestore/v1/CommitRequest;Lcom/google/protobuf/ByteString;)V

    .line 668
    return-object p0
.end method

.method public setWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 535
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 536
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    .line 537
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 536
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/CommitRequest;->access$400(Lcom/google/firestore/v1/CommitRequest;ILcom/google/firestore/v1/Write;)V

    .line 538
    return-object p0
.end method

.method public setWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/CommitRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 520
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitRequest$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/firestore/v1/CommitRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitRequest;->access$400(Lcom/google/firestore/v1/CommitRequest;ILcom/google/firestore/v1/Write;)V

    .line 522
    return-object p0
.end method
