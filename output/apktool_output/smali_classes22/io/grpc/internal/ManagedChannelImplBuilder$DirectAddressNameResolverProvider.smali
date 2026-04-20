.class Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;
.super Lio/grpc/NameResolverProvider;
.source "ManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectAddressNameResolverProvider"
.end annotation


# instance fields
.field final address:Ljava/net/SocketAddress;

.field final authority:Ljava/lang/String;

.field final producedSocketAddressTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "authority"    # Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Lio/grpc/NameResolverProvider;-><init>()V

    .line 754
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;->address:Ljava/net/SocketAddress;

    .line 755
    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;->authority:Ljava/lang/String;

    .line 756
    nop

    .line 757
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;->producedSocketAddressTypes:Ljava/util/Collection;

    .line 758
    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    .line 784
    const-string v0, "directaddress"

    return-object v0
.end method

.method public getProducedSocketAddressTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;->producedSocketAddressTypes:Ljava/util/Collection;

    return-object v0
.end method

.method protected isAvailable()Z
    .locals 1

    .line 789
    const/4 v0, 0x1

    return v0
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 1
    .param p1, "notUsedUri"    # Ljava/net/URI;
    .param p2, "args"    # Lio/grpc/NameResolver$Args;

    .line 762
    new-instance v0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider$1;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;)V

    return-object v0
.end method

.method protected priority()I
    .locals 1

    .line 794
    const/4 v0, 0x5

    return v0
.end method
