.class public abstract Landroidx/media3/decoder/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 85
    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    .line 86
    return-void
.end method

.method public clear()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    .line 32
    return-void
.end method

.method public final clearFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 94
    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    .line 95
    return-void
.end method

.method protected final getFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 104
    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasSupplementalData()Z
    .locals 1

    .line 60
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isEndOfStream()Z
    .locals 1

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isFirstSample()Z
    .locals 1

    .line 36
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isKeyFrame()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isLastSample()Z
    .locals 1

    .line 55
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final notDependedOn()Z
    .locals 1

    .line 65
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 75
    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    .line 76
    return-void
.end method
