.class public final Lcom/google/api/AuthProvider$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuthProvider.java"

# interfaces
.implements Lcom/google/api/AuthProviderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/AuthProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/AuthProvider;",
        "Lcom/google/api/AuthProvider$Builder;",
        ">;",
        "Lcom/google/api/AuthProviderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 937
    invoke-static {}, Lcom/google/api/AuthProvider;->access$000()Lcom/google/api/AuthProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 938
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/AuthProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/AuthProvider$1;

    .line 930
    invoke-direct {p0}, Lcom/google/api/AuthProvider$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllJwtLocations(Ljava/lang/Iterable;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/JwtLocation;",
            ">;)",
            "Lcom/google/api/AuthProvider$Builder;"
        }
    .end annotation

    .line 1727
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/JwtLocation;>;"
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1728
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1900(Lcom/google/api/AuthProvider;Ljava/lang/Iterable;)V

    .line 1729
    return-object p0
.end method

.method public addJwtLocations(ILcom/google/api/JwtLocation$Builder;)Lcom/google/api/AuthProvider$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/JwtLocation$Builder;

    .line 1697
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1698
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    .line 1699
    invoke-virtual {p2}, Lcom/google/api/JwtLocation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/JwtLocation;

    .line 1698
    invoke-static {v0, p1, v1}, Lcom/google/api/AuthProvider;->access$1800(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    .line 1700
    return-object p0
.end method

.method public addJwtLocations(ILcom/google/api/JwtLocation;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/JwtLocation;

    .line 1639
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1640
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthProvider;->access$1800(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    .line 1641
    return-object p0
.end method

.method public addJwtLocations(Lcom/google/api/JwtLocation$Builder;)Lcom/google/api/AuthProvider$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/JwtLocation$Builder;

    .line 1668
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1669
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {p1}, Lcom/google/api/JwtLocation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/JwtLocation;

    invoke-static {v0, v1}, Lcom/google/api/AuthProvider;->access$1700(Lcom/google/api/AuthProvider;Lcom/google/api/JwtLocation;)V

    .line 1670
    return-object p0
.end method

.method public addJwtLocations(Lcom/google/api/JwtLocation;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/JwtLocation;

    .line 1610
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1611
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1700(Lcom/google/api/AuthProvider;Lcom/google/api/JwtLocation;)V

    .line 1612
    return-object p0
.end method

.method public clearAudiences()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1340
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1341
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$1100(Lcom/google/api/AuthProvider;)V

    .line 1342
    return-object p0
.end method

.method public clearAuthorizationUrl()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1425
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1426
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$1400(Lcom/google/api/AuthProvider;)V

    .line 1427
    return-object p0
.end method

.method public clearId()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1002
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1003
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$200(Lcom/google/api/AuthProvider;)V

    .line 1004
    return-object p0
.end method

.method public clearIssuer()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1095
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$500(Lcom/google/api/AuthProvider;)V

    .line 1096
    return-object p0
.end method

.method public clearJwksUri()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1212
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1213
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$800(Lcom/google/api/AuthProvider;)V

    .line 1214
    return-object p0
.end method

.method public clearJwtLocations()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1755
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1756
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$2000(Lcom/google/api/AuthProvider;)V

    .line 1757
    return-object p0
.end method

.method public getAudiences()Ljava/lang/String;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAudiences()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudiencesBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAudiencesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationUrl()Ljava/lang/String;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAuthorizationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAuthorizationUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIssuer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIssuerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJwksUri()Ljava/lang/String;
    .locals 1

    .line 1140
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwksUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJwksUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwksUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJwtLocations(I)Lcom/google/api/JwtLocation;
    .locals 1
    .param p1, "index"    # I

    .line 1525
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0, p1}, Lcom/google/api/AuthProvider;->getJwtLocations(I)Lcom/google/api/JwtLocation;

    move-result-object v0

    return-object v0
.end method

.method public getJwtLocationsCount()I
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwtLocationsCount()I

    move-result v0

    return v0
.end method

.method public getJwtLocationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation

    .line 1471
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    .line 1472
    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwtLocationsList()Ljava/util/List;

    move-result-object v0

    .line 1471
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeJwtLocations(I)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1783
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1784
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$2100(Lcom/google/api/AuthProvider;I)V

    .line 1785
    return-object p0
.end method

.method public setAudiences(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1315
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1316
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1000(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    .line 1317
    return-object p0
.end method

.method public setAudiencesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1367
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1368
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1200(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    .line 1369
    return-object p0
.end method

.method public setAuthorizationUrl(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1411
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1412
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1300(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    .line 1413
    return-object p0
.end method

.method public setAuthorizationUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1441
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1442
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1500(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    .line 1443
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 986
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$100(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    .line 988
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1020
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1021
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$300(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    .line 1022
    return-object p0
.end method

.method public setIssuer(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1076
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1077
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$400(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    .line 1078
    return-object p0
.end method

.method public setIssuerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1114
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1115
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$600(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    .line 1116
    return-object p0
.end method

.method public setJwksUri(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1188
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1189
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$700(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    .line 1190
    return-object p0
.end method

.method public setJwksUriBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1238
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1239
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$900(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    .line 1240
    return-object p0
.end method

.method public setJwtLocations(ILcom/google/api/JwtLocation$Builder;)Lcom/google/api/AuthProvider$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/JwtLocation$Builder;

    .line 1581
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1582
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    .line 1583
    invoke-virtual {p2}, Lcom/google/api/JwtLocation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/JwtLocation;

    .line 1582
    invoke-static {v0, p1, v1}, Lcom/google/api/AuthProvider;->access$1600(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    .line 1584
    return-object p0
.end method

.method public setJwtLocations(ILcom/google/api/JwtLocation;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/JwtLocation;

    .line 1552
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1553
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthProvider;->access$1600(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    .line 1554
    return-object p0
.end method
