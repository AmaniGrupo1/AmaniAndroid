.class public final Lio/grpc/stub/MetadataUtils;
.super Ljava/lang/Object;
.source "MetadataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;,
        Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAttachHeadersInterceptor(Lio/grpc/Metadata;)Lio/grpc/ClientInterceptor;
    .locals 1
    .param p0, "extraHeaders"    # Lio/grpc/Metadata;

    .line 46
    new-instance v0, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;

    invoke-direct {v0, p0}, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;-><init>(Lio/grpc/Metadata;)V

    return-object v0
.end method

.method public static newCaptureMetadataInterceptor(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)Lio/grpc/ClientInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/Metadata;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/Metadata;",
            ">;)",
            "Lio/grpc/ClientInterceptor;"
        }
    .end annotation

    .line 89
    .local p0, "headersCapture":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/grpc/Metadata;>;"
    .local p1, "trailersCapture":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/grpc/Metadata;>;"
    new-instance v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;

    invoke-direct {v0, p0, p1}, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method
