.class Lio/grpc/okhttp/AsyncSink$2;
.super Lio/grpc/okhttp/AsyncSink$WriteRunnable;
.source "AsyncSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncSink;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final link:Lio/perfmark/Link;

.field final synthetic this$0:Lio/grpc/okhttp/AsyncSink;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncSink;)V
    .locals 1
    .param p1, "this$0"    # Lio/grpc/okhttp/AsyncSink;

    .line 166
    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink$2;->this$0:Lio/grpc/okhttp/AsyncSink;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/AsyncSink$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/AsyncSink$1;)V

    .line 167
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink$2;->link:Lio/perfmark/Link;

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 171
    .local v0, "buf":Lokio/Buffer;
    const-string v1, "WriteRunnable.runFlush"

    invoke-static {v1}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v1

    .line 172
    .local v1, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink$2;->link:Lio/perfmark/Link;

    invoke-static {v2}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 173
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink$2;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v2}, Lio/grpc/okhttp/AsyncSink;->access$100(Lio/grpc/okhttp/AsyncSink;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    iget-object v3, p0, Lio/grpc/okhttp/AsyncSink$2;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v3}, Lio/grpc/okhttp/AsyncSink;->access$200(Lio/grpc/okhttp/AsyncSink;)Lokio/Buffer;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/okhttp/AsyncSink$2;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v4}, Lio/grpc/okhttp/AsyncSink;->access$200(Lio/grpc/okhttp/AsyncSink;)Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 175
    iget-object v3, p0, Lio/grpc/okhttp/AsyncSink$2;->this$0:Lio/grpc/okhttp/AsyncSink;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/grpc/okhttp/AsyncSink;->access$602(Lio/grpc/okhttp/AsyncSink;Z)Z

    .line 176
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink$2;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v2}, Lio/grpc/okhttp/AsyncSink;->access$500(Lio/grpc/okhttp/AsyncSink;)Lokio/Sink;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-interface {v2, v0, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 178
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink$2;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v2}, Lio/grpc/okhttp/AsyncSink;->access$500(Lio/grpc/okhttp/AsyncSink;)Lokio/Sink;

    move-result-object v2

    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/perfmark/TaskCloseable;->close()V

    .line 180
    .end local v1    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    return-void

    .line 176
    .restart local v1    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "buf":Lokio/Buffer;
    .end local v1    # "ignore":Lio/perfmark/TaskCloseable;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    .restart local v0    # "buf":Lokio/Buffer;
    .restart local v1    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method
