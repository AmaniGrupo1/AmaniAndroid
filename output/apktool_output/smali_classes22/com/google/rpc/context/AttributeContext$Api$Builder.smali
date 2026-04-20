.class public final Lcom/google/rpc/context/AttributeContext$Api$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Api;",
        "Lcom/google/rpc/context/AttributeContext$Api$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ApiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1661
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Api;->access$1400()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1662
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 1654
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOperation()Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1

    .line 1801
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1802
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Api;->access$1900(Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 1803
    return-object p0
.end method

.method public clearProtocol()Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1

    .line 1876
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1877
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Api;->access$2200(Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 1878
    return-object p0
.end method

.method public clearService()Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1

    .line 1722
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1723
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Api;->access$1600(Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 1724
    return-object p0
.end method

.method public clearVersion()Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1

    .line 1950
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1951
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Api;->access$2500(Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 1952
    return-object p0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getOperationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1834
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1848
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getServiceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1922
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setOperation(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1786
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1787
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$1800(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V

    .line 1788
    return-object p0
.end method

.method public setOperationBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1818
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1819
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$2000(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V

    .line 1820
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1862
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1863
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$2100(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V

    .line 1864
    return-object p0
.end method

.method public setProtocolBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1892
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1893
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$2300(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V

    .line 1894
    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1707
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1708
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$1500(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V

    .line 1709
    return-object p0
.end method

.method public setServiceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1739
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1740
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$1700(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V

    .line 1741
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1936
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1937
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$2400(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V

    .line 1938
    return-object p0
.end method

.method public setVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1966
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->access$2600(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V

    .line 1968
    return-object p0
.end method
