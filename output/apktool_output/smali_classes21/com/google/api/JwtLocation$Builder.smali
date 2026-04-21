.class public final Lcom/google/api/JwtLocation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "JwtLocation.java"

# interfaces
.implements Lcom/google/api/JwtLocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/JwtLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/JwtLocation;",
        "Lcom/google/api/JwtLocation$Builder;",
        ">;",
        "Lcom/google/api/JwtLocationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 440
    invoke-static {}, Lcom/google/api/JwtLocation;->access$000()Lcom/google/api/JwtLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/JwtLocation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/JwtLocation$1;

    .line 433
    invoke-direct {p0}, Lcom/google/api/JwtLocation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeader()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 518
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$300(Lcom/google/api/JwtLocation;)V

    .line 519
    return-object p0
.end method

.method public clearIn()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 451
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$100(Lcom/google/api/JwtLocation;)V

    .line 452
    return-object p0
.end method

.method public clearQuery()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$600(Lcom/google/api/JwtLocation;)V

    .line 600
    return-object p0
.end method

.method public clearValuePrefix()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 695
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$900(Lcom/google/api/JwtLocation;)V

    .line 697
    return-object p0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getHeaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInCase()Lcom/google/api/JwtLocation$InCase;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getInCase()Lcom/google/api/JwtLocation$InCase;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValuePrefix()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getValuePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getValuePrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->hasHeader()Z

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->hasQuery()Z

    move-result v0

    return v0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/api/JwtLocation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$200(Lcom/google/api/JwtLocation;Ljava/lang/String;)V

    .line 506
    return-object p0
.end method

.method public setHeaderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/JwtLocation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 532
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$400(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V

    .line 534
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/api/JwtLocation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 585
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$500(Lcom/google/api/JwtLocation;Ljava/lang/String;)V

    .line 587
    return-object p0
.end method

.method public setQueryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/JwtLocation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 613
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$700(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V

    .line 615
    return-object p0
.end method

.method public setValuePrefix(Ljava/lang/String;)Lcom/google/api/JwtLocation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 675
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 676
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$800(Lcom/google/api/JwtLocation;Ljava/lang/String;)V

    .line 677
    return-object p0
.end method

.method public setValuePrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/JwtLocation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 717
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$1000(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V

    .line 719
    return-object p0
.end method
