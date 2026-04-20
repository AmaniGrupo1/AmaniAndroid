.class public final Landroidx/media3/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 37
    return-void
.end method


# virtual methods
.method public format(Landroidx/media3/common/Format;)V
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 41
    iget-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/DiscardingTrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 42
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

    .line 46
    iget-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/DiscardingTrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

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

    .line 58
    iget-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/DiscardingTrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    move-result v0

    return v0
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 51
    iget-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/DiscardingTrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 52
    return-void
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/DiscardingTrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 64
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 7
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 73
    iget-object v0, p0, Landroidx/media3/extractor/DummyTrackOutput;->discardingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

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
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/DiscardingTrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 74
    return-void
.end method
