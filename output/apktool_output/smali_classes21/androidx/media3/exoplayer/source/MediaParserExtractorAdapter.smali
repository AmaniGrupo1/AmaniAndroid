.class public final Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;
.super Ljava/lang/Object;
.source "MediaParserExtractorAdapter.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$Factory;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

.field private parserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->FACTORY:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V
    .locals 5
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 102
    new-instance v0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/MediaParser;->create(Landroid/media/MediaParser$OutputConsumer;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 105
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    const-string v2, "android.media.mediaparser.inBandCryptoInfo"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 106
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    const-string v2, "android.media.mediaparser.includeSupplementalData"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 107
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .local v1, "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 109
    .end local v1    # "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 110
    :cond_0
    const-string v0, "android.media.mediaparser.UNKNOWN"

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 114
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$1;

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 2
    .param p0, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 56
    new-instance v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .locals 2

    .line 150
    const-string v0, "android.media.mediaparser.Mp3Parser"

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->disableSeeking()V

    .line 153
    :cond_0
    return-void
.end method

.method public getCurrentInputPosition()J
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnderlyingImplementationName()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.mediaparser.UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0
.end method

.method public init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "dataReader"    # Landroidx/media3/common/DataReader;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "position"    # J
    .param p6, "length"    # J
    .param p8, "output"    # Landroidx/media3/extractor/ExtractorOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Landroidx/media3/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p8}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 126
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, p1, p6, p7}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setDataReader(Landroidx/media3/common/DataReader;J)V

    .line 127
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, p4, p5}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 128
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "currentParserName":Ljava/lang/String;
    const-string v1, "android.media.mediaparser.UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v1, v2}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    .line 132
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    .line 141
    :cond_1
    :goto_0
    return-void
.end method

.method public read(Landroidx/media3/extractor/PositionHolder;)I
    .locals 5
    .param p1, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, v1}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result v0

    .line 170
    .local v0, "shouldContinue":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->getAndResetSeekPosition()J

    move-result-wide v1

    iput-wide v1, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 171
    if-nez v0, :cond_0

    .line 172
    const/4 v1, -0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-wide v1, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 174
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1
.end method

.method public release()V
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->release()V

    .line 146
    return-void
.end method

.method public seek(JJ)V
    .locals 4
    .param p1, "position"    # J
    .param p3, "seekTimeUs"    # J

    .line 162
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 163
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p3, p4}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object v0

    .line 164
    .local v0, "seekPoints":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/MediaParser$SeekPoint;Landroid/media/MediaParser$SeekPoint;>;"
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaParser$SeekPoint;

    iget-wide v2, v2, Landroid/media/MediaParser$SeekPoint;->position:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    :goto_0
    check-cast v2, Landroid/media/MediaParser$SeekPoint;

    invoke-virtual {v1, v2}, Landroid/media/MediaParser;->seek(Landroid/media/MediaParser$SeekPoint;)V

    .line 165
    return-void
.end method
