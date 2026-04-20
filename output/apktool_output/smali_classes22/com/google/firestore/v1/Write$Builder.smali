.class public final Lcom/google/firestore/v1/Write$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Write.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Write;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Write;",
        "Lcom/google/firestore/v1/Write$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 870
    invoke-static {}, Lcom/google/firestore/v1/Write;->access$000()Lcom/google/firestore/v1/Write;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 871
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Write$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Write$1;

    .line 863
    invoke-direct {p0}, Lcom/google/firestore/v1/Write$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUpdateTransforms(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;)",
            "Lcom/google/firestore/v1/Write$Builder;"
        }
    .end annotation

    .line 1496
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/DocumentTransform$FieldTransform;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1497
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2000(Lcom/google/firestore/v1/Write;Ljava/lang/Iterable;)V

    .line 1498
    return-object p0
.end method

.method public addUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 1478
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1479
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    .line 1480
    invoke-virtual {p2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1479
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Write;->access$1900(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1481
    return-object p0
.end method

.method public addUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1444
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1445
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Write;->access$1900(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1446
    return-object p0
.end method

.method public addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 1461
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1462
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$1800(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1463
    return-object p0
.end method

.method public addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1427
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1428
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1800(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1429
    return-object p0
.end method

.method public clearCurrentDocument()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1611
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1612
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$2500(Lcom/google/firestore/v1/Write;)V

    .line 1613
    return-object p0
.end method

.method public clearDelete()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1024
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1025
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$600(Lcom/google/firestore/v1/Write;)V

    .line 1026
    return-object p0
.end method

.method public clearOperation()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$100(Lcom/google/firestore/v1/Write;)V

    .line 882
    return-object p0
.end method

.method public clearTransform()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1205
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1206
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$1300(Lcom/google/firestore/v1/Write;)V

    .line 1207
    return-object p0
.end method

.method public clearUpdate()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$400(Lcom/google/firestore/v1/Write;)V

    .line 955
    return-object p0
.end method

.method public clearUpdateMask()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1330
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1331
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$1600(Lcom/google/firestore/v1/Write;)V

    .line 1332
    return-object p0
.end method

.method public clearUpdateTransforms()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1512
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1513
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$2100(Lcom/google/firestore/v1/Write;)V

    .line 1514
    return-object p0
.end method

.method public clearVerify()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1116
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1117
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$900(Lcom/google/firestore/v1/Write;)V

    .line 1118
    return-object p0
.end method

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    return-object v0
.end method

.method public getDelete()Ljava/lang/String;
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getDelete()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getDeleteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransform()Lcom/google/firestore/v1/DocumentTransform;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getTransform()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v0

    return-object v0
.end method

.method public getUpdate()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdate()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdateMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    .locals 1
    .param p1, "index"    # I

    .line 1378
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Write;->getUpdateTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTransformsCount()I
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdateTransformsCount()I

    move-result v0

    return v0
.end method

.method public getUpdateTransformsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    .line 1349
    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdateTransformsList()Ljava/util/List;

    move-result-object v0

    .line 1348
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerify()Ljava/lang/String;
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getVerify()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getVerifyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasCurrentDocument()Z

    move-result v0

    return v0
.end method

.method public hasDelete()Z
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasDelete()Z

    move-result v0

    return v0
.end method

.method public hasTransform()Z
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasTransform()Z

    move-result v0

    return v0
.end method

.method public hasUpdate()Z
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasUpdate()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMask()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasUpdateMask()Z

    move-result v0

    return v0
.end method

.method public hasVerify()Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasVerify()Z

    move-result v0

    return v0
.end method

.method public mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 1598
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1599
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V

    .line 1600
    return-object p0
.end method

.method public mergeTransform(Lcom/google/firestore/v1/DocumentTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform;

    .line 1193
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1194
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V

    .line 1195
    return-object p0
.end method

.method public mergeUpdate(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 941
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 942
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V

    .line 943
    return-object p0
.end method

.method public mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1310
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1311
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1500(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1312
    return-object p0
.end method

.method public removeUpdateTransforms(I)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1528
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1529
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2200(Lcom/google/firestore/v1/Write;I)V

    .line 1530
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Precondition$Builder;

    .line 1584
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1585
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$2300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V

    .line 1586
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 1569
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1570
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V

    .line 1571
    return-object p0
.end method

.method public setDelete(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1010
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$500(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V

    .line 1012
    return-object p0
.end method

.method public setDeleteBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1040
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1041
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$700(Lcom/google/firestore/v1/Write;Lcom/google/protobuf/ByteString;)V

    .line 1042
    return-object p0
.end method

.method public setTransform(Lcom/google/firestore/v1/DocumentTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$Builder;

    .line 1181
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1182
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$1100(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V

    .line 1183
    return-object p0
.end method

.method public setTransform(Lcom/google/firestore/v1/DocumentTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform;

    .line 1168
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1169
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1100(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V

    .line 1170
    return-object p0
.end method

.method public setUpdate(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 929
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V

    .line 931
    return-object p0
.end method

.method public setUpdate(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 916
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 917
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V

    .line 918
    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 1289
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1290
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$1400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1291
    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1267
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1268
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1269
    return-object p0
.end method

.method public setUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 1410
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    .line 1412
    invoke-virtual {p2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1411
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Write;->access$1700(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1413
    return-object p0
.end method

.method public setUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1393
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1394
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Write;->access$1700(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1395
    return-object p0
.end method

.method public setVerify(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1101
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1102
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$800(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V

    .line 1103
    return-object p0
.end method

.method public setVerifyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1133
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1134
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1000(Lcom/google/firestore/v1/Write;Lcom/google/protobuf/ByteString;)V

    .line 1135
    return-object p0
.end method
