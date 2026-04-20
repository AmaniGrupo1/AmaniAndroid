.class public final synthetic Lcoil/ImageLoader$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcoil/ImageLoader$Builder;"
    method = "build$lambda$34"
    proto = "(Lcoil/ImageLoader$Builder;)Lcoil/disk/DiskCache;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcoil/ImageLoader$Builder;


# direct methods
.method public synthetic constructor <init>(Lcoil/ImageLoader$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Lcoil/ImageLoader$Builder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcoil/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Lcoil/ImageLoader$Builder;

    invoke-static {v0}, Lcoil/ImageLoader$Builder;->build$lambda$34(Lcoil/ImageLoader$Builder;)Lcoil/disk/DiskCache;

    move-result-object v0

    return-object v0
.end method
