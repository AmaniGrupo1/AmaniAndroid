.class public final Landroidx/media3/exoplayer/text/TextRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_UPDATE_OUTPUT:I = 0x1

.field private static final REPLACEMENT_STATE_NONE:I = 0x0

.field private static final REPLACEMENT_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REPLACEMENT_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextRenderer"


# instance fields
.field private final cueDecoder:Landroidx/media3/extractor/text/CueDecoder;

.field private final cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

.field private decoderReplacementState:I

.field private finalStreamEndPositionUs:J

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private inputStreamEnded:Z

.field private lastRendererPositionUs:J

.field private legacyDecodingEnabled:Z

.field private nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

.field private final output:Landroidx/media3/exoplayer/text/TextOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private streamFormat:Landroidx/media3/common/Format;

.field private subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field private subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

.field private final subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

.field private waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V
    .locals 1
    .param p1, "output"    # Landroidx/media3/exoplayer/text/TextOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .line 138
    sget-object v0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/exoplayer/text/TextOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "subtitleDecoderFactory"    # Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 154
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 155
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/text/TextOutput;

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    .line 156
    nop

    .line 157
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 158
    iput-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 159
    new-instance v0, Landroidx/media3/extractor/text/CueDecoder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/CueDecoder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoder:Landroidx/media3/extractor/text/CueDecoder;

    .line 160
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 162
    new-instance v0, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 163
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 164
    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->legacyDecodingEnabled:Z

    .line 166
    return-void
.end method

.method private assertLegacyDecodingEnabledIfRequired()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "streamFormat"
        }
    .end annotation

    .line 619
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->legacyDecodingEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 621
    const-string v1, "application/cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 622
    const-string v1, "application/x-mp4-cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 623
    const-string v1, "application/cea-708"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 619
    const-string v2, "Legacy decoding is disabled, can\'t handle %s samples (expected %s)."

    const-string v3, "application/x-media3-cues"

    invoke-static {v0, v2, v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method private clearOutput()V
    .locals 4

    .line 566
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->updateOutput(Landroidx/media3/common/text/CueGroup;)V

    .line 567
    return-void
.end method

.method private getCurrentEventTimeUs(J)J
    .locals 3
    .param p1, "positionUs"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "subtitle"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 601
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v0

    .line 602
    .local v0, "nextEventTimeIndex":I
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 606
    :cond_0
    nop

    .line 608
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 606
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 607
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v1

    goto :goto_0

    .line 608
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v1

    .line 606
    :goto_0
    return-wide v1

    .line 603
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v1, v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->timeUs:J

    return-wide v1
.end method

.method private getNextEventTime()J
    .locals 4

    .line 548
    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    .line 549
    return-wide v2

    .line 551
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 553
    goto :goto_0

    .line 554
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v2

    .line 552
    :goto_0
    return-wide v2
.end method

.method private getPresentationTimeUs(J)J
    .locals 2
    .param p1, "positionUs"    # J
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 613
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 614
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getStreamOffsetUs()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private handleDecoderError(Landroidx/media3/extractor/text/SubtitleDecoderException;)V
    .locals 2
    .param p1, "e"    # Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->clearOutput()V

    .line 595
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->replaceSubtitleDecoder()V

    .line 596
    return-void
.end method

.method private static hasEventsAfter(Landroidx/media3/extractor/text/Subtitle;J)Z
    .locals 4
    .param p0, "subtitle"    # Landroidx/media3/extractor/text/Subtitle;
    .param p1, "timeUs"    # J

    .line 511
    if-eqz p0, :cond_0

    .line 512
    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 513
    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 511
    :goto_0
    return v1
.end method

.method private initSubtitleDecoder()V
    .locals 3

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 538
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 539
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getLastResetPositionUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/text/SubtitleDecoder;->setOutputStartTimeUs(J)V

    .line 540
    return-void
.end method

.method private invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V
    .locals 2
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 582
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    iget-object v1, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 583
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/text/TextOutput;->onCues(Landroidx/media3/common/text/CueGroup;)V

    .line 584
    return-void
.end method

.method private static isCuesWithTiming(Landroidx/media3/common/Format;)Z
    .locals 2
    .param p0, "format"    # Landroidx/media3/common/Format;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 632
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-media3-cues"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private readAndDecodeCuesWithTiming(J)Z
    .locals 8
    .param p1, "positionUs"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "this.cuesResolver"
        }
    .end annotation

    .line 324
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    return v1

    .line 328
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/text/TextRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    .line 329
    .local v0, "readResult":I
    packed-switch v0, :pswitch_data_0

    .line 349
    return v1

    .line 331
    :pswitch_0
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 333
    return v1

    .line 335
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 336
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v1, v1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 337
    .local v1, "cueData":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoder:Landroidx/media3/extractor/text/CueDecoder;

    iget-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v3, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 340
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 341
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    .line 342
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 338
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/text/CueDecoder;->decode(J[BII)Landroidx/media3/extractor/text/CuesWithTiming;

    move-result-object v2

    .line 343
    .local v2, "cuesWithTiming":Landroidx/media3/extractor/text/CuesWithTiming;
    iget-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 345
    iget-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v3, v2, p1, p2}, Landroidx/media3/exoplayer/text/CuesResolver;->addCues(Landroidx/media3/extractor/text/CuesWithTiming;J)Z

    move-result v3

    return v3

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
    .end packed-switch
