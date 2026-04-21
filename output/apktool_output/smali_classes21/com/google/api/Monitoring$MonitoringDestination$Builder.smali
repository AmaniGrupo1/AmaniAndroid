.class public final Lcom/google/api/Monitoring$MonitoringDestination$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Monitoring$MonitoringDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Monitoring$MonitoringDestination;",
        "Lcom/google/api/Monitoring$MonitoringDestination$Builder;",
        ">;",
        "Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 455
    invoke-static {}, Lcom/google/api/Monitoring$MonitoringDestination;->access$000()Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 456
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Monitoring$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Monitoring$1;

    .line 448
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMetrics(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Monitoring$MonitoringDestination$Builder;"
        }
    .end annotation

    .line 635
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$600(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/Iterable;)V

    .line 637
    return-object p0
.end method

.method public addMetrics(Ljava/lang/String;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 619
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 620
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$500(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V

    .line 621
    return-object p0
.end method

.method public addMetricsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 665
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$800(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V

    .line 667
    return-object p0
.end method

.method public clearMetrics()Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 650
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->access$700(Lcom/google/api/Monitoring$MonitoringDestination;)V

    .line 651
    return-object p0
.end method

.method public clearMonitoredResource()Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->access$200(Lcom/google/api/Monitoring$MonitoringDestination;)V

    .line 514
    return-object p0
.end method

.method public getMetrics(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 573
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetrics(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 588
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetricsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCount()I
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetricsCount()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 546
    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetricsList()Ljava/util/List;

    move-result-object v0

    .line 545
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResource()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMonitoredResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setMetrics(ILjava/lang/String;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 603
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring$MonitoringDestination;->access$400(Lcom/google/api/Monitoring$MonitoringDestination;ILjava/lang/String;)V

    .line 605
    return-object p0
.end method

.method public setMonitoredResource(Ljava/lang/String;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 498
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 499
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$100(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V

    .line 500
    return-object p0
.end method

.method public setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 528
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$300(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V

    .line 530
    return-object p0
.end method
