.class Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"

# interfaces
.implements Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FailurePercentageOutlierEjectionAlgorithm"
.end annotation


# instance fields
.field private final config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

.field private final logger:Lio/grpc/ChannelLogger;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;Lio/grpc/ChannelLogger;)V
    .locals 0
    .param p1, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
    .param p2, "logger"    # Lio/grpc/ChannelLogger;

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 858
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->logger:Lio/grpc/ChannelLogger;

    .line 859
    return-void
.end method


# virtual methods
.method public ejectOutliers(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;J)V
    .locals 9
    .param p1, "trackerMap"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;
    .param p2, "ejectionTimeNanos"    # J

    .line 865
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;->requestVolume:Ljava/lang/Integer;

    .line 866
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 865
    invoke-static {p1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$900(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;

    move-result-object v0

    .line 868
    .local v0, "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;->minimumHosts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 869
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 874
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 879
    .local v2, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->ejectionPercentage()D

    move-result-wide v3

    iget-object v5, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v5, v5, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->maxEjectionPercent:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 880
    return-void

    .line 883
    :cond_1
    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveVolume()J

    move-result-wide v3

    iget-object v5, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v5, v5, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    iget-object v5, v5, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;->requestVolume:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 884
    goto :goto_0

    .line 888
    :cond_2
    iget-object v3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v3, v3, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    iget-object v3, v3, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;->threshold:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    .line 889
    .local v3, "maxFailureRate":D
    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->failureRate()D

    move-result-wide v5

    cmpl-double v5, v5, v3

    if-lez v5, :cond_3

    .line 890
    iget-object v5, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->logger:Lio/grpc/ChannelLogger;

    sget-object v6, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 892
    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->failureRate()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 890
    const-string v8, "FailurePercentage algorithm detected outlier: {0}, failureRate={1}"

    invoke-virtual {v5, v6, v8, v7}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget-object v6, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v6, v6, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    iget-object v6, v6, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;->enforcementPercentage:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 895
    invoke-virtual {v2, p2, p3}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectSubchannels(J)V

    .line 898
    .end local v2    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    .end local v3    # "maxFailureRate":D
    :cond_3
    goto :goto_0

    .line 899
    :cond_4
    return-void

    .line 870
    :cond_5
    :goto_1
    return-void
.end method
