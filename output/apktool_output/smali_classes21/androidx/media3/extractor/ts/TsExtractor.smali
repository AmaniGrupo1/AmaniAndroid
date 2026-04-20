.class public final Landroidx/media3/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/TsExtractor$PatReader;,
        Landroidx/media3/extractor/ts/TsExtractor$PmtReader;,
        Landroidx/media3/extractor/ts/TsExtractor$Flags;,
        Landroidx/media3/extractor/ts/TsExtractor$Mode;
    }
.end annotation


# static fields
.field private static final AC3_FORMAT_IDENTIFIER:J = 0x41432d33L

.field private static final AC4_FORMAT_IDENTIFIER:J = 0x41432d34L

.field private static final BUFFER_SIZE:I = 0x24b8

.field public static final DEFAULT_TIMESTAMP_SEARCH_BYTES:I = 0x1b8a0

.field private static final E_AC3_FORMAT_IDENTIFIER:J = 0x45414333L

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_EMIT_RAW_SUBTITLE_DATA:I = 0x1

.field private static final HEVC_FORMAT_IDENTIFIER:J = 0x48455643L

.field private static final MAX_PID_PLUS_ONE:I = 0x2000

.field public static final MODE_HLS:I = 0x2

.field public static final MODE_MULTI_PMT:I = 0x0

.field public static final MODE_SINGLE_PMT:I = 0x1

.field private static final SNIFF_TS_PACKET_COUNT:I = 0x5

.field public static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field public static final TS_STREAM_TYPE_AAC_ADTS:I = 0xf

.field public static final TS_STREAM_TYPE_AAC_LATM:I = 0x11

.field public static final TS_STREAM_TYPE_AC3:I = 0x81

.field public static final TS_STREAM_TYPE_AC4:I = 0xac

.field public static final TS_STREAM_TYPE_AIT:I = 0x101

.field public static final TS_STREAM_TYPE_DC2_H262:I = 0x80

.field public static final TS_STREAM_TYPE_DTS:I = 0x8a

.field public static final TS_STREAM_TYPE_DTS_HD:I = 0x88

.field public static final TS_STREAM_TYPE_DTS_UHD:I = 0x8b

.field public static final TS_STREAM_TYPE_DVBSUBS:I = 0x59

.field public static final TS_STREAM_TYPE_E_AC3:I = 0x87

.field public static final TS_STREAM_TYPE_H262:I = 0x2

.field public static final TS_STREAM_TYPE_H263:I = 0x10

.field public static final TS_STREAM_TYPE_H264:I = 0x1b

.field public static final TS_STREAM_TYPE_H265:I = 0x24

.field public static final TS_STREAM_TYPE_HDMV_DTS:I = 0x82

.field public static final TS_STREAM_TYPE_ID3:I = 0x15

.field public static final TS_STREAM_TYPE_MHAS:I = 0x2d

.field public static final TS_STREAM_TYPE_MPA:I = 0x3

.field public static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field public static final TS_STREAM_TYPE_SPLICE_INFO:I = 0x86

.field public static final TS_SYNC_BYTE:I = 0x47


# instance fields
.field private bytesSinceLastSync:I

.field private final continuityCounters:Landroid/util/SparseIntArray;

.field private final durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

.field private final extractorFlags:I

.field private hasOutputSeekMap:Z

.field private id3Reader:Landroidx/media3/extractor/ts/TsPayloadReader;

.field private final mode:I

.field private output:Landroidx/media3/extractor/ExtractorOutput;

.field private final payloadReaderFactory:Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

.field private pcrPid:I

.field private pendingSeekToStart:Z

.field private remainingPmts:I

.field private final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampSearchBytes:I

.field private final trackIds:Landroid/util/SparseBooleanArray;

.field private final trackPids:Landroid/util/SparseBooleanArray;

.field private tracksEnded:Z

.field private tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

.field private final tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Landroidx/media3/extractor/ts/TsExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/TsExtractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ts/TsExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "defaultTsPayloadReaderFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v5, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 247
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "defaultTsPayloadReaderFlags"    # I
    .param p3, "timestampSearchBytes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v5, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v6, p3

    .end local p1    # "mode":I
    .end local p3    # "timestampSearchBytes":I
    .local v1, "mode":I
    .local v6, "timestampSearchBytes":I
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 265
    return-void
