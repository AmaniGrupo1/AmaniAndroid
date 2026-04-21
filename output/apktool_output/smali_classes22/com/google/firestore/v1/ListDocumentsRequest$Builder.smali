.class public final Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListDocumentsRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListDocumentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListDocumentsRequest;",
        "Lcom/google/firestore/v1/ListDocumentsRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 873
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$000()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 874
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListDocumentsRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest$1;

    .line 866
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCollectionId()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1057
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1058
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$600(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1059
    return-object p0
.end method

.method public clearConsistencySelector()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 883
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 884
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$100(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 885
    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1400
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1401
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1800(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1402
    return-object p0
.end method

.method public clearOrderBy()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1291
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1400(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1292
    return-object p0
.end method

.method public clearPageSize()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1123
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1124
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$900(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1125
    return-object p0
.end method

.method public clearPageToken()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1193
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1194
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1100(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1195
    return-object p0
.end method

.method public clearParent()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 962
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 963
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$300(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 964
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1548
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1549
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2300(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1550
    return-object p0
.end method

.method public clearShowMissing()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1612
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1613
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2500(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1614
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1452
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1453
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2000(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1454
    return-object p0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getCollectionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderByBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getOrderByBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageSize()I

    move-result v0

    return v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getShowMissing()Z
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getShowMissing()Z

    move-result v0

    return v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1427
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1386
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1387
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1388
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1532
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1533
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1534
    return-object p0
.end method

.method public setCollectionId(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1039
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$500(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 1041
    return-object p0
.end method

.method public setCollectionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1077
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1078
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1079
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 1371
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1372
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1600(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1373
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1355
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1356
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1600(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1357
    return-object p0
.end method

.method public setOrderBy(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1271
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1272
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1300(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 1273
    return-object p0
.end method

.method public setOrderByBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1311
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1312
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1500(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1313
    return-object p0
.end method

.method public setPageSize(I)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1108
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1109
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$800(Lcom/google/firestore/v1/ListDocumentsRequest;I)V

    .line 1110
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1176
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1177
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1000(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 1178
    return-object p0
.end method

.method public setPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1212
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1213
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1214
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 943
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$200(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 945
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 983
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 984
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$400(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 985
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1516
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1517
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2100(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1518
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1499
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1500
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2100(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1501
    return-object p0
.end method

.method public setShowMissing(Z)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 1591
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1592
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2400(Lcom/google/firestore/v1/ListDocumentsRequest;Z)V

    .line 1593
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1439
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1440
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1900(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1441
    return-object p0
.end method
