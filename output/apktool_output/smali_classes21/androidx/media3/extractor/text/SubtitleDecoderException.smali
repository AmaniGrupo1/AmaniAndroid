.class public Landroidx/media3/extractor/text/SubtitleDecoderException;
.super Landroidx/media3/decoder/DecoderException;
.source "SubtitleDecoderException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/decoder/DecoderException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1}, Landroidx/media3/decoder/DecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
