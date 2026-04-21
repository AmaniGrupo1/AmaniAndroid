.class public final Lcom/google/logging/type/HttpRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HttpRequest.java"

# interfaces
.implements Lcom/google/logging/type/HttpRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/logging/type/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/logging/type/HttpRequest;",
        "Lcom/google/logging/type/HttpRequest$Builder;",
        ">;",
        "Lcom/google/logging/type/HttpRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 997
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->access$000()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 998
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/logging/type/HttpRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/logging/type/HttpRequest$1;

    .line 990
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCacheFillBytes()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1828
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1829
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$3500(Lcom/google/logging/type/HttpRequest;)V

    .line 1830
    return-object p0
.end method

.method public clearCacheHit()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1739
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1740
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$3100(Lcom/google/logging/type/HttpRequest;)V

    .line 1741
    return-object p0
.end method

.method public clearCacheLookup()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1696
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1697
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$2900(Lcom/google/logging/type/HttpRequest;)V

    .line 1698
    return-object p0
.end method

.method public clearCacheValidatedWithOriginServer()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1785
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1786
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$3300(Lcom/google/logging/type/HttpRequest;)V

    .line 1787
    return-object p0
.end method

.method public clearLatency()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1656
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1657
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$2700(Lcom/google/logging/type/HttpRequest;)V

    .line 1658
    return-object p0
.end method

.method public clearProtocol()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1882
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1883
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$3700(Lcom/google/logging/type/HttpRequest;)V

    .line 1884
    return-object p0
.end method

.method public clearReferer()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1562
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1563
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$2300(Lcom/google/logging/type/HttpRequest;)V

    .line 1564
    return-object p0
.end method

.method public clearRemoteIp()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$1700(Lcom/google/logging/type/HttpRequest;)V

    .line 1412
    return-object p0
.end method

.method public clearRequestMethod()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1050
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1051
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$200(Lcom/google/logging/type/HttpRequest;)V

    .line 1052
    return-object p0
.end method

.method public clearRequestSize()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1187
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1188
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$800(Lcom/google/logging/type/HttpRequest;)V

    .line 1189
    return-object p0
.end method

.method public clearRequestUrl()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1127
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1128
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$500(Lcom/google/logging/type/HttpRequest;)V

    .line 1129
    return-object p0
.end method

.method public clearResponseSize()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1273
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1274
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$1200(Lcom/google/logging/type/HttpRequest;)V

    .line 1275
    return-object p0
.end method

.method public clearServerIp()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1484
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1485
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$2000(Lcom/google/logging/type/HttpRequest;)V

    .line 1486
    return-object p0
.end method

.method public clearStatus()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1230
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1231
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$1000(Lcom/google/logging/type/HttpRequest;)V

    .line 1232
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 1335
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1336
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0}, Lcom/google/logging/type/HttpRequest;->access$1400(Lcom/google/logging/type/HttpRequest;)V

    .line 1337
    return-object p0
.end method

.method public getCacheFillBytes()J
    .locals 2

    .line 1801
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getCacheFillBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheHit()Z
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getCacheHit()Z

    move-result v0

    return v0
.end method

.method public getCacheLookup()Z
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getCacheLookup()Z

    move-result v0

    return v0
.end method

.method public getCacheValidatedWithOriginServer()Z
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getCacheValidatedWithOriginServer()Z

    move-result v0

    return v0
.end method

.method public getLatency()Lcom/google/protobuf/Duration;
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getReferer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefererBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRefererBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRemoteIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRemoteIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestSize()J
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseSize()J
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getResponseSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getServerIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getServerIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getStatus()I

    move-result v0

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLatency()Z
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->hasLatency()Z

    move-result v0

    return v0
.end method

.method public mergeLatency(Lcom/google/protobuf/Duration;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 1644
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1645
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$2600(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)V

    .line 1646
    return-object p0
.end method

.method public setCacheFillBytes(J)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 1814
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1815
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1, p2}, Lcom/google/logging/type/HttpRequest;->access$3400(Lcom/google/logging/type/HttpRequest;J)V

    .line 1816
    return-object p0
.end method

.method public setCacheHit(Z)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 1725
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1726
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$3000(Lcom/google/logging/type/HttpRequest;Z)V

    .line 1727
    return-object p0
.end method

.method public setCacheLookup(Z)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 1683
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1684
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$2800(Lcom/google/logging/type/HttpRequest;Z)V

    .line 1685
    return-object p0
.end method

.method public setCacheValidatedWithOriginServer(Z)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 1770
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1771
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$3200(Lcom/google/logging/type/HttpRequest;Z)V

    .line 1772
    return-object p0
.end method

.method public setLatency(Lcom/google/protobuf/Duration$Builder;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Duration$Builder;

    .line 1631
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1632
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$2500(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)V

    .line 1633
    return-object p0
.end method

.method public setLatency(Lcom/google/protobuf/Duration;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 1617
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1618
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$2500(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)V

    .line 1619
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1869
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1870
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$3600(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V

    .line 1871
    return-object p0
.end method

.method public setProtocolBytes(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1897
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1898
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$3800(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V

    .line 1899
    return-object p0
.end method

.method public setReferer(Ljava/lang/String;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1547
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1548
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$2200(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V

    .line 1549
    return-object p0
.end method

.method public setRefererBytes(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1579
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1580
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$2400(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V

    .line 1581
    return-object p0
.end method

.method public setRemoteIp(Ljava/lang/String;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1396
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1397
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$1600(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V

    .line 1398
    return-object p0
.end method

.method public setRemoteIpBytes(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1426
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1427
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$1800(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V

    .line 1428
    return-object p0
.end method

.method public setRequestMethod(Ljava/lang/String;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1037
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1038
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$100(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V

    .line 1039
    return-object p0
.end method

.method public setRequestMethodBytes(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1065
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1066
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$300(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V

    .line 1067
    return-object p0
.end method

.method public setRequestSize(J)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 1173
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1174
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1, p2}, Lcom/google/logging/type/HttpRequest;->access$700(Lcom/google/logging/type/HttpRequest;J)V

    .line 1175
    return-object p0
.end method

.method public setRequestUrl(Ljava/lang/String;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1112
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1113
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$400(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V

    .line 1114
    return-object p0
.end method

.method public setRequestUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1144
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$600(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V

    .line 1146
    return-object p0
.end method

.method public setResponseSize(J)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 1259
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1260
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1, p2}, Lcom/google/logging/type/HttpRequest;->access$1100(Lcom/google/logging/type/HttpRequest;J)V

    .line 1261
    return-object p0
.end method

.method public setServerIp(Ljava/lang/String;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1470
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1471
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$1900(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V

    .line 1472
    return-object p0
.end method

.method public setServerIpBytes(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1500
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1501
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$2100(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V

    .line 1502
    return-object p0
.end method

.method public setStatus(I)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1216
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$900(Lcom/google/logging/type/HttpRequest;I)V

    .line 1218
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1320
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1321
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$1300(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V

    .line 1322
    return-object p0
.end method

.method public setUserAgentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1352
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$Builder;->copyOnWrite()V

    .line 1353
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p1}, Lcom/google/logging/type/HttpRequest;->access$1500(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V

    .line 1354
    return-object p0
.end method
