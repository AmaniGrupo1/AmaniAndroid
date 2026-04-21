.class public final Landroidx/media3/extractor/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# instance fields
.field private final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final startOffset:J


# direct methods
.method public constructor <init>(JLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "startOffset"    # J
    .param p3, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->startOffset:J

    .line 39
    iput-object p3, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 40
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/StartOffsetExtractorOutput;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/StartOffsetExtractorOutput;

    .line 31
    iget-wide v0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->startOffset:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 50
    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 2
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 54
    iget-object v0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1, p1}, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;-><init>(Landroidx/media3/extractor/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 64
    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 44
    iget-object v0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method
