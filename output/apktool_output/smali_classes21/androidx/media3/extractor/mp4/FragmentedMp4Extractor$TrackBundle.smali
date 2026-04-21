.class final Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# static fields
.field private static final SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH:I = 0x8


# instance fields
.field private final baseFormat:Landroidx/media3/common/Format;

.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field private currentlyInFragment:Z

.field private final defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

.field public defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

.field private final encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Landroidx/media3/extractor/mp4/TrackFragment;

.field public moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

.field public final output:Landroidx/media3/extractor/TrackOutput;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Landroidx/media3/common/Format;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/TrackOutput;
    .param p2, "moovSampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p3, "defaultSampleValues"    # Landroidx/media3/extractor/mp4/DefaultSampleValues;
    .param p4, "baseFormat"    # Landroidx/media3/common/Format;

    .line 2013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2014
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 2015
    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 2016
    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 2017
    iput-object p4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->baseFormat:Landroidx/media3/common/Format;

    .line 2018
    new-instance v0, Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 2019
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 2020
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    .line 2021
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 2022
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    .line 2023
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1988
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return v0
.end method

.method static synthetic access$002(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "x1"    # Z

    .line 1988
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p1
.end method


# virtual methods
.method public getCurrentSampleFlags()I
    .locals 2

    .line 2094
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 2095
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_0

    .line 2096
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 2097
    .local v0, "flags":I
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2098
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 2100
    :cond_2
    return v0
.end method

.method public getCurrentSampleOffset()J
    .locals 3

    .line 2079
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 2080
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_0

    .line 2081
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v1, v0, v1

    .line 2079
    :goto_0
    return-wide v1
.end method

.method public getCurrentSamplePresentationTimeUs()J
    .locals 3

    .line 2072
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 2073
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_0

    .line 2074
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    .line 2072
    :goto_0
    return-wide v1
.end method

.method public getCurrentSampleSize()I
    .locals 2

    .line 2086
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 2087
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_0

    .line 2088
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    .line 2086
    :goto_0
    return v0
.end method

.method public getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 4

    .line 2247
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2249
    return-object v1

    .line 2251
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 2254
    .local v0, "sampleDescriptionIndex":I
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_1

    .line 2255
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    .line 2256
    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    :goto_0
    nop

    .line 2257
    .local v2, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public next()Z
    .locals 5

    .line 2117
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 2118
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2119
    return v2

    .line 2121
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 2122
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    .line 2123
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 2124
    iput v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 2125
    return v2

    .line 2127
    :cond_1
    return v1
.end method

.method public outputSampleEncryptionData(II)I
    .locals 18
    .param p1, "sampleSize"    # I
    .param p2, "clearHeaderSize"    # I

    .line 2142
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    .line 2143
    .local v3, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 2144
    return v4

    .line 2149
    :cond_0
    iget v5, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v5, :cond_1

    .line 2150
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 2151
    .local v5, "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    iget v6, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .local v6, "vectorSize":I
    goto :goto_0

    .line 2154
    .end local v5    # "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    .end local v6    # "vectorSize":I
    :cond_1
    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 2155
    .local v5, "initVectorData":[B
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    array-length v7, v5

    invoke-virtual {v6, v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 2156
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 2157
    .local v6, "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    array-length v7, v5

    move-object v5, v6

    move v6, v7

    .line 2160
    .local v5, "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    .local v6, "vectorSize":I
    :goto_0
    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 2161
    invoke-virtual {v7, v8}, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v7

    .line 2162
    .local v7, "haveSubsampleEncryptionTable":Z
    const/4 v8, 0x1

    if-nez v7, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v9, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v8

    .line 2165
    .local v9, "writeSubsampleEncryptionData":Z
    :goto_2
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    .line 2166
    if-eqz v9, :cond_4

    const/16 v11, 0x80

    goto :goto_3

    :cond_4
    move v11, v4

    :goto_3
    or-int/2addr v11, v6

    int-to-byte v11, v11

    aput-byte v11, v10, v4

    .line 2167
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2168
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v10, v11, v8, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2170
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v10, v5, v6, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2173
    if-nez v9, :cond_5

    .line 2174
    add-int/lit8 v4, v6, 0x1

    return v4

    .line 2177
    :cond_5
    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x8

    if-nez v7, :cond_6

    .line 2181
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 2183
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v13

    .line 2184
    .local v13, "data":[B
    aput-byte v4, v13, v4

    .line 2185
    aput-byte v8, v13, v8

    .line 2187
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v11

    .line 2188
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v10

    .line 2190
    shr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x4

    aput-byte v4, v13, v10

    .line 2191
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x5

    aput-byte v4, v13, v10

    .line 2192
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x6

    aput-byte v4, v13, v10

    .line 2193
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x7

    aput-byte v4, v13, v10

    .line 2194
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v4, v10, v12, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2198
    add-int/lit8 v4, v6, 0x1

    add-int/2addr v4, v12

    return v4

    .line 2201
    .end local v13    # "data":[B
    :cond_6
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v13, v13, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 2202
    .local v13, "subsampleEncryptionData":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 2203
    .local v14, "subsampleCount":I
    const/4 v15, -0x2

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2204
    mul-int/lit8 v15, v14, 0x6

    add-int/2addr v15, v11

    .line 2206
    .local v15, "subsampleDataLength":I
    if-eqz v2, :cond_7

    .line 2209
    move/from16 v16, v10

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v15}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 2210
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    .line 2211
    .local v10, "scratchData":[B
    invoke-virtual {v13, v10, v4, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2213
    aget-byte v4, v10, v11

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v12

    aget-byte v12, v10, v16

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v4, v12

    .line 2214
    .local v4, "clearDataSize":I
    add-int v12, v4, v2

    .line 2215
    .local v12, "adjustedClearDataSize":I
    move/from16 v17, v11

    shr-int/lit8 v11, v12, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v17

    .line 2216
    and-int/lit16 v11, v12, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v16

    .line 2217
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 2220
    .end local v4    # "clearDataSize":I
    .end local v10    # "scratchData":[B
    .end local v12    # "adjustedClearDataSize":I
    :cond_7
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4, v13, v15, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2222
    add-int/lit8 v4, v6, 0x1

    add-int/2addr v4, v15

    return v4
.end method

.method public reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V
    .locals 2
    .param p1, "moovSampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p2, "defaultSampleValues"    # Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 2026
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 2027
    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 2028
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->baseFormat:Landroidx/media3/common/Format;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 2029
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    .line 2030
    return-void
.end method

.method public resetFragmentInfo()V
    .locals 1

    .line 2045
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/TrackFragment;->reset()V

    .line 2046
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 2047
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 2048
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 2049
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 2050
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    .line 2051
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .line 2060
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 2061
    .local v0, "searchIndex":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 2062
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_1

    .line 2063
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 2064
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 2066
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2068
    :cond_1
    return-void
.end method

.method public skipSampleEncryptionData()V
    .locals 4

    .line 2231
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 2232
    .local v0, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-nez v0, :cond_0

    .line 2233
    return-void

    .line 2236
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 2237
    .local v1, "sampleEncryptionData":Landroidx/media3/common/util/ParsableByteArray;
    iget v2, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    .line 2238
    iget v2, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2240
    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2241
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2243
    :cond_2
    return-void
.end method

.method public updateDrmInitData(Landroidx/media3/common/DrmInitData;)V
    .locals 5
    .param p1, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 2034
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 2036
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 2035
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 2037
    .local v0, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2038
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v2

    .line 2039
    .local v2, "updatedDrmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->baseFormat:Landroidx/media3/common/Format;

    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 2040
    .local v3, "format":Landroidx/media3/common/Format;
    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 2041
    return-void
.end method
