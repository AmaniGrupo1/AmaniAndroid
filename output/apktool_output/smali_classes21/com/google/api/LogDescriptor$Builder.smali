.class public final Lcom/google/api/LogDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LogDescriptor.java"

# interfaces
.implements Lcom/google/api/LogDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/LogDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/LogDescriptor;",
        "Lcom/google/api/LogDescriptor$Builder;",
        ">;",
        "Lcom/google/api/LogDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 522
    invoke-static {}, Lcom/google/api/LogDescriptor;->access$000()Lcom/google/api/LogDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/LogDescriptor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/LogDescriptor$1;

    .line 515
    invoke-direct {p0}, Lcom/google/api/LogDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLabels(Ljava/lang/Iterable;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)",
            "Lcom/google/api/LogDescriptor$Builder;"
        }
    .end annotation

    .line 751
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/LabelDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 752
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$700(Lcom/google/api/LogDescriptor;Ljava/lang/Iterable;)V

    .line 753
    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/LogDescriptor$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LabelDescriptor$Builder;

    .line 735
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    .line 737
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LabelDescriptor;

    .line 736
    invoke-static {v0, p1, v1}, Lcom/google/api/LogDescriptor;->access$600(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 738
    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LabelDescriptor;

    .line 705
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 706
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/LogDescriptor;->access$600(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 707
    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/LogDescriptor$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/LabelDescriptor$Builder;

    .line 720
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 721
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {p1}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/LogDescriptor;->access$500(Lcom/google/api/LogDescriptor;Lcom/google/api/LabelDescriptor;)V

    .line 722
    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/LabelDescriptor;

    .line 690
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 691
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$500(Lcom/google/api/LogDescriptor;Lcom/google/api/LabelDescriptor;)V

    .line 692
    return-object p0
.end method

.method public clearDescription()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 837
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 838
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$1100(Lcom/google/api/LogDescriptor;)V

    .line 839
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 911
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$1400(Lcom/google/api/LogDescriptor;)V

    .line 913
    return-object p0
.end method

.method public clearLabels()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 766
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$800(Lcom/google/api/LogDescriptor;)V

    .line 767
    return-object p0
.end method

.method public clearName()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$200(Lcom/google/api/LogDescriptor;)V

    .line 589
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 647
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/LogDescriptor;->getLabels(I)Lcom/google/api/LabelDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getLabelsCount()I

    move-result v0

    return v0
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    .line 622
    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v0

    .line 621
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeLabels(I)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 779
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 780
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$900(Lcom/google/api/LogDescriptor;I)V

    .line 781
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 823
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 824
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1000(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V

    .line 825
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 853
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1200(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 855
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 897
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 898
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1300(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V

    .line 899
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 927
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1500(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 929
    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/LogDescriptor$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LabelDescriptor$Builder;

    .line 675
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 676
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    .line 677
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LabelDescriptor;

    .line 676
    invoke-static {v0, p1, v1}, Lcom/google/api/LogDescriptor;->access$400(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 678
    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LabelDescriptor;

    .line 660
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/LogDescriptor;->access$400(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 662
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 572
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$100(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V

    .line 573
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 605
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$300(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 607
    return-object p0
.end method