.end method

.method private releaseSubtitleBuffers()V
    .locals 2

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 518
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 519
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->release()V

    .line 521
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 523
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->release()V

    .line 525
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 527
    :cond_1
    return-void
.end method

.method private releaseSubtitleDecoder()V
    .locals 1

    .line 530
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    .line 531
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v0}, Landroidx/media3/extractor/text/SubtitleDecoder;->release()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 534
    return-void
.end method

.method private renderFromCuesWithTiming(J)V
    .locals 9
    .param p1, "positionUs"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "this.cuesResolver"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/TextRenderer;->readAndDecodeCuesWithTiming(J)Z

    move-result v0

    .line 299
    .local v0, "outputNeedsUpdating":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->getNextCueChangeTimeUs(J)J

    move-result-wide v1

    .line 300
    .local v1, "nextCueChangeTimeUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 301
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 303
    :cond_0
    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, v1, p1

    if-gtz v3, :cond_1

    .line 304
    const/4 v0, 0x1

    .line 307
    :cond_1
    if-eqz v0, :cond_2

    .line 308
    iget-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v3, p1, p2}, Landroidx/media3/exoplayer/text/CuesResolver;->getCuesAtTimeUs(J)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 309
    .local v3, "cuesAtTimeUs":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/text/Cue;>;"
    iget-object v4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v4, p1, p2}, Landroidx/media3/exoplayer/text/CuesResolver;->getPreviousCueChangeTimeUs(J)J

    move-result-wide v4

    .line 310
    .local v4, "previousCueChangeTimeUs":J
    new-instance v6, Landroidx/media3/common/text/CueGroup;

    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v7

    invoke-direct {v6, v3, v7, v8}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/text/TextRenderer;->updateOutput(Landroidx/media3/common/text/CueGroup;)V

    .line 311
    iget-object v6, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v6, v4, v5}, Landroidx/media3/exoplayer/text/CuesResolver;->discardCuesBeforeTimeUs(J)V

    .line 313
    .end local v3    # "cuesAtTimeUs":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/text/Cue;>;"
    .end local v4    # "previousCueChangeTimeUs":J
    :cond_2
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 314
    return-void
.end method

