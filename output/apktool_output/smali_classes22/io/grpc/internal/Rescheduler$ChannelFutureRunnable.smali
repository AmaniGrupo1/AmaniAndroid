.class final Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;
.super Ljava/lang/Object;
.source "Rescheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/Rescheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChannelFutureRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/Rescheduler;


# direct methods
.method private constructor <init>(Lio/grpc/internal/Rescheduler;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/Rescheduler;Lio/grpc/internal/Rescheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/Rescheduler;
    .param p2, "x1"    # Lio/grpc/internal/Rescheduler$1;

    .line 88
    invoke-direct {p0, p1}, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;-><init>(Lio/grpc/internal/Rescheduler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 92
    iget-object v0, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-static {v0}, Lio/grpc/internal/Rescheduler;->access$300(Lio/grpc/internal/Rescheduler;)Z

    move-result v0

    .line 96
    iget-object v1, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    .line 92
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 93
    invoke-static {v1, v2}, Lio/grpc/internal/Rescheduler;->access$402(Lio/grpc/internal/Rescheduler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-static {v1}, Lio/grpc/internal/Rescheduler;->access$500(Lio/grpc/internal/Rescheduler;)J

    move-result-wide v0

    .line 97
    .local v0, "now":J
    iget-object v3, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-static {v3}, Lio/grpc/internal/Rescheduler;->access$600(Lio/grpc/internal/Rescheduler;)J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    .line 101
    iget-object v4, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    .line 97
    if-lez v3, :cond_1

    .line 98
    iget-object v3, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-static {v3}, Lio/grpc/internal/Rescheduler;->access$700(Lio/grpc/internal/Rescheduler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v5, Lio/grpc/internal/Rescheduler$FutureRunnable;

    iget-object v6, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-direct {v5, v6, v2}, Lio/grpc/internal/Rescheduler$FutureRunnable;-><init>(Lio/grpc/internal/Rescheduler;Lio/grpc/internal/Rescheduler$1;)V

    iget-object v2, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    .line 99
    invoke-static {v2}, Lio/grpc/internal/Rescheduler;->access$600(Lio/grpc/internal/Rescheduler;)J

    move-result-wide v6

    sub-long/2addr v6, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-interface {v3, v5, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v4, v2}, Lio/grpc/internal/Rescheduler;->access$402(Lio/grpc/internal/Rescheduler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 101
    :cond_1
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lio/grpc/internal/Rescheduler;->access$302(Lio/grpc/internal/Rescheduler;Z)Z

    .line 102
    iget-object v3, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-static {v3, v2}, Lio/grpc/internal/Rescheduler;->access$402(Lio/grpc/internal/Rescheduler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 103
    iget-object v2, p0, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-static {v2}, Lio/grpc/internal/Rescheduler;->access$800(Lio/grpc/internal/Rescheduler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 105
    :goto_0
    return-void
.end method
