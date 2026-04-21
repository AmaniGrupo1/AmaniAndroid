.class public final Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;",
        "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31511
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$46800()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 31512
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 31504
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAnnotation(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;"
        }
    .end annotation

    .line 31646
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31647
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$47200(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;Ljava/lang/Iterable;)V

    .line 31648
    return-object p0
.end method

.method public addAnnotation(ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    .line 31631
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31632
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 31633
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 31632
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$47100(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)V

    .line 31634
    return-object p0
.end method

.method public addAnnotation(ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 31603
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31604
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$47100(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)V

    .line 31605
    return-object p0
.end method

.method public addAnnotation(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    .line 31617
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31618
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$47000(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)V

    .line 31619
    return-object p0
.end method

.method public addAnnotation(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 31589
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31590
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$47000(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)V

    .line 31591
    return-object p0
.end method

.method public clearAnnotation()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 31659
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31660
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$47300(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;)V

    .line 31661
    return-object p0
.end method

.method public getAnnotation(I)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p1, "index"    # I

    .line 31549
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->getAnnotation(I)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationCount()I
    .locals 1

    .line 31538
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->getAnnotationCount()I

    move-result v0

    return v0
.end method

.method public getAnnotationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .line 31525
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 31526
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->getAnnotationList()Ljava/util/List;

    move-result-object v0

    .line 31525
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAnnotation(I)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 31672
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31673
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$47400(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;I)V

    .line 31674
    return-object p0
.end method

.method public setAnnotation(ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    .line 31575
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31576
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 31577
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 31576
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$46900(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)V

    .line 31578
    return-object p0
.end method

.method public setAnnotation(ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 31561
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->copyOnWrite()V

    .line 31562
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$46900(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;ILcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)V

    .line 31563
    return-object p0
.end method
