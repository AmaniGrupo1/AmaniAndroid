.class public final Lcom/google/longrunning/ListOperationsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListOperationsResponse.java"

# interfaces
.implements Lcom/google/longrunning/ListOperationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/ListOperationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/ListOperationsResponse;",
        "Lcom/google/longrunning/ListOperationsResponse$Builder;",
        ">;",
        "Lcom/google/longrunning/ListOperationsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 325
    invoke-static {}, Lcom/google/longrunning/ListOperationsResponse;->access$000()Lcom/google/longrunning/ListOperationsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/ListOperationsResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/longrunning/ListOperationsResponse$1;

    .line 318
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOperations(Ljava/lang/Iterable;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/longrunning/Operation;",
            ">;)",
            "Lcom/google/longrunning/ListOperationsResponse$Builder;"
        }
    .end annotation

    .line 450
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/longrunning/Operation;>;"
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 451
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$400(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/Iterable;)V

    .line 452
    return-object p0
.end method

.method public addOperations(ILcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/longrunning/Operation$Builder;

    .line 436
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 437
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 438
    invoke-virtual {p2}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/longrunning/Operation;

    .line 437
    invoke-static {v0, p1, v1}, Lcom/google/longrunning/ListOperationsResponse;->access$300(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    .line 439
    return-object p0
.end method

.method public addOperations(ILcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/longrunning/Operation;

    .line 410
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$300(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    .line 412
    return-object p0
.end method

.method public addOperations(Lcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/longrunning/Operation$Builder;

    .line 423
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {p1}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/longrunning/Operation;

    invoke-static {v0, v1}, Lcom/google/longrunning/ListOperationsResponse;->access$200(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/longrunning/Operation;)V

    .line 425
    return-object p0
.end method

.method public addOperations(Lcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/longrunning/Operation;

    .line 397
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 398
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$200(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/longrunning/Operation;)V

    .line 399
    return-object p0
.end method

.method public clearNextPageToken()Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsResponse;->access$800(Lcom/google/longrunning/ListOperationsResponse;)V

    .line 530
    return-object p0
.end method

.method public clearOperations()Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsResponse;->access$500(Lcom/google/longrunning/ListOperationsResponse;)V

    .line 464
    return-object p0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getNextPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperations(I)Lcom/google/longrunning/Operation;
    .locals 1
    .param p1, "index"    # I

    .line 360
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->getOperations(I)Lcom/google/longrunning/Operation;

    move-result-object v0

    return-object v0
.end method

.method public getOperationsCount()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getOperationsCount()I

    move-result v0

    return v0
.end method

.method public getOperationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 339
    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getOperationsList()Ljava/util/List;

    move-result-object v0

    .line 338
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOperations(I)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 474
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 475
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$600(Lcom/google/longrunning/ListOperationsResponse;I)V

    .line 476
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 515
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$700(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/String;)V

    .line 517
    return-object p0
.end method

.method public setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 543
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 544
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$900(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/protobuf/ByteString;)V

    .line 545
    return-object p0
.end method

.method public setOperations(ILcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/longrunning/Operation$Builder;

    .line 384
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 385
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 386
    invoke-virtual {p2}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/longrunning/Operation;

    .line 385
    invoke-static {v0, p1, v1}, Lcom/google/longrunning/ListOperationsResponse;->access$100(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    .line 387
    return-object p0
.end method

.method public setOperations(ILcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/longrunning/Operation;

    .line 371
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 372
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$100(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    .line 373
    return-object p0
.end method
