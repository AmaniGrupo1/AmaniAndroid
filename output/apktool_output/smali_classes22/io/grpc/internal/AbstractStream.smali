.class public abstract Lio/grpc/internal/AbstractStream;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lio/grpc/internal/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractStream$TransportState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final endOfMessages()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->close()V

    .line 86
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->flush()V

    .line 78
    :cond_0
    return-void
.end method

.method protected abstract framer()Lio/grpc/internal/Framer;
.end method

.method public isReady()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->transportState()Lio/grpc/internal/AbstractStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/AbstractStream$TransportState;->access$100(Lio/grpc/internal/AbstractStream$TransportState;)Z

    move-result v0

    return v0
.end method

.method protected final onSendingBytes(I)V
    .locals 1
    .param p1, "numBytes"    # I

    .line 105
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->transportState()Lio/grpc/internal/AbstractStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->access$200(Lio/grpc/internal/AbstractStream$TransportState;I)V

    .line 106
    return-void
.end method

.method public optimizeForDirectExecutor()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->transportState()Lio/grpc/internal/AbstractStream$TransportState;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/AbstractStream$TransportState;->optimizeForDirectExecutor()V

    .line 49
    return-void
.end method

.method public final request(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 58
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->transportState()Lio/grpc/internal/AbstractStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->access$000(Lio/grpc/internal/AbstractStream$TransportState;I)V

    .line 59
    return-void
.end method

.method public final setCompressor(Lio/grpc/Compressor;)V
    .locals 2
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 90
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    const-string v1, "compressor"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Compressor;

    invoke-interface {v0, v1}, Lio/grpc/internal/Framer;->setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/Framer;

    .line 91
    return-void
.end method

.method public final setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 53
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Framer;->setMessageCompression(Z)Lio/grpc/internal/Framer;

    .line 54
    return-void
.end method

.method protected abstract transportState()Lio/grpc/internal/AbstractStream$TransportState;
.end method

.method public final writeMessage(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "message"    # Ljava/io/InputStream;

    .line 63
    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Framer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->framer()Lio/grpc/internal/Framer;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Framer;->writePayload(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    nop

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    throw v0
.end method
