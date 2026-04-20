.class public final Landroidx/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;,
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;,
        Landroidx/media3/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_EMIT_RAW_SUBTITLE_DATA:I = 0x10

.field public static final FLAG_MARK_FIRST_VIDEO_TRACK_WITH_MAIN_ROLE:I = 0x8

.field public static final FLAG_OMIT_TRACK_SAMPLE_TABLE:I = 0x100

.field public static final FLAG_READ_AUXILIARY_TRACKS:I = 0x40

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES:I = 0x20

.field public static final FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES_H265:I = 0x80

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final MAX_DURATION_US_TO_SCAN_FOR_THUMBNAIL:J = 0x989680L

.field private static final MAX_SYNC_SAMPLES_TO_SCAN_FOR_THUMBNAIL:I = 0x14

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Landroidx/media3/common/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private axteAtomOffset:J

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private fileType:I

.field private final flags:I

.field private isSampleDependedOn:Z

.field private lastSniffFailures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation
.end field

.field private moovAtomProcessed:Z

.field private motionPhotoMetadata:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

.field private final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private final omitTrackSampleTable:Z

.field private parserState:I

.field private readingAuxiliaryTracks:Z

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleOffsetForAuxiliaryTracks:J

.field private sampleTrackIndex:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private seekToAxteAtom:Z

.field private seenFtypAtom:Z

.field private final sefReader:Landroidx/media3/extractor/mp4/SefReader;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 285
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 3
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p2, "flags"    # I

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 315
    iput p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    .line 316
    and-int/lit16 v0, p2, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->omitTrackSampleTable:Z

    .line 317
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    .line 318
    nop

    .line 319
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 320
    new-instance v0, Landroidx/media3/extractor/mp4/SefReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/SefReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 322
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 323
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 324
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v2, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 325
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 326
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 328
    sget-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 329
    new-array v0, v1, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 330
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "x1"    # J

    .line 80
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 80
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static brandToFileType(I)I
    .locals 1
    .param p0, "brand"    # I

    .line 1233
    sparse-switch p0, :sswitch_data_0

    .line 1239
    const/4 v0, 0x0

    return v0

    .line 1235
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 1237
    :sswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x68656963 -> :sswitch_1
        0x71742020 -> :sswitch_0
    .end sparse-switch
.end method

