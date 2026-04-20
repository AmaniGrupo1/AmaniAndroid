.class final Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;
.super Ljava/lang/Object;
.source "BoxParser.java"

# interfaces
.implements Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field private final data:Landroidx/media3/common/util/ParsableByteArray;

.field private final fixedSampleSize:I

.field private final sampleCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V
    .locals 4
    .param p1, "stszAtom"    # Landroidx/media3/container/Mp4Box$LeafBox;
    .param p2, "trackFormat"    # Landroidx/media3/common/Format;

    .line 2929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2930
    iget-object v0, p1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 2931
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2932
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 2933
    .local v0, "fixedSampleSize":I
    const-string v1, "audio/raw"

    iget-object v2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2934
    iget v1, p2, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v2, p2, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v1

    .line 2935
    .local v1, "pcmFrameSize":I
    rem-int v2, v0, v1

    if-eqz v2, :cond_0

    .line 2939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stsz sample size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoxParsers"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    move v0, v1

    .line 2948
    .end local v1    # "pcmFrameSize":I
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->fixedSampleSize:I

    .line 2949
    iget-object v1, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->sampleCount:I

    .line 2950
    return-void
.end method


# virtual methods
.method public getFixedSampleSize()I
    .locals 1

    .line 2959
    iget v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->fixedSampleSize:I

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    .line 2954
    iget v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->sampleCount:I

    return v0
.end method

.method public readNextSampleSize()I
    .locals 2

    .line 2964
    iget v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->fixedSampleSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->fixedSampleSize:I

    :goto_0
    return v0
.end method
