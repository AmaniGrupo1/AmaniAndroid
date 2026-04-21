.class Lio/grpc/internal/InternalSubchannel$TransportListener;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Lio/grpc/internal/ManagedClientTransport$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportListener"
.end annotation


# instance fields
.field shutdownInitiated:Z

.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field final transport:Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)V
    .locals 0
    .param p2, "transport"    # Lio/grpc/internal/ConnectionClientTransport;

    .line 543
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->shutdownInitiated:Z

    .line 544
    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    .line 545
    return-void
.end method


# virtual methods
.method public filterTransport(Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 4
    .param p1, "attributes"    # Lio/grpc/Attributes;

    .line 549
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$2200(Lio/grpc/internal/InternalSubchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ClientTransportFilter;

    .line 550
    .local v1, "filter":Lio/grpc/ClientTransportFilter;
    invoke-virtual {v1, p1}, Lio/grpc/ClientTransportFilter;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v2

    const-string v3, "Filter %s returned null"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lio/grpc/Attributes;

    .line 552
    .end local v1    # "filter":Lio/grpc/ClientTransportFilter;
    goto :goto_0

    .line 553
    :cond_0
    return-object p1
.end method

.method public transportInUse(Z)V
    .locals 2
    .param p1, "inUse"    # Z

    .line 579
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    invoke-static {v0, v1, p1}, Lio/grpc/internal/InternalSubchannel;->access$2400(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;Z)V

    .line 580
    return-void
.end method

.method public transportReady()V
    .locals 3

    .line 558
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1500(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/InternalSubchannel$TransportListener$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/InternalSubchannel$TransportListener$1;-><init>(Lio/grpc/internal/InternalSubchannel$TransportListener;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method

.method public transportShutdown(Lio/grpc/Status;)V
    .locals 4
    .param p1, "s"    # Lio/grpc/Status;

    .line 584
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    .line 585
    invoke-interface {v2}, Lio/grpc/internal/ConnectionClientTransport;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3, p1}, Lio/grpc/internal/InternalSubchannel;->access$2500(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 584
    const-string v3, "{0} SHUTDOWN with {1}"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->shutdownInitiated:Z

    .line 587
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1500(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/InternalSubchannel$TransportListener$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/InternalSubchannel$TransportListener$2;-><init>(Lio/grpc/internal/InternalSubchannel$TransportListener;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 614
    return-void
.end method

.method public transportTerminated()V
    .locals 4

    .line 618
    iget-boolean v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->shutdownInitiated:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    invoke-interface {v2}, Lio/grpc/internal/ConnectionClientTransport;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{0} Terminated"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$2700(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/InternalChannelz;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    invoke-virtual {v0, v1}, Lio/grpc/InternalChannelz;->removeClientSocket(Lio/grpc/InternalInstrumented;)V

    .line 623
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/grpc/internal/InternalSubchannel;->access$2400(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;Z)V

    .line 624
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$2200(Lio/grpc/internal/InternalSubchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ClientTransportFilter;

    .line 625
    .local v1, "filter":Lio/grpc/ClientTransportFilter;
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    invoke-interface {v2}, Lio/grpc/internal/ConnectionClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/ClientTransportFilter;->transportTerminated(Lio/grpc/Attributes;)V

    .line 626
    .end local v1    # "filter":Lio/grpc/ClientTransportFilter;
    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1500(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/InternalSubchannel$TransportListener$3;

    invoke-direct {v1, p0}, Lio/grpc/internal/InternalSubchannel$TransportListener$3;-><init>(Lio/grpc/internal/InternalSubchannel$TransportListener;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method
