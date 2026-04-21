.class public final Landroidx/media3/extractor/DiscardingTrackOutput;
.super Ljava/lang/Object;
.source "DiscardingTrackOutput.java"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# instance fields
.field private final readBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/DiscardingTrackOutput;->readBuffer:[B

    .line 41
    return-void
.end method


# virtual methods
.method public format(Landroidx/media3/common/Format;)V
    .locals 0
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 46
    return-void
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 3
    .param p1, "input"    # Landroidx/media3/common/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .param p4, "sampleDataPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/media3/extractor/DiscardingTrackOutput;->readBuffer:[B

    array-length v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    .local v0, "bytesToSkipByReading":I
    iget-object v1, p0, Landroidx/media3/extractor/DiscardingTrackOutput;->readBuffer:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    .line 54
    .local v1, "bytesSkipped":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 55
    if-eqz p3, :cond_0

    .line 56
    return v2

    .line 58
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 60
    :cond_1
    return v1
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 0
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 65
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 0
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 76
    return-void
.end method
