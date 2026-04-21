.class public final synthetic Landroidx/media3/common/util/Util$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/util/Util;"
    method = "lambda$newSingleThreadScheduledExecutor$4"
    proto = "(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->lambda$newSingleThreadScheduledExecutor$4(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
