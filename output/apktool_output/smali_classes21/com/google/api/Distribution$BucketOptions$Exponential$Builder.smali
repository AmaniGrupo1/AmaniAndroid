.class public final Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptions$ExponentialOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions$Exponential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$BucketOptions$Exponential;",
        "Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptions$ExponentialOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1249
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1400()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1250
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Distribution$1;

    .line 1242
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGrowthFactor()Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1329
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1800(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    .line 1330
    return-object p0
.end method

.method public clearNumFiniteBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1288
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1289
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1600(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    .line 1290
    return-object p0
.end method

.method public clearScale()Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1368
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1369
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$2000(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    .line 1370
    return-object p0
.end method

.method public getGrowthFactor()D
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getGrowthFactor()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumFiniteBuckets()I
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getNumFiniteBuckets()I

    move-result v0

    return v0
.end method

.method public getScale()D
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getScale()D

    move-result-wide v0

    return-wide v0
.end method

.method public setGrowthFactor(D)Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 1315
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1316
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1700(Lcom/google/api/Distribution$BucketOptions$Exponential;D)V

    .line 1317
    return-object p0
.end method

.method public setNumFiniteBuckets(I)Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1275
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1276
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1500(Lcom/google/api/Distribution$BucketOptions$Exponential;I)V

    .line 1277
    return-object p0
.end method

.method public setScale(D)Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 1355
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1356
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1900(Lcom/google/api/Distribution$BucketOptions$Exponential;D)V

    .line 1357
    return-object p0
.end method