.method private static calculateAccumulatedSampleSizes([Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .locals 14
    .param p0, "tracks"    # [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 1136
    array-length v0, p0

    new-array v0, v0, [[J

    .line 1137
    .local v0, "accumulatedSampleSizes":[[J
    array-length v1, p0

    new-array v1, v1, [I

    .line 1138
    .local v1, "nextSampleIndex":[I
    array-length v2, p0

    new-array v2, v2, [J

    .line 1139
    .local v2, "nextSampleTimesUs":[J
    array-length v3, p0

    new-array v3, v3, [Z

    .line 1140
    .local v3, "tracksFinished":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 1141
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v5, v5, [J

    aput-object v5, v0, v4

    .line 1142
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v2, v4

    .line 1140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1144
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v4, 0x0

    .line 1145
    .local v4, "accumulatedSampleSize":J
    const/4 v6, 0x0

    .line 1146
    .local v6, "finishedTracks":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_4

    .line 1147
    const-wide v7, 0x7fffffffffffffffL

    .line 1148
    .local v7, "minTimeUs":J
    const/4 v9, -0x1

    .line 1149
    .local v9, "minTimeTrackIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, p0

    if-ge v10, v11, :cond_2

    .line 1150
    aget-boolean v11, v3, v10

    if-nez v11, :cond_1

    aget-wide v11, v2, v10

    cmp-long v11, v11, v7

    if-gtz v11, :cond_1

    .line 1151
    move v9, v10

    .line 1152
    aget-wide v7, v2, v10

    .line 1149
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1155
    .end local v10    # "i":I
    :cond_2
    aget v10, v1, v9

    .line 1156
    .local v10, "trackSampleIndex":I
    aget-object v11, v0, v9

    aput-wide v4, v11, v10

    .line 1157
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v11, v11, v10

    int-to-long v11, v11

    add-long/2addr v4, v11

    .line 1158
    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 1159
    aget-object v12, v0, v9

    array-length v12, v12

    if-ge v10, v12, :cond_3

    .line 1160
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v11, v10

    aput-wide v12, v2, v9

    goto :goto_3

    .line 1163
    :cond_3
    aput-boolean v11, v3, v9

    .line 1164
    add-int/lit8 v6, v6, 0x1

    .line 1166
    .end local v7    # "minTimeUs":J
    .end local v9    # "minTimeTrackIndex":I
    .end local v10    # "trackSampleIndex":I
    :goto_3
    goto :goto_1

    .line 1167
    :cond_4
    return-object v0
.end method

.method private canReadWithinGopSampleDependencies(Landroidx/media3/common/Format;)Z
    .locals 4
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 1122
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1123
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1125
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/hevc"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 1128
    :cond_3
    return v2
.end method

.method public static codecsToParseWithinGopSampleDependenciesAsFlags(I)I
    .locals 2
    .param p0, "videoCodecFlags"    # I

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "flags":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 341
    or-int/lit8 v0, v0, 0x20

    .line 343
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 344
    or-int/lit16 v0, v0, 0x80

    .line 346
    :cond_1
    return v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 450
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 451
    return-void
.end method

.method private static findBestThumbnailPresentationTimeUs(Landroidx/media3/extractor/mp4/TrackSampleTable;J)J
    .locals 18
    .param p0, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "durationUs"    # J

    .line 748
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_0

    .line 749
    return-wide v4

    .line 752
    :cond_0
    const/4 v3, -0x1

    .line 753
    .local v3, "bestSampleIndex":I
    const/4 v6, 0x0

    .line 756
    .local v6, "maxSampleSize":I
    iget-boolean v7, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->hasOnlySyncSamples:Z

    if-eqz v7, :cond_1

    .line 757
    iget v7, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    goto :goto_0

    .line 758
    :cond_1
    iget-object v7, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    array-length v7, v7

    :goto_0
    nop

    .line 759
    .local v7, "syncSampleCount":I
    const/16 v8, 0x14

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 760
    .local v8, "scanLimit":I
    cmp-long v9, v1, v4

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 761
    const-wide/32 v9, 0x989680

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 763
    .local v9, "maxDurationUsToScan":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_6

    .line 764
    iget-boolean v12, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->hasOnlySyncSamples:Z

    if-eqz v12, :cond_3

    move v12, v11

    goto :goto_3

    :cond_3
    iget-object v12, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->syncSampleIndices:[I

    aget v12, v12, v11

    .line 765
    .local v12, "sampleIndex":I
    :goto_3
    iget-object v13, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v14, v13, v12

    .line 767
    .local v14, "timestampUs":J
    cmp-long v13, v14, v9

    if-lez v13, :cond_4

    .line 768
    goto :goto_4

    .line 771
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_5

    iget-object v13, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v13, v13, v12

    if-le v13, v6, :cond_5

    .line 772
    iget-object v13, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v13, v12

    .line 773
    move v3, v12

    .line 763
    .end local v12    # "sampleIndex":I
    .end local v14    # "timestampUs":J
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 777
    .end local v11    # "i":I
    :cond_6
    :goto_4
    const/4 v11, -0x1

    if-ne v3, v11, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v11, v4, v3

    move-wide v4, v11

    :goto_5
    return-wide v4
.end method

.method private getAuxiliaryTrackTypesForAuxiliaryTracks(Landroidx/media3/common/Metadata;)Ljava/util/List;
    .locals 6
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Metadata;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 818
    const-class v0, Landroidx/media3/container/MdtaMetadataEntry;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda5;-><init>()V

    .line 820
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;Lcom/google/common/base/Predicate;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/MdtaMetadataEntry;

    .line 819
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/MdtaMetadataEntry;

    .line 823
    .local v0, "trackTypesMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    invoke-virtual {v0}, Landroidx/media3/container/MdtaMetadataEntry;->getAuxiliaryTrackTypesFromMap()Ljava/util/List;

    move-result-object v1

    .line 824
    .local v1, "auxiliaryTrackTypesFromMap":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    .line 825
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 826
    .local v2, "auxiliaryTrackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 828
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 842
    const/4 v4, 0x0

    .local v4, "auxiliaryTrackType":I
    goto :goto_1

    .line 839
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_0
    const/4 v4, 0x4

    .line 840
    .restart local v4    # "auxiliaryTrackType":I
    goto :goto_1

    .line 836
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_1
    const/4 v4, 0x3

    .line 837
    .restart local v4    # "auxiliaryTrackType":I
    goto :goto_1

    .line 833
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_2
    const/4 v4, 0x2

    .line 834
    .restart local v4    # "auxiliaryTrackType":I
    goto :goto_1

    .line 830
    .end local v4    # "auxiliaryTrackType":I
    :pswitch_3
    const/4 v4, 0x1

    .line 831
    .restart local v4    # "auxiliaryTrackType":I
    nop

    .line 844
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v4    # "auxiliaryTrackType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v3    # "i":I
    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I
    .locals 2
    .param p0, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "timeUs"    # J

    .line 1201
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    .line 1202
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1204
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    .line 1206
    :cond_0
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .locals 23
    .param p1, "inputPosition"    # J

    .line 1033
    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    .line 1034
    .local v1, "preferredSkipAmount":J
    const/4 v3, 0x1

    .line 1035
    .local v3, "preferredRequiresReload":Z
    const/4 v4, -0x1

    .line 1036
    .local v4, "preferredTrackIndex":I
    const-wide v5, 0x7fffffffffffffffL

    .line 1037
    .local v5, "preferredAccumulatedBytes":J
    const-wide v7, 0x7fffffffffffffffL

    .line 1038
    .local v7, "minAccumulatedBytes":J
    const/4 v9, 0x1

    .line 1039
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 1040
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v12, v12

    if-ge v11, v12, :cond_7

    .line 1041
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v12, v12, v11

    .line 1042
    .local v12, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v13, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 1043
    .local v13, "sampleIndex":I
    iget-object v14, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v14, v14, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v13, v14, :cond_0

    .line 1044
    goto :goto_3

    .line 1046
    :cond_0
    iget-object v14, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v14, v14, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v15, v14, v13

    .line 1047
    .local v15, "sampleOffset":J
    iget-object v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    invoke-static {v14}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[J

    aget-object v14, v14, v11

    aget-wide v17, v14, v13

    .line 1048
    .local v17, "sampleAccumulatedBytes":J
    sub-long v19, v15, p1

    .line 1049
    .local v19, "skipAmount":J
    const-wide/16 v21, 0x0

    cmp-long v14, v19, v21

    if-ltz v14, :cond_2

    const-wide/32 v21, 0x40000

    cmp-long v14, v19, v21

    if-ltz v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v14, 0x1

    .line 1050
    .local v14, "requiresReload":Z
    :goto_2
    if-nez v14, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-ne v14, v3, :cond_5

    cmp-long v21, v19, v1

    if-gez v21, :cond_5

    .line 1052
    :cond_4
    move v3, v14

    .line 1053
    move-wide/from16 v1, v19

    .line 1054
    move v4, v11

    .line 1055
    move-wide/from16 v5, v17

    .line 1057
    :cond_5
    cmp-long v21, v17, v7

    if-gez v21, :cond_6

    .line 1058
    move-wide/from16 v7, v17

    .line 1059
    move v9, v14

    .line 1060
    move v10, v11

    .line 1040
    .end local v12    # "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v13    # "sampleIndex":I
    .end local v14    # "requiresReload":Z
    .end local v15    # "sampleOffset":J
    .end local v17    # "sampleAccumulatedBytes":J
    .end local v19    # "skipAmount":J
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1065
    .end local v11    # "trackIndex":I
    :cond_7
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v11, v7, v11

    if-eqz v11, :cond_9

    if-eqz v9, :cond_9

    const-wide/32 v11, 0xa00000

    add-long/2addr v11, v7

    cmp-long v11, v5, v11

    if-gez v11, :cond_8

    goto :goto_4

    .line 1067
    :cond_8
    move v11, v10

    goto :goto_5

    .line 1066
    :cond_9
    :goto_4
    move v11, v4

    .line 1063
    :goto_5
    return v11
.end method

.method static synthetic lambda$getAuxiliaryTrackTypesForAuxiliaryTracks$5(Landroidx/media3/container/MdtaMetadataEntry;)Z
    .locals 2
    .param p0, "mdtaEntry"    # Landroidx/media3/container/MdtaMetadataEntry;

    .line 822
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$maybeSetDefaultSampleOffsetForAuxiliaryTracks$4(Landroidx/media3/container/MdtaMetadataEntry;)Z
    .locals 2
    .param p0, "mdtaEntry"    # Landroidx/media3/container/MdtaMetadataEntry;

    .line 809
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.interleaved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$newFactory$0(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;
    .locals 3
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$processMoovAtom$2(Landroidx/media3/extractor/mp4/Track;)Landroidx/media3/extractor/mp4/Track;
    .locals 0
    .param p0, "track"    # Landroidx/media3/extractor/mp4/Track;

    .line 650
    return-object p0
.end method

.method static synthetic lambda$shouldSeekToAxteAtom$3(Landroidx/media3/container/MdtaMetadataEntry;)Z
    .locals 2
    .param p0, "mdtaEntry"    # Landroidx/media3/container/MdtaMetadataEntry;

    .line 788
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.offset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$1()[Landroidx/media3/extractor/Extractor;
    .locals 4

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J
    .locals 6
    .param p0, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "seekTimeUs"    # J
    .param p3, "offset"    # J

    .line 1181
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v0

    .line 1182
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1183
    return-wide p3

    .line 1185
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v1, v0

    .line 1186
    .local v2, "sampleOffset":J
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private maybeSetDefaultSampleOffsetForAuxiliaryTracks(Landroidx/media3/common/Metadata;)V
    .locals 5
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 806
    const-class v0, Landroidx/media3/container/MdtaMetadataEntry;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    .line 807
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;Lcom/google/common/base/Predicate;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/MdtaMetadataEntry;

    .line 810
    .local v0, "samplesInterleavedMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_0

    .line 812
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForAuxiliaryTracks:J

    .line 814
    :cond_0
    return-void
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1096
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 1097
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 1098
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1099
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 1100
    return-void
.end method

.method public static newFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 87
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-object v0
.end method

.method private processAtomEnded(J)V
    .locals 4
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 582
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v2, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 583
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 584
    .local v0, "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    iget v2, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_0

    .line 586
    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processMoovAtom(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    .line 587
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 588
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->moovAtomProcessed:Z

    .line 589
    iget-boolean v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->omitTrackSampleTable:Z

    if-nez v2, :cond_1

    .line 590
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    .line 592
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {v1, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    .line 595
    .end local v0    # "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_1
    :goto_1
    goto :goto_0

    .line 596
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v0, v1, :cond_3

    .line 597
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 599
    :cond_3
    return-void
.end method

.method private processEndOfStreamReadingAtomHeader()V
    .locals 6

    .line 1083
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1085
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 1087
    .local v0, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 1088
    .local v1, "metadata":Landroidx/media3/common/Metadata;
    :goto_0
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 1089
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 1090
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v3, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 1092
    .end local v0    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v1    # "metadata":Landroidx/media3/common/Metadata;
    :cond_1
    return-void
.end method

.method private static processFtypAtom(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3
    .param p0, "atomData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1216
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1217
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1218
    .local v0, "majorBrand":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 1219
    .local v1, "fileType":I
    if-eqz v1, :cond_0

    .line 1220
    return v1

    .line 1222
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1223
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 1224
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 1225
    if-eqz v1, :cond_1

    .line 1226
    return v1

    .line 1229
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private processMoovAtom(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 37
    .param p1, "moov"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 609
    .local v2, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const v3, 0x6d657461

    invoke-virtual {v1, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v10

    .line 610
    .local v10, "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v3, "auxiliaryTrackTypesForAuxiliaryTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x1

    if-eqz v10, :cond_2

    .line 612
    invoke-static {v10}, Landroidx/media3/extractor/mp4/BoxParser;->parseMdtaFromMeta(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 613
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v4, :cond_0

    .line 614
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-direct {v0, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeSetDefaultSampleOffsetForAuxiliaryTracks(Landroidx/media3/common/Metadata;)V

    .line 616
    nop

    .line 617
    invoke-direct {v0, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getAuxiliaryTrackTypesForAuxiliaryTracks(Landroidx/media3/common/Metadata;)Ljava/util/List;

    move-result-object v3

    move-object v12, v2

    move-object v13, v3

    goto :goto_0

    .line 618
    :cond_0
    invoke-direct {v0, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldSeekToAxteAtom(Landroidx/media3/common/Metadata;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 619
    iput-boolean v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    .line 620
    return-void

    .line 618
    :cond_1
    move-object v12, v2

    move-object v13, v3

    goto :goto_0

    .line 611
    :cond_2
    move-object v12, v2

    move-object v13, v3

    .line 623
    .end local v2    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .end local v3    # "auxiliaryTrackTypesForAuxiliaryTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v13, "auxiliaryTrackTypesForAuxiliaryTracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    const/4 v14, -0x1

    .line 624
    .local v14, "firstVideoTrackIndex":I
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 625
    .local v15, "durationUs":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v4, 0x0

    if-ne v3, v11, :cond_3

    move v7, v11

    goto :goto_1

    :cond_3
    move v7, v4

    .line 629
    .local v7, "isQuickTime":Z
    :goto_1
    new-instance v3, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v3}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    .line 630
    .local v3, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    const/4 v5, 0x0

    .line 631
    .local v5, "udtaMetadata":Landroidx/media3/common/Metadata;
    const v6, 0x75647461

    invoke-virtual {v1, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v17

    .line 632
    .local v17, "udta":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v17, :cond_4

    .line 633
    invoke-static/range {v17 .. v17}, Landroidx/media3/extractor/mp4/BoxParser;->parseUdta(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;

    move-result-object v5

    .line 634
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    move-object/from16 v18, v5

    goto :goto_2

    .line 632
    :cond_4
    move-object/from16 v18, v5

    .line 637
    .end local v5    # "udtaMetadata":Landroidx/media3/common/Metadata;
    .local v18, "udtaMetadata":Landroidx/media3/common/Metadata;
    :goto_2
    new-instance v5, Landroidx/media3/common/Metadata;

    new-array v6, v11, [Landroidx/media3/common/Metadata$Entry;

    .line 639
    const v8, 0x6d766864

    invoke-virtual {v1, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v8, v8, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v8}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-direct {v5, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object/from16 v19, v5

    .line 641
    .local v19, "mvhdMetadata":Landroidx/media3/common/Metadata;
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v5, v11

    if-eqz v5, :cond_5

    move v6, v11

    goto :goto_3

    :cond_5
    move v6, v4

    .line 642
    .local v6, "ignoreEditLists":Z
    :goto_3
    new-instance v8, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda2;-><init>()V

    iget-boolean v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->omitTrackSampleTable:Z

    .line 643
    move-object v5, v2

    move-object v2, v3

    move/from16 v20, v4

    .end local v3    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v2, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v5, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v21, v5

    .end local v5    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v21, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/List;

    move-result-object v3

    .line 653
    .local v3, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    iget-boolean v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v1, :cond_7

    .line 654
    nop

    .line 655
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_6

    move v4, v11

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 660
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 661
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    .line 656
    const-string v8, "The number of auxiliary track types from metadata (%d) is not same as the number of auxiliary tracks (%d)"

    invoke-static {v1, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v4, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 663
    :cond_7
    const/4 v1, 0x0

    .line 664
    .local v1, "trackIndex":I
    invoke-static {v3}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "containerMimeType":Ljava/lang/String;
    const/4 v5, 0x0

    move-wide v8, v15

    .end local v15    # "durationUs":J
    .local v5, "i":I
    .local v8, "durationUs":J
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x0

    if-ge v5, v15, :cond_13

    .line 666
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 667
    .local v15, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    iget v11, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v11, :cond_8

    .line 668
    move-object/from16 v36, v2

    move-object/from16 v23, v3

    move/from16 v28, v5

    move/from16 v24, v6

    move/from16 v26, v7

    move-object/from16 v33, v10

    move-object/from16 v5, v21

    const/16 v20, 0x1

    const/16 v22, 0x0

    goto/16 :goto_d

    .line 670
    :cond_8
    iget-object v11, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 671
    .local v11, "track":Landroidx/media3/extractor/mp4/Track;
    move-object/from16 v23, v3

    .end local v3    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v23, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    new-instance v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    move/from16 v24, v6

    .end local v6    # "ignoreEditLists":Z
    .local v24, "ignoreEditLists":Z
    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v25, v1, 0x1

    move/from16 v26, v7

    .end local v1    # "trackIndex":I
    .end local v7    # "isQuickTime":Z
    .local v25, "trackIndex":I
    .local v26, "isQuickTime":Z
    iget v7, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 672
    invoke-interface {v6, v1, v7}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v3, v11, v15, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V

    .line 674
    .local v3, "mp4Track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-wide v6, v11, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v27

    if-eqz v1, :cond_9

    iget-wide v6, v11, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    goto :goto_6

    :cond_9
    iget-wide v6, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 675
    .local v6, "trackDurationUs":J
    :goto_6
    iget-object v1, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v6, v7}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 676
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 679
    iget-object v1, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    move-wide/from16 v29, v8

    .end local v8    # "durationUs":J
    .local v29, "durationUs":J
    const-string v8, "audio/true-hd"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 681
    iget v1, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v1, v1, 0x10

    .local v1, "maxInputSize":I
    goto :goto_7

    .line 685
    .end local v1    # "maxInputSize":I
    :cond_a
    iget v1, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v1, v1, 0x1e

    .line 688
    .restart local v1    # "maxInputSize":I
    :goto_7
    iget-object v8, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v8}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 689
    .local v8, "formatBuilder":Landroidx/media3/common/Format$Builder;
    invoke-virtual {v8, v1}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 690
    iget v9, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    move/from16 v31, v1

    .end local v1    # "maxInputSize":I
    .local v31, "maxInputSize":I
    const/4 v1, 0x2

    if-ne v9, v1, :cond_e

    .line 691
    iget-object v9, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v9, v9, Landroidx/media3/common/Format;->roleFlags:I

    .line 692
    .local v9, "roleFlags":I
    move/from16 v32, v1

    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c

    .line 693
    nop

    .line 694
    const/4 v1, -0x1

    if-ne v14, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    move/from16 v1, v32

    :goto_8
    or-int/2addr v9, v1

    .line 696
    :cond_c
    iget-boolean v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v1, :cond_d

    .line 697
    const v1, 0x8000

    or-int/2addr v9, v1

    .line 698
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/media3/common/Format$Builder;->setAuxiliaryTrackType(I)Landroidx/media3/common/Format$Builder;

    .line 700
    :cond_d
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    goto :goto_9

    .line 690
    .end local v9    # "roleFlags":I
    :cond_e
    move/from16 v32, v1

    .line 703
    :goto_9
    const/4 v1, 0x0

    .line 704
    .local v1, "thumbnailMetadata":Landroidx/media3/common/Metadata;
    nop

    .line 705
    move-object/from16 v33, v10

    .end local v10    # "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    .local v33, "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    invoke-static {v15, v6, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor;->findBestThumbnailPresentationTimeUs(Landroidx/media3/extractor/mp4/TrackSampleTable;J)J

    move-result-wide v9

    .line 706
    .local v9, "thumbnailPresentationTimeUs":J
    cmp-long v27, v9, v27

    if-eqz v27, :cond_f

    .line 707
    move-object/from16 v27, v1

    .end local v1    # "thumbnailMetadata":Landroidx/media3/common/Metadata;
    .local v27, "thumbnailMetadata":Landroidx/media3/common/Metadata;
    new-instance v1, Landroidx/media3/common/Metadata;

    move/from16 v28, v5

    move-wide/from16 v34, v6

    const/4 v5, 0x1

    .end local v5    # "i":I
    .end local v6    # "trackDurationUs":J
    .local v28, "i":I
    .local v34, "trackDurationUs":J
    new-array v6, v5, [Landroidx/media3/common/Metadata$Entry;

    new-instance v5, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    invoke-direct {v5, v9, v10}, Landroidx/media3/extractor/metadata/ThumbnailMetadata;-><init>(J)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-direct {v1, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .end local v27    # "thumbnailMetadata":Landroidx/media3/common/Metadata;
    .restart local v1    # "thumbnailMetadata":Landroidx/media3/common/Metadata;
    goto :goto_a

    .line 706
    .end local v28    # "i":I
    .end local v34    # "trackDurationUs":J
    .restart local v5    # "i":I
    .restart local v6    # "trackDurationUs":J
    :cond_f
    move-object/from16 v27, v1

    move/from16 v28, v5

    move-wide/from16 v34, v6

    const/4 v7, 0x0

    .line 710
    .end local v5    # "i":I
    .end local v6    # "trackDurationUs":J
    .restart local v28    # "i":I
    .restart local v34    # "trackDurationUs":J
    :goto_a
    iget v5, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-static {v5, v2, v8}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILandroidx/media3/extractor/GaplessInfoHolder;Landroidx/media3/common/Format$Builder;)V

    .line 711
    iget v5, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    iget-object v6, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v6, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    move/from16 v22, v7

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/media3/common/Metadata;

    .line 716
    move-object/from16 v27, v1

    .end local v1    # "thumbnailMetadata":Landroidx/media3/common/Metadata;
    .restart local v27    # "thumbnailMetadata":Landroidx/media3/common/Metadata;
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v36, v2

    goto :goto_b

    :cond_10
    new-instance v1, Landroidx/media3/common/Metadata;

    move-object/from16 v36, v2

    .end local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v36, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v1

    :goto_b
    aput-object v16, v7, v22

    const/16 v20, 0x1

    aput-object v18, v7, v20

    aput-object v19, v7, v32

    const/4 v1, 0x3

    aput-object v27, v7, v1

    .line 711
    invoke-static {v5, v12, v8, v6, v7}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    .line 720
    invoke-virtual {v8, v4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 721
    iget-object v1, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/mpeg"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 728
    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->pendingFormat:Landroidx/media3/common/Format;

    goto :goto_c

    .line 730
    :cond_11
    iget-object v1, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 733
    :goto_c
    iget v1, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    move/from16 v2, v32

    if-ne v1, v2, :cond_12

    const/4 v1, -0x1

    if-ne v14, v1, :cond_12

    .line 734
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v14

    .line 736
    :cond_12
    move-object/from16 v5, v21

    .end local v21    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v5, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v25

    move-wide/from16 v8, v29

    .line 665
    .end local v3    # "mp4Track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v9    # "thumbnailPresentationTimeUs":J
    .end local v11    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v15    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v25    # "trackIndex":I
    .end local v27    # "thumbnailMetadata":Landroidx/media3/common/Metadata;
    .end local v29    # "durationUs":J
    .end local v31    # "maxInputSize":I
    .end local v34    # "trackDurationUs":J
    .local v1, "trackIndex":I
    .local v8, "durationUs":J
    :goto_d
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v21, v5

    move/from16 v11, v20

    move-object/from16 v3, v23

    move/from16 v6, v24

    move/from16 v7, v26

    move-object/from16 v10, v33

    move v5, v2

    move-object/from16 v2, v36

    .end local v28    # "i":I
    .local v2, "i":I
    goto/16 :goto_5

    .end local v23    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .end local v24    # "ignoreEditLists":Z
    .end local v26    # "isQuickTime":Z
    .end local v33    # "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v36    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v2, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v3, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v5, "i":I
    .local v6, "ignoreEditLists":Z
    .restart local v7    # "isQuickTime":Z
    .restart local v10    # "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v21    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    :cond_13
    move-object/from16 v36, v2

    move-object/from16 v23, v3

    move/from16 v28, v5

    move/from16 v24, v6

    move/from16 v26, v7

    move-object/from16 v33, v10

    move-object/from16 v5, v21

    const/16 v22, 0x0

    .line 738
    .end local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .end local v3    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .end local v6    # "ignoreEditLists":Z
    .end local v7    # "isQuickTime":Z
    .end local v10    # "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    .end local v21    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v5, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .restart local v23    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .restart local v24    # "ignoreEditLists":Z
    .restart local v26    # "isQuickTime":Z
    .restart local v33    # "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    .restart local v36    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    move/from16 v7, v22

    new-array v2, v7, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 739
    nop

    .line 740
    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->omitTrackSampleTable:Z

    if-nez v2, :cond_14

    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v16

    :cond_14
    move-object/from16 v2, v16

    iput-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 742
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 743
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;

    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-direct {v3, v8, v9, v6, v14}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;-><init>(J[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;I)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 744
    return-void
.end method

.method private processUnparsedAtom(J)V
    .locals 13
    .param p1, "atomStartPosition"    # J

    .line 1104
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_0

    .line 1107
    new-instance v2, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v0, v0

    add-long v9, p1, v0

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long v11, v0, v3

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, p1

    .end local p1    # "atomStartPosition":J
    .local v5, "atomStartPosition":J
    invoke-direct/range {v2 .. v12}, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    goto :goto_0

    .line 1104
    .end local v5    # "atomStartPosition":J
    .restart local p1    # "atomStartPosition":J
    :cond_0
    move-wide v5, p1

    .line 1115
    .end local p1    # "atomStartPosition":J
    .restart local v5    # "atomStartPosition":J
    :goto_0
    return-void
.end method

.method private readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    .line 458
    return v3

    .line 460
    :cond_0
    iput v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 461
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 462
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 463
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    .line 466
    :cond_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 468
    const/16 v0, 0x8

    .line 469
    .local v0, "headerBytesRemaining":I
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 470
    iget v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 471
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_0

    .line 472
    :cond_2
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 475
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 476
    .local v4, "endPosition":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 477
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 478
    .local v0, "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    if-eqz v0, :cond_3

    .line 479
    iget-wide v4, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    .line 482
    .end local v0    # "containerAtom":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 483
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_1

    .line 472
    .end local v4    # "endPosition":J
    :cond_4
    :goto_0
    nop

    .line 487
    :cond_5
    :goto_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 488
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x66726565

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v2, :cond_6

    .line 491
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v0

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_2

    .line 493
    :cond_6
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 498
    :cond_7
    :goto_2
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 499
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 500
    .local v2, "endPosition":J
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_8

    .line 501
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V

    .line 503
    :cond_8
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v2, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 504
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    .line 505
    invoke-direct {p0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_3

    .line 508
    :cond_9
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 510
    .end local v2    # "endPosition":J
    :goto_3
    goto :goto_6

    :cond_a
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 513
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    move v0, v3

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 514
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_c

    move v0, v1

    goto :goto_5

    :cond_c
    move v0, v3

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 515
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v4, v4

    invoke-direct {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 516
    .local v0, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v4, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 518
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 519
    .end local v0    # "atomData":Landroidx/media3/common/util/ParsableByteArray;
    goto :goto_6

    .line 520
    :cond_d
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 522
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 525
    :goto_6
    return v1
.end method

.method private readAtomPayload(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)Z
    .locals 11
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 537
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 538
    .local v2, "atomEndPosition":J
    const/4 v4, 0x0

    .line 539
    .local v4, "seekRequired":Z
    iget-object v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 540
    .local v5, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 541
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    iget v8, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v9, v0

    invoke-interface {p1, v7, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 542
    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x66747970

    if-ne v7, v8, :cond_0

    .line 543
    iput-boolean v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    .line 544
    invoke-static {v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processFtypAtom(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v7

    iput v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_0

    .line 545
    :cond_0
    iget-object v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 546
    iget-object v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/Mp4Box$ContainerBox;

    new-instance v8, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v9, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v8, v9, v5}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v7, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$LeafBox;)V

    goto :goto_0

    .line 549
    :cond_1
    iget-boolean v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    if-nez v7, :cond_2

    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x6d646174

    if-ne v7, v8, :cond_2

    .line 552
    iput v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    .line 555
    :cond_2
    const-wide/32 v7, 0x40000

    cmp-long v7, v0, v7

    if-gez v7, :cond_3

    .line 556
    long-to-int v7, v0

    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 558
    :cond_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 559
    const/4 v4, 0x1

    .line 562
    :cond_4
    :goto_0
    invoke-direct {p0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 563
    iget-boolean v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    .line 564
    iput-boolean v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    .line 565
    iget-wide v9, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    iput-wide v9, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 566
    const/4 v4, 0x1

    .line 567
    iput-boolean v8, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    .line 569
    :cond_5
    if-eqz v4, :cond_6

    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_6

    goto :goto_1

    :cond_6
    move v6, v8

    :goto_1
    return v6
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 25
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 866
    .local v2, "inputPosition":J
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 867
    invoke-direct {v0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 868
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_0

    .line 869
    return v5

    .line 872
    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 873
    .local v4, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 874
    .local v6, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    iget v14, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 875
    .local v14, "sampleIndex":I
    iget-object v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v8, v7, v14

    iget-wide v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForAuxiliaryTracks:J

    add-long/2addr v8, v10

    .line 876
    .local v8, "position":J
    iget-object v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v7, v7, v14

    .line 877
    .local v7, "sampleSize":I
    iget-object v10, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 878
    .local v10, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    sub-long v11, v8, v2

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    move-object/from16 v16, v6

    .end local v6    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v16, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    int-to-long v5, v13

    add-long/2addr v11, v5

    .line 879
    .local v11, "skipAmount":J
    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    const/4 v6, 0x1

    if-ltz v5, :cond_15

    const-wide/32 v17, 0x40000

    cmp-long v5, v11, v17

    if-ltz v5, :cond_1

    move-wide/from16 v23, v2

    move/from16 v22, v6

    move-wide v2, v8

    move-object v13, v10

    move-object/from16 v6, v16

    goto/16 :goto_9

    .line 883
    :cond_1
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v5, v6, :cond_2

    .line 886
    const-wide/16 v17, 0x8

    add-long v11, v11, v17

    .line 887
    add-int/lit8 v7, v7, -0x8

    .line 889
    :cond_2
    long-to-int v5, v11

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 890
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-direct {v0, v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;->canReadWithinGopSampleDependencies(Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 891
    iput-boolean v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 893
    :cond_3
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v15, 0x4

    move-wide/from16 v18, v11

    .end local v11    # "skipAmount":J
    .local v18, "skipAmount":J
    const/4 v12, 0x0

    if-eqz v5, :cond_a

    .line 896
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 897
    .local v5, "nalPrefixData":[B
    aput-byte v12, v5, v12

    .line 898
    aput-byte v12, v5, v6

    .line 899
    const/4 v11, 0x2

    aput-byte v12, v5, v11

    .line 900
    iget-object v11, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v11, v11, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v11, 0x4

    .line 901
    .local v11, "nalUnitLengthFieldLengthDiff":I
    add-int/2addr v7, v11

    .line 905
    :goto_0
    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v13, v7, :cond_9

    .line 906
    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v13, :cond_8

    .line 907
    iget-object v13, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v13, v13, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 908
    .local v13, "nalUnitPrefixLength":I
    const/16 v21, 0x0

    .line 909
    .local v21, "numberOfBytesToDetermineSampleDependencies":I
    iget-boolean v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v6, :cond_4

    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 910
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    move-result v6

    add-int/2addr v6, v13

    iget-object v15, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v15, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v15, v15, v14

    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    sub-int/2addr v15, v12

    if-gt v6, v15, :cond_4

    .line 916
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 917
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    move-result v21

    .line 918
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v6, v6, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int v13, v6, v21

    move/from16 v6, v21

    goto :goto_1

    .line 922
    :cond_4
    move/from16 v6, v21

    .end local v21    # "numberOfBytesToDetermineSampleDependencies":I
    .local v6, "numberOfBytesToDetermineSampleDependencies":I
    :goto_1
    invoke-interface {v1, v5, v11, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 923
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v12, v13

    iput v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 924
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 925
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 926
    .local v12, "nalLengthInt":I
    if-ltz v12, :cond_7

    .line 930
    sub-int v15, v12, v6

    iput v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 933
    iget-object v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    move-wide/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "inputPosition":J
    .local v23, "inputPosition":J
    invoke-virtual {v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 934
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v3, v16

    const/4 v15, 0x4

    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v3, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    invoke-interface {v3, v2, v15}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 935
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v15

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 936
    if-lez v6, :cond_6

    .line 938
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v3, v2, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 939
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v6

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 942
    iget-object v2, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    const/4 v15, 0x4

    invoke-static {v5, v15, v6, v2}, Landroidx/media3/container/NalUnitUtil;->isDependedOn([BIILandroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 947
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    goto :goto_2

    .line 942
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 936
    :cond_6
    const/4 v2, 0x1

    .line 950
    .end local v6    # "numberOfBytesToDetermineSampleDependencies":I
    .end local v12    # "nalLengthInt":I
    .end local v13    # "nalUnitPrefixLength":I
    :goto_2
    move v6, v2

    move-object/from16 v16, v3

    move-wide/from16 v2, v23

    const/4 v12, 0x0

    const/4 v15, 0x4

    goto/16 :goto_0

    .line 927
    .end local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .restart local v6    # "numberOfBytesToDetermineSampleDependencies":I
    .restart local v12    # "nalLengthInt":I
    .restart local v13    # "nalUnitPrefixLength":I
    .restart local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_7
    move-wide/from16 v23, v2

    .end local v2    # "inputPosition":J
    .restart local v23    # "inputPosition":J
    const-string v2, "Invalid NAL length"

    const/4 v15, 0x0

    invoke-static {v2, v15}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 952
    .end local v6    # "numberOfBytesToDetermineSampleDependencies":I
    .end local v12    # "nalLengthInt":I
    .end local v13    # "nalUnitPrefixLength":I
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_8
    move-wide/from16 v23, v2

    move v2, v6

    move-object/from16 v3, v16

    .end local v2    # "inputPosition":J
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v23    # "inputPosition":J
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v15, 0x0

    invoke-interface {v3, v1, v6, v15}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v6

    .line 953
    .local v6, "writtenBytes":I
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v12, v6

    iput v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 954
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v12, v6

    iput v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 955
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v12, v6

    iput v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 956
    .end local v6    # "writtenBytes":I
    move v6, v2

    move-wide/from16 v2, v23

    const/4 v12, 0x0

    const/4 v15, 0x4

    goto/16 :goto_0

    .line 905
    .end local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .restart local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_9
    move-wide/from16 v23, v2

    move v2, v6

    move-object/from16 v3, v16

    .line 958
    .end local v2    # "inputPosition":J
    .end local v5    # "nalPrefixData":[B
    .end local v11    # "nalUnitLengthFieldLengthDiff":I
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v23    # "inputPosition":J
    const/4 v11, 0x0

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 959
    .end local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v23    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .restart local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_a
    move-wide/from16 v23, v2

    move v2, v6

    move-object/from16 v3, v16

    .end local v2    # "inputPosition":J
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v23    # "inputPosition":J
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 960
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v5, :cond_b

    .line 961
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v7, v5}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 962
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v6, 0x7

    invoke-interface {v3, v5, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 963
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 965
    :cond_b
    add-int/lit8 v7, v7, 0x7

    const/4 v15, 0x0

    goto :goto_6

    .line 966
    :cond_c
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->pendingFormat:Landroidx/media3/common/Format;

    if-eqz v5, :cond_f

    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 967
    const-string v6, "audio/mpeg"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 968
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->pendingFormat:Landroidx/media3/common/Format;

    .line 969
    .local v5, "pendingFormat":Landroidx/media3/common/Format;
    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 970
    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v11, 0x0

    invoke-interface {v1, v6, v11, v15}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 971
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 972
    new-instance v6, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v6}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>()V

    .line 973
    .local v6, "mpegHeader":Landroidx/media3/extractor/MpegAudioUtil$Header;
    iget-object v11, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 975
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 974
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    invoke-virtual {v6, v12}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v13, v6, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 975
    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 979
    nop

    .line 977
    invoke-virtual {v5}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v12

    iget-object v13, v6, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 978
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v12

    .line 979
    invoke-virtual {v12}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v12

    goto :goto_3

    .line 980
    :cond_d
    move-object v12, v5

    .line 973
    :goto_3
    invoke-interface {v11, v12}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 981
    const/4 v15, 0x0

    iput-object v15, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->pendingFormat:Landroidx/media3/common/Format;

    .end local v5    # "pendingFormat":Landroidx/media3/common/Format;
    .end local v6    # "mpegHeader":Landroidx/media3/extractor/MpegAudioUtil$Header;
    goto :goto_5

    .line 967
    :cond_e
    const/4 v15, 0x0

    goto :goto_4

    .line 966
    :cond_f
    const/4 v15, 0x0

    .line 982
    :goto_4
    if-eqz v10, :cond_10

    .line 983
    invoke-virtual {v10, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    goto :goto_6

    .line 982
    :cond_10
    :goto_5
    nop

    .line 986
    :goto_6
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v5, v7, :cond_11

    .line 987
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int v5, v7, v5

    const/4 v11, 0x0

    invoke-interface {v3, v1, v5, v11}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v5

    .line 988
    .local v5, "writtenBytes":I
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 989
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 990
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 991
    .end local v5    # "writtenBytes":I
    goto :goto_6

    .line 986
    :cond_11
    const/4 v11, 0x0

    .line 994
    :goto_7
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v5, v14

    .line 995
    .local v12, "timeUs":J
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v5, v5, v14

    .line 996
    .local v5, "sampleFlags":I
    iget-boolean v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v6, :cond_12

    .line 997
    const/high16 v6, 0x4000000

    or-int/2addr v5, v6

    .line 999
    :cond_12
    if-eqz v10, :cond_13

    .line 1000
    move-wide/from16 v20, v8

    move-wide v8, v12

    .end local v12    # "timeUs":J
    .local v8, "timeUs":J
    .local v20, "position":J
    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v22, v2

    move-object v6, v10

    move v10, v5

    move v5, v11

    move v11, v7

    move-object v7, v3

    move-wide/from16 v2, v20

    .end local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v5    # "sampleFlags":I
    .end local v20    # "position":J
    .local v2, "position":J
    .local v6, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .local v7, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v10, "sampleFlags":I
    .local v11, "sampleSize":I
    invoke-virtual/range {v6 .. v13}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1002
    move-object v13, v6

    move-object v6, v7

    .end local v7    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v6, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v13, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    add-int/lit8 v7, v14, 0x1

    iget-object v12, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v12, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v7, v12, :cond_14

    .line 1003
    invoke-virtual {v13, v6, v15}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_8

    .line 1006
    .end local v2    # "position":J
    .end local v6    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v11    # "sampleSize":I
    .end local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v5    # "sampleFlags":I
    .local v7, "sampleSize":I
    .local v8, "position":J
    .local v10, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v12    # "timeUs":J
    :cond_13
    move/from16 v22, v2

    move-object v6, v3

    move-wide v2, v8

    move-wide v8, v12

    move-object v13, v10

    move v10, v5

    move v5, v11

    move v11, v7

    .end local v3    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v5    # "sampleFlags":I
    .end local v7    # "sampleSize":I
    .end local v12    # "timeUs":J
    .restart local v2    # "position":J
    .restart local v6    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v8, "timeUs":J
    .local v10, "sampleFlags":I
    .restart local v11    # "sampleSize":I
    .restart local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    move-wide v7, v8

    move v9, v10

    move v10, v11

    .end local v8    # "timeUs":J
    .end local v11    # "sampleSize":I
    .local v7, "timeUs":J
    .local v9, "sampleFlags":I
    .local v10, "sampleSize":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move v11, v10

    move v10, v9

    move-wide v8, v7

    .line 1010
    .end local v7    # "timeUs":J
    .end local v9    # "sampleFlags":I
    .restart local v8    # "timeUs":J
    .local v10, "sampleFlags":I
    .restart local v11    # "sampleSize":I
    :cond_14
    :goto_8
    iget v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 1011
    const/4 v15, -0x1

    iput v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 1012
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 1013
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 1014
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1015
    iput-boolean v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 1016
    return v5

    .line 879
    .end local v6    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v18    # "skipAmount":J
    .end local v23    # "inputPosition":J
    .local v2, "inputPosition":J
    .local v7, "sampleSize":I
    .local v8, "position":J
    .local v10, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .local v11, "skipAmount":J
    .restart local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_15
    move-wide/from16 v23, v2

    move/from16 v22, v6

    move-wide v2, v8

    move-object v13, v10

    move-object/from16 v6, v16

    .line 880
    .end local v8    # "position":J
    .end local v10    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v2, "position":J
    .restart local v6    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v23    # "inputPosition":J
    :goto_9
    move-object/from16 v5, p2

    iput-wide v2, v5, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 881
    return v22
.end method

.method private readSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/extractor/mp4/SefReader;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;Ljava/util/List;)I

    move-result v0

    .line 575
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 576
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 578
    :cond_0
    return v0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1267
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-eq p0, v0, :cond_1

    const v0, 0x61787465

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1245
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shouldSeekToAxteAtom(Landroidx/media3/common/Metadata;)Z
    .locals 6
    .param p1, "mdtaMetadata"    # Landroidx/media3/common/Metadata;

    .line 781
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    const-class v1, Landroidx/media3/container/MdtaMetadataEntry;

    new-instance v2, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda3;-><init>()V

    .line 786
    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;Lcom/google/common/base/Predicate;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/MdtaMetadataEntry;

    .line 789
    .local v1, "axteAtomOffsetMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    if-nez v1, :cond_1

    .line 790
    return v0

    .line 792
    :cond_1
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v1, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    .line 793
    .local v2, "offset":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 794
    return v0

    .line 796
    :cond_2
    iput-wide v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    .line 797
    const/4 v0, 0x1

    return v0

    .line 782
    .end local v1    # "axteAtomOffsetMetadata":Landroidx/media3/container/MdtaMetadataEntry;
    .end local v2    # "offset":J
    :cond_3
    :goto_0
    return v0
.end method

.method private updateSampleIndex(Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .locals 3
    .param p1, "track"    # Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .param p2, "timeUs"    # J

    .line 1072
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1073
    .local v0, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-virtual {v0, p2, p3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 1074
    .local v1, "sampleIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1076
    invoke-virtual {v0, p2, p3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 1078
    :cond_0
    iput v1, p1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 1079
    return-void
.end method


# virtual methods
.method public getSampleTimestampsUs(I)[J
    .locals 1
    .param p1, "trackId"    # I

    .line 440
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 441
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0

    .line 443
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    return-object v0
.end method

.method public getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 366
    nop

    .line 367
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    .line 369
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 370
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->omitTrackSampleTable:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->moovAtomProcessed:Z

    if-eqz v0, :cond_0

    .line 409
    return v1

    .line 412
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 426
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 424
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 419
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readAtomPayload(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    return v0

    .line 414
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 404
    return-void
.end method

.method public seek(JJ)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 374
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 376
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 377
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 378
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 379
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 380
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 381
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->moovAtomProcessed:Z

    .line 382
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 385
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 386
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    .line 388
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/SefReader;->reset()V

    .line 389
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 392
    :cond_1
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 393
    .local v3, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    invoke-direct {p0, v3, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->updateSampleIndex(Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 394
    iget-object v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v4, :cond_2

    .line 395
    iget-object v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v4}, Landroidx/media3/extractor/TrueHdSampleRechunker;->reset()V

    .line 392
    .end local v3    # "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_3
    :goto_1
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 353
    :goto_0
    invoke-static {p1, v0}, Landroidx/media3/extractor/mp4/Sniffer;->sniffUnfragmented(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/SniffFailure;

    move-result-object v0

    .line 355
    .local v0, "sniffFailure":Landroidx/media3/extractor/SniffFailure;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    .line 356
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method
