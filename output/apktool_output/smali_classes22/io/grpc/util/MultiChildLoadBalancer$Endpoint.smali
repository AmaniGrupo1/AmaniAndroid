.class public Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
.super Ljava/lang/Object;
.source "MultiChildLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/MultiChildLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Endpoint"
.end annotation


# instance fields
.field final addrs:[Ljava/lang/String;

.field final hashCode:I


# direct methods
.method public constructor <init>(Lio/grpc/EquivalentAddressGroup;)V
    .locals 6
    .param p1, "eag"    # Lio/grpc/EquivalentAddressGroup;

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    const-string v0, "eag"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p1}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "i":I
    invoke-virtual {p1}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    .line 563
    .local v2, "address":Ljava/net/SocketAddress;
    iget-object v3, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 564
    .end local v2    # "address":Ljava/net/SocketAddress;
    move v0, v4

    goto :goto_0

    .line 565
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 567
    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    .line 568
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 577
    if-ne p0, p1, :cond_0

    .line 578
    const/4 v0, 0x1

    return v0

    .line 580
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 581
    return v0

    .line 584
    :cond_1
    instance-of v1, p1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    if-nez v1, :cond_2

    .line 585
    return v0

    .line 587
    :cond_2
    move-object v1, p1

    check-cast v1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    .line 588
    .local v1, "o":Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
    iget v2, v1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    iget v3, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    if-ne v2, v3, :cond_4

    iget-object v2, v1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 592
    :cond_3
    iget-object v0, v1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 589
    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 572
    iget v0, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 597
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
