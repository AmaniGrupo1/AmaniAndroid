.class public final synthetic Lcoil/network/CacheResponse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcoil/network/CacheResponse;"
    method = "cacheControl_delegate$lambda$0"
    proto = "(Lcoil/network/CacheResponse;)Lokhttp3/CacheControl;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcoil/network/CacheResponse;


# direct methods
.method public synthetic constructor <init>(Lcoil/network/CacheResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/network/CacheResponse$$ExternalSyntheticLambda0;->f$0:Lcoil/network/CacheResponse;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcoil/network/CacheResponse$$ExternalSyntheticLambda0;->f$0:Lcoil/network/CacheResponse;

    invoke-static {v0}, Lcoil/network/CacheResponse;->cacheControl_delegate$lambda$0(Lcoil/network/CacheResponse;)Lokhttp3/CacheControl;

    move-result-object v0

    return-object v0
.end method
