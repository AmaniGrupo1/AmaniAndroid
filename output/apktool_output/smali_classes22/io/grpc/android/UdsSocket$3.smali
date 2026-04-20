.class Lio/grpc/android/UdsSocket$3;
.super Ljava/io/FilterOutputStream;
.source "UdsSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/android/UdsSocket;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/android/UdsSocket;


# direct methods
.method constructor <init>(Lio/grpc/android/UdsSocket;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/android/UdsSocket;
    .param p2, "arg0"    # Ljava/io/OutputStream;

    .line 138
    iput-object p1, p0, Lio/grpc/android/UdsSocket$3;->this$0:Lio/grpc/android/UdsSocket;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

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

    .line 141
    iget-object v0, p0, Lio/grpc/android/UdsSocket$3;->this$0:Lio/grpc/android/UdsSocket;

    invoke-virtual {v0}, Lio/grpc/android/UdsSocket;->close()V

    .line 142
    return-void
.end method
