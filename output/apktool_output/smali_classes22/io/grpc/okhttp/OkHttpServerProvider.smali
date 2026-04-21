.class public final Lio/grpc/okhttp/OkHttpServerProvider;
.super Lio/grpc/ServerProvider;
.source "OkHttpServerProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/grpc/ServerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic builderForPort(I)Lio/grpc/ServerBuilder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerProvider;->builderForPort(I)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected builderForPort(I)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 2
    .param p1, "port"    # I

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Grpc.newServerBuilderForPort() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isAvailable()Z
    .locals 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 4
    .param p1, "port"    # I
    .param p2, "creds"    # Lio/grpc/ServerCredentials;

    .line 46
    nop

    .line 47
    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerBuilder;->handshakerSocketFactoryFrom(Lio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v0

    .line 48
    .local v0, "result":Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    iget-object v1, v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    invoke-static {v1}, Lio/grpc/ServerProvider$NewServerBuilderResult;->error(Ljava/lang/String;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object v1

    return-object v1

    .line 51
    :cond_0
    new-instance v1, Lio/grpc/okhttp/OkHttpServerBuilder;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iget-object v3, v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->factory:Lio/grpc/okhttp/HandshakerSocketFactory;

    invoke-direct {v1, v2, v3}, Lio/grpc/okhttp/OkHttpServerBuilder;-><init>(Ljava/net/SocketAddress;Lio/grpc/okhttp/HandshakerSocketFactory;)V

    invoke-static {v1}, Lio/grpc/ServerProvider$NewServerBuilderResult;->serverBuilder(Lio/grpc/ServerBuilder;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object v1

    return-object v1
.end method

.method protected priority()I
    .locals 1

    .line 36
    const/4 v0, 0x4

    return v0
.end method