.method private renderFromSubtitles(J)V
    .locals 10
    .param p1, "positionUs"    # J

    .line 354
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 355
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/SubtitleDecoder;->setPositionUs(J)V

    .line 358
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v0}, Landroidx/media3/extractor/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroidx/media3/extractor/text/SubtitleDecoderException;
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->handleDecoderError(Landroidx/media3/extractor/text/SubtitleDecoderException;)V

    .line 361
    return-void

    .line 365
    .end local v0    # "e":Landroidx/media3/extractor/text/SubtitleDecoderException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 366
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    .line 370
    .local v0, "textRendererNeedsUpdate":Z
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 373
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    .line 374
    .local v4, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v2, v4, p1

    if-gtz v2, :cond_2

    .line 375
    iget v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 376
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    .line 377
    const/4 v0, 0x1

    goto :goto_1

    .line 380
    .end local v4    # "subtitleNextEventTimeUs":J
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 381
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 382
    .local v2, "nextSubtitle":Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    invoke-virtual {v2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 383
    if-nez v0, :cond_6

    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 384
    iget v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v5, v1, :cond_3

    .line 385
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->replaceSubtitleDecoder()V

    goto :goto_2

    .line 387
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    .line 388
    iput-boolean v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_2

    .line 391
    :cond_4
    iget-wide v5, v2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_6

    .line 393
    iget-object v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_5

    .line 394
    iget-object v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->release()V

    .line 396
    :cond_5
    invoke-virtual {v2, p1, p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v5

    iput v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 397
    iput-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 398
    iput-object v4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 399
    const/4 v0, 0x1

    .line 403
    .end local v2    # "nextSubtitle":Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 405
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/TextRenderer;->getCurrentEventTimeUs(J)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v5

    .line 408
    .local v5, "presentationTimeUs":J
    new-instance v2, Landroidx/media3/common/text/CueGroup;

    iget-object v7, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v7, p1, p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7, v5, v6}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 409
    .local v2, "cueGroup":Landroidx/media3/common/text/CueGroup;
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/text/TextRenderer;->updateOutput(Landroidx/media3/common/text/CueGroup;)V

    .line 412
    .end local v2    # "cueGroup":Landroidx/media3/common/text/CueGroup;
    .end local v5    # "presentationTimeUs":J
    :cond_7
    iget v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v1, :cond_8

    .line 413
    return-void

    .line 417
    :cond_8
    :goto_3
    :try_start_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_11

    .line 418
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 419
    .local v2, "nextInputBuffer":Landroidx/media3/extractor/text/SubtitleInputBuffer;
    if-nez v2, :cond_a

    .line 420
    iget-object v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v5}, Landroidx/media3/extractor/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-object v2, v5

    .line 421
    if-nez v2, :cond_9

    .line 422
    return-void

    .line 424
    :cond_9
    iput-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 426
    :cond_a
    iget v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v5, v3, :cond_b

    .line 427
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/text/SubtitleInputBuffer;->setFlags(I)V

    .line 428
    iget-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 429
    iput-object v4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 430
    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 431
    return-void

    .line 434
    :cond_b
    iget-object v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v6}, Landroidx/media3/exoplayer/text/TextRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v5

    .line 435
    .local v5, "result":I
    const/4 v7, -0x4

    if-ne v5, v7, :cond_f

    .line 436
    invoke-virtual {v2}, Landroidx/media3/extractor/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 437
    iput-boolean v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 438
    iput-boolean v6, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    goto :goto_4

    .line 440
    :cond_c
    iget-object v7, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v7, v7, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 441
    .local v7, "format":Landroidx/media3/common/Format;
    if-nez v7, :cond_d

    .line 443
    return-void

    .line 445
    :cond_d
    iget-wide v8, v7, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v8, v2, Landroidx/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 446
    invoke-virtual {v2}, Landroidx/media3/extractor/text/SubtitleInputBuffer;->flip()V

    .line 447
    iget-boolean v8, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    invoke-virtual {v2}, Landroidx/media3/extractor/text/SubtitleInputBuffer;->isKeyFrame()Z

    move-result v9

    if-nez v9, :cond_e

    move v6, v3

    :cond_e
    and-int/2addr v6, v8

    iput-boolean v6, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 449
    .end local v7    # "format":Landroidx/media3/common/Format;
    :goto_4
    iget-boolean v6, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    if-nez v6, :cond_10

    .line 450
    iget-object v6, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v6, v2}, Landroidx/media3/extractor/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 451
    iput-object v4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 453
    :cond_f
    const/4 v6, -0x3

    if-ne v5, v6, :cond_10

    .line 454
    return-void

    .line 456
    .end local v2    # "nextInputBuffer":Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .end local v5    # "result":I
    :cond_10
    :goto_5
    goto :goto_3

    .line 459
    :cond_11
    goto :goto_6

    .line 457
    :catch_1
    move-exception v1

    .line 458
    .local v1, "e":Landroidx/media3/extractor/text/SubtitleDecoderException;
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/text/TextRenderer;->handleDecoderError(Landroidx/media3/extractor/text/SubtitleDecoderException;)V

    .line 460
    .end local v1    # "e":Landroidx/media3/extractor/text/SubtitleDecoderException;
    :goto_6
    return-void
