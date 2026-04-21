.class public Landroidx/media3/extractor/ForwardingTrackOutput;
.super Ljava/lang/Object;
.source "ForwardingTrackOutput.java"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# instance fields
.field private final trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0
    .param p1, "trackOutput"    # Landroidx/media3/extractor/TrackOutput;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 37
    return-void
.end method


# virtual methods
.method public durationUs(J)V
    .locals 1
    .param p1, "durationUs"    # J

    .line 41
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 42
    return-void
.end method

.method public format(Landroidx/media3/common/Format;)V
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 46
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 47
    return-void
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZ)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/common/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/common/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .param p4, "sampleDataPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    move-result v0

    return v0
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 56
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 57
    return-void
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 68
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 69
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 7
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 78
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "timeUs":J
    .end local p3    # "flags":I
    .end local p4    # "size":I
    .end local p5    # "offset":I
    .end local p6    # "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    .local v1, "timeUs":J
    .local v3, "flags":I
    .local v4, "size":I
    .local v5, "offset":I
    .local v6, "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 79
    return-void
.end method
