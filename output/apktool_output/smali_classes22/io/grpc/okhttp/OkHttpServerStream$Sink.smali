.class Lio/grpc/okhttp/OkHttpServerStream$Sink;
.super Ljava/lang/Object;
.source "OkHttpServerStream.java"

# interfaces
.implements Lio/grpc/internal/AbstractServerStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sink"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerStream;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpServerStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/okhttp/OkHttpServerStream;

    .line 84
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 4
    .param p1, "reason"    # Lio/grpc/Status;

    .line 125
    const-string v0, "OkHttpServerStream$Sink.cancel"

    .line 126
    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 127
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {v2, v3, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$800(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 129
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 131
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 129
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .end local p1    # "reason":Lio/grpc/Status;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local p1    # "reason":Lio/grpc/Status;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZI)V
    .locals 5
    .param p1, "frame"    # Lio/grpc/internal/WritableBuffer;
    .param p2, "flush"    # Z
    .param p3, "numMessages"    # I

    .line 98
    const-string v0, "OkHttpServerStream$Sink.writeFrame"

    .line 99
    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 100
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    move-object v1, p1

    check-cast v1, Lio/grpc/okhttp/OkHttpWritableBuffer;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer()Lokio/Buffer;

    move-result-object v1

    .line 101
    .local v1, "buffer":Lokio/Buffer;
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v2, v2

    .line 102
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 103
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v3, v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$400(Lio/grpc/okhttp/OkHttpServerStream;I)V

    .line 105
    :cond_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v4

    invoke-static {v4, v1, p2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$500(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lokio/Buffer;Z)V

    .line 107
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerStream;->access$600(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/internal/TransportTracer;

    move-result-object v4

    invoke-virtual {v4, p3}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    .line 108
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v1    # "buffer":Lokio/Buffer;
    .end local v2    # "size":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 110
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_1
    return-void

    .line 108
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local v1    # "buffer":Lokio/Buffer;
    .restart local v2    # "size":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .end local p1    # "frame":Lio/grpc/internal/WritableBuffer;
    .end local p2    # "flush":Z
    .end local p3    # "numMessages":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    .end local v1    # "buffer":Lokio/Buffer;
    .end local v2    # "size":I
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local p1    # "frame":Lio/grpc/internal/WritableBuffer;
    .restart local p2    # "flush":Z
    .restart local p3    # "numMessages":I
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public writeHeaders(Lio/grpc/Metadata;Z)V
    .locals 4
    .param p1, "metadata"    # Lio/grpc/Metadata;
    .param p2, "flush"    # Z

    .line 87
    const-string v0, "OkHttpServerStream$Sink.writeHeaders"

    .line 88
    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 89
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    invoke-static {p1}, Lio/grpc/okhttp/Headers;->createResponseHeaders(Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v3

    invoke-static {v3, v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    .line 92
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 94
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 92
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .end local p1    # "metadata":Lio/grpc/Metadata;
    .end local p2    # "flush":Z
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .end local v1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local p1    # "metadata":Lio/grpc/Metadata;
    .restart local p2    # "flush":Z
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public writeTrailers(Lio/grpc/Metadata;ZLio/grpc/Status;)V
    .locals 4
    .param p1, "trailers"    # Lio/grpc/Metadata;
    .param p2, "headersSent"    # Z
    .param p3, "status"    # Lio/grpc/Status;

    .line 114
    const-string v0, "OkHttpServerStream$Sink.writeTrailers"

    .line 115
    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 116
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    invoke-static {p1, p2}, Lio/grpc/okhttp/Headers;->createResponseTrailers(Lio/grpc/Metadata;Z)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v3

    invoke-static {v3, v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$700(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    .line 119
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v1    # "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 121
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 119
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local v1    # "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .end local p1    # "trailers":Lio/grpc/Metadata;
    .end local p2    # "headersSent":Z
    .end local p3    # "status":Lio/grpc/Status;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    .end local v1    # "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local p1    # "trailers":Lio/grpc/Metadata;
    .restart local p2    # "headersSent":Z
    .restart local p3    # "status":Lio/grpc/Status;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
