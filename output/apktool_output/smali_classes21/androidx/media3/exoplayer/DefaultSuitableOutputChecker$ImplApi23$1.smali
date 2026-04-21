.class Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;
.super Landroid/media/AudioDeviceCallback;
.source "DefaultSuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->enable(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 209
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {v0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$600(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Landroidx/media3/common/util/BackgroundThreadStateHandler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {v1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$500(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .param p1, "removedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 214
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {v0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$600(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Landroidx/media3/common/util/BackgroundThreadStateHandler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {v1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$500(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    .line 215
    return-void
.end method
