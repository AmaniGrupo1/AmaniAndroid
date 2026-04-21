.class public final Landroidx/media3/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# instance fields
.field private final containerMimeType:Ljava/lang/String;

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Landroidx/media3/extractor/ts/SeiReader;

.field private final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field private final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SeiReader;Ljava/lang/String;)V
    .locals 3
    .param p1, "seiReader"    # Landroidx/media3/extractor/ts/SeiReader;
    .param p2, "containerMimeType"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    .line 74
    iput-object p2, p0, Landroidx/media3/extractor/ts/H265Reader;->containerMimeType:Ljava/lang/String;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 76
    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x20

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 79
    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 80
    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 81
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    .line 82
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 83
    return-void
.end method

.method private assertTracksCreated()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->endNalUnit(JIZ)V

    .line 214
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 216
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 217
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 218
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, p0, Landroidx/media3/extractor/ts/H265Reader;->containerMimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media3/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Ljava/lang/String;)Landroidx/media3/common/Format;

    move-result-object v0

    .line 220
    .local v0, "format":Landroidx/media3/common/Format;
    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 221
    iget v1, v0, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 222
    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    iget v2, v0, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/ts/SeiReader;->setReorderingQueueSize(I)V

    .line 223
    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 226
    .end local v0    # "format":Landroidx/media3/common/Format;
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v2}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 228
    .local v0, "unescapedLength":I
    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v2, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 231
    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 232
    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    iget-object v3, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, p5, p6, v3}, Landroidx/media3/extractor/ts/SeiReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 234
    .end local v0    # "unescapedLength":I
    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v2}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 236
    .restart local v0    # "unescapedLength":I
    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v2, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 239
    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 240
    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Landroidx/media3/extractor/ts/SeiReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 242
    .end local v0    # "unescapedLength":I
    :cond_3
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    .line 202
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 204
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 205
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 208
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 209
    return-void
.end method

