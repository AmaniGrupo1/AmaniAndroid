.class public final Lcom/google/rpc/context/AttributeContext$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext;",
        "Lcom/google/rpc/context/AttributeContext$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8994
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->access$10600()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8995
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 8987
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearApi()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9538
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9539
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)V

    .line 9540
    return-object p0
.end method

.method public clearDestination()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9242
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9243
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$11500(Lcom/google/rpc/context/AttributeContext;)V

    .line 9244
    return-object p0
.end method

.method public clearOrigin()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9076
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9077
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$10900(Lcom/google/rpc/context/AttributeContext;)V

    .line 9078
    return-object p0
.end method

.method public clearRequest()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9313
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9314
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$11800(Lcom/google/rpc/context/AttributeContext;)V

    .line 9315
    return-object p0
.end method

.method public clearResource()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9467
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9468
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$12400(Lcom/google/rpc/context/AttributeContext;)V

    .line 9469
    return-object p0
.end method

.method public clearResponse()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9384
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9385
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$12100(Lcom/google/rpc/context/AttributeContext;)V

    .line 9386
    return-object p0
.end method

.method public clearSource()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9159
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9160
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$11200(Lcom/google/rpc/context/AttributeContext;)V

    .line 9161
    return-object p0
.end method

.method public getApi()Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1

    .line 9492
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 9188
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 9022
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    .line 9267
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1

    .line 9413
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1

    .line 9338
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 9105
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public hasApi()Z
    .locals 1

    .line 9481
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasApi()Z

    move-result v0

    return v0
.end method

.method public hasDestination()Z
    .locals 1

    .line 9175
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasDestination()Z

    move-result v0

    return v0
.end method

.method public hasOrigin()Z
    .locals 1

    .line 9009
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasOrigin()Z

    move-result v0

    return v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 9256
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasResource()Z
    .locals 1

    .line 9400
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasResource()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 9327
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .line 9092
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasSource()Z

    move-result v0

    return v0
.end method

.method public mergeApi(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Api;

    .line 9527
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9528
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12600(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 9529
    return-object p0
.end method

.method public mergeDestination(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9229
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9230
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11400(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9231
    return-object p0
.end method

.method public mergeOrigin(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9063
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9064
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$10800(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9065
    return-object p0
.end method

.method public mergeRequest(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Request;

    .line 9302
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9303
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11700(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 9304
    return-object p0
.end method

.method public mergeResource(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Resource;

    .line 9454
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9455
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12300(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 9456
    return-object p0
.end method

.method public mergeResponse(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Response;

    .line 9373
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9374
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12000(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 9375
    return-object p0
.end method

.method public mergeSource(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9146
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9147
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11100(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9148
    return-object p0
.end method

.method public setApi(Lcom/google/rpc/context/AttributeContext$Api$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Api$Builder;

    .line 9515
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9516
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12500(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 9517
    return-object p0
.end method

.method public setApi(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Api;

    .line 9502
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9503
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12500(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 9504
    return-object p0
.end method

.method public setDestination(Lcom/google/rpc/context/AttributeContext$Peer$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    .line 9215
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9216
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11300(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9217
    return-object p0
.end method

.method public setDestination(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9200
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9201
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11300(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9202
    return-object p0
.end method

.method public setOrigin(Lcom/google/rpc/context/AttributeContext$Peer$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    .line 9049
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9050
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$10700(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9051
    return-object p0
.end method

.method public setOrigin(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9034
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9035
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$10700(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9036
    return-object p0
.end method

.method public setRequest(Lcom/google/rpc/context/AttributeContext$Request$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Request$Builder;

    .line 9290
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9291
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11600(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 9292
    return-object p0
.end method

.method public setRequest(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Request;

    .line 9277
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9278
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11600(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 9279
    return-object p0
.end method

.method public setResource(Lcom/google/rpc/context/AttributeContext$Resource$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Resource$Builder;

    .line 9440
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9441
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12200(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 9442
    return-object p0
.end method

.method public setResource(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Resource;

    .line 9425
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9426
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12200(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 9427
    return-object p0
.end method

.method public setResponse(Lcom/google/rpc/context/AttributeContext$Response$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Response$Builder;

    .line 9361
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9362
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11900(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 9363
    return-object p0
.end method

.method public setResponse(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Response;

    .line 9348
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9349
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11900(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 9350
    return-object p0
.end method

.method public setSource(Lcom/google/rpc/context/AttributeContext$Peer$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    .line 9132
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9133
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11000(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9134
    return-object p0
.end method

.method public setSource(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9117
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9118
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11000(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9119
    return-object p0
.end method
