.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;
.super Ljava/lang/Exception;
.source "AudioOutputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 617
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 618
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 622
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 623
    return-void
.end method