.end method

.method private replaceSubtitleDecoder()V
    .locals 0

    .line 543
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleDecoder()V

    .line 544
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    .line 545
    return-void
.end method

.method private updateOutput(Landroidx/media3/common/text/CueGroup;)V
    .locals 2
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 558
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 561
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    .line 563
    :goto_0
    return-void
.end method


# virtual methods
.method public experimentalSetLegacyDecodingEnabled(Z)V
    .locals 0
    .param p1, "legacyDecodingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->legacyDecodingEnabled:Z

    .line 293
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 571
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 573
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/text/CueGroup;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    .line 574
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 7

    .line 480
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 481
    return v1

    .line 486
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Landroidx/media3/common/Format;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/text/CuesResolver;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-interface {v0, v3, v4}, Landroidx/media3/exoplayer/text/CuesResolver;->getNextCueChangeTimeUs(J)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 490
    return v1

    .line 495
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/io/IOException;
    return v2

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 504
    invoke-static {v0, v3, v4}, Landroidx/media3/exoplayer/text/TextRenderer;->hasEventsAfter(Landroidx/media3/extractor/text/Subtitle;J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 505
    invoke-static {v0, v3, v4}, Landroidx/media3/exoplayer/text/TextRenderer;->hasEventsAfter(Landroidx/media3/extractor/text/Subtitle;J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez v0, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v1, v2

    .line 502
    :goto_0
    return v1
.end method

.method protected onDisabled()V
    .locals 2

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    .line 465
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 466
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->clearOutput()V

    .line 467
    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 468
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleDecoder()V

    .line 471
    :cond_0
    return-void
.end method

.method protected onPositionReset(JZZ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .param p4, "sampleStreamIsResetToKeyFrame"    # Z

    .line 229
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 230
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0}, Landroidx/media3/exoplayer/text/CuesResolver;->clear()V

    .line 233
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->clearOutput()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 235
    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 236
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 237
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-eqz v0, :cond_1

    .line 239
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->replaceSubtitleDecoder()V

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    .line 242
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 243
    .local v0, "subtitleDecoder":Landroidx/media3/extractor/text/SubtitleDecoder;
    invoke-interface {v0}, Landroidx/media3/extractor/text/SubtitleDecoder;->flush()V

    .line 244
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getLastResetPositionUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/text/SubtitleDecoder;->setOutputStartTimeUs(J)V

    .line 247
    .end local v0    # "subtitleDecoder":Landroidx/media3/extractor/text/SubtitleDecoder;
    :cond_2
    :goto_0
    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p1, "formats"    # [Landroidx/media3/common/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .param p6, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 210
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    .line 211
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Landroidx/media3/common/Format;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 212
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->assertLegacyDecodingEnabledIfRequired()V

    .line 213
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    if-eqz v0, :cond_0

    .line 214
    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    goto :goto_1

    .line 216
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    goto :goto_1

    .line 219
    :cond_1
    nop

    .line 220
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    if-ne v0, v1, :cond_2

    .line 221
    new-instance v0, Landroidx/media3/exoplayer/text/MergingCuesResolver;

    invoke-direct {v0}, Landroidx/media3/exoplayer/text/MergingCuesResolver;-><init>()V

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;

    invoke-direct {v0}, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    .line 224
    :goto_1
    return-void
.end method

.method public render(JJ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 251
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->isCurrentStreamFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 254
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 258
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_1

    .line 259
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/TextRenderer;->renderFromCuesWithTiming(J)V

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->assertLegacyDecodingEnabledIfRequired()V

    .line 267
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/TextRenderer;->renderFromSubtitles(J)V

    .line 269
    :goto_0
    return-void
.end method

.method public setFinalStreamEndPositionUs(J)V
    .locals 1
    .param p1, "streamEndPositionUs"    # J

    .line 200
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->isCurrentStreamFinal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 201
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 202
    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 179
    invoke-static {p1}, Landroidx/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    return v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    return v0

    .line 181
    :cond_2
    :goto_0
    iget v0, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 180
    :goto_1
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    return v0
.end method
