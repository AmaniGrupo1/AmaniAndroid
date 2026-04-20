.class Lio/grpc/android/UdsSocket$1;
.super Ljava/io/FilterInputStream;
.source "UdsSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/android/UdsSocket;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/android/UdsSocket;


# direct methods
.method constructor <init>(Lio/grpc/android/UdsSocket;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/android/UdsSocket;
    .param p2, "arg0"    # Ljava/io/InputStream;

    .line 103
    iput-object p1, p0, Lio/grpc/android/UdsSocket$1;->this$0:Lio/grpc/android/UdsSocket;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/grpc/android/UdsSocket$1;->this$0:Lio/grpc/android/UdsSocket;

    invoke-virtual {v0}, Lio/grpc/android/UdsSocket;->close()V

    .line 107
    return-void
.end method