.end method

.method public constructor <init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "extractorFlags"    # I
    .param p3, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p4, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p5, "payloadReaderFactory"    # Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    .param p6, "timestampSearchBytes"    # I

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    .line 331
    iput p6, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampSearchBytes:I

    .line 332
    iput p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    .line 333
    iput p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->extractorFlags:I

    .line 334
    iput-object p3, p0, Landroidx/media3/extractor/ts/TsExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 335
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 339
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 336
    :cond_1
    :goto_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 341
    :goto_1
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x24b8

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 342
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 343
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 344
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 345
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 346
    new-instance v0, Landroidx/media3/extractor/ts/TsDurationReader;

    invoke-direct {v0, p6}, Landroidx/media3/extractor/ts/TsDurationReader;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    .line 347
    sget-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    .line 349
    invoke-direct {p0}, Landroidx/media3/extractor/ts/TsExtractor;->resetPayloadReaders()V

    .line 350
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p3, "payloadReaderFactory"    # Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const v6, 0x1b8a0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "mode":I
    .end local p2    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .end local p3    # "payloadReaderFactory":Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    .local v1, "mode":I
    .local v4, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .local v5, "payloadReaderFactory":Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 283
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p3, "payloadReaderFactory"    # Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    .param p4, "timestampSearchBytes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    const/4 v2, 0x1

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "mode":I
    .end local p2    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .end local p3    # "payloadReaderFactory":Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    .end local p4    # "timestampSearchBytes":I
    .local v1, "mode":I
    .local v4, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .local v5, "payloadReaderFactory":Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    .local v6, "timestampSearchBytes":I
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 302
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 7
    .param p1, "extractorFlags"    # I
    .param p2, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 225
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .end local p1    # "extractorFlags":I
    .end local p2    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v2, "extractorFlags":I
    .local v3, "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 7
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 208
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v3, "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media3/extractor/ts/TsExtractor;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$1000(Landroidx/media3/extractor/ts/TsExtractor;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    return v0
.end method

