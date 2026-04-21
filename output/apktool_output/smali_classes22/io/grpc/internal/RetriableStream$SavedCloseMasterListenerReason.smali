.class final Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SavedCloseMasterListenerReason"
.end annotation


# instance fields
.field private final metadata:Lio/grpc/Metadata;

.field private final progress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field private final status:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "progress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "metadata"    # Lio/grpc/Metadata;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;->status:Lio/grpc/Status;

    .line 853
    iput-object p2, p0, Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;->progress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 854
    iput-object p3, p0, Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;->metadata:Lio/grpc/Metadata;

    .line 855
    return-void
.end method

.method static synthetic access$1900(Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;

    .line 846
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;->status:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;)Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;

    .line 846
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;->progress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    return-object v0
.end method

.method static synthetic access$2100(Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;)Lio/grpc/Metadata;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;

    .line 846
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$SavedCloseMasterListenerReason;->metadata:Lio/grpc/Metadata;

    return-object v0
.end method
