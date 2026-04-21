.class public interface abstract Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestConfig"
.end annotation


# virtual methods
.method public getCustomData()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedMaximumThroughputKbps(I)I
    .locals 1
    .param p1, "throughputKbps"    # I

    .line 222
    const v0, -0x7fffffff

    return v0
.end method

.method public isKeyAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    return v0
.end method
