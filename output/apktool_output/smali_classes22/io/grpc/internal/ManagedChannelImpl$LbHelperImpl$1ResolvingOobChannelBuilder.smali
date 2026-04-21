.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;
.super Lio/grpc/ForwardingChannelBuilder2;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createResolvingOobChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResolvingOobChannelBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingChannelBuilder2<",
        "Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field final synthetic val$channelCreds:Lio/grpc/ChannelCredentials;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/ChannelCredentials;Ljava/lang/String;)V
    .locals 6
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1622
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$channelCreds:Lio/grpc/ChannelCredentials;

    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;-><init>()V

    .line 1625
    iget-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$channelCreds:Lio/grpc/ChannelCredentials;

    instance-of p2, p2, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;

    if-eqz p2, :cond_0

    .line 1626
    iget-object p2, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {p2}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object p2

    .line 1627
    .local p2, "transportFactory":Lio/grpc/internal/ClientTransportFactory;
    const/4 p3, 0x0

    move-object v3, p3

    .local p3, "callCredentials":Lio/grpc/CallCredentials;
    goto :goto_0

    .line 1629
    .end local p2    # "transportFactory":Lio/grpc/internal/ClientTransportFactory;
    .end local p3    # "callCredentials":Lio/grpc/CallCredentials;
    :cond_0
    iget-object p2, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1630
    invoke-static {p2}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object p2

    iget-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$channelCreds:Lio/grpc/ChannelCredentials;

    invoke-interface {p2, p3}, Lio/grpc/internal/ClientTransportFactory;->swapChannelCredentials(Lio/grpc/ChannelCredentials;)Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;

    move-result-object p2

    .line 1631
    .local p2, "swapResult":Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;
    if-nez p2, :cond_1

    .line 1632
    iget-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$target:Ljava/lang/String;

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$channelCreds:Lio/grpc/ChannelCredentials;

    invoke-static {p3, v0}, Lio/grpc/Grpc;->newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->delegate:Lio/grpc/ManagedChannelBuilder;

    .line 1633
    return-void

    .line 1635
    :cond_1
    iget-object p3, p2, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 1636
    .local p3, "transportFactory":Lio/grpc/internal/ClientTransportFactory;
    iget-object v0, p2, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;->callCredentials:Lio/grpc/CallCredentials;

    move-object p2, p3

    move-object v3, v0

    .line 1639
    .end local p3    # "transportFactory":Lio/grpc/internal/ClientTransportFactory;
    .local v3, "callCredentials":Lio/grpc/CallCredentials;
    .local p2, "transportFactory":Lio/grpc/internal/ClientTransportFactory;
    :goto_0
    new-instance v4, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder$1;

    invoke-direct {v4, p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder$1;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/ClientTransportFactory;)V

    .line 1646
    .local v4, "transportFactoryBuilder":Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    new-instance v0, Lio/grpc/internal/ManagedChannelImplBuilder;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$target:Ljava/lang/String;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->val$channelCreds:Lio/grpc/ChannelCredentials;

    new-instance v5, Lio/grpc/internal/ManagedChannelImplBuilder$FixedPortProvider;

    iget-object p3, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1651
    invoke-static {p3}, Lio/grpc/internal/ManagedChannelImpl;->access$6500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Args;

    move-result-object p3

    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getDefaultPort()I

    move-result p3

    invoke-direct {v5, p3}, Lio/grpc/internal/ManagedChannelImplBuilder$FixedPortProvider;-><init>(I)V

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    iget-object p3, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1652
    invoke-static {p3}, Lio/grpc/internal/ManagedChannelImpl;->access$6400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolverRegistry;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry(Lio/grpc/NameResolverRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->delegate:Lio/grpc/ManagedChannelBuilder;

    .line 1653
    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 1657
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->delegate:Lio/grpc/ManagedChannelBuilder;

    return-object v0
.end method
