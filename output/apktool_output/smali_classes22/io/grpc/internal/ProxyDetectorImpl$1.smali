.class Lio/grpc/internal/ProxyDetectorImpl$1;
.super Ljava/lang/Object;
.source "ProxyDetectorImpl.java"

# interfaces
.implements Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ProxyDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "prompt"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;

    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, "url":Ljava/net/URL;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v3, ""

    invoke-direct {v0, p4, p1, p3, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 137
    move-object v7, v2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lio/grpc/internal/ProxyDetectorImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "failed to create URL for Authenticator: {0} {1}"

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v2

    .line 139
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v2    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    :goto_0
    sget-object v8, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v8}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method
