.class Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/MigratingThreadDeframer$Op;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeframeOp"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;

.field final synthetic val$data:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/MigratingThreadDeframer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iput-object p2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 215
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 216
    return-void
.end method

.method public run(Z)V
    .locals 3
    .param p1, "isDeframerOnTransportThread"    # Z

    .line 199
    const-string v0, "MigratingThreadDeframer.deframe"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 200
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    nop

    .line 206
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    .line 200
    if-eqz p1, :cond_1

    .line 201
    :try_start_0
    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {v1, v2}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 202
    :cond_0
    return-void

    .line 199
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 206
    :cond_1
    :try_start_1
    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {v1, v2}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    goto :goto_0

    .line 207
    :catchall_1
    move-exception v1

    .line 208
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v2}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/internal/ApplicationThreadDeframerListener;->deframeFailed(Ljava/lang/Throwable;)V

    .line 209
    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v2}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/MessageDeframer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    .line 212
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_2
    return-void

    .line 199
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :goto_1
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method
