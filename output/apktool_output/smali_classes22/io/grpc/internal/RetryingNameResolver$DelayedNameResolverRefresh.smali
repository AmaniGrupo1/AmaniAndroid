.class Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;
.super Ljava/lang/Object;
.source "RetryingNameResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetryingNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayedNameResolverRefresh"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetryingNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetryingNameResolver;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetryingNameResolver;

    .line 75
    iput-object p1, p0, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-virtual {v0}, Lio/grpc/internal/RetryingNameResolver;->refresh()V

    .line 79
    return-void
.end method
