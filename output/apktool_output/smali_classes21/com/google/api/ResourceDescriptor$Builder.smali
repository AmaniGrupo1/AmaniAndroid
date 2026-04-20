.class public final Lcom/google/api/ResourceDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/ResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ResourceDescriptor;",
        "Lcom/google/api/ResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/ResourceDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1236
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->access$000()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1237
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ResourceDescriptor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/ResourceDescriptor$1;

    .line 1229
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPattern(Ljava/lang/Iterable;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ResourceDescriptor$Builder;"
        }
    .end annotation

    .line 1575
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1576
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$600(Lcom/google/api/ResourceDescriptor;Ljava/lang/Iterable;)V

    .line 1577
    return-object p0
.end method

.method public addPattern(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1542
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1543
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    .line 1544
    return-object p0
.end method

.method public addPatternBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1639
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1640
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$800(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 1641
    return-object p0
.end method

.method public clearHistory()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1849
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1850
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1400(Lcom/google/api/ResourceDescriptor;)V

    .line 1851
    return-object p0
.end method

.method public clearNameField()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1697
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1698
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1000(Lcom/google/api/ResourceDescriptor;)V

    .line 1699
    return-object p0
.end method

.method public clearPattern()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1606
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1607
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$700(Lcom/google/api/ResourceDescriptor;)V

    .line 1608
    return-object p0
.end method

.method public clearPlural()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1915
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1916
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1600(Lcom/google/api/ResourceDescriptor;)V

    .line 1917
    return-object p0
.end method

.method public clearSingular()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1995
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1996
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1900(Lcom/google/api/ResourceDescriptor;)V

    .line 1997
    return-object p0
.end method

.method public clearType()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1325
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1326
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$200(Lcom/google/api/ResourceDescriptor;)V

    .line 1327
    return-object p0
.end method

.method public getHistory()Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getHistory()Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryValue()I
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getHistoryValue()I

    move-result v0

    return v0
.end method

.method public getNameField()Ljava/lang/String;
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1669
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getNameFieldBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPattern(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1445
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/ResourceDescriptor;->getPattern(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatternBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 1477
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/ResourceDescriptor;->getPatternBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPatternCount()I
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPatternCount()I

    move-result v0

    return v0
.end method

.method public getPatternList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    .line 1384
    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPatternList()Ljava/util/List;

    move-result-object v0

    .line 1383
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlural()Ljava/lang/String;
    .locals 1

    .line 1867
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluralBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPluralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSingular()Ljava/lang/String;
    .locals 1

    .line 1950
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSingularBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getSingularBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setHistory(Lcom/google/api/ResourceDescriptor$History;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/ResourceDescriptor$History;

    .line 1822
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1823
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1300(Lcom/google/api/ResourceDescriptor;Lcom/google/api/ResourceDescriptor$History;)V

    .line 1824
    return-object p0
.end method

.method public setHistoryValue(I)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1768
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1769
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1200(Lcom/google/api/ResourceDescriptor;I)V

    .line 1770
    return-object p0
.end method

.method public setNameField(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1683
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1684
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$900(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    .line 1685
    return-object p0
.end method

.method public setNameFieldBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1713
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1714
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1100(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 1715
    return-object p0
.end method

.method public setPattern(ILjava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1509
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1510
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/ResourceDescriptor;->access$400(Lcom/google/api/ResourceDescriptor;ILjava/lang/String;)V

    .line 1511
    return-object p0
.end method

.method public setPlural(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1899
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1900
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    .line 1901
    return-object p0
.end method

.method public setPluralBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1933
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1934
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1700(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 1935
    return-object p0
.end method

.method public setSingular(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1980
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1981
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1800(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    .line 1982
    return-object p0
.end method

.method public setSingularBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2012
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 2013
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$2000(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 2014
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1303
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1304
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$100(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    .line 1305
    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1349
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1350
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$300(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 1351
    return-object p0
.end method
