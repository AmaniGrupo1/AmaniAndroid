.class final Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Landroidx/media3/exoplayer/source/SampleStream;

.field private sentEos:Z

.field final synthetic this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 0
    .param p2, "childStream"    # Landroidx/media3/exoplayer/source/SampleStream;
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

    .line 383
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 385
    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .locals 1

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 389
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 393
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    .line 399
    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 17
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p2, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v4

    const/4 v5, -0x3

    if-eqz v4, :cond_0

    .line 405
    return v5

    .line 407
    :cond_0
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-static {v4}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->access$000(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;)Z

    move-result v4

    const/4 v6, -0x5

    if-eqz v4, :cond_2

    .line 408
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v4, v1, v2, v3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v4

    .line 409
    .local v4, "result":I
    if-ne v4, v6, :cond_1

    .line 410
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v7, v5, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iget-object v5, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v9, v5, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    invoke-static {v1, v7, v8, v9, v10}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->access$100(Landroidx/media3/exoplayer/FormatHolder;JJ)V

    .line 411
    return v6

    .line 413
    :cond_1
    return v4

    .line 415
    .end local v4    # "result":I
    :cond_2
    iget-boolean v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v7, 0x4

    const/4 v8, -0x4

    if-eqz v4, :cond_3

    .line 416
    invoke-virtual {v2, v7}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 417
    return v8

    .line 419
    :cond_3
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v9

    .line 420
    .local v9, "bufferedPositionUs":J
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v4, v1, v2, v3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v4

    .line 421
    .restart local v4    # "result":I
    iget-object v11, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-static {v11}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->access$200(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;)J

    move-result-wide v11

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v11, v13

    if-eqz v11, :cond_4

    if-eq v4, v5, :cond_4

    .line 424
    iget-object v11, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-static {v11, v13, v14}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->access$202(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;J)J

    .line 426
    :cond_4
    nop

    .line 430
    iget-object v11, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 426
    if-ne v4, v6, :cond_5

    .line 427
    iget-wide v7, v11, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iget-object v5, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v11, v5, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    invoke-static {v1, v7, v8, v11, v12}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->access$100(Landroidx/media3/exoplayer/FormatHolder;JJ)V

    .line 428
    return v6

    .line 430
    :cond_5
    iget-wide v11, v11, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v6, v11, v13

    if-eqz v6, :cond_8

    if-ne v4, v8, :cond_6

    iget-wide v11, v2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v6, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    move-wide v15, v9

    move v10, v8

    .end local v9    # "bufferedPositionUs":J
    .local v15, "bufferedPositionUs":J
    iget-wide v8, v6, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v11, v8

    if-gez v6, :cond_7

    goto :goto_0

    .end local v15    # "bufferedPositionUs":J
    .restart local v9    # "bufferedPositionUs":J
    :cond_6
    move-wide v15, v9

    move v10, v8

    .end local v9    # "bufferedPositionUs":J
    .restart local v15    # "bufferedPositionUs":J
    :goto_0
    if-ne v4, v5, :cond_9

    cmp-long v5, v15, v13

    if-nez v5, :cond_9

    iget-boolean v5, v2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez v5, :cond_9

    .line 435
    :cond_7
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 436
    invoke-virtual {v2, v7}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 437
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 438
    return v10

    .line 430
    .end local v15    # "bufferedPositionUs":J
    .restart local v9    # "bufferedPositionUs":J
    :cond_8
    move-wide v15, v9

    .line 440
    .end local v9    # "bufferedPositionUs":J
    .restart local v15    # "bufferedPositionUs":J
    :cond_9
    return v4
.end method

.method public skipData(J)I
    .locals 1
    .param p1, "positionUs"    # J

    .line 445
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, -0x3

    return v0

    .line 448
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result v0

    return v0
.end method
