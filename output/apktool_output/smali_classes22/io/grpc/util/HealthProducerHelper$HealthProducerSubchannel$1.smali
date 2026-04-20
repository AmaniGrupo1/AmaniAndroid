.class Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel$1;
.super Ljava/lang/Object;
.source "HealthProducerHelper.java"

# interfaces
.implements Lio/grpc/LoadBalancer$SubchannelStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;

.field final synthetic val$listener:Lio/grpc/LoadBalancer$SubchannelStateListener;


# direct methods
.method constructor <init>(Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;

    .line 107
    iput-object p1, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel$1;->this$0:Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;

    iput-object p2, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel$1;->val$listener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 1
    .param p1, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 110
    iget-object v0, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel$1;->val$listener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    invoke-interface {v0, p1}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 111
    iget-object v0, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel$1;->this$0:Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;

    invoke-static {v0}, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;->access$000(Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;)Lio/grpc/LoadBalancer$SubchannelStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 112
    return-void
.end method
