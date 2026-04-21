.class public final Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;
.super Ljava/lang/Object;
.source "PickFirstLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickFirstLoadBalancerConfig"
.end annotation


# instance fields
.field final randomSeed:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final shuffleAddressList:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "shuffleAddressList"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 231
    return-void
.end method

.method constructor <init>(Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0
    .param p1, "shuffleAddressList"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "randomSeed"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;->shuffleAddressList:Ljava/lang/Boolean;

    .line 235
    iput-object p2, p0, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;->randomSeed:Ljava/lang/Long;

    .line 236
    return-void
.end method
