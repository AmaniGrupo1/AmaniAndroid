.class final Lio/grpc/internal/ServiceConfigState;
.super Ljava/lang/Object;
.source "ServiceConfigState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final lookUpServiceConfig:Z

.field private updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method constructor <init>(Lio/grpc/internal/ManagedChannelServiceConfig;Z)V
    .locals 1
    .param p1, "defaultServiceConfig"    # Lio/grpc/internal/ManagedChannelServiceConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "lookUpServiceConfig"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    .line 51
    :goto_0
    iput-boolean p2, p0, Lio/grpc/internal/ServiceConfigState;->lookUpServiceConfig:Z

    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method expectUpdates()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigState;->lookUpServiceConfig:Z

    return v0
.end method

.method getCurrent()Lio/grpc/NameResolver$ConfigOrError;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/grpc/internal/ServiceConfigState;->shouldWaitOnServiceConfig()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "still waiting on service config"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    return-object v0
.end method

.method shouldWaitOnServiceConfig()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigState;->updated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/internal/ServiceConfigState;->expectUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method update(Lio/grpc/NameResolver$ConfigOrError;)V
    .locals 2
    .param p1, "coe"    # Lio/grpc/NameResolver$ConfigOrError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-virtual {p0}, Lio/grpc/internal/ServiceConfigState;->expectUpdates()Z

    move-result v0

    const-string v1, "unexpected service config update"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 88
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigState;->updated:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 89
    .local v0, "firstUpdate":Z
    iput-boolean v1, p0, Lio/grpc/internal/ServiceConfigState;->updated:Z

    .line 90
    if-eqz v0, :cond_4

    .line 91
    if-nez p1, :cond_0

    .line 92
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 97
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 101
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 100
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 104
    :cond_4
    if-nez p1, :cond_6

    .line 105
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 108
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 110
    :cond_6
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 111
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 112
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 117
    :cond_7
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 118
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    .line 121
    :cond_8
    :goto_0
    return-void

    .line 117
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
