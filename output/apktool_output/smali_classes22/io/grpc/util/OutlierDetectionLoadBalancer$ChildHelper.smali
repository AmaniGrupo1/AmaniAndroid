.class Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;
.super Lio/grpc/util/ForwardingLoadBalancerHelper;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildHelper"
.end annotation


# instance fields
.field private delegate:Lio/grpc/LoadBalancer$Helper;

.field final synthetic this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$Helper;)V
    .locals 1
    .param p1, "this$0"    # Lio/grpc/util/OutlierDetectionLoadBalancer;
    .param p2, "delegate"    # Lio/grpc/LoadBalancer$Helper;

    .line 201
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;-><init>()V

    .line 202
    new-instance v0, Lio/grpc/util/HealthProducerHelper;

    invoke-direct {v0, p2}, Lio/grpc/util/HealthProducerHelper;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    .line 203
    return-void
.end method


# virtual methods
.method public createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 5
    .param p1, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 214
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$CreateSubchannelArgs;Lio/grpc/LoadBalancer$Helper;)V

    .line 218
    .local v0, "subchannel":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "addressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-static {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    .line 220
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v4}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v4}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 222
    .local v2, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v2, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 225
    invoke-static {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->access$300(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->eject()V

    .line 230
    .end local v2    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    :cond_0
    return-object v0
.end method

.method protected delegate()Lio/grpc/LoadBalancer$Helper;
    .locals 1

    .line 207
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 3
    .param p1, "newState"    # Lio/grpc/ConnectivityState;
    .param p2, "newPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 235
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    new-instance v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {v1, v2, p2}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    invoke-virtual {v0, p1, v1}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 236
    return-void
.end method
