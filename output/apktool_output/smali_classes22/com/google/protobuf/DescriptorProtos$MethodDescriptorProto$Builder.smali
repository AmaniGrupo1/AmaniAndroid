.class public final Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;",
        "Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13441
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$23300()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13442
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 13434
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClientStreaming()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 13740
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13741
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24700(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    .line 13742
    return-object p0
.end method

.method public clearInputType()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 13568
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13569
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$23800(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    .line 13570
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 13486
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13487
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$23500(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    .line 13488
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 13688
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13689
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24500(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    .line 13690
    return-object p0
.end method

.method public clearOutputType()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 13630
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13631
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24100(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    .line 13632
    return-object p0
.end method

.method public clearServerStreaming()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 13792
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13793
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24900(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    .line 13794
    return-object p0
.end method

.method public getClientStreaming()Z
    .locals 1

    .line 13715
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v0

    return v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 1

    .line 13526
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13540
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 13459
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13468
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 13658
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Ljava/lang/String;
    .locals 1

    .line 13603
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13612
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .line 13767
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v0

    return v0
.end method

.method public hasClientStreaming()Z
    .locals 1

    .line 13703
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v0

    return v0
.end method

.method public hasInputType()Z
    .locals 1

    .line 13513
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 13451
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 13651
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasOutputType()Z
    .locals 1

    .line 13595
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    return v0
.end method

.method public hasServerStreaming()Z
    .locals 1

    .line 13755
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v0

    return v0
.end method

.method public mergeOptions(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 13681
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13682
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24400(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)V

    .line 13683
    return-object p0
.end method

.method public setClientStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 13727
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13728
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24600(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)V

    .line 13729
    return-object p0
.end method

.method public setInputType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 13554
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13555
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$23700(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)V

    .line 13556
    return-object p0
.end method

.method public setInputTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 13584
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13585
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$23900(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/ByteString;)V

    .line 13586
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 13477
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13478
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$23400(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)V

    .line 13479
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 13497
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13498
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$23600(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/ByteString;)V

    .line 13499
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 13673
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13674
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24300(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)V

    .line 13675
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 13664
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13665
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24300(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)V

    .line 13666
    return-object p0
.end method

.method public setOutputType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 13621
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13622
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24000(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)V

    .line 13623
    return-object p0
.end method

.method public setOutputTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 13641
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13642
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24200(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/ByteString;)V

    .line 13643
    return-object p0
.end method

.method public setServerStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 13779
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->copyOnWrite()V

    .line 13780
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$24800(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)V

    .line 13781
    return-object p0
.end method
