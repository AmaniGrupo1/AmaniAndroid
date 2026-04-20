.class public final Lcom/google/rpc/PreconditionFailure$Violation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/PreconditionFailure$Violation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/PreconditionFailure$Violation;",
        "Lcom/google/rpc/PreconditionFailure$Violation$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 454
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->access$000()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 455
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/PreconditionFailure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/PreconditionFailure$1;

    .line 447
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDescription()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->access$800(Lcom/google/rpc/PreconditionFailure$Violation;)V

    .line 679
    return-object p0
.end method

.method public clearSubject()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->access$500(Lcom/google/rpc/PreconditionFailure$Violation;)V

    .line 596
    return-object p0
.end method

.method public clearType()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->access$200(Lcom/google/rpc/PreconditionFailure$Violation;)V

    .line 517
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 661
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 662
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$700(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V

    .line 663
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 695
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$900(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V

    .line 697
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 579
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 580
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$400(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V

    .line 581
    return-object p0
.end method

.method public setSubjectBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 611
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$600(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V

    .line 613
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 500
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$100(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V

    .line 502
    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 532
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$300(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V

    .line 534
    return-object p0
.end method
