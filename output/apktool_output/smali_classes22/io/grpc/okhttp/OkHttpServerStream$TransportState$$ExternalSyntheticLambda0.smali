.class public final synthetic Lio/grpc/okhttp/OkHttpServerStream$TransportState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/grpc/okhttp/OkHttpServerStream$TransportState;"
    method = "lambda$sendTrailers$0"
    proto = "(Ljava/util/List;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState$$ExternalSyntheticLambda0;->f$0:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState$$ExternalSyntheticLambda0;->f$0:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lambda$sendTrailers$0$io-grpc-okhttp-OkHttpServerStream$TransportState(Ljava/util/List;)V

    return-void
.end method
