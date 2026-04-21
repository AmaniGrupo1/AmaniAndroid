.class public Lio/grpc/internal/MessageFramer;
.super Ljava/lang/Object;
.source "MessageFramer.java"

# interfaces
.implements Lio/grpc/internal/Framer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MessageFramer$BufferChainOutputStream;,
        Lio/grpc/internal/MessageFramer$OutputStreamAdapter;,
        Lio/grpc/internal/MessageFramer$Sink;
    }
.end annotation


# static fields
.field private static final COMPRESSED:B = 0x1t

.field private static final HEADER_LENGTH:I = 0x5

.field private static final NO_MAX_OUTBOUND_MESSAGE_SIZE:I = -0x1

.field private static final UNCOMPRESSED:B


# instance fields
.field private buffer:Lio/grpc/internal/WritableBuffer;

.field private final bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

.field private closed:Z

.field private compressor:Lio/grpc/Compressor;

.field private currentMessageSeqNo:I

.field private currentMessageWireSize:J

.field private final headerScratch:Ljava/nio/ByteBuffer;

.field private maxOutboundMessageSize:I

.field private messageCompression:Z

.field private messagesBuffered:I

.field private final outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

.field private final sink:Lio/grpc/internal/MessageFramer$Sink;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V
    .locals 3
    .param p1, "sink"    # Lio/grpc/internal/MessageFramer$Sink;
    .param p2, "bufferAllocator"    # Lio/grpc/internal/WritableBufferAllocator;
    .param p3, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    .line 78
    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    .line 80
    new-instance v1, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    .line 81
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    .line 89
    iput v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    .line 100
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/MessageFramer$Sink;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    .line 101
    const-string v0, "bufferAllocator"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/WritableBufferAllocator;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    .line 102
    const-string v0, "statsTraceCtx"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 103
    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/MessageFramer;[BII)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MessageFramer;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    return-void
.end method

.method static synthetic access$500(Lio/grpc/internal/MessageFramer;)Lio/grpc/internal/WritableBufferAllocator;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MessageFramer;

    .line 45
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    return-object v0
.end method

.method private commitToSink(ZZ)V
    .locals 3
    .param p1, "endOfStream"    # Z
    .param p2, "flush"    # Z

    .line 355
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 356
    .local v0, "buf":Lio/grpc/internal/WritableBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 357
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    iget v2, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    invoke-interface {v1, v0, p1, p2, v2}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 358
    const/4 v1, 0x0

    iput v1, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 359
    return-void
.end method

.method private getKnownLength(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    instance-of v0, p1, Lio/grpc/KnownLength;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 204
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method private releaseBuffer()V
    .locals 1

    .line 348
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->release()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 352
    :cond_0
    return-void
.end method

.method private verifyNotClosed()V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framer already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V
    .locals 8
    .param p1, "bufferChain"    # Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    .param p2, "compressed"    # Z

    .line 236
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$200(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)I

    move-result v0

    .line 237
    .local v0, "messageLength":I
    iget v1, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-ltz v1, :cond_1

    iget v1, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    sget-object v1, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 240
    const-string v4, "message too large %d > %d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1

    .line 244
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 245
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 246
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v1

    .line 247
    .local v1, "writeableHeader":Lio/grpc/internal/WritableBuffer;
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 248
    if-nez v0, :cond_2

    .line 250
    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 251
    return-void

    .line 258
    :cond_2
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    iget v3, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v2, v1, v4, v4, v3}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 259
    iput v5, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 261
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$300(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)Ljava/util/List;

    move-result-object v2

    .line 262
    .local v2, "bufferList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/WritableBuffer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge v3, v6, :cond_3

    .line 263
    iget-object v6, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/internal/WritableBuffer;

    invoke-interface {v6, v7, v4, v4, v4}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/WritableBuffer;

    iput-object v3, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 268
    int-to-long v3, v0

    iput-wide v3, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 269
    return-void
.end method

