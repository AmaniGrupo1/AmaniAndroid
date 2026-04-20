.class public final Landroidx/media3/extractor/NoOpExtractorOutput;
.super Ljava/lang/Object;
.source "NoOpExtractorOutput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    .line 32
    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 37
    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 26
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object v0
.end method
