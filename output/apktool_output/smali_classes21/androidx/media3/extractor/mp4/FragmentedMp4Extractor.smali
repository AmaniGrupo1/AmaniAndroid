.class public Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field private static final EMSG_FORMAT:Landroidx/media3/common/Format;

.field private static final EXTRA_TRACKS_BASE_ID:I = 0x64

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_EMIT_RAW_SUBTITLE_DATA:I = 0x20

.field public static final FLAG_ENABLE_EMSG_TRACK:I = 0x4

.field public static final FLAG_MERGE_FRAGMENTED_SIDX:I = 0x100

.field public static final FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES:I = 0x40

.field public static final FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES_H265:I = 0x80

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x10

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I = 0x73656967

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private final additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private atomData:Landroidx/media3/common/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field private final chunkIndexMerger:Landroidx/media3/extractor/ChunkIndexMerger;

.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private final eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private haveOutputSeekMapFromMultipleSidx:Z

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

.field private final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private final reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private final scratchBytes:[B

.field private seekPositionBeforeSidxProcessing:J

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

.field private final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 172
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    .line 184
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 188
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 189
    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    .line 188
    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 273
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 268
    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 275
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    .line 303
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 298
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 305
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    .line 335
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 330
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    .end local p2    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .local v3, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 337
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p3, "sideloadedTrack"    # Landroidx/media3/extractor/mp4/Track;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    .line 353
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 348
    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .end local p2    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .end local p3    # "sideloadedTrack":Landroidx/media3/extractor/mp4/Track;
    .local v3, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .local v4, "sideloadedTrack":Landroidx/media3/extractor/mp4/Track;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 355
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p3, "sideloadedTrack"    # Landroidx/media3/extractor/mp4/Track;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    .local p4, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .end local p3    # "sideloadedTrack":Landroidx/media3/extractor/mp4/Track;
    .end local p4    # "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v3, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .local v4, "sideloadedTrack":Landroidx/media3/extractor/mp4/Track;
    .local v5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 374
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p3, "sideloadedTrack"    # Landroidx/media3/extractor/mp4/Track;
    .param p5, "additionalEmsgTrackOutput"    # Landroidx/media3/extractor/TrackOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    .local p4, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p2    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .end local p3    # "sideloadedTrack":Landroidx/media3/extractor/mp4/Track;
    .end local p4    # "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local p5    # "additionalEmsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v3, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .local v4, "sideloadedTrack":Landroidx/media3/extractor/mp4/Track;
    .local v5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v6, "additionalEmsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 394
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 7
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 284
    nop

    .line 289
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 284
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v1, "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 7
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p2, "flags"    # I

    .line 315
    nop

    .line 320
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 315
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .end local p2    # "flags":I
    .local v1, "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v2, "flags":I
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V
    .locals 3
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p2, "flags"    # I
    .param p3, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p4, "sideloadedTrack"    # Landroidx/media3/extractor/mp4/Track;
    .param p6, "additionalEmsgTrackOutput"    # Landroidx/media3/extractor/TrackOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/SubtitleParser$Factory;",
            "I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 417
    .local p5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 419
    iput p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 420
    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 421
    iput-object p4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    .line 422
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 423
    iput-object p6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 424
    new-instance v0, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 425
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 426
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v2, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 427
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 428
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 429
    new-array v0, v1, [B

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 430
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 431
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 432
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 433
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 434
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    .line 435
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 436
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 437
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 438
    sget-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 439
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 440
    new-array v0, v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 441
    new-instance v0, Landroidx/media3/container/ReorderingBufferQueue;

    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    invoke-direct {v0, v1}, Landroidx/media3/container/ReorderingBufferQueue;-><init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    .line 445
    new-instance v0, Landroidx/media3/extractor/ChunkIndexMerger;

    invoke-direct {v0}, Landroidx/media3/extractor/ChunkIndexMerger;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->chunkIndexMerger:Landroidx/media3/extractor/ChunkIndexMerger;

    .line 446
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->seekPositionBeforeSidxProcessing:J

    .line 447
    return-void
.end method

.method private canReadWithinGopSampleDependencies(Landroidx/media3/common/Format;)Z
    .locals 4
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 1834
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1835
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1837
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/hevc"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1838
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 1840
    :cond_3
    return v2
.end method

.method private static checkNonNegative(I)I
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1382
    if-ltz p0, :cond_0

    .line 1386
    return p0

    .line 1383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static codecsToParseWithinGopSampleDependenciesAsFlags(I)I
    .locals 2
    .param p0, "videoCodecFlags"    # I

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "flags":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 458
    or-int/lit8 v0, v0, 0x40

    .line 460
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 461
    or-int/lit16 v0, v0, 0x80

    .line 463
    :cond_1
    return v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 567
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 568
    return-void
.end method

.method private getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;
    .locals 2
    .param p2, "trackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 845
    .local p1, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/mp4/DefaultSampleValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 848
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object v0

    .line 850
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object v0
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/container/Mp4Box$LeafBox;",
            ">;)",
            "Landroidx/media3/common/DrmInitData;"
        }
    .end annotation

    .line 1904
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/container/Mp4Box$LeafBox;>;"
    const/4 v0, 0x0

    .line 1905
    .local v0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1906
    .local v1, "leafChildrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1907
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1908
    .local v3, "child":Landroidx/media3/container/Mp4Box$LeafBox;
    iget v4, v3, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v5, 0x70737368    # 3.013775E29f

    if-ne v4, v5, :cond_2

    .line 1909
    if-nez v0, :cond_0

    .line 1910
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1912
    :cond_0
    iget-object v4, v3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 1913
    .local v4, "psshData":[B
    invoke-static {v4}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 1914
    .local v5, "uuid":Ljava/util/UUID;
    if-nez v5, :cond_1

    .line 1915
    const-string v6, "FragmentedMp4Extractor"

    const-string v7, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v6, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1917
    :cond_1
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    .end local v3    # "child":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v4    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1921
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    new-instance v2, Landroidx/media3/common/DrmInitData;

    invoke-direct {v2, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v2
.end method

.method private static getNextTrackBundle(Landroid/util/SparseArray;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1879
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v0, 0x0

    .line 1880
    .local v0, "nextTrackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v1, 0x7fffffffffffffffL

    .line 1882
    .local v1, "nextSampleOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1883
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1884
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1885
    .local v5, "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v6, v7, :cond_2

    .line 1887
    :cond_0
    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 1891
    :cond_1
    invoke-virtual {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v6

    .line 1892
    .local v6, "sampleOffset":J
    cmp-long v8, v6, v1

    if-gez v8, :cond_2

    .line 1893
    move-object v0, v5

    .line 1894
    move-wide v1, v6

    .line 1883
    .end local v5    # "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v6    # "sampleOffset":J
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1898
    .end local v4    # "i":I
    :cond_3
    return-object v0
.end method

.method private initExtraTracks()V
    .locals 7

    .line 874
    const/16 v0, 0x64

    .line 876
    .local v0, "nextExtraTrackId":I
    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/media3/extractor/TrackOutput;

    iput-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 877
    const/4 v1, 0x0

    .line 878
    .local v1, "emsgTrackOutputCount":I
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

    if-eqz v2, :cond_0

    .line 879
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "emsgTrackOutputCount":I
    .local v3, "emsgTrackOutputCount":I
    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

    aput-object v4, v2, v1

    move v1, v3

    .line 881
    .end local v3    # "emsgTrackOutputCount":I
    .restart local v1    # "emsgTrackOutputCount":I
    :cond_0
    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 882
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "emsgTrackOutputCount":I
    .restart local v3    # "emsgTrackOutputCount":I
    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v5, v0, 0x1

    .line 883
    .end local v0    # "nextExtraTrackId":I
    .local v5, "nextExtraTrackId":I
    const/4 v6, 0x5

    invoke-interface {v4, v0, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    aput-object v0, v2, v1

    move v1, v3

    move v0, v5

    .line 885
    .end local v3    # "emsgTrackOutputCount":I
    .end local v5    # "nextExtraTrackId":I
    .restart local v0    # "nextExtraTrackId":I
    .restart local v1    # "emsgTrackOutputCount":I
    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/extractor/TrackOutput;

    iput-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 886
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 887
    .local v5, "eventMessageTrackOutput":Landroidx/media3/extractor/TrackOutput;
    sget-object v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    invoke-interface {v5, v6}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 886
    .end local v5    # "eventMessageTrackOutput":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 890
    :cond_2
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/extractor/TrackOutput;

    iput-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 891
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 892
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "nextExtraTrackId":I
    .local v4, "nextExtraTrackId":I
    const/4 v5, 0x3

    invoke-interface {v3, v0, v5}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 893
    .local v0, "output":Landroidx/media3/extractor/TrackOutput;
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-interface {v0, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 894
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    aput-object v0, v3, v2

    .line 891
    .end local v0    # "output":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_1

    .line 896
    .end local v2    # "i":I
    .end local v4    # "nextExtraTrackId":I
    .local v0, "nextExtraTrackId":I
    :cond_3
    return-void
.end method

.method private static isEdtsListDurationForEntireMediaTimeline(Landroidx/media3/extractor/mp4/Track;)Z
    .locals 11
    .param p0, "track"    # Landroidx/media3/extractor/mp4/Track;

    .line 1268
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    if-nez v0, :cond_0

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 1274
    return v2

    .line 1276
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    iget-wide v7, p0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 1277
    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1279
    .local v3, "editListDurationUs":J
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v5, v0, v1

    iget-wide v9, p0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 1280
    const-wide/32 v7, 0xf4240

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 1281
    .local v5, "editListMediaTimeUs":J
    add-long v7, v3, v5

    iget-wide v9, p0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    cmp-long v0, v7, v9

    if-ltz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1271
    .end local v3    # "editListDurationUs":J
    .end local v5    # "editListMediaTimeUs":J
    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic lambda$newFactory$0(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;
    .locals 3
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$static$1()[Landroidx/media3/extractor/Extractor;
    .locals 4

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 694
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 695
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 696
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 697
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 698
    return-void
.end method

.method public static newFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 89
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-object v0
.end method

.method private onContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 2
    .param p1, "container"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 740
    iget v0, p1, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 741
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 742
    :cond_0
    iget v0, p1, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 743
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 744
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {v0, p1}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    .line 747
    :cond_2
    :goto_0
    return-void
.end method

.method private onEmsgLeafAtomRead(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 32
    .param p1, "atom"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 900
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 901
    return-void

    .line 903
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 904
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 905
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v3

    .line 909
    .local v3, "version":I
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 910
    .local v4, "presentationTimeDeltaUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 913
    .local v6, "sampleTimeUs":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v3, :pswitch_data_0

    .line 938
    move/from16 v29, v2

    .end local v2    # "fullAtom":I
    .local v29, "fullAtom":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return-void

    .line 928
    .end local v29    # "fullAtom":I
    .restart local v2    # "fullAtom":I
    :pswitch_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 929
    .local v14, "timescale":J
    nop

    .line 930
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 931
    nop

    .line 932
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 933
    .local v10, "durationMs":J
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 934
    .local v12, "id":J
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 935
    .local v16, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 936
    .local v17, "value":Ljava/lang/String;
    move-wide/from16 v18, v14

    move-wide/from16 v30, v10

    move-object/from16 v11, v16

    move-wide v15, v12

    move-object/from16 v12, v17

    move-wide/from16 v13, v30

    goto :goto_0

    .line 915
    .end local v10    # "durationMs":J
    .end local v12    # "id":J
    .end local v14    # "timescale":J
    .end local v16    # "schemeIdUri":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Ljava/lang/String;

    .line 916
    .restart local v16    # "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ljava/lang/String;

    .line 917
    .restart local v17    # "value":Ljava/lang/String;
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 918
    .restart local v14    # "timescale":J
    nop

    .line 919
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 920
    iget-wide v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v10, v10, v8

    if-eqz v10, :cond_1

    .line 921
    iget-wide v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    add-long v6, v10, v4

    .line 923
    :cond_1
    nop

    .line 924
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 925
    .restart local v10    # "durationMs":J
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 926
    .restart local v12    # "id":J
    move-wide/from16 v18, v14

    move-wide/from16 v30, v10

    move-object/from16 v11, v16

    move-wide v15, v12

    move-object/from16 v12, v17

    move-wide/from16 v13, v30

    .line 942
    .end local v10    # "durationMs":J
    .end local v14    # "timescale":J
    .end local v16    # "schemeIdUri":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    .local v11, "schemeIdUri":Ljava/lang/String;
    .local v12, "value":Ljava/lang/String;
    .local v13, "durationMs":J
    .local v15, "id":J
    .local v18, "timescale":J
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    new-array v10, v10, [B

    .line 943
    .local v10, "messageData":[B
    move-wide/from16 v20, v8

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1, v10, v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 944
    move-object/from16 v17, v10

    .end local v10    # "messageData":[B
    .local v17, "messageData":[B
    new-instance v10, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    invoke-direct/range {v10 .. v17}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 945
    .local v10, "eventMessage":Landroidx/media3/extractor/metadata/emsg/EventMessage;
    new-instance v8, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 946
    invoke-virtual {v9, v10}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->encode(Landroidx/media3/extractor/metadata/emsg/EventMessage;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 947
    .local v8, "encodedEventMessage":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    .line 950
    .local v9, "sampleSize":I
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    move/from16 v29, v2

    .end local v2    # "fullAtom":I
    .restart local v29    # "fullAtom":I
    array-length v2, v1

    move-object/from16 v22, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    move/from16 v23, v1

    aget-object v1, v22, v23

    .line 951
    .local v1, "emsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    move/from16 v24, v2

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 952
    invoke-interface {v1, v8, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 950
    .end local v1    # "emsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v1, v23, 0x1

    move/from16 v2, v24

    goto :goto_1

    .line 956
    :cond_2
    cmp-long v1, v6, v20

    .line 963
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 956
    if-nez v1, :cond_3

    .line 959
    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    move-object/from16 v20, v8

    .end local v8    # "encodedEventMessage":Landroidx/media3/common/util/ParsableByteArray;
    .local v20, "encodedEventMessage":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v8, 0x1

    invoke-direct {v1, v4, v5, v8, v9}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 962
    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v9

    iput v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_2

    .line 963
    .end local v20    # "encodedEventMessage":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v8    # "encodedEventMessage":Landroidx/media3/common/util/ParsableByteArray;
    :cond_3
    move-object/from16 v20, v8

    .end local v8    # "encodedEventMessage":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v20    # "encodedEventMessage":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 967
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v6, v7, v8, v9}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 969
    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v9

    iput v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_2

    .line 970
    :cond_4
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v1}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_5

    .line 974
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v6, v7, v8, v9}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 976
    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v9

    iput v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 987
    :goto_2
    move/from16 v26, v9

    goto :goto_5

    .line 970
    :cond_5
    const/4 v8, 0x0

    .line 979
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v1, :cond_6

    .line 980
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v1, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v6

    move-wide/from16 v23, v6

    goto :goto_3

    .line 979
    :cond_6
    move-wide/from16 v23, v6

    .line 982
    .end local v6    # "sampleTimeUs":J
    .local v23, "sampleTimeUs":J
    :goto_3
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v1

    :goto_4
    if-ge v8, v2, :cond_7

    aget-object v22, v1, v8

    .line 983
    .local v22, "emsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x1

    move/from16 v26, v9

    .end local v9    # "sampleSize":I
    .local v26, "sampleSize":I
    invoke-interface/range {v22 .. v28}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 982
    .end local v22    # "emsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v26    # "sampleSize":I
    .restart local v9    # "sampleSize":I
    :cond_7
    move/from16 v26, v9

    .end local v9    # "sampleSize":I
    .restart local v26    # "sampleSize":I
    move-wide/from16 v6, v23

    .line 987
    .end local v23    # "sampleTimeUs":J
    .restart local v6    # "sampleTimeUs":J
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onLeafAtomRead(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "leaf"    # Landroidx/media3/container/Mp4Box$LeafBox;
    .param p2, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {v0, p1}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$LeafBox;)V

    goto :goto_1

    .line 722
    :cond_0
    iget v0, p1, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_2

    .line 723
    iget-object v0, p1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p2}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Landroidx/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object v0

    .line 724
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroidx/media3/extractor/ChunkIndex;>;"
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->chunkIndexMerger:Landroidx/media3/extractor/ChunkIndexMerger;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/ChunkIndex;

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/ChunkIndexMerger;->add(Landroidx/media3/extractor/ChunkIndex;)V

    .line 725
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 726
    iget-boolean v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 727
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/SeekMap;

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 728
    iput-boolean v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0

    .line 729
    :cond_1
    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMapFromMultipleSidx:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->chunkIndexMerger:Landroidx/media3/extractor/ChunkIndexMerger;

    .line 731
    invoke-virtual {v1}, Landroidx/media3/extractor/ChunkIndexMerger;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 732
    invoke-interface {p2}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->seekPositionBeforeSidxProcessing:J

    goto :goto_0

    .line 734
    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroidx/media3/extractor/ChunkIndex;>;"
    :cond_2
    iget v0, p1, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v1, 0x656d7367

    if-ne v0, v1, :cond_3

    .line 735
    iget-object v0, p1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_1

    .line 734
    :cond_3
    :goto_0
    nop

    .line 737
    :goto_1
    return-void
.end method

.method private onMoofContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 8
    .param p1, "moof"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V

    .line 856
    iget-object v0, p1, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v0

    .line 857
    .local v0, "drmInitData":Landroidx/media3/common/DrmInitData;
    if-eqz v0, :cond_1

    .line 858
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 859
    .local v1, "trackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 860
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Landroidx/media3/common/DrmInitData;)V

    .line 859
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 864
    .end local v1    # "trackCount":I
    .end local v2    # "i":I
    :cond_1
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 865
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 866
    .restart local v1    # "trackCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 867
    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v5, v6, v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 869
    .end local v2    # "i":I
    :cond_2
    iput-wide v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 871
    .end local v1    # "trackCount":I
    :cond_3
    return-void
.end method

.method private onMoovContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 30
    .param p1, "moov"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v2, :cond_0

    move v2, v11

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 752
    iget-object v2, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v5

    .line 755
    .local v5, "drmInitData":Landroidx/media3/common/DrmInitData;
    const v2, 0x6d766578

    invoke-virtual {v1, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 756
    .local v12, "mvex":Landroidx/media3/container/Mp4Box$ContainerBox;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v13, v2

    .line 757
    .local v13, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/mp4/DefaultSampleValues;>;"
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 758
    .local v2, "duration":J
    iget-object v4, v12, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 759
    .local v14, "mvexChildrenSize":I
    const/4 v4, 0x0

    move-wide/from16 v28, v2

    move v2, v4

    move-wide/from16 v3, v28

    .local v2, "i":I
    .local v3, "duration":J
    :goto_1
    if-ge v2, v14, :cond_3

    .line 760
    iget-object v6, v12, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 761
    .local v6, "atom":Landroidx/media3/container/Mp4Box$LeafBox;
    iget v7, v6, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v8, 0x74726578

    if-ne v7, v8, :cond_1

    .line 762
    iget-object v7, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v7

    .line 763
    .local v7, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/DefaultSampleValues;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v13, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v7    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/DefaultSampleValues;>;"
    goto :goto_2

    .line 764
    :cond_1
    iget v7, v6, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v8, 0x6d656864

    if-ne v7, v8, :cond_2

    .line 765
    iget-object v7, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v3

    goto :goto_3

    .line 764
    :cond_2
    :goto_2
    nop

    .line 759
    .end local v6    # "atom":Landroidx/media3/container/Mp4Box$LeafBox;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 769
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .line 770
    .local v2, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const v6, 0x6d657461

    invoke-virtual {v1, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v15

    .line 771
    .local v15, "meta":Landroidx/media3/container/Mp4Box$ContainerBox;
    if-eqz v15, :cond_4

    .line 772
    invoke-static {v15}, Landroidx/media3/extractor/mp4/BoxParser;->parseMdtaFromMeta(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 774
    :cond_4
    new-instance v6, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v6}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    .line 775
    .local v6, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    const/4 v7, 0x0

    .line 776
    .local v7, "udtaMetadata":Landroidx/media3/common/Metadata;
    const v8, 0x75647461

    invoke-virtual {v1, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v16

    .line 777
    .local v16, "udta":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v16, :cond_5

    .line 778
    invoke-static/range {v16 .. v16}, Landroidx/media3/extractor/mp4/BoxParser;->parseUdta(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;

    move-result-object v7

    .line 779
    invoke-virtual {v6, v7}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    move-object/from16 v17, v7

    goto :goto_4

    .line 777
    :cond_5
    move-object/from16 v17, v7

    .line 781
    .end local v7    # "udtaMetadata":Landroidx/media3/common/Metadata;
    .local v17, "udtaMetadata":Landroidx/media3/common/Metadata;
    :goto_4
    new-instance v7, Landroidx/media3/common/Metadata;

    new-array v8, v11, [Landroidx/media3/common/Metadata$Entry;

    .line 783
    const v9, 0x6d766864

    invoke-virtual {v1, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v9, v9, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v7, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object/from16 v18, v7

    .line 786
    .local v18, "mvhdMetadata":Landroidx/media3/common/Metadata;
    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_6

    move-object v7, v2

    move-object v2, v6

    move v6, v11

    goto :goto_5

    :cond_6
    move-object v7, v2

    move-object v2, v6

    move v6, v10

    .end local v6    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v2, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v7, "mdtaMetadata":Landroidx/media3/common/Metadata;
    :goto_5
    new-instance v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    .line 787
    move-object v9, v7

    .end local v7    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v9, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const/4 v7, 0x0

    move-object/from16 v19, v9

    .end local v9    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v19, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const/4 v9, 0x0

    move/from16 v20, v10

    move-object/from16 v10, v19

    .end local v19    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v10, "mdtaMetadata":Landroidx/media3/common/Metadata;
    invoke-static/range {v1 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/List;

    move-result-object v6

    .line 797
    .local v6, "sampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 798
    .local v1, "trackCount":I
    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_8

    .line 800
    invoke-static {v6}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 801
    .local v7, "containerMimeType":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v1, :cond_7

    .line 802
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 803
    .local v9, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    move/from16 v19, v11

    iget-object v11, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 804
    .local v11, "track":Landroidx/media3/extractor/mp4/Track;
    move-wide/from16 v21, v3

    .end local v3    # "duration":J
    .local v21, "duration":J
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget v4, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-interface {v3, v8, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    .line 805
    .local v3, "output":Landroidx/media3/extractor/TrackOutput;
    move-object/from16 v23, v5

    .end local v5    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v23, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-wide v4, v11, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 806
    iget-object v4, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 807
    .local v4, "formatBuilder":Landroidx/media3/common/Format$Builder;
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 808
    iget v5, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-static {v5, v2, v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILandroidx/media3/extractor/GaplessInfoHolder;Landroidx/media3/common/Format$Builder;)V

    .line 809
    iget v5, v11, Landroidx/media3/extractor/mp4/Track;->type:I

    move-object/from16 v24, v2

    .end local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v24, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    iget-object v2, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    move-object/from16 v25, v7

    .end local v7    # "containerMimeType":Ljava/lang/String;
    .local v25, "containerMimeType":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Landroidx/media3/common/Metadata;

    aput-object v17, v7, v20

    aput-object v18, v7, v19

    invoke-static {v5, v10, v4, v2, v7}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    .line 816
    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v5, v11, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 820
    invoke-direct {v0, v13, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v5

    .line 821
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    invoke-direct {v2, v3, v9, v5, v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Landroidx/media3/common/Format;)V

    .line 822
    .local v2, "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v7, v11, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 823
    move-object v7, v2

    move-object v5, v3

    .end local v2    # "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v3    # "output":Landroidx/media3/extractor/TrackOutput;
    .local v5, "output":Landroidx/media3/extractor/TrackOutput;
    .local v7, "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    .end local v4    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v5    # "output":Landroidx/media3/extractor/TrackOutput;
    .local v26, "formatBuilder":Landroidx/media3/common/Format$Builder;
    .local v27, "output":Landroidx/media3/extractor/TrackOutput;
    iget-wide v4, v11, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 801
    .end local v7    # "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v9    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v11    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v26    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v27    # "output":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v19

    move-wide/from16 v3, v21

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    move-object/from16 v7, v25

    goto :goto_6

    .end local v21    # "duration":J
    .end local v23    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .end local v24    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .end local v25    # "containerMimeType":Ljava/lang/String;
    .local v2, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v3, "duration":J
    .local v5, "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v7, "containerMimeType":Ljava/lang/String;
    :cond_7
    move-object/from16 v24, v2

    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v7

    .line 825
    .end local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .end local v3    # "duration":J
    .end local v5    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .end local v7    # "containerMimeType":Ljava/lang/String;
    .end local v8    # "i":I
    .restart local v21    # "duration":J
    .restart local v23    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v24    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .restart local v25    # "containerMimeType":Ljava/lang/String;
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 826
    .end local v25    # "containerMimeType":Ljava/lang/String;
    goto :goto_9

    .line 827
    .end local v21    # "duration":J
    .end local v23    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .end local v24    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .restart local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .restart local v3    # "duration":J
    .restart local v5    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_8
    move-object/from16 v24, v2

    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move/from16 v19, v11

    .end local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .end local v3    # "duration":J
    .end local v5    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v21    # "duration":J
    .restart local v23    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v24    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v19, v20

    :goto_7
    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 828
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_a

    .line 829
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 830
    .local v3, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 831
    .local v4, "track":Landroidx/media3/extractor/mp4/Track;
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v7, v4, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 832
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v4, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 833
    invoke-direct {v0, v13, v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    .line 828
    .end local v3    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v4    # "track":Landroidx/media3/extractor/mp4/Track;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 836
    .end local v2    # "i":I
    :cond_a
    :goto_9
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .locals 11
    .param p1, "sampleTimeUs"    # J

    .line 1850
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1851
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1852
    .local v0, "metadataSampleInfo":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1853
    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    .line 1854
    .local v1, "metadataSampleTimeUs":J
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    if-eqz v3, :cond_0

    .line 1857
    add-long/2addr v1, p1

    .line 1859
    :cond_0
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v3, :cond_1

    .line 1860
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    move-wide v4, v1

    goto :goto_1

    .line 1859
    :cond_1
    move-wide v4, v1

    .line 1862
    .end local v1    # "metadataSampleTimeUs":J
    .local v4, "metadataSampleTimeUs":J
    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v1

    const/4 v3, 0x0

    move v10, v3

    :goto_2
    if-ge v10, v2, :cond_2

    aget-object v3, v1, v10

    .line 1863
    .local v3, "emsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1862
    .end local v3    # "emsgTrackOutput":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1870
    .end local v0    # "metadataSampleInfo":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    .end local v4    # "metadataSampleTimeUs":J
    :cond_2
    goto :goto_0

    .line 1871
    :cond_3
    return-void
.end method

.method private static parseMehd(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mehd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1009
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1010
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1011
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    .line 1012
    .local v1, "version":I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private static parseMoof(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V
    .locals 5
    .param p0, "moof"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p2, "haveSideloadedTrack"    # Z
    .param p3, "flags"    # I
    .param p4, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1022
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1023
    .local v0, "moofContainerChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1024
    iget-object v2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 1026
    .local v2, "child":Landroidx/media3/container/Mp4Box$ContainerBox;
    iget v3, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 1027
    invoke-static {v2, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V

    .line 1023
    .end local v2    # "child":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static parseSaio(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 8
    .param p0, "saio"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "out"    # Landroidx/media3/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1175
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1176
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1177
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v2

    .line 1178
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1179
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1182
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 1183
    .local v0, "entryCount":I
    if-ne v0, v4, :cond_2

    .line 1189
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v3

    .line 1190
    .local v3, "version":I
    iget-wide v4, p1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1191
    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    :goto_0
    add-long/2addr v4, v6

    iput-wide v4, p1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1192
    return-void

    .line 1185
    .end local v3    # "version":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected saio entry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3
.end method

.method private static parseSaiz(Landroidx/media3/extractor/mp4/TrackEncryptionBox;Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 12
    .param p0, "encryptionBox"    # Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "out"    # Landroidx/media3/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1130
    iget v0, p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .line 1131
    .local v0, "vectorSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1132
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1133
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v3

    .line 1134
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1135
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1137
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1139
    .local v1, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1140
    .local v4, "sampleCount":I
    iget v6, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v4, v6, :cond_6

    .line 1149
    const/4 v6, 0x0

    .line 1150
    .local v6, "totalSize":I
    const/4 v7, 0x0

    if-nez v1, :cond_3

    .line 1151
    iget-object v8, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 1152
    .local v8, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_2

    .line 1153
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1154
    .local v10, "sampleInfoSize":I
    add-int/2addr v6, v10

    .line 1155
    if-le v10, v0, :cond_1

    move v11, v5

    goto :goto_1

    :cond_1
    move v11, v7

    :goto_1
    aput-boolean v11, v8, v9

    .line 1152
    .end local v10    # "sampleInfoSize":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1157
    .end local v8    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v9    # "i":I
    :cond_2
    goto :goto_3

    .line 1158
    :cond_3
    if-le v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v7

    .line 1159
    .local v5, "subsampleEncryption":Z
    :goto_2
    mul-int v8, v1, v4

    add-int/2addr v6, v8

    .line 1160
    iget-object v8, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v8, v7, v4, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1162
    .end local v5    # "subsampleEncryption":Z
    :goto_3
    iget-object v5, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v8, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {v5, v4, v8, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1163
    if-lez v6, :cond_5

    .line 1164
    invoke-virtual {p2, v6}, Landroidx/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1166
    :cond_5
    return-void

    .line 1141
    .end local v6    # "totalSize":I
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saiz sample count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is greater than fragment sample count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5
.end method

.method private static parseSampleGroups(Landroidx/media3/container/Mp4Box$ContainerBox;Ljava/lang/String;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 18
    .param p0, "traf"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p1, "schemeType"    # Ljava/lang/String;
    .param p2, "out"    # Landroidx/media3/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1445
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1446
    .local v2, "sbgp":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v3, 0x0

    .line 1447
    .local v3, "sgpd":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1448
    iget-object v5, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1449
    .local v5, "leafAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    iget-object v6, v5, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1450
    .local v6, "leafAtomData":Landroidx/media3/common/util/ParsableByteArray;
    iget v7, v5, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v8, 0x73626770

    const v9, 0x73656967

    const/16 v10, 0xc

    if-ne v7, v8, :cond_0

    .line 1451
    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1452
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 1453
    move-object v2, v6

    goto :goto_1

    .line 1455
    :cond_0
    iget v7, v5, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v8, 0x73677064

    if-ne v7, v8, :cond_1

    .line 1456
    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1457
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 1458
    move-object v3, v6

    .line 1447
    .end local v5    # "leafAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v6    # "leafAtomData":Landroidx/media3/common/util/ParsableByteArray;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1462
    .end local v4    # "i":I
    :cond_2
    if-eqz v2, :cond_d

    if-nez v3, :cond_3

    goto/16 :goto_5

    .line 1466
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1467
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v5

    .line 1468
    .local v5, "sbgpVersion":I
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1469
    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 1470
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1472
    :cond_4
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 1477
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1478
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v4

    .line 1479
    .local v4, "sgpdVersion":I
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1480
    if-ne v4, v7, :cond_6

    .line 1481
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    goto :goto_2

    .line 1482
    :cond_5
    const-string v6, "Variable length description in sgpd found (unsupported)"

    invoke-static {v6}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v6

    throw v6

    .line 1485
    :cond_6
    const/4 v8, 0x2

    if-lt v4, v8, :cond_7

    .line 1486
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1488
    :cond_7
    :goto_2
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 1494
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1495
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 1496
    .local v8, "patternByte":I
    and-int/lit16 v9, v8, 0xf0

    shr-int/lit8 v15, v9, 0x4

    .line 1497
    .local v15, "cryptByteBlock":I
    and-int/lit8 v16, v8, 0xf

    .line 1498
    .local v16, "skipByteBlock":I
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/4 v9, 0x0

    if-ne v6, v7, :cond_8

    move v11, v7

    goto :goto_3

    :cond_8
    move v11, v9

    .line 1499
    .local v11, "isProtected":Z
    :goto_3
    if-nez v11, :cond_9

    .line 1500
    return-void

    .line 1502
    :cond_9
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 1503
    .local v13, "perSampleIvSize":I
    const/16 v6, 0x10

    new-array v14, v6, [B

    .line 1504
    .local v14, "keyId":[B
    array-length v6, v14

    invoke-virtual {v3, v14, v9, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1505
    const/4 v6, 0x0

    .line 1506
    .local v6, "constantIv":[B
    if-nez v13, :cond_a

    .line 1507
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1508
    .local v10, "constantIvSize":I
    new-array v6, v10, [B

    .line 1509
    invoke-virtual {v3, v6, v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v17, v6

    goto :goto_4

    .line 1506
    .end local v10    # "constantIvSize":I
    :cond_a
    move-object/from16 v17, v6

    .line 1511
    .end local v6    # "constantIv":[B
    .local v17, "constantIv":[B
    :goto_4
    iput-boolean v7, v1, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1512
    new-instance v10, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v17}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v10, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1521
    return-void

    .line 1489
    .end local v8    # "patternByte":I
    .end local v11    # "isProtected":Z
    .end local v13    # "perSampleIvSize":I
    .end local v14    # "keyId":[B
    .end local v15    # "cryptByteBlock":I
    .end local v16    # "skipByteBlock":I
    .end local v17    # "constantIv":[B
    :cond_b
    const-string v6, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v6}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v6

    throw v6

    .line 1473
    .end local v4    # "sgpdVersion":I
    :cond_c
    const-string v4, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v4}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4

    .line 1463
    .end local v5    # "sbgpVersion":I
    :cond_d
    :goto_5
    return-void
.end method

.method private static parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 7
    .param p0, "senc"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Landroidx/media3/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1412
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1413
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1414
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v1

    .line 1416
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_3

    .line 1422
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1423
    .local v2, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1424
    .local v4, "sampleCount":I
    if-nez v4, :cond_1

    .line 1426
    iget-object v5, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v6, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {v5, v3, v6, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1427
    return-void

    .line 1428
    :cond_1
    iget v5, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v4, v5, :cond_2

    .line 1437
    iget-object v5, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v3, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1438
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1439
    invoke-virtual {p2, p0}, Landroidx/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 1440
    return-void

    .line 1429
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Senc sample count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is different from fragment sample count"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 1418
    .end local v2    # "subsampleEncryption":Z
    .end local v4    # "sampleCount":I
    :cond_3
    const-string v2, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {v2}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
.end method

.method private static parseSenc(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 1
    .param p0, "senc"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "out"    # Landroidx/media3/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1407
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1408
    return-void
.end method

.method private static parseSidx(Landroidx/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;
    .locals 31
    .param p0, "atom"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media3/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1533
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1534
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1535
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    .line 1537
    .local v2, "version":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1538
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 1540
    .local v8, "timescale":J
    move-wide/from16 v4, p1

    .line 1541
    .local v4, "offset":J
    if-nez v2, :cond_0

    .line 1542
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 1543
    .local v6, "earliestPresentationTime":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    add-long/2addr v4, v10

    move-wide v10, v4

    move-wide v4, v6

    goto :goto_0

    .line 1545
    .end local v6    # "earliestPresentationTime":J
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 1546
    .restart local v6    # "earliestPresentationTime":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    add-long/2addr v4, v10

    move-wide v10, v4

    move-wide v4, v6

    .line 1548
    .end local v6    # "earliestPresentationTime":J
    .local v4, "earliestPresentationTime":J
    .local v10, "offset":J
    :goto_0
    nop

    .line 1549
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 1551
    move-wide v14, v4

    .end local v4    # "earliestPresentationTime":J
    .local v12, "earliestPresentationTimeUs":J
    .local v14, "earliestPresentationTime":J
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1553
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1554
    .local v4, "referenceCount":I
    new-array v5, v4, [I

    .line 1555
    .local v5, "sizes":[I
    new-array v6, v4, [J

    .line 1556
    .local v6, "offsets":[J
    new-array v7, v4, [J

    .line 1557
    .local v7, "durationsUs":[J
    new-array v3, v4, [J

    .line 1559
    .local v3, "timesUs":[J
    move-wide/from16 v16, v14

    .line 1560
    .local v16, "time":J
    move-wide/from16 v18, v12

    .line 1561
    .local v18, "timeUs":J
    const/16 v20, 0x0

    move/from16 v29, v20

    move-object/from16 v20, v6

    move/from16 v6, v29

    .local v6, "i":I
    .local v20, "offsets":[J
    :goto_1
    if-ge v6, v4, :cond_2

    .line 1562
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    .line 1564
    .local v21, "firstInt":I
    const/high16 v22, -0x80000000

    and-int v22, v21, v22

    .line 1565
    .local v22, "type":I
    if-nez v22, :cond_1

    .line 1569
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v23

    .line 1571
    .local v23, "referenceDuration":J
    const v25, 0x7fffffff

    and-int v25, v21, v25

    aput v25, v5, v6

    .line 1572
    aput-wide v10, v20, v6

    .line 1576
    aput-wide v18, v3, v6

    .line 1577
    add-long v16, v16, v23

    .line 1578
    move/from16 v26, v6

    move-object/from16 v25, v7

    .end local v6    # "i":I
    .end local v7    # "durationsUs":[J
    .local v25, "durationsUs":[J
    .local v26, "i":I
    const-wide/32 v6, 0xf4240

    move-wide/from16 v27, v10

    move-object/from16 v10, v25

    move/from16 v11, v26

    move/from16 v25, v1

    move/from16 v26, v2

    move-object v1, v5

    move-object/from16 v2, v20

    move/from16 v20, v4

    move-wide/from16 v4, v16

    .end local v5    # "sizes":[I
    .end local v16    # "time":J
    .local v1, "sizes":[I
    .local v2, "offsets":[J
    .local v4, "time":J
    .local v10, "durationsUs":[J
    .local v11, "i":I
    .local v20, "referenceCount":I
    .local v25, "fullAtom":I
    .local v26, "version":I
    .local v27, "offset":J
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 1579
    aget-wide v6, v3, v11

    sub-long v6, v18, v6

    aput-wide v6, v10, v11

    .line 1581
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1582
    aget v7, v1, v11

    int-to-long v6, v7

    add-long v6, v27, v6

    .line 1561
    .end local v21    # "firstInt":I
    .end local v22    # "type":I
    .end local v23    # "referenceDuration":J
    .end local v27    # "offset":J
    .local v6, "offset":J
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v20

    move-object v5, v1

    move-object/from16 v20, v2

    move/from16 v1, v25

    move/from16 v2, v26

    move-wide/from16 v29, v6

    move-object v7, v10

    move v6, v11

    move-wide/from16 v10, v29

    goto :goto_1

    .line 1566
    .end local v11    # "i":I
    .end local v25    # "fullAtom":I
    .end local v26    # "version":I
    .local v1, "fullAtom":I
    .local v2, "version":I
    .local v4, "referenceCount":I
    .restart local v5    # "sizes":[I
    .local v6, "i":I
    .restart local v7    # "durationsUs":[J
    .local v10, "offset":J
    .restart local v16    # "time":J
    .local v20, "offsets":[J
    .restart local v21    # "firstInt":I
    .restart local v22    # "type":I
    :cond_1
    move/from16 v25, v1

    move/from16 v26, v2

    move-object v1, v5

    move-object/from16 v2, v20

    move/from16 v20, v4

    .end local v4    # "referenceCount":I
    .end local v5    # "sizes":[I
    .local v1, "sizes":[I
    .local v2, "offsets":[J
    .local v20, "referenceCount":I
    .restart local v25    # "fullAtom":I
    .restart local v26    # "version":I
    const-string v4, "Unhandled indirect reference"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4

    .line 1561
    .end local v21    # "firstInt":I
    .end local v22    # "type":I
    .end local v25    # "fullAtom":I
    .end local v26    # "version":I
    .local v1, "fullAtom":I
    .local v2, "version":I
    .restart local v4    # "referenceCount":I
    .restart local v5    # "sizes":[I
    .local v20, "offsets":[J
    :cond_2
    move/from16 v25, v1

    move/from16 v26, v2

    move-object v1, v5

    move-wide/from16 v27, v10

    move-object/from16 v2, v20

    move/from16 v20, v4

    move-object v10, v7

    .line 1585
    .end local v4    # "referenceCount":I
    .end local v5    # "sizes":[I
    .end local v6    # "i":I
    .end local v7    # "durationsUs":[J
    .local v1, "sizes":[I
    .local v2, "offsets":[J
    .local v10, "durationsUs":[J
    .local v20, "referenceCount":I
    .restart local v25    # "fullAtom":I
    .restart local v26    # "version":I
    .restart local v27    # "offset":J
    nop

    .line 1586
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {v5, v1, v2, v10, v3}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 1585
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseTfdt(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 4
    .param p0, "tfdt"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1258
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1259
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1260
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    .line 1261
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private static parseTfhd(Landroidx/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 11
    .param p0, "tfhd"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "haveSideloadedTrack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;Z)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1209
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1210
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1211
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v1

    .line 1212
    .local v1, "atomFlags":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1215
    .local v2, "trackId":I
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1216
    .local v3, "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v3, :cond_1

    .line 1217
    const/4 v4, 0x0

    return-object v4

    .line 1219
    :cond_1
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2

    .line 1220
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    .line 1221
    .local v4, "baseDataPosition":J
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iput-wide v4, v6, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    .line 1222
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iput-wide v4, v6, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1225
    .end local v4    # "baseDataPosition":J
    :cond_2
    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1227
    .local v4, "defaultSampleValues":Landroidx/media3/extractor/mp4/DefaultSampleValues;
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_3

    .line 1228
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1229
    :cond_3
    iget v5, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_1
    nop

    .line 1231
    .local v5, "defaultSampleDescriptionIndex":I
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_4

    .line 1232
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    goto :goto_2

    .line 1233
    :cond_4
    iget v6, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_2
    nop

    .line 1235
    .local v6, "defaultSampleDuration":I
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_5

    .line 1236
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    goto :goto_3

    .line 1237
    :cond_5
    iget v7, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_3
    nop

    .line 1239
    .local v7, "defaultSampleSize":I
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_6

    .line 1240
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    goto :goto_4

    .line 1241
    :cond_6
    iget v8, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_4
    nop

    .line 1242
    .local v8, "defaultSampleFlags":I
    iget-object v9, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    new-instance v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v10, v5, v6, v7, v8}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v10, v9, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1248
    return-object v3
.end method

.method private static parseTraf(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V
    .locals 18
    .param p0, "traf"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p2, "haveSideloadedTrack"    # Z
    .param p3, "flags"    # I
    .param p4, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1040
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    const v2, 0x74666864

    invoke-virtual {v0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1041
    .local v2, "tfhd":Landroidx/media3/container/Mp4Box$LeafBox;
    iget-object v3, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static {v3, v4, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Landroidx/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v3

    .line 1042
    .local v3, "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v3, :cond_0

    .line 1043
    return-void

    .line 1046
    :cond_0
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1047
    .local v6, "fragment":Landroidx/media3/extractor/mp4/TrackFragment;
    iget-wide v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 1048
    .local v7, "fragmentDecodeTime":J
    iget-boolean v9, v6, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 1049
    .local v9, "fragmentDecodeTimeIncludesMoov":Z
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    .line 1050
    const/4 v10, 0x1

    invoke-static {v3, v10}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$002(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z

    .line 1051
    const v11, 0x74666474

    invoke-virtual {v0, v11}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v11

    .line 1052
    .local v11, "tfdtAtom":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v11, :cond_1

    and-int/lit8 v12, v1, 0x2

    if-nez v12, :cond_1

    .line 1053
    iget-object v12, v11, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v12}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v12

    iput-wide v12, v6, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 1054
    iput-boolean v10, v6, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_0

    .line 1056
    :cond_1
    iput-wide v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 1057
    iput-boolean v9, v6, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 1060
    :goto_0
    invoke-static {v0, v3, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V

    .line 1063
    iget-object v10, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v12, v6, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1065
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget v12, v12, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1064
    invoke-virtual {v10, v12}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v10

    .line 1067
    .local v10, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    const v12, 0x7361697a

    invoke-virtual {v0, v12}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v12

    .line 1068
    .local v12, "saiz":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v12, :cond_2

    .line 1069
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v12, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v13, v14, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Landroidx/media3/extractor/mp4/TrackEncryptionBox;Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1072
    :cond_2
    const v13, 0x7361696f

    invoke-virtual {v0, v13}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v13

    .line 1073
    .local v13, "saio":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v13, :cond_3

    .line 1074
    iget-object v14, v13, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v14, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1077
    :cond_3
    const v14, 0x73656e63

    invoke-virtual {v0, v14}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v14

    .line 1078
    .local v14, "senc":Landroidx/media3/container/Mp4Box$LeafBox;
    if-eqz v14, :cond_4

    .line 1079
    iget-object v15, v14, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v15, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1082
    :cond_4
    if-eqz v10, :cond_5

    iget-object v15, v10, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    :goto_1
    invoke-static {v0, v15, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSampleGroups(Landroidx/media3/container/Mp4Box$ContainerBox;Ljava/lang/String;Landroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1084
    iget-object v15, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    .line 1085
    .local v15, "leafChildrenSize":I
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_2
    if-ge v1, v15, :cond_7

    .line 1086
    move-object/from16 v16, v2

    .end local v2    # "tfhd":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v16, "tfhd":Landroidx/media3/container/Mp4Box$LeafBox;
    iget-object v2, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1087
    .local v2, "atom":Landroidx/media3/container/Mp4Box$LeafBox;
    iget v0, v2, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    const v1, 0x75756964

    if-ne v0, v1, :cond_6

    .line 1088
    iget-object v0, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v1, p4

    invoke-static {v0, v6, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;[B)V

    goto :goto_3

    .line 1087
    :cond_6
    move-object/from16 v1, p4

    .line 1085
    .end local v2    # "atom":Landroidx/media3/container/Mp4Box$LeafBox;
    :goto_3
    add-int/lit8 v0, v17, 0x1

    move v1, v0

    move-object/from16 v2, v16

    move-object/from16 v0, p0

    .end local v17    # "i":I
    .local v0, "i":I
    goto :goto_2

    .line 1091
    .end local v0    # "i":I
    .end local v16    # "tfhd":Landroidx/media3/container/Mp4Box$LeafBox;
    .local v2, "tfhd":Landroidx/media3/container/Mp4Box$LeafBox;
    :cond_7
    return-void
.end method

.method private static parseTrex(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "trex"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .line 991
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 992
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 993
    .local v0, "trackId":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 994
    .local v1, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 995
    .local v2, "defaultSampleDuration":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 996
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 998
    .local v4, "defaultSampleFlags":I
    nop

    .line 999
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v1, v2, v3, v4}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 998
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroidx/media3/common/util/ParsableByteArray;I)I
    .locals 37
    .param p0, "trackBundle"    # Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "index"    # I
    .param p2, "flags"    # I
    .param p3, "trun"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p4, "trackRunStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1301
    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1302
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1303
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v3

    .line 1305
    .local v3, "atomFlags":I
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 1306
    .local v4, "track":Landroidx/media3/extractor/mp4/Track;
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1307
    .local v5, "fragment":Landroidx/media3/extractor/mp4/TrackFragment;
    iget-object v6, v5, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v6}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1309
    .local v6, "defaultSampleValues":Landroidx/media3/extractor/mp4/DefaultSampleValues;
    iget-object v7, v5, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    aput v8, v7, p1

    .line 1310
    iget-object v7, v5, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v8, v5, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v8, v7, p1

    .line 1311
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_0

    .line 1312
    iget-object v7, v5, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v8, v7, p1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    aput-wide v8, v7, p1

    .line 1315
    :cond_0
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1316
    .local v7, "firstSampleFlagsPresent":Z
    :goto_0
    iget v10, v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    .line 1317
    .local v10, "firstSampleFlags":I
    if-eqz v7, :cond_2

    .line 1318
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 1321
    :cond_2
    and-int/lit16 v11, v3, 0x100

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 1322
    .local v11, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v12, v3, 0x200

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 1323
    .local v12, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v13, v3, 0x400

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 1324
    .local v13, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v14, v3, 0x800

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    .line 1329
    .local v14, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v15, 0x0

    .line 1332
    .local v15, "edtsOffset":J
    invoke-static {v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isEdtsListDurationForEntireMediaTimeline(Landroidx/media3/extractor/mp4/Track;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1333
    const/16 v17, 0x0

    iget-object v8, v4, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v8}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    aget-wide v15, v8, v17

    goto :goto_5

    .line 1332
    :cond_7
    const/16 v17, 0x0

    .line 1336
    :goto_5
    iget-object v8, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 1337
    .local v8, "sampleSizeTable":[I
    const/16 v18, 0x1

    iget-object v9, v5, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    .line 1338
    .local v9, "samplePresentationTimesUs":[J
    move/from16 v19, v1

    .end local v1    # "fullAtom":I
    .local v19, "fullAtom":I
    iget-object v1, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 1340
    .local v1, "sampleIsSyncFrameTable":[Z
    move-object/from16 v20, v1

    .end local v1    # "sampleIsSyncFrameTable":[Z
    .local v20, "sampleIsSyncFrameTable":[Z
    iget v1, v4, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8

    move/from16 v1, v18

    goto :goto_6

    :cond_8
    move/from16 v1, v17

    .line 1344
    .local v1, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_6
    iget-object v2, v5, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    aget v2, v2, p1

    add-int v2, p4, v2

    .line 1345
    .local v2, "trackRunEnd":I
    move/from16 v27, v7

    move-object/from16 v28, v8

    .end local v7    # "firstSampleFlagsPresent":Z
    .end local v8    # "sampleSizeTable":[I
    .local v27, "firstSampleFlagsPresent":Z
    .local v28, "sampleSizeTable":[I
    iget-wide v7, v4, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 1346
    .local v7, "timescale":J
    move/from16 v29, v3

    move-object/from16 v30, v4

    .end local v3    # "atomFlags":I
    .end local v4    # "track":Landroidx/media3/extractor/mp4/Track;
    .local v29, "atomFlags":I
    .local v30, "track":Landroidx/media3/extractor/mp4/Track;
    iget-wide v3, v5, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 1347
    .local v3, "cumulativeTime":J
    move/from16 v21, p4

    move/from16 v31, v1

    move/from16 v1, v21

    .local v1, "i":I
    .local v31, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_7
    if-ge v1, v2, :cond_11

    .line 1350
    if-eqz v11, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    move/from16 v32, v1

    goto :goto_8

    :cond_9
    move/from16 v32, v1

    .end local v1    # "i":I
    .local v32, "i":I
    iget v1, v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v21, v1

    :goto_8
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v1

    .line 1352
    .local v1, "sampleDuration":I
    if-eqz v12, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    move/from16 v33, v2

    goto :goto_9

    :cond_a
    move/from16 v33, v2

    .end local v2    # "trackRunEnd":I
    .local v33, "trackRunEnd":I
    iget v2, v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v21, v2

    :goto_9
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v2

    .line 1354
    .local v2, "sampleSize":I
    if-eqz v13, :cond_b

    .line 1355
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    move/from16 v34, v2

    goto :goto_a

    .line 1356
    :cond_b
    if-nez v32, :cond_c

    if-eqz v27, :cond_c

    move/from16 v34, v2

    move/from16 v21, v10

    goto :goto_a

    :cond_c
    move/from16 v34, v2

    .end local v2    # "sampleSize":I
    .local v34, "sampleSize":I
    iget v2, v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v21, v2

    :goto_a
    move/from16 v2, v21

    .line 1357
    .local v2, "sampleFlags":I
    const/16 v21, 0x0

    .line 1358
    .local v21, "sampleCompositionTimeOffset":I
    if-eqz v14, :cond_d

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    move/from16 v35, v2

    move/from16 v2, v21

    goto :goto_b

    .line 1358
    :cond_d
    move/from16 v35, v2

    move/from16 v2, v21

    .line 1366
    .end local v21    # "sampleCompositionTimeOffset":I
    .local v2, "sampleCompositionTimeOffset":I
    .local v35, "sampleFlags":I
    :goto_b
    move-object/from16 v36, v6

    move-wide/from16 v25, v7

    .end local v6    # "defaultSampleValues":Landroidx/media3/extractor/mp4/DefaultSampleValues;
    .end local v7    # "timescale":J
    .local v25, "timescale":J
    .local v36, "defaultSampleValues":Landroidx/media3/extractor/mp4/DefaultSampleValues;
    int-to-long v6, v2

    add-long/2addr v6, v3

    sub-long v21, v6, v15

    .line 1367
    .local v21, "samplePresentationTime":J
    nop

    .line 1368
    const-wide/32 v23, 0xf4240

    invoke-static/range {v21 .. v26}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    aput-wide v6, v9, v32

    .line 1369
    iget-boolean v6, v5, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v6, :cond_e

    .line 1370
    aget-wide v6, v9, v32

    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-wide/from16 v23, v6

    iget-wide v6, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long v6, v23, v6

    aput-wide v6, v9, v32

    .line 1372
    :cond_e
    aput v34, v28, v32

    .line 1373
    shr-int/lit8 v6, v35, 0x10

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_10

    if-eqz v31, :cond_f

    if-nez v32, :cond_10

    :cond_f
    move/from16 v6, v18

    goto :goto_c

    :cond_10
    move/from16 v6, v17

    :goto_c
    aput-boolean v6, v20, v32

    .line 1375
    int-to-long v6, v1

    add-long/2addr v3, v6

    .line 1347
    .end local v1    # "sampleDuration":I
    .end local v2    # "sampleCompositionTimeOffset":I
    .end local v21    # "samplePresentationTime":J
    .end local v34    # "sampleSize":I
    .end local v35    # "sampleFlags":I
    add-int/lit8 v1, v32, 0x1

    move-wide/from16 v7, v25

    move/from16 v2, v33

    move-object/from16 v6, v36

    .end local v32    # "i":I
    .local v1, "i":I
    goto/16 :goto_7

    .end local v25    # "timescale":J
    .end local v33    # "trackRunEnd":I
    .end local v36    # "defaultSampleValues":Landroidx/media3/extractor/mp4/DefaultSampleValues;
    .local v2, "trackRunEnd":I
    .restart local v6    # "defaultSampleValues":Landroidx/media3/extractor/mp4/DefaultSampleValues;
    .restart local v7    # "timescale":J
    :cond_11
    move/from16 v33, v2

    .line 1377
    .end local v1    # "i":I
    .end local v2    # "trackRunEnd":I
    .restart local v33    # "trackRunEnd":I
    iput-wide v3, v5, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 1378
    return v33
.end method

.method private static parseTruns(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V
    .locals 11
    .param p0, "traf"    # Landroidx/media3/container/Mp4Box$ContainerBox;
    .param p1, "trackBundle"    # Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "trunCount":I
    const/4 v1, 0x0

    .line 1097
    .local v1, "totalSampleCount":I
    iget-object v2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    .line 1098
    .local v2, "leafChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/container/Mp4Box$LeafBox;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1099
    .local v3, "leafChildrenSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const v5, 0x7472756e

    if-ge v4, v3, :cond_1

    .line 1100
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1101
    .local v6, "atom":Landroidx/media3/container/Mp4Box$LeafBox;
    iget v7, v6, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    if-ne v7, v5, :cond_0

    .line 1102
    iget-object v5, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1103
    .local v5, "trunData":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1104
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 1105
    .local v7, "trunSampleCount":I
    if-lez v7, :cond_0

    .line 1106
    add-int/2addr v1, v7

    .line 1107
    add-int/lit8 v0, v0, 0x1

    .line 1099
    .end local v5    # "trunData":Landroidx/media3/common/util/ParsableByteArray;
    .end local v6    # "atom":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v7    # "trunSampleCount":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1111
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    iput v4, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1112
    iput v4, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1113
    iput v4, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1114
    iget-object v4, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v4, v0, v1}, Landroidx/media3/extractor/mp4/TrackFragment;->initTables(II)V

    .line 1116
    const/4 v4, 0x0

    .line 1117
    .local v4, "trunIndex":I
    const/4 v6, 0x0

    .line 1118
    .local v6, "trunStartPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 1119
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1120
    .local v8, "trun":Landroidx/media3/container/Mp4Box$LeafBox;
    iget v9, v8, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    if-ne v9, v5, :cond_2

    .line 1121
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "trunIndex":I
    .local v9, "trunIndex":I
    iget-object v10, v8, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1122
    invoke-static {p1, v4, p2, v10, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroidx/media3/common/util/ParsableByteArray;I)I

    move-result v4

    move v6, v4

    move v4, v9

    .line 1118
    .end local v8    # "trun":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v9    # "trunIndex":I
    .restart local v4    # "trunIndex":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1125
    .end local v7    # "i":I
    :cond_3
    return-void
.end method

.method private static parseUuid(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .param p0, "uuid"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "out"    # Landroidx/media3/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1392
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1393
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1396
    sget-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    return-void

    .line 1403
    :cond_0
    invoke-static {p0, v1, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1404
    return-void
.end method

.method private processAtomEnded(J)V
    .locals 2
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 713
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v0, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 716
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 717
    return-void
.end method

.method private readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 12
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    return v1

    .line 576
    :cond_0
    iput v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 577
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 578
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 579
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 582
    :cond_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    const-wide/16 v4, -0x1

    if-nez v0, :cond_2

    .line 584
    const/16 v0, 0x8

    .line 585
    .local v0, "headerBytesRemaining":I
    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-interface {p1, v6, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 586
    iget v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v6, v0

    iput v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 587
    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_0

    .line 588
    :cond_2
    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    .line 591
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    .line 592
    .local v6, "endPosition":J
    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 593
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v6, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    .line 595
    :cond_3
    cmp-long v0, v6, v4

    if-eqz v0, :cond_5

    .line 596
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long v8, v6, v8

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_1

    .line 588
    .end local v6    # "endPosition":J
    :cond_4
    :goto_0
    nop

    .line 600
    :cond_5
    :goto_1
    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    .line 601
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x66726565

    if-ne v0, v6, :cond_6

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v2, :cond_6

    .line 604
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    iput-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_2

    .line 606
    :cond_6
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 611
    :cond_7
    :goto_2
    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->seekPositionBeforeSidxProcessing:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_9

    .line 612
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v4, 0x73696478

    if-ne v0, v4, :cond_8

    .line 613
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 614
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 616
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-wide v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v1

    sub-long/2addr v5, v7

    long-to-int v1, v5

    .line 615
    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 618
    new-instance v0, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v4, v1}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 619
    .local v0, "sidxBox":Landroidx/media3/container/Mp4Box$LeafBox;
    iget-object v1, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Landroidx/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object v1

    .line 620
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroidx/media3/extractor/ChunkIndex;>;"
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->chunkIndexMerger:Landroidx/media3/extractor/ChunkIndexMerger;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/ChunkIndex;

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/ChunkIndexMerger;->add(Landroidx/media3/extractor/ChunkIndex;)V

    .line 621
    .end local v0    # "sidxBox":Landroidx/media3/container/Mp4Box$LeafBox;
    .end local v1    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroidx/media3/extractor/ChunkIndex;>;"
    goto :goto_3

    .line 622
    :cond_8
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v2

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-interface {p1, v0, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(IZ)Z

    .line 624
    :goto_3
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 625
    return v3

    .line 628
    :cond_9
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 629
    .local v4, "atomPosition":J
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_a

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v6, :cond_b

    .line 630
    :cond_a
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_b

    .line 632
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v8, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v9, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v8, v9, v10, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v8}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 633
    iput-boolean v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 637
    :cond_b
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v7, :cond_c

    .line 639
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 640
    .local v0, "trackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v0, :cond_c

    .line 641
    iget-object v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 642
    .local v8, "fragment":Landroidx/media3/extractor/mp4/TrackFragment;
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->atomPosition:J

    .line 643
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 644
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    .line 640
    .end local v8    # "fragment":Landroidx/media3/extractor/mp4/TrackFragment;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 648
    .end local v0    # "trackCount":I
    .end local v7    # "i":I
    :cond_c
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_d

    .line 649
    iput-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 650
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 651
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 652
    return v3

    .line 655
    :cond_d
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 656
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v0, v6

    .line 657
    .local v0, "endPosition":J
    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-eqz v2, :cond_e

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d657461

    if-ne v2, v6, :cond_e

    .line 658
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V

    .line 660
    :cond_e
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v6, v7, v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 661
    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-nez v2, :cond_f

    .line 662
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_5

    .line 665
    :cond_f
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 667
    .end local v0    # "endPosition":J
    :goto_5
    goto :goto_6

    :cond_10
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    const-wide/32 v8, 0x7fffffff

    if-eqz v0, :cond_13

    .line 668
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v2, :cond_12

    .line 672
    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_11

    .line 676
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v6, v6

    invoke-direct {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 677
    .local v0, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-static {v6, v1, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 679
    iput v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 680
    .end local v0    # "atomData":Landroidx/media3/common/util/ParsableByteArray;
    goto :goto_6

    .line 673
    :cond_11
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 669
    :cond_12
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 681
    :cond_13
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_14

    .line 685
    iput-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 686
    iput v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 689
    :goto_6
    return v3

    .line 682
    :cond_14
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 702
    .local v0, "atomPayloadSize":I
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 703
    .local v1, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 705
    new-instance v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v3, v1}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-direct {p0, v2, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 707
    :cond_0
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 709
    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 710
    return-void
.end method

.method private readEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 8
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    const/4 v0, 0x0

    .line 1591
    .local v0, "nextTrackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v1, 0x7fffffffffffffffL

    .line 1592
    .local v1, "nextDataOffset":J
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1593
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1594
    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1595
    .local v5, "trackFragment":Landroidx/media3/extractor/mp4/TrackFragment;
    iget-boolean v6, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v6, v6, v1

    if-gez v6, :cond_0

    .line 1597
    iget-wide v1, v5, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1598
    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1593
    .end local v5    # "trackFragment":Landroidx/media3/extractor/mp4/TrackFragment;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1601
    .end local v4    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 1602
    const/4 v4, 0x3

    iput v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1603
    return-void

    .line 1605
    :cond_2
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v1, v4

    long-to-int v4, v4

    .line 1606
    .local v4, "bytesToSkip":I
    if-ltz v4, :cond_3

    .line 1610
    invoke-interface {p1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1611
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v5, p1}, Landroidx/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V

    .line 1612
    return-void

    .line 1607
    :cond_3
    const-string v5, "Offset to encryption data was negative."

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 17
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1630
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1631
    .local v2, "trackBundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 1632
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getNextTrackBundle(Landroid/util/SparseArray;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    .line 1633
    if-nez v2, :cond_1

    .line 1636
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    .line 1637
    .local v5, "bytesToSkip":I
    if-ltz v5, :cond_0

    .line 1641
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1642
    invoke-direct {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 1643
    return v4

    .line 1638
    :cond_0
    const-string v4, "Offset to end of mdat was negative."

    invoke-static {v4, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3

    .line 1646
    .end local v5    # "bytesToSkip":I
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v5

    .line 1648
    .local v5, "nextDataPosition":J
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long v7, v5, v7

    long-to-int v7, v7

    .line 1649
    .local v7, "bytesToSkip":I
    if-gez v7, :cond_2

    .line 1651
    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    invoke-static {v8, v9}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    const/4 v7, 0x0

    .line 1654
    :cond_2
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1655
    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1657
    .end local v5    # "nextDataPosition":J
    .end local v7    # "bytesToSkip":I
    :cond_3
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    .line 1658
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleSize()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1662
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 1663
    invoke-direct {v0, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->canReadWithinGopSampleDependencies(Landroidx/media3/common/Format;)Z

    move-result v5

    xor-int/2addr v5, v8

    iput-boolean v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    .line 1665
    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v5, v9, :cond_5

    .line 1666
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1667
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    .line 1668
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1669
    iput-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1671
    :cond_4
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1672
    return v8

    .line 1675
    :cond_5
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v5, v8, :cond_6

    .line 1677
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1678
    invoke-interface {v1, v9}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1681
    :cond_6
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1689
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1681
    if-eqz v5, :cond_7

    .line 1683
    nop

    .line 1684
    const/4 v5, 0x7

    invoke-virtual {v2, v9, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v9

    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1685
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v9, v10}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1686
    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v10, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1687
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v5

    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_0

    .line 1689
    :cond_7
    nop

    .line 1690
    invoke-virtual {v2, v9, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1692
    :goto_0
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1693
    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1694
    iput v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1697
    :cond_8
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 1698
    .local v5, "track":Landroidx/media3/extractor/mp4/Track;
    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1699
    .local v9, "output":Landroidx/media3/extractor/TrackOutput;
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSamplePresentationTimeUs()J

    move-result-wide v10

    .line 1700
    .local v10, "sampleTimeUs":J
    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v12, :cond_9

    .line 1701
    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v12, v10, v11}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v10

    .line 1703
    :cond_9
    iget v12, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v12, :cond_15

    .line 1706
    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    .line 1707
    .local v12, "nalPrefixData":[B
    aput-byte v4, v12, v4

    .line 1708
    aput-byte v4, v12, v8

    .line 1709
    const/4 v13, 0x2

    aput-byte v4, v12, v13

    .line 1710
    iget v13, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v13, v13, 0x4

    .line 1714
    .local v13, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v15, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v14, v15, :cond_14

    .line 1715
    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v14, :cond_f

    .line 1716
    const/4 v14, 0x0

    .line 1717
    .local v14, "numberOfNalUnitHeaderBytesToRead":I
    iget-object v15, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v15, v15

    if-gtz v15, :cond_a

    iget-boolean v15, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v15, :cond_b

    .line 1719
    :cond_a
    iget-object v15, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v15}, Landroidx/media3/container/NalUnitUtil;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    move-result v15

    .line 1720
    .local v15, "nalUnitHeaderSize":I
    iget v6, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v6, v15

    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v3, v8

    if-gt v6, v3, :cond_b

    .line 1725
    move v14, v15

    .line 1731
    .end local v15    # "nalUnitHeaderSize":I
    :cond_b
    iget v3, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v3, v14

    .line 1734
    .local v3, "nalUnitPrefixLength":I
    invoke-interface {v1, v12, v13, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1735
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1736
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1737
    .local v6, "nalLengthInt":I
    if-ltz v6, :cond_e

    .line 1741
    sub-int v8, v6, v14

    iput v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1743
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1744
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v8, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1745
    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v8, v7

    iput v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1746
    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v8, v13

    iput v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1747
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v8, v8

    if-lez v8, :cond_c

    if-lez v14, :cond_c

    iget-object v8, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 1750
    invoke-static {v8, v12, v7}, Landroidx/media3/container/NalUnitUtil;->isNalUnitSei(Landroidx/media3/common/Format;[BI)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_2

    :cond_c
    move v8, v4

    :goto_2
    iput-boolean v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1752
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v8, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1753
    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v8, v14

    iput v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1754
    if-lez v14, :cond_d

    iget-boolean v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v8, :cond_d

    iget-object v8, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 1756
    invoke-static {v12, v7, v14, v8}, Landroidx/media3/container/NalUnitUtil;->isDependedOn([BIILandroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1761
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    .line 1763
    .end local v3    # "nalUnitPrefixLength":I
    .end local v6    # "nalLengthInt":I
    .end local v14    # "numberOfNalUnitHeaderBytesToRead":I
    :cond_d
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1738
    .restart local v3    # "nalUnitPrefixLength":I
    .restart local v6    # "nalLengthInt":I
    .restart local v14    # "numberOfNalUnitHeaderBytesToRead":I
    :cond_e
    const-string v4, "Invalid NAL length"

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4

    .line 1765
    .end local v3    # "nalUnitPrefixLength":I
    .end local v6    # "nalLengthInt":I
    .end local v14    # "numberOfNalUnitHeaderBytesToRead":I
    :cond_f
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v3, :cond_13

    .line 1767
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1768
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1769
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1768
    invoke-interface {v1, v3, v4, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1770
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v9, v3, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1771
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1773
    .local v3, "writtenBytes":I
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1775
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v8

    .line 1774
    invoke-static {v6, v8}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v6

    .line 1776
    .local v6, "unescapedLength":I
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1777
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 1779
    iget-object v8, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    .line 1783
    iget-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    .line 1779
    const/4 v15, -0x1

    if-ne v8, v15, :cond_10

    .line 1780
    invoke-virtual {v14}, Landroidx/media3/container/ReorderingBufferQueue;->getMaxSize()I

    move-result v8

    if-eqz v8, :cond_11

    .line 1781
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v8, v4}, Landroidx/media3/container/ReorderingBufferQueue;->setMaxSize(I)V

    goto :goto_3

    .line 1783
    :cond_10
    invoke-virtual {v14}, Landroidx/media3/container/ReorderingBufferQueue;->getMaxSize()I

    move-result v8

    iget-object v14, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v14, v14, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    if-eq v8, v14, :cond_11

    .line 1784
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    iget-object v14, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v14, v14, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    invoke-virtual {v8, v14}, Landroidx/media3/container/ReorderingBufferQueue;->setMaxSize(I)V

    .line 1786
    :cond_11
    :goto_3
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    iget-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v10, v11, v14}, Landroidx/media3/container/ReorderingBufferQueue;->add(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 1788
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v8

    and-int/2addr v8, v7

    if-eqz v8, :cond_12

    .line 1789
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v8}, Landroidx/media3/container/ReorderingBufferQueue;->flush()V

    .line 1791
    .end local v6    # "unescapedLength":I
    :cond_12
    goto :goto_4

    .line 1793
    .end local v3    # "writtenBytes":I
    :cond_13
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v9, v1, v3, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v3

    .line 1795
    .restart local v3    # "writtenBytes":I
    :goto_4
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v3

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1796
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v3

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1797
    .end local v3    # "writtenBytes":I
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1799
    .end local v12    # "nalPrefixData":[B
    .end local v13    # "nalUnitLengthFieldLengthDiff":I
    :cond_14
    goto :goto_6

    .line 1800
    :cond_15
    :goto_5
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v6, :cond_16

    .line 1801
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v3, v6

    invoke-interface {v9, v1, v3, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v3

    .line 1802
    .restart local v3    # "writtenBytes":I
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v3

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1803
    .end local v3    # "writtenBytes":I
    goto :goto_5

    .line 1806
    :cond_16
    :goto_6
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v3

    .line 1807
    .local v3, "sampleFlags":I
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v4, :cond_17

    .line 1808
    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    move v12, v3

    goto :goto_7

    .line 1807
    :cond_17
    move v12, v3

    .line 1812
    .end local v3    # "sampleFlags":I
    .local v12, "sampleFlags":I
    :goto_7
    const/4 v3, 0x0

    .line 1813
    .local v3, "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    .line 1814
    .local v4, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v4, :cond_18

    .line 1815
    iget-object v3, v4, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-object v15, v3

    goto :goto_8

    .line 1814
    :cond_18
    move-object v15, v3

    .line 1818
    .end local v3    # "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    .local v15, "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    :goto_8
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v15}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1821
    invoke-direct {v0, v10, v11}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1822
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1823
    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1825
    :cond_19
    const/4 v3, 0x3

    iput v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1826
    const/16 v16, 0x1

    return v16
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1961
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

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

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

    .line 1926
    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

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

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

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


# virtual methods
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

    .line 475
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 19
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 480
    move-object/from16 v0, p0

    .line 481
    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 482
    new-instance v1, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    .line 483
    :cond_0
    move-object/from16 v3, p1

    move-object v1, v3

    :goto_0
    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 484
    invoke-direct {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 485
    invoke-direct {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->initExtraTracks()V

    .line 486
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 488
    .local v1, "formatBuilder":Landroidx/media3/common/Format$Builder;
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 489
    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 491
    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v4

    new-instance v7, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    new-array v9, v6, [J

    new-array v10, v6, [I

    new-array v12, v6, [J

    new-array v13, v6, [I

    new-array v14, v6, [I

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v18}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    new-instance v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v5, v6, v6, v6, v6}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 508
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v8

    invoke-direct {v2, v4, v7, v5, v8}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Landroidx/media3/common/Format;)V

    .line 509
    .local v2, "bundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 510
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v4}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 512
    .end local v1    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v2    # "bundle":Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_1
    return-void
.end method

.method synthetic lambda$new$2$androidx-media3-extractor-mp4-FragmentedMp4Extractor(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1
    .param p1, "presentationTimeUs"    # J
    .param p3, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 444
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, v0}, Landroidx/media3/extractor/CeaUtil;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method protected modifyTrack(Landroidx/media3/extractor/mp4/Track;)Landroidx/media3/extractor/mp4/Track;
    .locals 0
    .param p1, "track"    # Landroidx/media3/extractor/mp4/Track;

    .line 840
    return-object p1
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    nop

    :cond_0
    :goto_0
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 558
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x0

    return v0

    .line 555
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V

    .line 556
    goto :goto_0

    .line 552
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V

    .line 553
    goto :goto_0

    .line 538
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->seekPositionBeforeSidxProcessing:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 540
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->seekPositionBeforeSidxProcessing:J

    iput-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 541
    iput-wide v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->seekPositionBeforeSidxProcessing:J

    .line 542
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->chunkIndexMerger:Landroidx/media3/extractor/ChunkIndexMerger;

    invoke-virtual {v1}, Landroidx/media3/extractor/ChunkIndexMerger;->merge()Landroidx/media3/extractor/ChunkIndex;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMapFromMultipleSidx:Z

    .line 544
    return v0

    .line 546
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v0}, Landroidx/media3/container/ReorderingBufferQueue;->flush()V

    .line 547
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 531
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 516
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 517
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 518
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 521
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 522
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingBufferQueue:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v1}, Landroidx/media3/container/ReorderingBufferQueue;->clear()V

    .line 523
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 524
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 525
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 526
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    invoke-static {p1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffFragmented(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/SniffFailure;

    move-result-object v0

    .line 469
    .local v0, "sniffFailure":Landroidx/media3/extractor/SniffFailure;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    .line 470
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
