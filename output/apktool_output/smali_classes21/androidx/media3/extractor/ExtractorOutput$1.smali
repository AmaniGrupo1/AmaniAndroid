.class Landroidx/media3/extractor/ExtractorOutput$1;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ExtractorOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 1
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
