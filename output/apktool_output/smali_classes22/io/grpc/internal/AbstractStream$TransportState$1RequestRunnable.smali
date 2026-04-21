.class Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/AbstractStream$TransportState;->requestMessagesFromDeframer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/AbstractStream$TransportState;

.field final synthetic val$link:Lio/perfmark/Link;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/internal/AbstractStream$TransportState;Lio/perfmark/Link;I)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/AbstractStream$TransportState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->this$0:Lio/grpc/internal/AbstractStream$TransportState;

    iput-object p2, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$link:Lio/perfmark/Link;

    iput p3, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    :try_start_0
    const-string v0, "AbstractStream.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 232
    .local v0, "ignore":Lio/perfmark/TaskCloseable;
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$link:Lio/perfmark/Link;

    invoke-static {v1}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 233
    iget-object v1, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->this$0:Lio/grpc/internal/AbstractStream$TransportState;

    invoke-static {v1}, Lio/grpc/internal/AbstractStream$TransportState;->access$300(Lio/grpc/internal/AbstractStream$TransportState;)Lio/grpc/internal/Deframer;

    move-result-object v1

    iget v2, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$numMessages:I

    invoke-interface {v1, v2}, Lio/grpc/internal/Deframer;->request(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 236
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :cond_0
    goto :goto_1

    .line 231
    .restart local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 234
    .end local v0    # "ignore":Lio/perfmark/TaskCloseable;
    :catchall_2
    move-exception v0

    .line 235
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->this$0:Lio/grpc/internal/AbstractStream$TransportState;

    invoke-virtual {v1, v0}, Lio/grpc/internal/AbstractStream$TransportState;->deframeFailed(Ljava/lang/Throwable;)V

    .line 237
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
