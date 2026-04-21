.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;
.super Lio/grpc/util/ForwardingClientStreamTracer;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;

.field final synthetic val$delegateTracer:Lio/grpc/ClientStreamTracer;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;Lio/grpc/ClientStreamTracer;)V
    .locals 0
    .param p1, "this$2"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;

    .line 450
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;->this$2:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;

    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;->val$delegateTracer:Lio/grpc/ClientStreamTracer;

    invoke-direct {p0}, Lio/grpc/util/ForwardingClientStreamTracer;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ClientStreamTracer;
    .locals 1

    .line 453
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;->val$delegateTracer:Lio/grpc/ClientStreamTracer;

    return-object v0
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 458
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;->this$2:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->access$700(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;)Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->incrementCallCount(Z)V

    .line 459
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->streamClosed(Lio/grpc/Status;)V

    .line 460
    return-void
.end method
