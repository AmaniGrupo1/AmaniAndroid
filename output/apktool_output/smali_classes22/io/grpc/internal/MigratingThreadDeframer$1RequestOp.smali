.class Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/MigratingThreadDeframer$Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer;->request(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestOp"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;I)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/MigratingThreadDeframer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iput p2, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 3
    .param p1, "isDeframerOnTransportThread"    # Z

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 143
    .local v0, "link":Lio/perfmark/Link;
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$300(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp$1;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp$1;-><init>(Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;Lio/perfmark/Link;)V

    invoke-interface {v1, v2}, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    .line 154
    return-void

    .line 156
    .end local v0    # "link":Lio/perfmark/Link;
    :cond_0
    :try_start_0
    const-string v0, "MigratingThreadDeframer.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 157
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    iget v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->val$numMessages:I

    invoke-virtual {v1, v2}, Lio/grpc/internal/MessageDeframer;->request(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 161
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_1
    goto :goto_1

    .line 156
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "isDeframerOnTransportThread":Z
    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 158
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    .restart local p1    # "isDeframerOnTransportThread":Z
    :catchall_2
    move-exception v0

    .line 159
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/internal/ApplicationThreadDeframerListener;->deframeFailed(Ljava/lang/Throwable;)V

    .line 160
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/MessageDeframer;->close()V

    .line 162
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
