.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16316
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25100()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 16317
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 16309
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 17949
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17950
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Iterable;)V

    .line 17951
    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 17934
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17935
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17936
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17935
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30400(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    .line 17937
    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17906
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17907
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30400(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    .line 17908
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 17920
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17921
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    .line 17922
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17892
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17893
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    .line 17894
    return-object p0
.end method

.method public clearCcEnableArenas()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17181
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17182
    return-object p0
.end method

.method public clearCcGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16952
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16953
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16954
    return-object p0
.end method

.method public clearCsharpNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17333
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17334
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17335
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17125
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17126
    return-object p0
.end method

.method public clearGoPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16845
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16846
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16847
    return-object p0
.end method

.method public clearJavaGenerateEqualsAndHash()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16651
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16652
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16653
    return-object p0
.end method

.method public clearJavaGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16988
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16989
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16990
    return-object p0
.end method

.method public clearJavaMultipleFiles()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16591
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16592
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25900(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16593
    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16500
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16501
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16502
    return-object p0
.end method

.method public clearJavaPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16396
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16397
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16398
    return-object p0
.end method

.method public clearJavaStringCheckUtf8()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16723
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16724
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26300(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16725
    return-object p0
.end method

.method public clearObjcClassPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17251
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17252
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17253
    return-object p0
.end method

.method public clearOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16759
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16760
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 16761
    return-object p0
.end method

.method public clearPhpClassPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17518
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17519
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17520
    return-object p0
.end method

.method public clearPhpGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17060
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17061
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17062
    return-object p0
.end method

.method public clearPhpMetadataNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17703
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17704
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17705
    return-object p0
.end method

.method public clearPhpNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17610
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17611
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17612
    return-object p0
.end method

.method public clearPyGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17024
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17025
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17026
    return-object p0
.end method

.method public clearRubyPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17796
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17797
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17798
    return-object p0
.end method

.method public clearSwiftPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17429
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17430
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17431
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17962
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17963
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    .line 17964
    return-object p0
.end method

.method public getCcEnableArenas()Z
    .locals 1

    .line 17153
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v0

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .line 16909
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v0

    return v0
.end method

.method public getCsharpNamespace()Ljava/lang/String;
    .locals 1

    .line 17294
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCsharpNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17307
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespaceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .line 17093
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v0

    return v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 1

    .line 16794
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16811
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16622
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v0

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .line 16971
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v0

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .line 16556
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 1

    .line 16449
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16466
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    .line 16348
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16364
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .line 16688
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public getObjcClassPrefix()Ljava/lang/String;
    .locals 1

    .line 17209
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjcClassPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17223
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 16742
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    return-object v0
.end method

.method public getPhpClassPrefix()Ljava/lang/String;
    .locals 1

    .line 17476
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhpClassPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17490
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhpGenericServices()Z
    .locals 1

    .line 17043
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v0

    return v0
.end method

.method public getPhpMetadataNamespace()Ljava/lang/String;
    .locals 1

    .line 17658
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhpMetadataNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17673
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespaceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhpNamespace()Ljava/lang/String;
    .locals 1

    .line 17565
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhpNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17580
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpNamespaceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .line 17007
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v0

    return v0
.end method

.method public getRubyPackage()Ljava/lang/String;
    .locals 1

    .line 17751
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getRubyPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRubyPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17766
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getRubyPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSwiftPrefix()Ljava/lang/String;
    .locals 1

    .line 17381
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwiftPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17397
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p1, "index"    # I

    .line 17852
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 17841
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 17828
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17829
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 17828
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCcEnableArenas()Z
    .locals 1

    .line 17140
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v0

    return v0
.end method

.method public hasCcGenericServices()Z
    .locals 1

    .line 16888
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasCsharpNamespace()Z
    .locals 1

    .line 17282
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v0

    return v0
.end method

.method public hasDeprecated()Z
    .locals 1

    .line 17078
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v0

    return v0
.end method

.method public hasGoPackage()Z
    .locals 1

    .line 16778
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v0

    return v0
.end method

.method public hasJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16608
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v0

    return v0
.end method

.method public hasJavaGenericServices()Z
    .locals 1

    .line 16963
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 1

    .line 16539
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 1

    .line 16433
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    return v0
.end method

.method public hasJavaPackage()Z
    .locals 1

    .line 16333
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    return v0
.end method

.method public hasJavaStringCheckUtf8()Z
    .locals 1

    .line 16671
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public hasObjcClassPrefix()Z
    .locals 1

    .line 17196
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v0

    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 1

    .line 16734
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    return v0
.end method

.method public hasPhpClassPrefix()Z
    .locals 1

    .line 17463
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v0

    return v0
.end method

.method public hasPhpGenericServices()Z
    .locals 1

    .line 17035
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasPhpMetadataNamespace()Z
    .locals 1

    .line 17644
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v0

    return v0
.end method

.method public hasPhpNamespace()Z
    .locals 1

    .line 17551
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v0

    return v0
.end method

.method public hasPyGenericServices()Z
    .locals 1

    .line 16999
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasRubyPackage()Z
    .locals 1

    .line 17737
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v0

    return v0
.end method

.method public hasSwiftPrefix()Z
    .locals 1

    .line 17366
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v0

    return v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 17975
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17976
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30700(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)V

    .line 17977
    return-object p0
.end method

.method public setCcEnableArenas(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 17166
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17167
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 17168
    return-object p0
.end method

.method public setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 16930
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16931
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 16932
    return-object p0
.end method

.method public setCsharpNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 17320
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17321
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28400(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 17322
    return-object p0
.end method

.method public setCsharpNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 17348
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17349
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28600(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 17350
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 17108
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17109
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27700(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 17110
    return-object p0
.end method

.method public setGoPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 16828
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16829
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 16830
    return-object p0
.end method

.method public setGoPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 16864
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16865
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26800(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 16866
    return-object p0
.end method

.method public setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16636
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16637
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26000(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 16638
    return-object p0
.end method

.method public setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 16979
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16980
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27100(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 16981
    return-object p0
.end method

.method public setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 16573
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16574
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25800(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 16575
    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 16483
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16484
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 16485
    return-object p0
.end method

.method public setJavaOuterClassnameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 16519
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16520
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25700(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 16521
    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 16380
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16381
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25200(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 16382
    return-object p0
.end method

.method public setJavaPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 16414
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16415
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25400(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 16416
    return-object p0
.end method

.method public setJavaStringCheckUtf8(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 16705
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16706
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26200(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 16707
    return-object p0
.end method

.method public setObjcClassPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 17237
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17238
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28100(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 17239
    return-object p0
.end method

.method public setObjcClassPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 17267
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17268
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 17269
    return-object p0
.end method

.method public setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 16750
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16751
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26400(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)V

    .line 16752
    return-object p0
.end method

.method public setPhpClassPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 17504
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17505
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29000(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 17506
    return-object p0
.end method

.method public setPhpClassPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 17534
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17535
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29200(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 17536
    return-object p0
.end method

.method public setPhpGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 17051
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17052
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 17053
    return-object p0
.end method

.method public setPhpMetadataNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 17688
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17689
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29600(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 17690
    return-object p0
.end method

.method public setPhpMetadataNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 17720
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17721
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29800(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 17722
    return-object p0
.end method

.method public setPhpNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 17595
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17596
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 17597
    return-object p0
.end method

.method public setPhpNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 17627
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17628
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 17629
    return-object p0
.end method

.method public setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 17015
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17016
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    .line 17017
    return-object p0
.end method

.method public setRubyPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 17781
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17782
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 17783
    return-object p0
.end method

.method public setRubyPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 17813
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17814
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30100(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 17815
    return-object p0
.end method

.method public setSwiftPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 17413
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17414
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28700(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    .line 17415
    return-object p0
.end method

.method public setSwiftPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 17447
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17448
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    .line 17449
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 17878
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17879
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17880
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17879
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30200(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    .line 17881
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17864
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17865
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30200(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    .line 17866
    return-object p0
.end method
