.class public final synthetic Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/grpc/okhttp/OkHttpServerTransport;"
    method = "lambda$start$0"
    proto = "(Lio/grpc/internal/SerializingExecutor;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/grpc/okhttp/OkHttpServerTransport;

.field public final synthetic f$1:Lio/grpc/internal/SerializingExecutor;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/internal/SerializingExecutor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;->f$1:Lio/grpc/internal/SerializingExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;->f$1:Lio/grpc/internal/SerializingExecutor;

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->lambda$start$0$io-grpc-okhttp-OkHttpServerTransport(Lio/grpc/internal/SerializingExecutor;)V

    return-void
.end method