.method static synthetic access$1002(Landroidx/media3/extractor/ts/TsExtractor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$102(Landroidx/media3/extractor/ts/TsExtractor;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    return p1
.end method

.method static synthetic access$108(Landroidx/media3/extractor/ts/TsExtractor;)I
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media3/extractor/ts/TsExtractor;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    return v0
.end method

.method static synthetic access$300(Landroidx/media3/extractor/ts/TsExtractor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Landroidx/media3/extractor/ts/TsExtractor;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    return p1
.end method

.method static synthetic access$500(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->id3Reader:Landroidx/media3/extractor/ts/TsPayloadReader;

    return-object v0
.end method

.method static synthetic access$502(Landroidx/media3/extractor/ts/TsExtractor;Landroidx/media3/extractor/ts/TsPayloadReader;)Landroidx/media3/extractor/ts/TsPayloadReader;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;
    .param p1, "x1"    # Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 63
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->id3Reader:Landroidx/media3/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private fillBufferWithAtLeastOnePacket(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 561
    .local v0, "data":[B
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_1

    .line 562
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 563
    .local v1, "bytesLeft":I
    if-lez v1, :cond_0

    .line 564
    iget-object v4, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    :cond_0
    iget-object v4, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 569
    .end local v1    # "bytesLeft":I
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 570
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 571
    .local v1, "limit":I
    rsub-int v4, v1, 0x24b8

    invoke-interface {p1, v0, v1, v4}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result v4

    .line 572
    .local v4, "read":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 573
    return v2

    .line 575
    :cond_2
    iget-object v5, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 576
    .end local v1    # "limit":I
    .end local v4    # "read":I
    goto :goto_0

    .line 577
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private findEndOfFirstTsPacketInBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 588
    .local v0, "searchStart":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 589
    .local v1, "limit":I
    iget-object v2, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 590
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroidx/media3/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v2

    .line 593
    .local v2, "syncBytePosition":I
    iget-object v3, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 594
    add-int/lit16 v3, v2, 0xbc

    .line 595
    .local v3, "endOfPacket":I
    if-le v3, v1, :cond_1

    .line 596
    iget v4, p0, Landroidx/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    iput v4, p0, Landroidx/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 597
    iget v4, p0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, p0, Landroidx/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    const/16 v5, 0x178

    if-gt v4, v5, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    const-string v4, "Cannot find sync byte. Most likely not a Transport Stream."

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4

    .line 603
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Landroidx/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 605
    :cond_2
    :goto_0
    return v3
.end method

.method static synthetic lambda$newFactory$0(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;
    .locals 3
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/ts/TsExtractor;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$static$1()[Landroidx/media3/extractor/Extractor;
    .locals 4

    .line 119
    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v2, Landroidx/media3/extractor/ts/TsExtractor;

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v2, v0, v3}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    return-object v1
.end method

.method private maybeOutputSeekMap(J)V
    .locals 9
    .param p1, "inputLength"    # J

    .line 541
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_1

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 543
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 544
    new-instance v1, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    .line 546
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/TsDurationReader;->getPcrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    .line 547
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v3

    iget v7, p0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    iget v8, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampSearchBytes:I

    move-wide v5, p1

    .end local p1    # "inputLength":J
    .local v5, "inputLength":J
    invoke-direct/range {v1 .. v8}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJII)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    .line 551
    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    iget-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;->getSeekMap()Landroidx/media3/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_0

    .line 553
    .end local v5    # "inputLength":J
    .restart local p1    # "inputLength":J
    :cond_0
    move-wide v5, p1

    .end local p1    # "inputLength":J
    .restart local v5    # "inputLength":J
    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance p2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_0

    .line 541
    .end local v5    # "inputLength":J
    .restart local p1    # "inputLength":J
    :cond_1
    move-wide v5, p1

    .line 556
    .end local p1    # "inputLength":J
    .restart local v5    # "inputLength":J
    :goto_0
    return-void
.end method

.method public static newFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 70
    new-instance v0, Landroidx/media3/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-object v0
.end method

.method private resetPayloadReaders()V
    .locals 6

    .line 615
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 616
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 617
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    .line 618
    invoke-interface {v0}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    .line 619
    .local v0, "initialPayloadReaders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/ts/TsPayloadReader;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 620
    .local v1, "initialPayloadReadersSize":I
    const/4 v2, 0x0

    .line 623
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 620
    if-ge v2, v1, :cond_0

    .line 621
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v4, Landroidx/media3/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v4, p0}, Landroidx/media3/extractor/ts/TsExtractor$PatReader;-><init>(Landroidx/media3/extractor/ts/TsExtractor;)V

    invoke-direct {v2, v4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/media3/extractor/ts/TsExtractor;->id3Reader:Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 625
    return-void
.end method

.method private shouldConsumePacketPayload(I)Z
    .locals 2
    .param p1, "packetPid"    # I

    .line 609
    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 611
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 609
    :cond_1
    return v1
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 377
    nop

    .line 378
    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->extractorFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    .line 380
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 381
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 21
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 429
    .local v3, "inputLength":J
    iget v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 430
    .local v5, "isModeHls":Z
    :goto_0
    iget-boolean v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    const-wide/16 v10, -0x1

    if-eqz v9, :cond_4

    .line 431
    cmp-long v9, v3, v10

    if-eqz v9, :cond_1

    if-nez v5, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    .line 432
    .local v9, "canReadDuration":Z
    :goto_1
    if-eqz v9, :cond_2

    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    invoke-virtual {v12}, Landroidx/media3/extractor/ts/TsDurationReader;->isDurationReadFinished()Z

    move-result v12

    if-nez v12, :cond_2

    .line 433
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    iget v7, v0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {v6, v1, v2, v7}, Landroidx/media3/extractor/ts/TsDurationReader;->readDuration(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I

    move-result v6

    return v6

    .line 435
    :cond_2
    invoke-direct {v0, v3, v4}, Landroidx/media3/extractor/ts/TsExtractor;->maybeOutputSeekMap(J)V

    .line 437
    iget-boolean v12, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v12, :cond_3

    .line 438
    iput-boolean v7, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 439
    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13, v12, v13}, Landroidx/media3/extractor/ts/TsExtractor;->seek(JJ)V

    .line 440
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    cmp-long v14, v14, v12

    if-eqz v14, :cond_3

    .line 441
    iput-wide v12, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 442
    return v6

    .line 446
    :cond_3
    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v12}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;->isSeeking()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 447
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v6, v1, v2}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v6

    return v6

    .line 451
    .end local v9    # "canReadDuration":Z
    :cond_4
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/ts/TsExtractor;->fillBufferWithAtLeastOnePacket(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 453
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 454
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 455
    .local v8, "payloadReader":Landroidx/media3/extractor/ts/TsPayloadReader;
    instance-of v9, v8, Landroidx/media3/extractor/ts/PesReader;

    if-eqz v9, :cond_5

    .line 456
    move-object v9, v8

    check-cast v9, Landroidx/media3/extractor/ts/PesReader;

    .line 457
    .local v9, "pesReader":Landroidx/media3/extractor/ts/PesReader;
    invoke-virtual {v9, v5}, Landroidx/media3/extractor/ts/PesReader;->canConsumeSynthesizedEmptyPusi(Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 458
    new-instance v10, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v10}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    invoke-virtual {v9, v10, v6}, Landroidx/media3/extractor/ts/PesReader;->consume(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 453
    .end local v8    # "payloadReader":Landroidx/media3/extractor/ts/TsPayloadReader;
    .end local v9    # "pesReader":Landroidx/media3/extractor/ts/PesReader;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 462
    .end local v7    # "i":I
    :cond_6
    const/4 v6, -0x1

    return v6

    .line 465
    :cond_7
    invoke-direct {v0}, Landroidx/media3/extractor/ts/TsExtractor;->findEndOfFirstTsPacketInBuffer()I

    move-result v9

    .line 466
    .local v9, "endOfPacket":I
    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v12

    .line 467
    .local v12, "limit":I
    if-le v9, v12, :cond_8

    .line 468
    return v7

    .line 471
    :cond_8
    const/4 v13, 0x0

    .line 474
    .local v13, "packetHeaderFlags":I
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 475
    .local v14, "tsPacketHeader":I
    const/high16 v15, 0x800000

    and-int/2addr v15, v14

    if-eqz v15, :cond_9

    .line 477
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 478
    return v7

    .line 480
    :cond_9
    const/high16 v15, 0x400000

    and-int/2addr v15, v14

    if-eqz v15, :cond_a

    move v15, v6

    goto :goto_3

    :cond_a
    move v15, v7

    :goto_3
    or-int/2addr v13, v15

    .line 482
    const v15, 0x1fff00

    and-int/2addr v15, v14

    shr-int/lit8 v15, v15, 0x8

    .line 484
    .local v15, "pid":I
    and-int/lit8 v16, v14, 0x20

    if-eqz v16, :cond_b

    move/from16 v16, v6

    goto :goto_4

    :cond_b
    move/from16 v16, v7

    .line 485
    .local v16, "adaptationFieldExists":Z
    :goto_4
    and-int/lit8 v17, v14, 0x10

    if-eqz v17, :cond_c

    move/from16 v17, v6

    goto :goto_5

    :cond_c
    move/from16 v17, v7

    .line 487
    .local v17, "payloadExists":Z
    :goto_5
    if-eqz v17, :cond_d

    move/from16 v18, v7

    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/ts/TsPayloadReader;

    goto :goto_6

    :cond_d
    move/from16 v18, v7

    const/4 v7, 0x0

    .line 488
    .local v7, "payloadReader":Landroidx/media3/extractor/ts/TsPayloadReader;
    :goto_6
    if-nez v7, :cond_e

    .line 489
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 490
    return v18

    .line 494
    :cond_e
    move-wide/from16 v19, v10

    iget v10, v0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    if-eq v10, v8, :cond_10

    .line 495
    and-int/lit8 v10, v14, 0xf

    .line 496
    .local v10, "continuityCounter":I
    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v10, -0x1

    invoke-virtual {v11, v15, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 497
    .local v6, "previousCounter":I
    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v15, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 498
    if-ne v6, v10, :cond_f

    .line 500
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 501
    return v18

    .line 502
    :cond_f
    add-int/lit8 v11, v6, 0x1

    and-int/lit8 v11, v11, 0xf

    if-eq v10, v11, :cond_10

    .line 504
    invoke-interface {v7}, Landroidx/media3/extractor/ts/TsPayloadReader;->seek()V

    .line 509
    .end local v6    # "previousCounter":I
    .end local v10    # "continuityCounter":I
    :cond_10
    if-eqz v16, :cond_12

    .line 510
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 511
    .local v6, "adaptationFieldLength":I
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 513
    .local v10, "adaptationFieldFlags":I
    nop

    .line 514
    and-int/lit8 v11, v10, 0x40

    if-eqz v11, :cond_11

    .line 515
    move v11, v8

    goto :goto_7

    .line 516
    :cond_11
    move/from16 v11, v18

    :goto_7
    or-int/2addr v13, v11

    .line 517
    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 521
    .end local v6    # "adaptationFieldLength":I
    .end local v10    # "adaptationFieldFlags":I
    :cond_12
    iget-boolean v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 522
    .local v6, "wereTracksEnded":Z
    invoke-direct {v0, v15}, Landroidx/media3/extractor/ts/TsExtractor;->shouldConsumePacketPayload(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 523
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 524
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v7, v8, v13}, Landroidx/media3/extractor/ts/TsPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 525
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 527
    :cond_13
    iget v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v10, 0x2

    if-eq v8, v10, :cond_14

    if-nez v6, :cond_14

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v8, :cond_14

    cmp-long v8, v3, v19

    if-eqz v8, :cond_14

    .line 531
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 534
    :cond_14
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 535
    return v18
.end method

.method public release()V
    .locals 0

    .line 423
    return-void
.end method

.method public seek(JJ)V
    .locals 16
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 385
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 386
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 387
    .local v3, "timestampAdjustersCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const-wide/16 v7, 0x0

    if-ge v4, v3, :cond_5

    .line 388
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/util/TimestampAdjuster;

    .line 394
    .local v9, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    invoke-virtual {v9}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    move v10, v5

    goto :goto_2

    :cond_1
    move v10, v6

    .line 395
    .local v10, "resetTimestampAdjuster":Z
    :goto_2
    if-nez v10, :cond_3

    .line 396
    invoke-virtual {v9}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v14

    .line 400
    .local v14, "adjusterFirstSampleTimestampUs":J
    cmp-long v11, v14, v12

    if-eqz v11, :cond_2

    cmp-long v7, v14, v7

    if-eqz v7, :cond_2

    cmp-long v7, v14, v1

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v6

    :goto_3
    move v10, v7

    .line 405
    .end local v14    # "adjusterFirstSampleTimestampUs":J
    :cond_3
    if-eqz v10, :cond_4

    .line 406
    invoke-virtual {v9, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    .line 387
    .end local v9    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .end local v10    # "resetTimestampAdjuster":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 409
    .end local v4    # "i":I
    :cond_5
    cmp-long v4, v1, v7

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    if-eqz v4, :cond_6

    .line 410
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 412
    :cond_6
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 413
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 414
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 415
    iget-object v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-interface {v5}, Landroidx/media3/extractor/ts/TsPayloadReader;->seek()V

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 417
    .end local v4    # "i":I
    :cond_7
    iput v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 418
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 357
    .local v0, "buffer":[B
    const/16 v1, 0x3ac

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 358
    const/4 v1, 0x0

    .local v1, "startPosCandidate":I
    :goto_0
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_3

    .line 360
    const/4 v3, 0x1

    .line 361
    .local v3, "isSyncBytePatternCorrect":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 362
    mul-int/lit16 v5, v4, 0xbc

    add-int/2addr v5, v1

    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-eq v5, v6, :cond_0

    .line 363
    const/4 v3, 0x0

    .line 364
    goto :goto_2

    .line 361
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 367
    .end local v4    # "i":I
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 368
    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 369
    const/4 v2, 0x1

    return v2

    .line 358
    .end local v3    # "isSyncBytePatternCorrect":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "startPosCandidate":I
    :cond_3
    return v2
.end method
