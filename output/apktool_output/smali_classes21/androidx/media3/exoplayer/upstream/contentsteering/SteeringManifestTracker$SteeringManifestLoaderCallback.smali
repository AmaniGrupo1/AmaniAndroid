.class Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;
.super Ljava/lang/Object;
.source "SteeringManifestTracker.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SteeringManifestLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
        "Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;
    .param p2, "x1"    # Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$1;

    .line 207
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;-><init>(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V

    return-void
.end method

.method static synthetic lambda$onLoadCompleted$0(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V
    .locals 0
    .param p0, "rec$"    # Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    .line 241
    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$1000(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V

    return-void
.end method

.method static synthetic lambda$onLoadError$1(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V
    .locals 0
    .param p0, "rec$"    # Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    .line 302
    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$1000(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 207
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->onLoadCanceled(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJZ)V
    .locals 3
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;",
            ">;JJZ)V"
        }
    .end annotation

    .line 252
    .local p1, "loadable":Landroidx/media3/exoplayer/upstream/ParsingLoadable;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable<Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$100(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$200(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)Landroidx/media3/exoplayer/source/LoadEventInfo;

    move-result-object v0

    .line 256
    .local v0, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v1}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$300(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V

    .line 257
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 207
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->onLoadCompleted(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .locals 6
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 227
    .local p1, "loadable":Landroidx/media3/exoplayer/upstream/ParsingLoadable;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable<Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$100(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;

    .line 231
    .local v0, "newSteeringManifest":Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$402(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;)Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;

    .line 232
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v1}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$500(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$Callback;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$Callback;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$Callback;->onSteeringManifestUpdated(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;)V

    .line 233
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    .line 234
    invoke-static {v2}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$600(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, v0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;->reloadUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$700(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 233
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$602(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;Landroid/net/Uri;)Landroid/net/Uri;

    .line 236
    iget-wide v1, v0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;->timeToLiveMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 237
    iget-wide v1, v0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;->timeToLiveMs:J

    goto :goto_0

    .line 238
    :cond_1
    const-wide/32 v1, 0x493e0

    :goto_0
    nop

    .line 239
    .local v1, "delayUntilNextLoadMs":J
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v3}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$800(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/HandlerWrapper;

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    new-instance v5, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V

    .line 240
    invoke-interface {v3, v5, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$200(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)Landroidx/media3/exoplayer/source/LoadEventInfo;

    move-result-object v3

    .line 243
    .local v3, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v4}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$300(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/16 v5, 0x8

    invoke-virtual {v4, v3, v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V

    .line 244
    return-void
.end method

.method public bridge synthetic onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 207
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->onLoadError(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 13
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 266
    .local p1, "loadable":Landroidx/media3/exoplayer/upstream/ParsingLoadable;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable<Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;>;"
    move-object/from16 v1, p6

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$100(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v0

    .line 269
    :cond_0
    const v0, 0x7fffffff

    .line 270
    .local v0, "responseCode":I
    instance-of v2, v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v2, :cond_1

    .line 271
    move-object v2, v1

    check-cast v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v0, v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    move v2, v0

    goto :goto_0

    .line 270
    :cond_1
    move v2, v0

    .line 275
    .end local v0    # "responseCode":I
    .local v2, "responseCode":I
    :goto_0
    const-wide/32 v3, 0x493e0

    .line 277
    .local v3, "delayUntilNextLoadMs":J
    const/16 v0, 0x19a

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v2, v0, :cond_2

    .line 280
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 281
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$900(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/upstream/Loader;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->release()V

    .line 282
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$800(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_2

    .line 283
    :cond_2
    const/16 v0, 0x1ad

    if-ne v2, v0, :cond_4

    .line 286
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v8, "Retry-After"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 287
    .local v8, "retryAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 289
    :try_start_0
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    .line 292
    .end local v3    # "delayUntilNextLoadMs":J
    .local v9, "delayUntilNextLoadMs":J
    move-wide v3, v9

    goto :goto_1

    .line 290
    .end local v9    # "delayUntilNextLoadMs":J
    .restart local v3    # "delayUntilNextLoadMs":J
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v9, "SteeringManifestTracker"

    const-string v10, "Retry-After header string doesn\'t contain a parsable long"

    invoke-static {v9, v10}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "retryAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$400(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$400(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;

    move-result-object v0

    iget-wide v8, v0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;->timeToLiveMs:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$400(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;

    move-result-object v0

    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;->timeToLiveMs:J

    .line 299
    :goto_2
    cmp-long v0, v3, v6

    if-eqz v0, :cond_5

    .line 300
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$800(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    iget-object v8, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    new-instance v9, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback$$ExternalSyntheticLambda1;

    invoke-direct {v9, v8}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)V

    .line 301
    invoke-interface {v0, v9, v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    :cond_5
    invoke-static/range {p1 .. p5}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$200(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)Landroidx/media3/exoplayer/source/LoadEventInfo;

    move-result-object v0

    .line 306
    .local v0, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v8, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v8}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$300(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    cmp-long v6, v3, v6

    if-nez v6, :cond_6

    const/4 v5, 0x1

    .line 307
    :cond_6
    const/16 v6, 0x8

    invoke-virtual {v8, v0, v6, v1, v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 313
    sget-object v5, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v5
.end method

.method public bridge synthetic onLoadStarted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 207
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->onLoadStarted(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJI)V

    return-void
.end method

.method public onLoadStarted(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJI)V
    .locals 3
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;",
            ">;JJI)V"
        }
    .end annotation

    .line 216
    .local p1, "loadable":Landroidx/media3/exoplayer/upstream/ParsingLoadable;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable<Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifest;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$100(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$200(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)Landroidx/media3/exoplayer/source/LoadEventInfo;

    move-result-object v0

    .line 220
    .local v0, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker$SteeringManifestLoaderCallback;->this$0:Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;

    invoke-static {v1}, Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;->access$300(Landroidx/media3/exoplayer/upstream/contentsteering/SteeringManifestTracker;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 221
    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, p6}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;II)V

    .line 222
    return-void
.end method
