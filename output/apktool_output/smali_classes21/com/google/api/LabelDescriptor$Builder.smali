.class public final Lcom/google/api/LabelDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LabelDescriptor.java"

# interfaces
.implements Lcom/google/api/LabelDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/LabelDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/LabelDescriptor;",
        "Lcom/google/api/LabelDescriptor$Builder;",
        ">;",
        "Lcom/google/api/LabelDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 442
    invoke-static {}, Lcom/google/api/LabelDescriptor;->access$000()Lcom/google/api/LabelDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 443
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/LabelDescriptor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/LabelDescriptor$1;

    .line 435
    invoke-direct {p0}, Lcom/google/api/LabelDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDescription()Lcom/google/api/LabelDescriptor$Builder;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0}, Lcom/google/api/LabelDescriptor;->access$800(Lcom/google/api/LabelDescriptor;)V

    .line 632
    return-object p0
.end method

.method public clearKey()Lcom/google/api/LabelDescriptor$Builder;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 496
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0}, Lcom/google/api/LabelDescriptor;->access$200(Lcom/google/api/LabelDescriptor;)V

    .line 497
    return-object p0
.end method

.method public clearValueType()Lcom/google/api/LabelDescriptor$Builder;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0}, Lcom/google/api/LabelDescriptor;->access$600(Lcom/google/api/LabelDescriptor;)V

    .line 578
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LabelDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LabelDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LabelDescriptor;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LabelDescriptor;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lcom/google/api/LabelDescriptor$ValueType;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LabelDescriptor;->getValueType()Lcom/google/api/LabelDescriptor$ValueType;

    move-result-object v0

    return-object v0
.end method

.method public getValueTypeValue()I
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LabelDescriptor;->getValueTypeValue()I

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/LabelDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LabelDescriptor;->access$700(Lcom/google/api/LabelDescriptor;Ljava/lang/String;)V

    .line 619
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LabelDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 645
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 646
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LabelDescriptor;->access$900(Lcom/google/api/LabelDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 647
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/LabelDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 482
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LabelDescriptor;->access$100(Lcom/google/api/LabelDescriptor;Ljava/lang/String;)V

    .line 484
    return-object p0
.end method

.method public setKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LabelDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 510
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 511
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LabelDescriptor;->access$300(Lcom/google/api/LabelDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 512
    return-object p0
.end method

.method public setValueType(Lcom/google/api/LabelDescriptor$ValueType;)Lcom/google/api/LabelDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/LabelDescriptor$ValueType;

    .line 563
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 564
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LabelDescriptor;->access$500(Lcom/google/api/LabelDescriptor;Lcom/google/api/LabelDescriptor$ValueType;)V

    .line 565
    return-object p0
.end method

.method public setValueTypeValue(I)Lcom/google/api/LabelDescriptor$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 537
    invoke-virtual {p0}, Lcom/google/api/LabelDescriptor$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/api/LabelDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LabelDescriptor;->access$400(Lcom/google/api/LabelDescriptor;I)V

    .line 539
    return-object p0
.end method
