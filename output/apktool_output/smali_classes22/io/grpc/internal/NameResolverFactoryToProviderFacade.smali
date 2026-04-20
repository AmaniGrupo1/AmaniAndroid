.class public Lio/grpc/internal/NameResolverFactoryToProviderFacade;
.super Lio/grpc/NameResolverProvider;
.source "NameResolverFactoryToProviderFacade.java"


# instance fields
.field private factory:Lio/grpc/NameResolver$Factory;


# direct methods
.method constructor <init>(Lio/grpc/NameResolver$Factory;)V
    .locals 0
    .param p1, "factory"    # Lio/grpc/NameResolver$Factory;

    .line 28
    invoke-direct {p0}, Lio/grpc/NameResolverProvider;-><init>()V

    .line 29
    iput-object p1, p0, Lio/grpc/internal/NameResolverFactoryToProviderFacade;->factory:Lio/grpc/NameResolver$Factory;

    .line 30
    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/grpc/internal/NameResolverFactoryToProviderFacade;->factory:Lio/grpc/NameResolver$Factory;

    invoke-virtual {v0}, Lio/grpc/NameResolver$Factory;->getDefaultScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAvailable()Z
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 1
    .param p1, "targetUri"    # Ljava/net/URI;
    .param p2, "args"    # Lio/grpc/NameResolver$Args;

    .line 34
    iget-object v0, p0, Lio/grpc/internal/NameResolverFactoryToProviderFacade;->factory:Lio/grpc/NameResolver$Factory;

    invoke-virtual {v0, p1, p2}, Lio/grpc/NameResolver$Factory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v0

    return-object v0
.end method

.method protected priority()I
    .locals 1

    .line 49
    const/4 v0, 0x5

    return v0
.end method
