.class public final Lcom/google/api/Service$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Service.java"

# interfaces
.implements Lcom/google/api/ServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Service;",
        "Lcom/google/api/Service$Builder;",
        ">;",
        "Lcom/google/api/ServiceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2592
    invoke-static {}, Lcom/google/api/Service;->access$000()Lcom/google/api/Service;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2593
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Service$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Service$1;

    .line 2585
    invoke-direct {p0}, Lcom/google/api/Service$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllApis(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Api;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3147
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Api;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3148
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1900(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 3149
    return-object p0
.end method

.method public addAllEndpoints(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Endpoint;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4278
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Endpoint;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4279
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5800(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4280
    return-object p0
.end method

.method public addAllEnums(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Enum;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3599
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Enum;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3600
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3100(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 3601
    return-object p0
.end method

.method public addAllLogs(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LogDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4503
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/LogDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4504
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6700(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4505
    return-object p0
.end method

.method public addAllMetrics(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4653
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MetricDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4654
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7300(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4655
    return-object p0
.end method

.method public addAllMonitoredResources(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4813
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MonitoredResourceDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4814
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7900(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4815
    return-object p0
.end method

.method public addAllTypes(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Type;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3375
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Type;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3376
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2500(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 3377
    return-object p0
.end method

.method public addApis(ILcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Api$Builder;

    .line 3129
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3130
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3131
    invoke-virtual {p2}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Api;

    .line 3130
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3132
    return-object p0
.end method

.method public addApis(ILcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Api;

    .line 3095
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3096
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3097
    return-object p0
.end method

.method public addApis(Lcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Api$Builder;

    .line 3112
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3113
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Api;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V

    .line 3114
    return-object p0
.end method

.method public addApis(Lcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Api;

    .line 3078
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3079
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V

    .line 3080
    return-object p0
.end method

.method public addEndpoints(ILcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Endpoint$Builder;

    .line 4262
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4263
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4264
    invoke-virtual {p2}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Endpoint;

    .line 4263
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4265
    return-object p0
.end method

.method public addEndpoints(ILcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Endpoint;

    .line 4232
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4233
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4234
    return-object p0
.end method

.method public addEndpoints(Lcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Endpoint$Builder;

    .line 4247
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4248
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Endpoint;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V

    .line 4249
    return-object p0
.end method

.method public addEndpoints(Lcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Endpoint;

    .line 4217
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4218
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V

    .line 4219
    return-object p0
.end method

.method public addEnums(ILcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Enum$Builder;

    .line 3579
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3580
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3581
    invoke-virtual {p2}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Enum;

    .line 3580
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3582
    return-object p0
.end method

.method public addEnums(ILcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Enum;

    .line 3541
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3542
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3543
    return-object p0
.end method

.method public addEnums(Lcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Enum$Builder;

    .line 3560
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3561
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Enum;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V

    .line 3562
    return-object p0
.end method

.method public addEnums(Lcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Enum;

    .line 3522
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3523
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V

    .line 3524
    return-object p0
.end method

.method public addLogs(ILcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LogDescriptor$Builder;

    .line 4489
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4490
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4491
    invoke-virtual {p2}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LogDescriptor;

    .line 4490
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4492
    return-object p0
.end method

.method public addLogs(ILcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LogDescriptor;

    .line 4463
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4464
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4465
    return-object p0
.end method

.method public addLogs(Lcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/LogDescriptor$Builder;

    .line 4476
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4477
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LogDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V

    .line 4478
    return-object p0
.end method

.method public addLogs(Lcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/LogDescriptor;

    .line 4450
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4451
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V

    .line 4452
    return-object p0
.end method

.method public addMetrics(ILcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MetricDescriptor$Builder;

    .line 4639
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4640
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4641
    invoke-virtual {p2}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricDescriptor;

    .line 4640
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4642
    return-object p0
.end method

.method public addMetrics(ILcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricDescriptor;

    .line 4613
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4614
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4615
    return-object p0
.end method

.method public addMetrics(Lcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/MetricDescriptor$Builder;

    .line 4626
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4627
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V

    .line 4628
    return-object p0
.end method

.method public addMetrics(Lcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/MetricDescriptor;

    .line 4600
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4601
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V

    .line 4602
    return-object p0
.end method

.method public addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MonitoredResourceDescriptor$Builder;

    .line 4798
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4799
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4800
    invoke-virtual {p2}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MonitoredResourceDescriptor;

    .line 4799
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4801
    return-object p0
.end method

.method public addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 4770
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4771
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4772
    return-object p0
.end method

.method public addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/MonitoredResourceDescriptor$Builder;

    .line 4784
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4785
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V

    .line 4786
    return-object p0
.end method

.method public addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 4756
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4757
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V

    .line 4758
    return-object p0
.end method

.method public addTypes(ILcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Type$Builder;

    .line 3354
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3355
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3356
    invoke-virtual {p2}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Type;

    .line 3355
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3357
    return-object p0
.end method

.method public addTypes(ILcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Type;

    .line 3314
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3315
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3316
    return-object p0
.end method

.method public addTypes(Lcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Type$Builder;

    .line 3334
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3335
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Type;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V

    .line 3336
    return-object p0
.end method

.method public addTypes(Lcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Type;

    .line 3294
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3295
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V

    .line 3296
    return-object p0
.end method

.method public clearApis()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3163
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3164
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$2000(Lcom/google/api/Service;)V

    .line 3165
    return-object p0
.end method

.method public clearAuthentication()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3991
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4800(Lcom/google/api/Service;)V

    .line 3992
    return-object p0
.end method

.method public clearBackend()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3777
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3778
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3900(Lcom/google/api/Service;)V

    .line 3779
    return-object p0
.end method

.method public clearBilling()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4910
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4911
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8400(Lcom/google/api/Service;)V

    .line 4912
    return-object p0
.end method

.method public clearConfigVersion()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2680
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2681
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$300(Lcom/google/api/Service;)V

    .line 2682
    return-object p0
.end method

.method public clearContext()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4061
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4062
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5100(Lcom/google/api/Service;)V

    .line 4063
    return-object p0
.end method

.method public clearControl()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4377
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4378
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$6300(Lcom/google/api/Service;)V

    .line 4379
    return-object p0
.end method

.method public clearDocumentation()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3706
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3707
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3600(Lcom/google/api/Service;)V

    .line 3708
    return-object p0
.end method

.method public clearEndpoints()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4292
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4293
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5900(Lcom/google/api/Service;)V

    .line 4294
    return-object p0
.end method

.method public clearEnums()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3617
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3618
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3200(Lcom/google/api/Service;)V

    .line 3619
    return-object p0
.end method

.method public clearHttp()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3848
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3849
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4200(Lcom/google/api/Service;)V

    .line 3850
    return-object p0
.end method

.method public clearId()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2826
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2827
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$800(Lcom/google/api/Service;)V

    .line 2828
    return-object p0
.end method

.method public clearLogging()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4981
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4982
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8700(Lcom/google/api/Service;)V

    .line 4983
    return-object p0
.end method

.method public clearLogs()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4515
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4516
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$6800(Lcom/google/api/Service;)V

    .line 4517
    return-object p0
.end method

.method public clearMetrics()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4665
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4666
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$7400(Lcom/google/api/Service;)V

    .line 4667
    return-object p0
.end method

.method public clearMonitoredResources()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4826
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4827
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8000(Lcom/google/api/Service;)V

    .line 4828
    return-object p0
.end method

.method public clearMonitoring()Lcom/google/api/Service$Builder;
    .locals 1

    .line 5052
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5053
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9000(Lcom/google/api/Service;)V

    .line 5054
    return-object p0
.end method

.method public clearName()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2746
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2747
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$500(Lcom/google/api/Service;)V

    .line 2748
    return-object p0
.end method

.method public clearProducerProjectId()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2966
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2967
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$1400(Lcom/google/api/Service;)V

    .line 2968
    return-object p0
.end method

.method public clearQuota()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3919
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3920
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4500(Lcom/google/api/Service;)V

    .line 3921
    return-object p0
.end method

.method public clearSourceInfo()Lcom/google/api/Service$Builder;
    .locals 1

    .line 5194
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5195
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9600(Lcom/google/api/Service;)V

    .line 5196
    return-object p0
.end method

.method public clearSystemParameters()Lcom/google/api/Service$Builder;
    .locals 1

    .line 5123
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5124
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9300(Lcom/google/api/Service;)V

    .line 5125
    return-object p0
.end method

.method public clearTitle()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2897
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2898
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$1100(Lcom/google/api/Service;)V

    .line 2899
    return-object p0
.end method

.method public clearTypes()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3394
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3395
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$2600(Lcom/google/api/Service;)V

    .line 3396
    return-object p0
.end method

.method public clearUsage()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4132
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4133
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5400(Lcom/google/api/Service;)V

    .line 4134
    return-object p0
.end method

.method public getApis(I)Lcom/google/protobuf/Api;
    .locals 1
    .param p1, "index"    # I

    .line 3029
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getApis(I)Lcom/google/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public getApisCount()I
    .locals 1

    .line 3015
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getApisCount()I

    move-result v0

    return v0
.end method

.method public getApisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 2999
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3000
    invoke-virtual {v0}, Lcom/google/api/Service;->getApisList()Ljava/util/List;

    move-result-object v0

    .line 2999
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthentication()Lcom/google/api/Authentication;
    .locals 1

    .line 3944
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()Lcom/google/api/Backend;
    .locals 1

    .line 3731
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v0

    return-object v0
.end method

.method public getBilling()Lcom/google/api/Billing;
    .locals 1

    .line 4864
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v0

    return-object v0
.end method

.method public getConfigVersion()Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 2622
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/google/api/Context;
    .locals 1

    .line 4015
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v0

    return-object v0
.end method

.method public getControl()Lcom/google/api/Control;
    .locals 1

    .line 4331
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentation()Lcom/google/api/Documentation;
    .locals 1

    .line 3660
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoints(I)Lcom/google/api/Endpoint;
    .locals 1
    .param p1, "index"    # I

    .line 4174
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getEndpoints(I)Lcom/google/api/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointsCount()I
    .locals 1

    .line 4162
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getEndpointsCount()I

    move-result v0

    return v0
.end method

.method public getEndpointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation

    .line 4148
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4149
    invoke-virtual {v0}, Lcom/google/api/Service;->getEndpointsList()Ljava/util/List;

    move-result-object v0

    .line 4148
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnums(I)Lcom/google/protobuf/Enum;
    .locals 1
    .param p1, "index"    # I

    .line 3467
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getEnums(I)Lcom/google/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getEnumsCount()I
    .locals 1

    .line 3451
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getEnumsCount()I

    move-result v0

    return v0
.end method

.method public getEnumsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .line 3433
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3434
    invoke-virtual {v0}, Lcom/google/api/Service;->getEnumsList()Ljava/util/List;

    move-result-object v0

    .line 3433
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttp()Lcom/google/api/Http;
    .locals 1

    .line 3802
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 2781
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2796
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLogging()Lcom/google/api/Logging;
    .locals 1

    .line 4935
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v0

    return-object v0
.end method

.method public getLogs(I)Lcom/google/api/LogDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 4413
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getLogs(I)Lcom/google/api/LogDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogsCount()I
    .locals 1

    .line 4403
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getLogsCount()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation

    .line 4391
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4392
    invoke-virtual {v0}, Lcom/google/api/Service;->getLogsList()Ljava/util/List;

    move-result-object v0

    .line 4391
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(I)Lcom/google/api/MetricDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 4563
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getMetrics(I)Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCount()I
    .locals 1

    .line 4553
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMetricsCount()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    .line 4541
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4542
    invoke-virtual {v0}, Lcom/google/api/Service;->getMetricsList()Ljava/util/List;

    move-result-object v0

    .line 4541
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 4716
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResourcesCount()I
    .locals 1

    .line 4705
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoredResourcesCount()I

    move-result v0

    return v0
.end method

.method public getMonitoredResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 4692
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4693
    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoredResourcesList()Ljava/util/List;

    move-result-object v0

    .line 4692
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoring()Lcom/google/api/Monitoring;
    .locals 1

    .line 5006
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2714
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectId()Ljava/lang/String;
    .locals 1

    .line 2927
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2940
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuota()Lcom/google/api/Quota;
    .locals 1

    .line 3873
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v0

    return-object v0
.end method

.method public getSourceInfo()Lcom/google/api/SourceInfo;
    .locals 1

    .line 5148
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemParameters()Lcom/google/api/SystemParameters;
    .locals 1

    .line 5077
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2858
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2871
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypes(I)Lcom/google/protobuf/Type;
    .locals 1
    .param p1, "index"    # I

    .line 3236
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getTypes(I)Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypesCount()I
    .locals 1

    .line 3219
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTypesCount()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 3200
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3201
    invoke-virtual {v0}, Lcom/google/api/Service;->getTypesList()Ljava/util/List;

    move-result-object v0

    .line 3200
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()Lcom/google/api/Usage;
    .locals 1

    .line 4086
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthentication()Z
    .locals 1

    .line 3933
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasAuthentication()Z

    move-result v0

    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .line 3720
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasBackend()Z

    move-result v0

    return v0
.end method

.method public hasBilling()Z
    .locals 1

    .line 4853
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasBilling()Z

    move-result v0

    return v0
.end method

.method public hasConfigVersion()Z
    .locals 1

    .line 2608
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasConfigVersion()Z

    move-result v0

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .line 4004
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasContext()Z

    move-result v0

    return v0
.end method

.method public hasControl()Z
    .locals 1

    .line 4320
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasControl()Z

    move-result v0

    return v0
.end method

.method public hasDocumentation()Z
    .locals 1

    .line 3649
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasDocumentation()Z

    move-result v0

    return v0
.end method

.method public hasHttp()Z
    .locals 1

    .line 3791
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasHttp()Z

    move-result v0

    return v0
.end method

.method public hasLogging()Z
    .locals 1

    .line 4924
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasLogging()Z

    move-result v0

    return v0
.end method

.method public hasMonitoring()Z
    .locals 1

    .line 4995
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasMonitoring()Z

    move-result v0

    return v0
.end method

.method public hasQuota()Z
    .locals 1

    .line 3862
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasQuota()Z

    move-result v0

    return v0
.end method

.method public hasSourceInfo()Z
    .locals 1

    .line 5137
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasSourceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSystemParameters()Z
    .locals 1

    .line 5066
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasSystemParameters()Z

    move-result v0

    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .line 4075
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasUsage()Z

    move-result v0

    return v0
.end method

.method public mergeAuthentication(Lcom/google/api/Authentication;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Authentication;

    .line 3979
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3980
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4700(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    .line 3981
    return-object p0
.end method

.method public mergeBackend(Lcom/google/api/Backend;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Backend;

    .line 3766
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3767
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3800(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    .line 3768
    return-object p0
.end method

.method public mergeBilling(Lcom/google/api/Billing;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Billing;

    .line 4899
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4900
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8300(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    .line 4901
    return-object p0
.end method

.method public mergeConfigVersion(Lcom/google/protobuf/UInt32Value;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/UInt32Value;

    .line 2666
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2667
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$200(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    .line 2668
    return-object p0
.end method

.method public mergeContext(Lcom/google/api/Context;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Context;

    .line 4050
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4051
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5000(Lcom/google/api/Service;Lcom/google/api/Context;)V

    .line 4052
    return-object p0
.end method

.method public mergeControl(Lcom/google/api/Control;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Control;

    .line 4366
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4367
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6200(Lcom/google/api/Service;Lcom/google/api/Control;)V

    .line 4368
    return-object p0
.end method

.method public mergeDocumentation(Lcom/google/api/Documentation;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Documentation;

    .line 3695
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3696
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3500(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    .line 3697
    return-object p0
.end method

.method public mergeHttp(Lcom/google/api/Http;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Http;

    .line 3837
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3838
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4100(Lcom/google/api/Service;Lcom/google/api/Http;)V

    .line 3839
    return-object p0
.end method

.method public mergeLogging(Lcom/google/api/Logging;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging;

    .line 4970
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4971
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8600(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    .line 4972
    return-object p0
.end method

.method public mergeMonitoring(Lcom/google/api/Monitoring;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Monitoring;

    .line 5041
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5042
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8900(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    .line 5043
    return-object p0
.end method

.method public mergeQuota(Lcom/google/api/Quota;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Quota;

    .line 3908
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3909
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4400(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    .line 3910
    return-object p0
.end method

.method public mergeSourceInfo(Lcom/google/api/SourceInfo;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SourceInfo;

    .line 5183
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5184
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9500(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    .line 5185
    return-object p0
.end method

.method public mergeSystemParameters(Lcom/google/api/SystemParameters;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameters;

    .line 5112
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5113
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9200(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    .line 5114
    return-object p0
.end method

.method public mergeUsage(Lcom/google/api/Usage;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Usage;

    .line 4121
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4122
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5300(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    .line 4123
    return-object p0
.end method

.method public removeApis(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3179
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3180
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2100(Lcom/google/api/Service;I)V

    .line 3181
    return-object p0
.end method

.method public removeEndpoints(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4306
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4307
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6000(Lcom/google/api/Service;I)V

    .line 4308
    return-object p0
.end method

.method public removeEnums(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3635
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3636
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3300(Lcom/google/api/Service;I)V

    .line 3637
    return-object p0
.end method

.method public removeLogs(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4527
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4528
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6900(Lcom/google/api/Service;I)V

    .line 4529
    return-object p0
.end method

.method public removeMetrics(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4677
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4678
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7500(Lcom/google/api/Service;I)V

    .line 4679
    return-object p0
.end method

.method public removeMonitoredResources(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4839
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4840
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8100(Lcom/google/api/Service;I)V

    .line 4841
    return-object p0
.end method

.method public removeTypes(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3413
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3414
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2700(Lcom/google/api/Service;I)V

    .line 3415
    return-object p0
.end method

.method public setApis(ILcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Api$Builder;

    .line 3061
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3062
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3063
    invoke-virtual {p2}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Api;

    .line 3062
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3064
    return-object p0
.end method

.method public setApis(ILcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Api;

    .line 3044
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3045
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3046
    return-object p0
.end method

.method public setAuthentication(Lcom/google/api/Authentication$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Authentication$Builder;

    .line 3967
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3968
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Authentication$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Authentication;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    .line 3969
    return-object p0
.end method

.method public setAuthentication(Lcom/google/api/Authentication;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Authentication;

    .line 3954
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3955
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    .line 3956
    return-object p0
.end method

.method public setBackend(Lcom/google/api/Backend$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Backend$Builder;

    .line 3754
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3755
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Backend$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Backend;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    .line 3756
    return-object p0
.end method

.method public setBackend(Lcom/google/api/Backend;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Backend;

    .line 3741
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3742
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    .line 3743
    return-object p0
.end method

.method public setBilling(Lcom/google/api/Billing$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Billing$Builder;

    .line 4887
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4888
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Billing$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Billing;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    .line 4889
    return-object p0
.end method

.method public setBilling(Lcom/google/api/Billing;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Billing;

    .line 4874
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4875
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    .line 4876
    return-object p0
.end method

.method public setConfigVersion(Lcom/google/protobuf/UInt32Value$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/UInt32Value$Builder;

    .line 2651
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2652
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    .line 2653
    return-object p0
.end method

.method public setConfigVersion(Lcom/google/protobuf/UInt32Value;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/UInt32Value;

    .line 2635
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2636
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    .line 2637
    return-object p0
.end method

.method public setContext(Lcom/google/api/Context$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Context$Builder;

    .line 4038
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4039
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Context$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Context;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V

    .line 4040
    return-object p0
.end method

.method public setContext(Lcom/google/api/Context;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Context;

    .line 4025
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4026
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V

    .line 4027
    return-object p0
.end method

.method public setControl(Lcom/google/api/Control$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Control$Builder;

    .line 4354
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4355
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Control$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Control;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V

    .line 4356
    return-object p0
.end method

.method public setControl(Lcom/google/api/Control;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Control;

    .line 4341
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4342
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V

    .line 4343
    return-object p0
.end method

.method public setDocumentation(Lcom/google/api/Documentation$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Documentation$Builder;

    .line 3683
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3684
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Documentation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Documentation;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    .line 3685
    return-object p0
.end method

.method public setDocumentation(Lcom/google/api/Documentation;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Documentation;

    .line 3670
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3671
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    .line 3672
    return-object p0
.end method

.method public setEndpoints(ILcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Endpoint$Builder;

    .line 4202
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4203
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4204
    invoke-virtual {p2}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Endpoint;

    .line 4203
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4205
    return-object p0
.end method

.method public setEndpoints(ILcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Endpoint;

    .line 4187
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4188
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4189
    return-object p0
.end method

.method public setEnums(ILcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Enum$Builder;

    .line 3503
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3504
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3505
    invoke-virtual {p2}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Enum;

    .line 3504
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3506
    return-object p0
.end method

.method public setEnums(ILcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Enum;

    .line 3484
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3485
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3486
    return-object p0
.end method

.method public setHttp(Lcom/google/api/Http$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Http$Builder;

    .line 3825
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3826
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Http$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Http;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V

    .line 3827
    return-object p0
.end method

.method public setHttp(Lcom/google/api/Http;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Http;

    .line 3812
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3813
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V

    .line 3814
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2811
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2812
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$700(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2813
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2843
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2844
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$900(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2845
    return-object p0
.end method

.method public setLogging(Lcom/google/api/Logging$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Logging$Builder;

    .line 4958
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4959
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Logging$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    .line 4960
    return-object p0
.end method

.method public setLogging(Lcom/google/api/Logging;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging;

    .line 4945
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4946
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    .line 4947
    return-object p0
.end method

.method public setLogs(ILcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LogDescriptor$Builder;

    .line 4437
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4438
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4439
    invoke-virtual {p2}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LogDescriptor;

    .line 4438
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4440
    return-object p0
.end method

.method public setLogs(ILcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LogDescriptor;

    .line 4424
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4425
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4426
    return-object p0
.end method

.method public setMetrics(ILcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MetricDescriptor$Builder;

    .line 4587
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4588
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4589
    invoke-virtual {p2}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricDescriptor;

    .line 4588
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4590
    return-object p0
.end method

.method public setMetrics(ILcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricDescriptor;

    .line 4574
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4575
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4576
    return-object p0
.end method

.method public setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MonitoredResourceDescriptor$Builder;

    .line 4742
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4743
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4744
    invoke-virtual {p2}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MonitoredResourceDescriptor;

    .line 4743
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4745
    return-object p0
.end method

.method public setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 4728
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4729
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4730
    return-object p0
.end method

.method public setMonitoring(Lcom/google/api/Monitoring$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Monitoring$Builder;

    .line 5029
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5030
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    .line 5031
    return-object p0
.end method

.method public setMonitoring(Lcom/google/api/Monitoring;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Monitoring;

    .line 5016
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5017
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    .line 5018
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2730
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2731
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$400(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2732
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2764
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2765
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$600(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2766
    return-object p0
.end method

.method public setProducerProjectId(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2953
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2954
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1300(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2955
    return-object p0
.end method

.method public setProducerProjectIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2981
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2982
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1500(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2983
    return-object p0
.end method

.method public setQuota(Lcom/google/api/Quota$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Quota$Builder;

    .line 3896
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3897
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Quota$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Quota;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    .line 3898
    return-object p0
.end method

.method public setQuota(Lcom/google/api/Quota;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Quota;

    .line 3883
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3884
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    .line 3885
    return-object p0
.end method

.method public setSourceInfo(Lcom/google/api/SourceInfo$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/SourceInfo$Builder;

    .line 5171
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5172
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/SourceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SourceInfo;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    .line 5173
    return-object p0
.end method

.method public setSourceInfo(Lcom/google/api/SourceInfo;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SourceInfo;

    .line 5158
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5159
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    .line 5160
    return-object p0
.end method

.method public setSystemParameters(Lcom/google/api/SystemParameters$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/SystemParameters$Builder;

    .line 5100
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5101
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/SystemParameters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameters;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    .line 5102
    return-object p0
.end method

.method public setSystemParameters(Lcom/google/api/SystemParameters;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameters;

    .line 5087
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5088
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    .line 5089
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2884
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2885
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1000(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2886
    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2912
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2913
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1200(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2914
    return-object p0
.end method

.method public setTypes(ILcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Type$Builder;

    .line 3274
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3275
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3276
    invoke-virtual {p2}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Type;

    .line 3275
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3277
    return-object p0
.end method

.method public setTypes(ILcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Type;

    .line 3254
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3255
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3256
    return-object p0
.end method

.method public setUsage(Lcom/google/api/Usage$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Usage$Builder;

    .line 4109
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4110
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Usage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Usage;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    .line 4111
    return-object p0
.end method

.method public setUsage(Lcom/google/api/Usage;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Usage;

    .line 4096
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4097
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    .line 4098
    return-object p0
.end method
