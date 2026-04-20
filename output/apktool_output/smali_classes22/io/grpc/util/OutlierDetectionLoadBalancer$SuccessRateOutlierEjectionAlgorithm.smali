.class Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;
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
    name = "SuccessRateOutlierEjectionAlgorithm"
.end annotation


# instance fields
.field private final config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

.field private final logger:Lio/grpc/ChannelLogger;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;Lio/grpc/ChannelLogger;)V
    .locals 2
    .param p1, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
    .param p2, "logger"    # Lio/grpc/ChannelLogger;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iget-object v0, p1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "success rate ejection config is null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 773
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 774
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->logger:Lio/grpc/ChannelLogger;

    .line 775
    return-void
.end method

.method static mean(Ljava/util/Collection;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 827
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    .line 828
    .local v0, "totalValue":D
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 829
    .local v3, "value":D
    add-double/2addr v0, v3

    .line 830
    .end local v3    # "value":D
    goto :goto_0

    .line 832
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    return-wide v2
.end method

.method static standardDeviation(Ljava/util/Collection;D)D
    .locals 9
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;D)D"
        }
    .end annotation

    .line 838
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    .line 839
    .local v0, "squaredDifferenceSum":D
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 840
    .local v3, "value":D
    sub-double v5, v3, p1

    .line 841
    .local v5, "difference":D
    mul-double v7, v5, v5

    add-double/2addr v0, v7

    .line 842
    .end local v3    # "value":D
    .end local v5    # "difference":D
    goto :goto_0

    .line 843
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 845
    .local v2, "variance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public ejectOutliers(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;J)V
    .locals 17
    .param p1, "trackerMap"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;
    .param p2, "ejectionTimeNanos"    # J

    .line 781
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->requestVolume:Ljava/lang/Integer;

    .line 782
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 781
    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$900(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;

    move-result-object v1

    .line 784
    .local v1, "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v4, v4, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v4, v4, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->minimumHosts:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 785
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v16, v1

    move-wide/from16 v1, p2

    goto/16 :goto_3

    .line 790
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v3, "successRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 792
    .local v5, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v5}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->successRate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v5    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 794
    :cond_1
    invoke-static {v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->mean(Ljava/util/Collection;)D

    move-result-wide v4

    .line 795
    .local v4, "mean":D
    invoke-static {v3, v4, v5}, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->standardDeviation(Ljava/util/Collection;D)D

    move-result-wide v6

    .line 797
    .local v6, "stdev":D
    iget-object v8, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v8, v8, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v8, v8, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->stdevFactor:Ljava/lang/Integer;

    .line 798
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v6

    sub-double v8, v4, v8

    .line 800
    .local v8, "requiredSuccessRate":D
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 805
    .local v11, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->ejectionPercentage()D

    move-result-wide v12

    iget-object v14, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v14, v14, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->maxEjectionPercent:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    .line 806
    return-void

    .line 810
    :cond_2
    invoke-virtual {v11}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->successRate()D

    move-result-wide v12

    cmpg-double v12, v12, v8

    if-gez v12, :cond_4

    .line 811
    iget-object v12, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->logger:Lio/grpc/ChannelLogger;

    sget-object v13, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 815
    invoke-virtual {v11}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->successRate()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    .local v16, "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v11, v14, v15, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 811
    const-string v2, "SuccessRate algorithm detected outlier: {0}. Parameters: successRate={1}, mean={2}, stdev={3}, requiredSuccessRate={4}"

    invoke-virtual {v12, v13, v2, v1}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->enforcementPercentage:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 818
    move-wide/from16 v1, p2

    invoke-virtual {v11, v1, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectSubchannels(J)V

    goto :goto_2

    .line 817
    :cond_3
    move-wide/from16 v1, p2

    goto :goto_2

    .line 810
    .end local v16    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    .restart local v1    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    :cond_4
    move-object/from16 v16, v1

    move-wide/from16 v1, p2

    .line 821
    .end local v1    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    .end local v11    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    .restart local v16    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    :goto_2
    move-object/from16 v2, p1

    move-object/from16 v1, v16

    goto :goto_1

    .line 822
    .end local v16    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    .restart local v1    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    :cond_5
    return-void

    .line 784
    .end local v3    # "successRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "mean":D
    .end local v6    # "stdev":D
    .end local v8    # "requiredSuccessRate":D
    :cond_6
    move-object/from16 v16, v1

    move-wide/from16 v1, p2

    .line 786
    .end local v1    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    .restart local v16    # "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    :goto_3
    return-void
.end method
