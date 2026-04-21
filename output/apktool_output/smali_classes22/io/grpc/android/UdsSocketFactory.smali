.class Lio/grpc/android/UdsSocketFactory;
.super Ljavax/net/SocketFactory;
.source "UdsSocketFactory.java"


# instance fields
.field private final localSocketAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "namespace"    # Landroid/net/LocalSocketAddress$Namespace;

    .line 36
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 37
    new-instance v0, Landroid/net/LocalSocketAddress;

    invoke-direct {v0, p1, p2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lio/grpc/android/UdsSocketFactory;->localSocketAddress:Landroid/net/LocalSocketAddress;

    .line 38
    return-void
.end method

.method private create()Ljava/net/Socket;
    .locals 2

    .line 68
    new-instance v0, Lio/grpc/android/UdsSocket;

    iget-object v1, p0, Lio/grpc/android/UdsSocketFactory;->localSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-direct {v0, v1}, Lio/grpc/android/UdsSocket;-><init>(Landroid/net/LocalSocketAddress;)V

    return-object v0
.end method

.method private createAndConnect()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lio/grpc/android/UdsSocketFactory;->create()Ljava/net/Socket;

    move-result-object v0

    .line 73
    .local v0, "socket":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 74
    .local v1, "unusedAddress":Ljava/net/SocketAddress;
    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lio/grpc/android/UdsSocketFactory;->create()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lio/grpc/android/UdsSocketFactory;->createAndConnect()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/grpc/android/UdsSocketFactory;->createAndConnect()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lio/grpc/android/UdsSocketFactory;->createAndConnect()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lio/grpc/android/UdsSocketFactory;->createAndConnect()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
