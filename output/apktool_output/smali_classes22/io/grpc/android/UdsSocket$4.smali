.class Lio/grpc/android/UdsSocket$4;
.super Ljava/net/SocketAddress;
.source "UdsSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/android/UdsSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/android/UdsSocket;


# direct methods
.method constructor <init>(Lio/grpc/android/UdsSocket;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/android/UdsSocket;

    .line 162
    iput-object p1, p0, Lio/grpc/android/UdsSocket$4;->this$0:Lio/grpc/android/UdsSocket;

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method