.method private static parseMediaFormat(Ljava/lang/String;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Ljava/lang/String;)Landroidx/media3/common/Format;
    .locals 10
    .param p0, "formatId"    # Ljava/lang/String;
    .param p1, "vps"    # Landroidx/media3/extractor/ts/NalUnitTargetBuffer;
    .param p2, "sps"    # Landroidx/media3/extractor/ts/NalUnitTargetBuffer;
    .param p3, "pps"    # Landroidx/media3/extractor/ts/NalUnitTargetBuffer;
    .param p4, "containerMimeType"    # Ljava/lang/String;

    .line 251
    iget v0, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v1, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v1

    iget v1, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 252
    .local v0, "csdData":[B
    iget-object v1, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget-object v1, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget-object v1, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v4

    iget v4, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget-object v1, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 258
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v1

    .line 261
    .local v1, "spsData":Landroidx/media3/container/NalUnitUtil$H265SpsData;
    const/4 v2, 0x0

    .line 262
    .local v2, "codecs":Ljava/lang/String;
    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v4, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget-boolean v5, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v6, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v7, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget-object v8, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v9, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    .line 264
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    .line 272
    :cond_0
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 273
    invoke-virtual {v3, p0}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 274
    invoke-virtual {v3, p4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 275
    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 276
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 277
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 278
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->decodedWidth:I

    .line 279
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setDecodedWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->decodedHeight:I

    .line 280
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setDecodedHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v4}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 283
    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 284
    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    .line 285
    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v5, v5, 0x8

    .line 286
    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v5, v5, 0x8

    .line 287
    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    .line 281
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 289
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 290
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    add-int/lit8 v4, v4, 0x1

    .line 291
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setMaxSubLayers(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 292
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 293
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 272
    return-object v3
.end method

.method private startNalUnit(JIIJ)V
    .locals 8
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v7, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .end local p1    # "position":J
    .end local p3    # "offset":I
    .end local p4    # "nalUnitType":I
    .end local p5    # "pesTimeUs":J
    .local v1, "position":J
    .local v3, "offset":I
    .local v4, "nalUnitType":I
    .local v5, "pesTimeUs":J
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJZ)V

    .line 190
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 192
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 193
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 195
    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 196
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 197
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 15
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 118
    invoke-direct {p0}, Landroidx/media3/extractor/ts/H265Reader;->assertTracksCreated()V

    .line 120
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_5

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 122
    .local v1, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v7

    .line 123
    .local v7, "limit":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    .line 126
    .local v8, "dataArray":[B
    iget-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 127
    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    move-object/from16 v9, p1

    invoke-interface {v2, v9, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    move v10, v1

    .line 130
    .end local v1    # "offset":I
    .local v10, "offset":I
    :goto_1
    if-ge v10, v7, :cond_4

    .line 131
    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v8, v10, v7, v1}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v1

    .line 133
    .local v1, "nalUnitOffset":I
    if-ne v1, v7, :cond_0

    .line 135
    invoke-direct {p0, v8, v10, v7}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 136
    return-void

    .line 140
    :cond_0
    invoke-static {v8, v1}, Landroidx/media3/container/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v11

    .line 144
    .local v11, "nalUnitType":I
    const/4 v2, 0x3

    .line 145
    .local v2, "prefixSize":I
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v8, v3

    if-nez v3, :cond_1

    .line 146
    add-int/lit8 v1, v1, -0x1

    .line 147
    const/4 v2, 0x4

    move v12, v1

    move v13, v2

    goto :goto_2

    .line 152
    :cond_1
    move v12, v1

    move v13, v2

    .end local v1    # "nalUnitOffset":I
    .end local v2    # "prefixSize":I
    .local v12, "nalUnitOffset":I
    .local v13, "prefixSize":I
    :goto_2
    sub-int v14, v12, v10

    .line 153
    .local v14, "lengthToNalUnit":I
    if-lez v14, :cond_2

    .line 154
    invoke-direct {p0, v8, v10, v12}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 157
    :cond_2
    sub-int v3, v7, v12

    .line 158
    .local v3, "bytesWrittenPastPosition":I
    iget-wide v1, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v4, v3

    sub-long/2addr v1, v4

    .line 162
    .local v1, "absolutePosition":J
    nop

    .line 165
    if-gez v14, :cond_3

    neg-int v4, v14

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    .line 162
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 168
    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v11

    .end local v11    # "nalUnitType":I
    .local v4, "nalUnitType":I
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 170
    add-int v10, v12, v13

    .line 171
    .end local v1    # "absolutePosition":J
    .end local v3    # "bytesWrittenPastPosition":I
    .end local v4    # "nalUnitType":I
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "prefixSize":I
    .end local v14    # "lengthToNalUnit":I
    goto :goto_1

    .line 172
    .end local v7    # "limit":I
    .end local v8    # "dataArray":[B
    .end local v10    # "offset":I
    :cond_4
    goto :goto_0

    .line 173
    :cond_5
    move-object/from16 v9, p1

    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 103
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 104
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 106
    new-instance v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    .line 107
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ts/SeiReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 108
    return-void
.end method

.method public packetFinished(Z)V
    .locals 7
    .param p1, "isEndOfInput"    # Z

    .line 177
    invoke-direct {p0}, Landroidx/media3/extractor/ts/H265Reader;->assertTracksCreated()V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/SeiReader;->flush()V

    .line 182
    iget-wide v1, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const/4 v4, 0x0

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 183
    iget-wide v1, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const/16 v4, 0x30

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 185
    :cond_0
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 113
    iput-wide p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    .line 114
    return-void
.end method

.method public seek()V
    .locals 2

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 88
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    .line 89
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 90
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 91
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 92
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 93
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 94
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 95
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/SeiReader;->clear()V

    .line 96
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->reset()V

    .line 99
    :cond_0
    return-void
.end method
