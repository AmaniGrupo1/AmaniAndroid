.class public final Lcom/google/api/Property$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Property.java"

# interfaces
.implements Lcom/google/api/PropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Property;",
        "Lcom/google/api/Property$Builder;",
        ">;",
        "Lcom/google/api/PropertyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 494
    invoke-static {}, Lcom/google/api/Property;->access$000()Lcom/google/api/Property;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 495
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Property$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Property$1;

    .line 487
    invoke-direct {p0}, Lcom/google/api/Property$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDescription()Lcom/google/api/Property$Builder;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0}, Lcom/google/api/Property;->access$800(Lcom/google/api/Property;)V

    .line 684
    return-object p0
.end method

.method public clearName()Lcom/google/api/Property$Builder;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 548
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0}, Lcom/google/api/Property;->access$200(Lcom/google/api/Property;)V

    .line 549
    return-object p0
.end method

.method public clearType()Lcom/google/api/Property$Builder;
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0}, Lcom/google/api/Property;->access$600(Lcom/google/api/Property;)V

    .line 630
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/api/Property$PropertyType;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getType()Lcom/google/api/Property$PropertyType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getTypeValue()I

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/Property$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 669
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$700(Lcom/google/api/Property;Ljava/lang/String;)V

    .line 671
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Property$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 697
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$900(Lcom/google/api/Property;Lcom/google/protobuf/ByteString;)V

    .line 699
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Property$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 534
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$100(Lcom/google/api/Property;Ljava/lang/String;)V

    .line 536
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Property$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 562
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$300(Lcom/google/api/Property;Lcom/google/protobuf/ByteString;)V

    .line 564
    return-object p0
.end method

.method public setType(Lcom/google/api/Property$PropertyType;)Lcom/google/api/Property$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Property$PropertyType;

    .line 615
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$500(Lcom/google/api/Property;Lcom/google/api/Property$PropertyType;)V

    .line 617
    return-object p0
.end method

.method public setTypeValue(I)Lcom/google/api/Property$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 589
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 590
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$400(Lcom/google/api/Property;I)V

    .line 591
    return-object p0
.end method
