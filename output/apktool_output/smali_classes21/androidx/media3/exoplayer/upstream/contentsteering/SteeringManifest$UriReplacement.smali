.class public final Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;
.super Ljava/lang/Object;
.source "SteeringManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UriReplacement"
.end annotation


# instance fields
.field public final host:Ljava/lang/String;

.field public final params:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final perRenditionUris:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final perVariantUris:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "perVariantUris":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    .local p4, "perRenditionUris":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->host:Ljava/lang/String;

    .line 124
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->params:Lcom/google/common/collect/ImmutableMap;

    .line 125
    invoke-static {p3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perVariantUris:Lcom/google/common/collect/ImmutableMap;

    .line 126
    invoke-static {p4}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perRenditionUris:Lcom/google/common/collect/ImmutableMap;

    .line 127
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 132
    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 135
    return v2

    .line 137
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;

    .line 138
    .local v1, "uriReplacement":Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->host:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->params:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v1, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->params:Lcom/google/common/collect/ImmutableMap;

    .line 139
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perVariantUris:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v1, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perVariantUris:Lcom/google/common/collect/ImmutableMap;

    .line 140
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perRenditionUris:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v1, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perRenditionUris:Lcom/google/common/collect/ImmutableMap;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 138
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 146
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->host:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->params:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perVariantUris:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest$UriReplacement;->perRenditionUris:Lcom/google/common/collect/ImmutableMap;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
