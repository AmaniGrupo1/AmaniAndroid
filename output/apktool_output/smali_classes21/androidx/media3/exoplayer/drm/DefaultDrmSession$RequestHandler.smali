.class Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field private isReleased:Z

.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0
    .param p2, "backgroundLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 663
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 664
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 665
    return-void
.end method

.method private maybeRetryRequest(Landroid/os/Message;Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;)Z
    .locals 21
    .param p1, "originalMsg"    # Landroid/os/Message;
    .param p2, "exception"    # Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;

    .line 723
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    .line 724
    .local v4, "requestTask":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
    iget-boolean v0, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 725
    return v5

    .line 727
    :cond_0
    iget v0, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 728
    iget v0, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    iget-object v7, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 729
    invoke-static {v7}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v7

    if-le v0, v7, :cond_1

    .line 730
    return v5

    .line 732
    :cond_1
    new-instance v9, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v10, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    iget-object v12, v2, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v13, v2, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->uriAfterRedirects:Landroid/net/Uri;

    iget-object v14, v2, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->responseHeaders:Ljava/util/Map;

    .line 738
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 739
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move v0, v5

    move v7, v6

    iget-wide v5, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    sub-long v17, v17, v5

    iget-wide v5, v2, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->bytesLoaded:J

    move-wide/from16 v19, v5

    invoke-direct/range {v9 .. v20}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 741
    .local v9, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    new-instance v5, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-direct {v5, v8}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    .line 743
    .local v5, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    invoke-virtual {v2}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_2

    .line 744
    invoke-virtual {v2}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    goto :goto_0

    .line 745
    :cond_2
    new-instance v6, Landroidx/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v6, v8}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    nop

    .line 746
    .local v6, "loadErrorCause":Ljava/io/IOException;
    iget-object v8, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 747
    invoke-static {v8}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v8

    new-instance v10, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    iget v11, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    invoke-direct {v10, v9, v5, v6, v11}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    invoke-interface {v8, v10}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v10

    .line 750
    .local v10, "retryDelayMs":J
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    .line 752
    return v0

    .line 754
    :cond_3
    iget-object v8, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v8}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 755
    :try_start_0
    iget-object v12, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 756
    iget-object v12, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->addLoadInfo(Landroidx/media3/exoplayer/source/LoadEventInfo;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    .line 758
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 759
    monitor-enter p0

    .line 760
    :try_start_1
    iget-boolean v8, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v8, :cond_5

    .line 761
    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v10, v11}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 762
    monitor-exit p0

    return v7

    .line 764
    :cond_5
    monitor-exit p0

    .line 765
    return v0

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 758
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 679
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    .line 682
    .local v0, "requestTask":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 701
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 688
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 689
    invoke-static {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$300(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$200(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    move-result-object v1

    .line 690
    .local v1, "keyResponse":Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    move-object v2, v1

    .line 691
    .local v2, "response":Ljava/lang/Object;
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/MediaDrmCallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v4}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;

    if-eqz v4, :cond_0

    .line 693
    iget-object v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v4}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v6, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    sub-long/2addr v8, v10

    .line 694
    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/media3/exoplayer/source/LoadEventInfo;->copyWithTaskIdAndDurationMs(JJ)Landroidx/media3/exoplayer/source/LoadEventInfo;

    move-result-object v5

    .line 693
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->addLoadInfo(Landroidx/media3/exoplayer/source/LoadEventInfo;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    .line 698
    :cond_0
    monitor-exit v3

    .line 699
    goto :goto_1

    .line 698
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "requestTask":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_2
    throw v4

    .line 684
    .end local v1    # "keyResponse":Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    .end local v2    # "response":Ljava/lang/Object;
    .restart local v0    # "requestTask":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 685
    invoke-static {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$300(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$200(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    move-result-object v1

    move-object v2, v1

    .line 686
    .restart local v2    # "response":Ljava/lang/Object;
    goto :goto_1

    .line 701
    .end local v2    # "response":Ljava/lang/Object;
    :goto_0
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "requestTask":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1
    :try_end_2
    .catch Landroidx/media3/exoplayer/drm/MediaDrmCallbackException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 708
    .restart local v0    # "requestTask":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    move-object v2, v1

    .restart local v2    # "response":Ljava/lang/Object;
    goto :goto_2

    .line 703
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 704
    .local v1, "e":Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->maybeRetryRequest(Landroid/os/Message;Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    return-void

    .line 707
    :cond_1
    move-object v2, v1

    .line 711
    .end local v1    # "e":Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
    .restart local v2    # "response":Ljava/lang/Object;
    :goto_1
    nop

    .line 712
    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v1

    iget-wide v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    invoke-interface {v1, v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 713
    monitor-enter p0

    .line 714
    :try_start_3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v1, :cond_2

    .line 715
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    .line 716
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 717
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 719
    :cond_2
    monitor-exit p0

    .line 720
    return-void

    .line 719
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method post(ILjava/lang/Object;Z)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "request"    # Ljava/lang/Object;
    .param p3, "allowRetry"    # Z

    .line 668
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    .line 670
    invoke-static {}, Landroidx/media3/exoplayer/source/LoadEventInfo;->getNewId()J

    move-result-wide v1

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v6, p2

    move v3, p3

    .end local p2    # "request":Ljava/lang/Object;
    .end local p3    # "allowRetry":Z
    .local v3, "allowRetry":Z
    .local v6, "request":Ljava/lang/Object;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    .line 674
    .local v0, "requestTask":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 675
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 769
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    monitor-exit p0

    return-void

    .line 768
    .end local p0    # "this":Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
