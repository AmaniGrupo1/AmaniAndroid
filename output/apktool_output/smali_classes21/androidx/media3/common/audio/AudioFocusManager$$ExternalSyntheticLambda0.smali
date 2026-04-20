.class public final synthetic Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/audio/AudioFocusManager;"
    method = "handlePlatformAudioFocusChange"
    proto = "(I)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/audio/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioFocusManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/common/audio/AudioFocusManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/common/audio/AudioFocusManager;

    invoke-static {v0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->$r8$lambda$K-Cg37zmwP_RajgD4dsHtFvSy9M(Landroidx/media3/common/audio/AudioFocusManager;I)V

    return-void
.end method
