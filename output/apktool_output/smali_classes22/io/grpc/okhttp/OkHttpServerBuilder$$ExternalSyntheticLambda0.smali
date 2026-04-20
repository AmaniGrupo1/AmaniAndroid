.class public final synthetic Lio/grpc/okhttp/OkHttpServerBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/grpc/okhttp/OkHttpServerBuilder;"
    method = "buildTransportServers"
    proto = "(Ljava/util/List;)Lio/grpc/internal/InternalServer;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/grpc/okhttp/OkHttpServerBuilder;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder$$ExternalSyntheticLambda0;->f$0:Lio/grpc/okhttp/OkHttpServerBuilder;

    return-void
.end method


# virtual methods
.method public final buildClientTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder$$ExternalSyntheticLambda0;->f$0:Lio/grpc/okhttp/OkHttpServerBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->buildTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;

    move-result-object p1

    return-object p1
.end method
