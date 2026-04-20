.class public final synthetic Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/audio/AudioManagerCompat;"
    method = "lambda$getAudioManager$0"
    proto = "(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroidx/media3/common/util/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/util/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/util/ConditionVariable;

    invoke-static {v0, v1}, Landroidx/media3/common/audio/AudioManagerCompat;->lambda$getAudioManager$0(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V

    return-void
.end method
