.class public final Lio/grpc/internal/PickFirstLoadBalancerProvider;
.super Lio/grpc/LoadBalancerProvider;
.source "PickFirstLoadBalancerProvider.java"


# static fields
.field private static final SHUFFLE_ADDRESS_LIST_KEY:Ljava/lang/String; = "shuffleAddressList"

.field static enableNewPickFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    nop

    .line 38
    const-string v0, "GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/grpc/internal/PickFirstLoadBalancerProvider;->enableNewPickFirst:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/grpc/LoadBalancerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "pick_first"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 48
    const/4 v0, 0x5

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;
    .locals 1
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 58
    sget-boolean v0, Lio/grpc/internal/PickFirstLoadBalancerProvider;->enableNewPickFirst:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-direct {v0, p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancer;

    invoke-direct {v0, p1}, Lio/grpc/internal/PickFirstLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    return-object v0
.end method

.method public parseLoadBalancingPolicyConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .line 69
    .local p1, "rawLoadBalancingPolicyConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :try_start_0
    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;

    const-string v1, "shuffleAddressList"

    .line 70
    invoke-static {p1, v1}, Lio/grpc/internal/JsonUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;-><init>(Ljava/lang/Boolean;)V

    .line 69
    invoke-static {v0}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 74
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parsing configuration for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLoadBalancerProvider;->getPolicyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1
.end method
