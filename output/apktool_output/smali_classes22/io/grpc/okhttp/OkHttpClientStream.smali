.class Lio/grpc/okhttp/OkHttpClientStream;
.super Lio/grpc/internal/AbstractClientStream;
.source "OkHttpClientStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpClientStream$TransportState;,
        Lio/grpc/okhttp/OkHttpClientStream$Sink;
    }
.end annotation


# static fields
.field public static final ABSENT_ID:I = -0x1

.field private static final EMPTY_BUFFER:Lokio/Buffer;


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private authority:Ljava/lang/String;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

.field private final state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private useGet:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    sput-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OutboundFlowController;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/CallOptions;Z)V
    .locals 12
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "frameWriter"    # Lio/grpc/okhttp/ExceptionHandlingFrameWriter;
    .param p4, "transport"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p5, "outboundFlow"    # Lio/grpc/okhttp/OutboundFlowController;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "maxMessageSize"    # I
    .param p8, "initialWindowSize"    # I
    .param p9, "authority"    # Ljava/lang/String;
    .param p10, "userAgent"    # Ljava/lang/String;
    .param p11, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p12, "transportTracer"    # Lio/grpc/internal/TransportTracer;
    .param p13, "callOptions"    # Lio/grpc/CallOptions;
    .param p14, "useGetForSafeMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/okhttp/ExceptionHandlingFrameWriter;",
            "Lio/grpc/okhttp/OkHttpClientTransport;",
            "Lio/grpc/okhttp/OutboundFlowController;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/internal/StatsTraceContext;",
            "Lio/grpc/internal/TransportTracer;",
            "Lio/grpc/CallOptions;",
            "Z)V"
        }
    .end annotation

    .line 78
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    new-instance v1, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;

    invoke-direct {v1}, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;-><init>()V

    const/4 v7, 0x0

    if-eqz p14, :cond_0

    .line 84
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->isSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v7

    .line 78
    :goto_0
    move-object v0, p0

    move-object v4, p2

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/AbstractClientStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/Metadata;Lio/grpc/CallOptions;Z)V

    .line 58
    new-instance v0, Lio/grpc/okhttp/OkHttpClientStream$Sink;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpClientStream$Sink;-><init>(Lio/grpc/okhttp/OkHttpClientStream;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

    .line 61
    iput-boolean v7, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    .line 85
    const-string v0, "statsTraceCtx"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 86
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    .line 87
    move-object/from16 v10, p9

    iput-object v10, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    .line 88
    move-object/from16 v11, p10

    iput-object v11, p0, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    .line 92
    invoke-virtual/range {p4 .. p4}, Lio/grpc/okhttp/OkHttpClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->attributes:Lio/grpc/Attributes;

    .line 93
    new-instance v0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    .line 102
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object v5, p3

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    move-object/from16 v4, p6

    move/from16 v8, p8

    move-object v3, v2

    move/from16 v2, p7

    invoke-direct/range {v0 .. v9}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;-><init>(Lio/grpc/okhttp/OkHttpClientStream;ILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientTransport;ILjava/lang/String;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/MethodDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OkHttpClientStream;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return v0
.end method

.method static synthetic access$1000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/okhttp/OkHttpClientStream;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return p1
.end method

.method static synthetic access$1100(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/StatsTraceContext;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    return-object v0
.end method

.method static synthetic access$1200(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-object v0
.end method

.method static synthetic access$500()Lokio/Buffer;
    .locals 1

    .line 46
    sget-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/okhttp/OkHttpClientStream;I)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;
    .param p1, "x1"    # I

    .line 46
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpClientStream;->onSendingBytes(I)V

    return-void
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 46
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->abstractClientStreamSink()Lio/grpc/okhttp/OkHttpClientStream$Sink;

    move-result-object v0

    return-object v0
.end method

.method protected abstractClientStreamSink()Lio/grpc/okhttp/OkHttpClientStream$Sink;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 137
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getType()Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 132
    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    .line 133
    return-void
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractClientStream$TransportState;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method protected transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-object v0
.end method

.method useGet()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return v0
.end method
