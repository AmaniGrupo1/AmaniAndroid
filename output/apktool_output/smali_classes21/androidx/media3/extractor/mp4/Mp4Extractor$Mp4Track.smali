.class final Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public pendingFormat:Landroidx/media3/common/Format;

.field public sampleIndex:I

.field public final sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

.field public final track:Landroidx/media3/extractor/mp4/Track;

.field public final trackOutput:Landroidx/media3/extractor/TrackOutput;

.field public final trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V
    .locals 2
    .param p1, "track"    # Landroidx/media3/extractor/mp4/Track;
    .param p2, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p3, "trackOutput"    # Landroidx/media3/extractor/TrackOutput;

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    .line 1294
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1295
    iput-object p3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 1296
    nop

    .line 1297
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/true-hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    new-instance v0, Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {v0}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    goto :goto_0

    .line 1299
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 1300
    return-void
.end method
