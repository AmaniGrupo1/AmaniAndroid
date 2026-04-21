.class public Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field baseEjectionTimeNanos:Ljava/lang/Long;

.field childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

.field failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

.field intervalNanos:Ljava/lang/Long;

.field maxEjectionPercent:Ljava/lang/Integer;

.field maxEjectionTimeNanos:Ljava/lang/Long;

.field successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    const-wide v0, 0x2540be400L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->intervalNanos:Ljava/lang/Long;

    .line 958
    const-wide v0, 0x6fc23ac00L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->baseEjectionTimeNanos:Ljava/lang/Long;

    .line 959
    const-wide v0, 0x45d964b800L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->maxEjectionTimeNanos:Ljava/lang/Long;

    .line 960
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->maxEjectionPercent:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
    .locals 10

    .line 1016
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1017
    new-instance v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->intervalNanos:Ljava/lang/Long;

    iget-object v3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->baseEjectionTimeNanos:Ljava/lang/Long;

    iget-object v4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->maxEjectionTimeNanos:Ljava/lang/Long;

    iget-object v5, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->maxEjectionPercent:Ljava/lang/Integer;

    iget-object v6, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v7, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    iget-object v8, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;Lio/grpc/internal/ServiceConfigUtil$PolicySelection;Lio/grpc/util/OutlierDetectionLoadBalancer$1;)V

    return-object v1
.end method

.method public setBaseEjectionTimeNanos(Ljava/lang/Long;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    .locals 1
    .param p1, "baseEjectionTimeNanos"    # Ljava/lang/Long;

    .line 974
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 975
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->baseEjectionTimeNanos:Ljava/lang/Long;

    .line 976
    return-object p0
.end method

.method public setChildPolicy(Lio/grpc/internal/ServiceConfigUtil$PolicySelection;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    .locals 1
    .param p1, "childPolicy"    # Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    .line 1009
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1010
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    .line 1011
    return-object p0
.end method

.method public setFailurePercentageEjection(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    .locals 0
    .param p1, "failurePercentageEjection"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    .line 1003
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    .line 1004
    return-object p0
.end method

.method public setIntervalNanos(Ljava/lang/Long;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    .locals 1
    .param p1, "intervalNanos"    # Ljava/lang/Long;

    .line 967
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 968
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->intervalNanos:Ljava/lang/Long;

    .line 969
    return-object p0
.end method

.method public setMaxEjectionPercent(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    .locals 1
    .param p1, "maxEjectionPercent"    # Ljava/lang/Integer;

    .line 988
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 989
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->maxEjectionPercent:Ljava/lang/Integer;

    .line 990
    return-object p0
.end method

.method public setMaxEjectionTimeNanos(Ljava/lang/Long;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    .locals 1
    .param p1, "maxEjectionTimeNanos"    # Ljava/lang/Long;

    .line 981
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 982
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->maxEjectionTimeNanos:Ljava/lang/Long;

    .line 983
    return-object p0
.end method

.method public setSuccessRateEjection(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    .locals 0
    .param p1, "successRateEjection"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    .line 996
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    .line 997
    return-object p0
.end method