.method private writeCompressed(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "unusedMessageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 183
    .local v0, "bufferChain":Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    invoke-interface {v1, v0}, Lio/grpc/Compressor;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 186
    .local v1, "compressingStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p1, v1}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .local v2, "written":I
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 189
    nop

    .line 190
    iget v3, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-ltz v3, :cond_1

    iget v3, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    sget-object v3, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 193
    const-string v6, "message too large %d > %d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v3

    throw v3

    .line 198
    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    .line 199
    return v2

    .line 188
    .end local v2    # "written":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 189
    throw v2
.end method

.method private writeKnownLengthUncompressed(Ljava/io/InputStream;I)I
    .locals 4
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-ltz v0, :cond_1

    iget v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 217
    const-string v3, "message too large %d > %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 221
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 222
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0, v2}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 228
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    .line 229
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    invoke-static {p1, v0}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method private writeRaw([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 286
    nop

    :goto_0
    if-lez p3, :cond_2

    .line 287
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 290
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    invoke-interface {v0, p3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 294
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 295
    .local v0, "toWrite":I
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v1, p1, p2, v0}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 296
    add-int/2addr p2, v0

    .line 297
    sub-int/2addr p3, v0

    .line 298
    .end local v0    # "toWrite":I
    goto :goto_0

    .line 299
    :cond_2
    return-void
.end method

.method private static writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "message"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    instance-of v0, p0, Lio/grpc/Drainable;

    if-eqz v0, :cond_0

    .line 274
    move-object v0, p0

    check-cast v0, Lio/grpc/Drainable;

    invoke-interface {v0, p1}, Lio/grpc/Drainable;->drainTo(Ljava/io/OutputStream;)I

    move-result v0

    return v0

    .line 279
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 280
    .local v0, "written":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Message size overflow: %s"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 281
    long-to-int v2, v0

    return v2
.end method

.method private writeUncompressed(Ljava/io/InputStream;I)I
    .locals 3
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 171
    int-to-long v0, p2

    iput-wide v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 172
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/MessageFramer;->writeKnownLengthUncompressed(Ljava/io/InputStream;I)I

    move-result v0

    return v0

    .line 174
    :cond_0
    new-instance v0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 175
    .local v0, "bufferChain":Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    invoke-static {p1, v0}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v1

    .line 176
    .local v1, "written":I
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    .line 177
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 326
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 330
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v1}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 333
    :cond_0
    invoke-direct {p0, v0, v0}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 335
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 344
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 345
    return-void
.end method

.method public flush()V
    .locals 2

    .line 306
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 309
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    return v0
.end method

.method public bridge synthetic setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/Framer;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lio/grpc/internal/MessageFramer;->setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;

    move-result-object p1

    return-object p1
.end method

.method public setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;
    .locals 1
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 107
    const-string v0, "Can\'t pass an empty compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Compressor;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 108
    return-object p0
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 119
    iget v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max size already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 120
    iput p1, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    .line 121
    return-void
.end method

.method public bridge synthetic setMessageCompression(Z)Lio/grpc/internal/Framer;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lio/grpc/internal/MessageFramer;->setMessageCompression(Z)Lio/grpc/internal/MessageFramer;

    move-result-object p1

    return-object p1
.end method

.method public setMessageCompression(Z)Lio/grpc/internal/MessageFramer;
    .locals 0
    .param p1, "enable"    # Z

    .line 113
    iput-boolean p1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    .line 114
    return-object p0
.end method

.method public writePayload(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "message"    # Ljava/io/InputStream;

    .line 130
    const-string v1, "Failed to frame message"

    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->verifyNotClosed()V

    .line 131
    iget v0, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 132
    iget v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    .line 133
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 134
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v3, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    invoke-virtual {v0, v3}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 135
    iget-boolean v0, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    sget-object v3, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 136
    .local v2, "compressed":Z
    :goto_0
    const/4 v3, -0x1

    .line 137
    .local v3, "written":I
    const/4 v4, -0x2

    .line 139
    .local v4, "messageLength":I
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer;->getKnownLength(Ljava/io/InputStream;)I

    move-result v0

    move v4, v0

    .line 140
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 141
    invoke-direct {p0, p1, v4}, Lio/grpc/internal/MessageFramer;->writeCompressed(Ljava/io/InputStream;I)I

    move-result v0

    .end local v3    # "written":I
    .local v0, "written":I
    goto :goto_1

    .line 143
    .end local v0    # "written":I
    .restart local v3    # "written":I
    :cond_1
    invoke-direct {p0, p1, v4}, Lio/grpc/internal/MessageFramer;->writeUncompressed(Ljava/io/InputStream;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v3    # "written":I
    .restart local v0    # "written":I
    :goto_1
    nop

    .line 160
    const/4 v1, -0x1

    if-eq v4, v1, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_2

    .line 161
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Message length inaccurate %s != %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "err":Ljava/lang/String;
    sget-object v3, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-virtual {v3, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v3

    throw v3

    .line 164
    .end local v1    # "err":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Lio/grpc/internal/StatsTraceContext;->outboundUncompressedSize(J)V

    .line 165
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-wide v5, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    invoke-virtual {v1, v5, v6}, Lio/grpc/internal/StatsTraceContext;->outboundWireSize(J)V

    .line 166
    iget-object v7, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v8, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    iget-wide v9, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    int-to-long v11, v0

    invoke-virtual/range {v7 .. v12}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 167
    return-void

    .line 153
    .end local v0    # "written":I
    .restart local v3    # "written":I
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 155
    invoke-virtual {v5, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1

    .line 151
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    throw v0

    .line 145
    .end local v0    # "e":Lio/grpc/StatusRuntimeException;
    :catch_2
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 148
    invoke-virtual {v5, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1
.end method
