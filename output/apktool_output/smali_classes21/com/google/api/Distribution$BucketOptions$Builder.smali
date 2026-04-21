.class public final Lcom/google/api/Distribution$BucketOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$BucketOptions;",
        "Lcom/google/api/Distribution$BucketOptions$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2255
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->access$2800()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2256
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Distribution$1;

    .line 2248
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2482
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2483
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$3800(Lcom/google/api/Distribution$BucketOptions;)V

    .line 2484
    return-object p0
.end method

.method public clearExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2410
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2411
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$3500(Lcom/google/api/Distribution$BucketOptions;)V

    .line 2412
    return-object p0
.end method

.method public clearLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2338
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2339
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$3200(Lcom/google/api/Distribution$BucketOptions;)V

    .line 2340
    return-object p0
.end method

.method public clearOptions()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2265
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2266
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$2900(Lcom/google/api/Distribution$BucketOptions;)V

    .line 2267
    return-object p0
.end method

.method public getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1

    .line 2435
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    return-object v0
.end method

.method public getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;
    .locals 1

    .line 2291
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1

    .line 2261
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v0

    return-object v0
.end method

.method public hasExplicitBuckets()Z
    .locals 1

    .line 2424
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->hasExplicitBuckets()Z

    move-result v0

    return v0
.end method

.method public hasExponentialBuckets()Z
    .locals 1

    .line 2352
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->hasExponentialBuckets()Z

    move-result v0

    return v0
.end method

.method public hasLinearBuckets()Z
    .locals 1

    .line 2280
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->hasLinearBuckets()Z

    move-result v0

    return v0
.end method

.method public mergeExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 2470
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2471
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3700(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    .line 2472
    return-object p0
.end method

.method public mergeExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions$Exponential;

    .line 2398
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2399
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3400(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    .line 2400
    return-object p0
.end method

.method public mergeLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions$Linear;

    .line 2326
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2327
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3100(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V

    .line 2328
    return-object p0
.end method

.method public setExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;

    .line 2458
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2459
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$3600(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    .line 2460
    return-object p0
.end method

.method public setExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 2445
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2446
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3600(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    .line 2447
    return-object p0
.end method

.method public setExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;

    .line 2386
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2387
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$3300(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    .line 2388
    return-object p0
.end method

.method public setExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions$Exponential;

    .line 2373
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2374
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3300(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    .line 2375
    return-object p0
.end method

.method public setLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear$Builder;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Distribution$BucketOptions$Linear$Builder;

    .line 2314
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2315
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$3000(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V

    .line 2316
    return-object p0
.end method

.method public setLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions$Linear;

    .line 2301
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2302
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3000(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V

    .line 2303
    return-object p0
.end method
