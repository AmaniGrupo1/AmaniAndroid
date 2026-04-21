.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
.super Lio/grpc/util/ForwardingSubchannel;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutlierDetectionSubchannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;
    }
.end annotation


# instance fields
.field private addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

.field private final delegate:Lio/grpc/LoadBalancer$Subchannel;

.field private ejected:Z

.field private lastSubchannelState:Lio/grpc/ConnectivityStateInfo;

.field private final logger:Lio/grpc/ChannelLogger;

.field private subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

.field final synthetic this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$CreateSubchannelArgs;Lio/grpc/LoadBalancer$Helper;)V
    .locals 4
    .param p1, "this$0"    # Lio/grpc/util/OutlierDetectionLoadBalancer;
    .param p2, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;
    .param p3, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 251
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {p0}, Lio/grpc/util/ForwardingSubchannel;-><init>()V

    .line 252
    sget-object v0, Lio/grpc/LoadBalancer;->HEALTH_CONSUMER_LISTENER_ARG_KEY:Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;

    .line 253
    invoke-virtual {p2, v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getOption(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 254
    .local v0, "healthConsumerListener":Lio/grpc/LoadBalancer$SubchannelStateListener;
    if-eqz v0, :cond_0

    .line 255
    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 256
    new-instance v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;

    invoke-direct {v1, p0, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 258
    .local v1, "upstreamListener":Lio/grpc/LoadBalancer$SubchannelStateListener;
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->toBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/LoadBalancer;->HEALTH_CONSUMER_LISTENER_ARG_KEY:Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;

    .line 259
    invoke-virtual {v2, v3, v1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->addOption(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;Ljava/lang/Object;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v2

    .line 258
    invoke-virtual {p3, v2}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    .line 260
    .end local v1    # "upstreamListener":Lio/grpc/LoadBalancer$SubchannelStateListener;
    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p3, p2}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    .line 263
    :goto_0
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->logger:Lio/grpc/ChannelLogger;

    .line 264
    return-void
.end method

.method static synthetic access$502(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;Lio/grpc/ConnectivityStateInfo;)Lio/grpc/ConnectivityStateInfo;
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    .param p1, "x1"    # Lio/grpc/ConnectivityStateInfo;

    .line 239
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->lastSubchannelState:Lio/grpc/ConnectivityStateInfo;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    .line 239
    iget-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    return v0
.end method


# virtual methods
.method clearAddressTracker()V
    .locals 1

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 348
    return-void
.end method

.method protected delegate()Lio/grpc/LoadBalancer$Subchannel;
    .locals 1

    .line 371
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method

.method eject()V
    .locals 4

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    .line 352
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 353
    invoke-static {v1}, Lio/grpc/ConnectivityStateInfo;->forTransientFailure(Lio/grpc/Status;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v1

    .line 352
    invoke-interface {v0, v1}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 354
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->logger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Subchannel ejected: {0}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 3

    .line 286
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 290
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v0

    invoke-static {}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$400()Lio/grpc/Attributes$Key;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v0, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v0

    .line 287
    return-object v0

    .line 290
    :cond_0
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method isEjected()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    return v0
.end method

.method setAddressTracker(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V
    .locals 0
    .param p1, "addressTracker"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 343
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 344
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 278
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v0, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->removeSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 281
    :cond_0
    invoke-super {p0}, Lio/grpc/util/ForwardingSubchannel;->shutdown()V

    .line 282
    return-void
.end method

.method public start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 1
    .param p1, "listener"    # Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 268
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    if-eqz v0, :cond_0

    .line 269
    invoke-super {p0, p1}, Lio/grpc/util/ForwardingSubchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    goto :goto_0

    .line 271
    :cond_0
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 272
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;

    invoke-direct {v0, p0, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    invoke-super {p0, v0}, Lio/grpc/util/ForwardingSubchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 274
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutlierDetectionSubchannel{addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    .line 397
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->getAllAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    return-object v0
.end method

.method uneject()V
    .locals 4

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    .line 359
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->lastSubchannelState:Lio/grpc/ConnectivityStateInfo;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->lastSubchannelState:Lio/grpc/ConnectivityStateInfo;

    invoke-interface {v0, v1}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 361
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->logger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Subchannel unejected: {0}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :cond_0
    return-void
.end method

.method public updateAddresses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 301
    .local p1, "addressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v0, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v0, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->removeSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 308
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 309
    .local v0, "address":Ljava/net/SocketAddress;
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 312
    .end local v0    # "address":Ljava/net/SocketAddress;
    :cond_1
    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 319
    .local v0, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v0, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->removeSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 320
    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->resetCallCounters()V

    .line 321
    .end local v0    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 326
    .local v0, "address":Ljava/net/SocketAddress;
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 327
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 328
    .local v1, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 335
    .end local v0    # "address":Ljava/net/SocketAddress;
    .end local v1    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    :cond_4
    :goto_0
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Subchannel;->updateAddresses(Ljava/util/List;)V

    .line 336
    return-void
.end method
