.class public final Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationException"
.end annotation


# instance fields
.field public final format:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/common/Format;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "format"    # Landroidx/media3/common/Format;

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 235
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->format:Landroidx/media3/common/Format;

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "format"    # Landroidx/media3/common/Format;

    .line 228
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 229
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->format:Landroidx/media3/common/Format;

    .line 230
    return-void
.end method
