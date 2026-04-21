.class public final Lio/grpc/util/GracefulSwitchLoadBalancer;
.super Lio/grpc/util/ForwardingLoadBalancer;
.source "GracefulSwitchLoadBalancer.java"


# static fields
.field static final BUFFER_PICKER:Lio/grpc/LoadBalancer$SubchannelPicker;


# instance fields
.field private currentBalancerFactory:Lio/grpc/LoadBalancer$Factory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private currentLb:Lio/grpc/LoadBalancer;

.field private currentLbIsReady:Z

.field private final defaultBalancer:Lio/grpc/LoadBalancer;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private pendingBalancerFactory:Lio/grpc/LoadBalancer$Factory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private pendingLb:Lio/grpc/LoadBalancer;

.field private pendingPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

.field private pendingState:Lio/grpc/ConnectivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lio/grpc/util/GracefulSwitchLoadBalancer$2;

    invoke-direct {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer$2;-><init>()V

    sput-object v0, Lio/grpc/util/GracefulSwitchLoadBalancer;->BUFFER_PICKER:Lio/grpc/LoadBalancer$SubchannelPicker;

    return-void
.end method

.method public constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 1
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 96
    invoke-direct {p0}, Lio/grpc/util/ForwardingLoadBalancer;-><init>()V

    .line 43
    new-instance v0, Lio/grpc/util/GracefulSwitchLoadBalancer$1;

    invoke-direct {v0, p0}, Lio/grpc/util/GracefulSwitchLoadBalancer$1;-><init>(Lio/grpc/util/GracefulSwitchLoadBalancer;)V

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->defaultBalancer:Lio/grpc/LoadBalancer;

    .line 88
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->defaultBalancer:Lio/grpc/LoadBalancer;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLb:Lio/grpc/LoadBalancer;

    .line 90
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->defaultBalancer:Lio/grpc/LoadBalancer;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    .line 97
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Helper;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer$Helper;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 42
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 42
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/util/GracefulSwitchLoadBalancer;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 42
    iget-boolean v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLbIsReady:Z

    return v0
.end method

.method static synthetic access$202(Lio/grpc/util/GracefulSwitchLoadBalancer;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLbIsReady:Z

    return p1
.end method

.method static synthetic access$302(Lio/grpc/util/GracefulSwitchLoadBalancer;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;
    .param p1, "x1"    # Lio/grpc/ConnectivityState;

    .line 42
    iput-object p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingState:Lio/grpc/ConnectivityState;

    return-object p1
.end method

.method static synthetic access$402(Lio/grpc/util/GracefulSwitchLoadBalancer;Lio/grpc/LoadBalancer$SubchannelPicker;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;
    .param p1, "x1"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 42
    iput-object p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/util/GracefulSwitchLoadBalancer;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 42
    invoke-direct {p0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->swap()V

    return-void
.end method

.method static synthetic access$600(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 42
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLb:Lio/grpc/LoadBalancer;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/util/GracefulSwitchLoadBalancer;)Lio/grpc/LoadBalancer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 42
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->defaultBalancer:Lio/grpc/LoadBalancer;

    return-object v0
.end method

.method private swap()V
    .locals 3

    .line 158
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    iget-object v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingState:Lio/grpc/ConnectivityState;

    iget-object v2, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    invoke-virtual {v0, v1, v2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 159
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLb:Lio/grpc/LoadBalancer;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 160
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLb:Lio/grpc/LoadBalancer;

    .line 161
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    .line 162
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->defaultBalancer:Lio/grpc/LoadBalancer;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    .line 164
    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/LoadBalancer;
    .locals 2

    .line 168
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    iget-object v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->defaultBalancer:Lio/grpc/LoadBalancer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLb:Lio/grpc/LoadBalancer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    :goto_0
    return-object v0
.end method

.method public delegateType()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 3
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubchannelState() is not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 181
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 182
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLb:Lio/grpc/LoadBalancer;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 183
    return-void
.end method

.method public switchTo(Lio/grpc/LoadBalancer$Factory;)V
    .locals 2
    .param p1, "newBalancerFactory"    # Lio/grpc/LoadBalancer$Factory;

    .line 105
    const-string v0, "newBalancerFactory"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 111
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->defaultBalancer:Lio/grpc/LoadBalancer;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    .line 113
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingState:Lio/grpc/ConnectivityState;

    .line 114
    sget-object v0, Lio/grpc/util/GracefulSwitchLoadBalancer;->BUFFER_PICKER:Lio/grpc/LoadBalancer$SubchannelPicker;

    iput-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 116
    iget-object v0, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    return-void

    .line 148
    :cond_1
    new-instance v0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;

    invoke-direct {v0, p0}, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;-><init>(Lio/grpc/util/GracefulSwitchLoadBalancer;)V

    .line 149
    .local v0, "pendingHelper":Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;
    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$Factory;->newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->lb:Lio/grpc/LoadBalancer;

    .line 150
    iget-object v1, v0, Lio/grpc/util/GracefulSwitchLoadBalancer$1PendingHelper;->lb:Lio/grpc/LoadBalancer;

    iput-object v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingLb:Lio/grpc/LoadBalancer;

    .line 151
    iput-object p1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->pendingBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    .line 152
    iget-boolean v1, p0, Lio/grpc/util/GracefulSwitchLoadBalancer;->currentLbIsReady:Z

    if-nez v1, :cond_2

    .line 153
    invoke-direct {p0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->swap()V

    .line 155
    :cond_2
    return-void
.end method
