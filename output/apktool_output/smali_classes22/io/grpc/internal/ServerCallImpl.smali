.class final Lio/grpc/internal/ServerCallImpl;
.super Lio/grpc/ServerCall;
.source "ServerCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ServerCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field static final MISSING_RESPONSE:Ljava/lang/String; = "Completed without a response"

.field static final TOO_MANY_RESPONSES:Ljava/lang/String; = "Too many responses"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile cancelled:Z

.field private closeCalled:Z

.field private compressor:Lio/grpc/Compressor;

.field private final compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final context:Lio/grpc/Context$CancellableContext;

.field private final decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private final messageAcceptEncoding:[B

.field private messageSent:Z

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private sendHeadersCalled:Z

.field private serverCallTracer:Lio/grpc/internal/CallTracer;

.field private final stream:Lio/grpc/internal/ServerStream;

.field private final tag:Lio/perfmark/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lio/grpc/internal/ServerCallImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerCallImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/ServerStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/DecompressorRegistry;Lio/grpc/CompressorRegistry;Lio/grpc/internal/CallTracer;Lio/perfmark/Tag;)V
    .locals 1
    .param p1, "stream"    # Lio/grpc/internal/ServerStream;
    .param p3, "inboundHeaders"    # Lio/grpc/Metadata;
    .param p4, "context"    # Lio/grpc/Context$CancellableContext;
    .param p5, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;
    .param p6, "compressorRegistry"    # Lio/grpc/CompressorRegistry;
    .param p7, "serverCallTracer"    # Lio/grpc/internal/CallTracer;
    .param p8, "tag"    # Lio/perfmark/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ServerStream;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context$CancellableContext;",
            "Lio/grpc/DecompressorRegistry;",
            "Lio/grpc/CompressorRegistry;",
            "Lio/grpc/internal/CallTracer;",
            "Lio/perfmark/Tag;",
            ")V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    .local p2, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ServerCall;-><init>()V

    .line 81
    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    .line 82
    iput-object p2, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    .line 83
    iput-object p4, p0, Lio/grpc/internal/ServerCallImpl;->context:Lio/grpc/Context$CancellableContext;

    .line 84
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p3, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->messageAcceptEncoding:[B

    .line 85
    iput-object p5, p0, Lio/grpc/internal/ServerCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 86
    iput-object p6, p0, Lio/grpc/internal/ServerCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 87
    iput-object p7, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    .line 88
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {v0}, Lio/grpc/internal/CallTracer;->reportCallStarted()V

    .line 89
    iput-object p8, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/ServerCallImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerCallImpl;

    .line 52
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$102(Lio/grpc/internal/ServerCallImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ServerCallImpl;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lio/grpc/internal/ServerCallImpl;->cancelled:Z

    return p1
.end method

.method static synthetic access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerCallImpl;

    .line 52
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/MethodDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerCallImpl;

    .line 52
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method private closeInternal(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 213
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "call already closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 215
    :try_start_0
    iput-boolean v1, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    .line 217
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->serverSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->messageSent:Z

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Completed without a response"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ServerCallImpl;->handleInternalError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    .line 219
    return-void

    .line 222
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    .line 225
    nop

    .line 226
    return-void

    .line 224
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    .line 225
    throw v0
.end method

.method private handleInternalError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "internalError"    # Ljava/lang/Throwable;

    .line 268
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    sget-object v0, Lio/grpc/internal/ServerCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cancelling the stream because of internal error"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    instance-of v0, p1, Lio/grpc/StatusRuntimeException;

    if-eqz v0, :cond_0

    .line 270
    move-object v0, p1

    check-cast v0, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 271
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 272
    const-string v1, "Internal error so cancelling stream."

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    :goto_0
    nop

    .line 273
    .local v0, "status":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ServerStream;->cancel(Lio/grpc/Status;)V

    .line 274
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    .line 275
    return-void
.end method

.method private sendHeadersInternal(Lio/grpc/Metadata;)V
    .locals 5
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 109
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "sendHeaders has already been called"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 110
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call is closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 112
    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_LENGTH_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 113
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 114
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->messageAcceptEncoding:[B

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lio/grpc/internal/GrpcUtil;->ACCEPT_ENCODING_SPLITTER:Lcom/google/common/base/Splitter;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/internal/ServerCallImpl;->messageAcceptEncoding:[B

    sget-object v4, Lio/grpc/internal/GrpcUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    .line 121
    invoke-interface {v2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v0, v2}, Lio/grpc/internal/GrpcUtil;->iterableContains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    goto :goto_0

    .line 126
    :cond_1
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    .line 131
    :cond_2
    :goto_0
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    invoke-interface {v2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    invoke-interface {v0, v2}, Lio/grpc/internal/ServerStream;->setCompressor(Lio/grpc/Compressor;)V

    .line 135
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 136
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 137
    invoke-static {v0}, Lio/grpc/InternalDecompressorRegistry;->getRawAdvertisedMessageEncodings(Lio/grpc/DecompressorRegistry;)[B

    move-result-object v0

    .line 138
    .local v0, "advertisedEncodings":[B
    array-length v2, v0

    if-eqz v2, :cond_3

    .line 139
    sget-object v2, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v2, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 144
    :cond_3
    iput-boolean v1, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    .line 145
    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-virtual {p0}, Lio/grpc/internal/ServerCallImpl;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/MethodDescriptor$MethodType;->serverSendsOneMessage()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-interface {v2, p1, v1}, Lio/grpc/internal/ServerStream;->writeHeaders(Lio/grpc/Metadata;Z)V

    .line 146
    return-void
.end method

.method private sendMessageInternal(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TRespT;"
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    const-string v1, "sendHeaders has not been called"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "call is closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->serverSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->messageSent:Z

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Too many responses"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ServerCallImpl;->handleInternalError(Ljava/lang/Throwable;)V

    .line 162
    return-void

    .line 165
    :cond_0
    iput-boolean v1, p0, Lio/grpc/internal/ServerCallImpl;->messageSent:Z

    .line 167
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, p1}, Lio/grpc/MethodDescriptor;->streamResponse(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 168
    .local v0, "resp":Ljava/io/InputStream;
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ServerStream;->writeMessage(Ljava/io/InputStream;)V

    .line 169
    invoke-virtual {p0}, Lio/grpc/internal/ServerCallImpl;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/MethodDescriptor$MethodType;->serverSendsOneMessage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v1}, Lio/grpc/internal/ServerStream;->flush()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0    # "resp":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Error;
    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 176
    const-string v2, "Server sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    .line 175
    invoke-virtual {p0, v1, v2}, Lio/grpc/internal/ServerCallImpl;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 178
    throw v0

    .line 172
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lio/grpc/internal/ServerCallImpl;->handleInternalError(Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    nop

    .line 180
    return-void
.end method


# virtual methods
.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 206
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    const-string v0, "ServerCall.close"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 207
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 208
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ServerCallImpl;->closeInternal(Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 210
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 206
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 239
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0}, Lio/grpc/internal/ServerStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 244
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0}, Lio/grpc/internal/ServerStream;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodDescriptor()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public getSecurityLevel()Lio/grpc/SecurityLevel;
    .locals 3

    .line 254
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/ServerCallImpl;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    .line 255
    .local v0, "attributes":Lio/grpc/Attributes;
    if-nez v0, :cond_0

    .line 256
    invoke-super {p0}, Lio/grpc/ServerCall;->getSecurityLevel()Lio/grpc/SecurityLevel;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    sget-object v1, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/SecurityLevel;

    .line 259
    .local v1, "securityLevel":Lio/grpc/SecurityLevel;
    if-nez v1, :cond_1

    invoke-super {p0}, Lio/grpc/ServerCall;->getSecurityLevel()Lio/grpc/SecurityLevel;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public isCancelled()Z
    .locals 1

    .line 230
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->cancelled:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 198
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0}, Lio/grpc/internal/ServerStream;->isReady()Z

    move-result v0

    return v0
.end method

.method newServerStreamListener(Lio/grpc/ServerCall$Listener;)Lio/grpc/internal/ServerStreamListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;)",
            "Lio/grpc/internal/ServerStreamListener;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    .local p1, "listener":Lio/grpc/ServerCall$Listener;, "Lio/grpc/ServerCall$Listener<TReqT;>;"
    new-instance v0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->context:Lio/grpc/Context$CancellableContext;

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;-><init>(Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCall$Listener;Lio/grpc/Context$CancellableContext;)V

    return-object v0
.end method

.method public request(I)V
    .locals 3
    .param p1, "numMessages"    # I

    .line 94
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    const-string v0, "ServerCall.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 95
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 96
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v1, p1}, Lio/grpc/internal/ServerStream;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 98
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 94
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public sendHeaders(Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 102
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    const-string v0, "ServerCall.sendHeaders"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 103
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 104
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl;->sendHeadersInternal(Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 106
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 102
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TRespT;"
    const-string v0, "ServerCall.sendMessage"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 151
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 152
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl;->sendMessageInternal(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 154
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 150
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 3
    .param p1, "compressorName"    # Ljava/lang/String;

    .line 190
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "sendHeaders has been called"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    invoke-virtual {v0, p1}, Lio/grpc/CompressorRegistry;->lookupCompressor(Ljava/lang/String;)Lio/grpc/Compressor;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    .line 193
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Unable to find compressor by name %s"

    invoke-static {v1, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 184
    .local p0, "this":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStream;->setMessageCompression(Z)V

    .line 185
    return-void
.end method
