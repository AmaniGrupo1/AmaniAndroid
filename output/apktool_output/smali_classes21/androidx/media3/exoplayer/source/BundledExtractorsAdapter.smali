.class public final Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# instance fields
.field private extractor:Landroidx/media3/extractor/Extractor;

.field private extractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private final extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 0
    .param p1, "extractorsFactory"    # Landroidx/media3/extractor/ExtractorsFactory;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    .line 61
    return-void
.end method

.method static synthetic lambda$init$0(Landroidx/media3/extractor/Extractor;)Ljava/lang/String;
    .locals 1
    .param p0, "extractor"    # Landroidx/media3/extractor/Extractor;

    .line 107
    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .locals 2

    .line 127
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v0

    .line 131
    .local v0, "underlyingExtractor":Landroidx/media3/extractor/Extractor;
    instance-of v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_1

    .line 132
    move-object v1, v0

    check-cast v1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-virtual {v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking()V

    .line 134
    :cond_1
    return-void
.end method

.method public getCurrentInputPosition()J
    .locals 2

    .line 138
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getUnderlyingImplementationName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0
.end method

.method public init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 12
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

    .line 72
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorInput;

    move-object v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    move-object v1, v0

    .line 73
    .local v1, "extractorInput":Landroidx/media3/extractor/ExtractorInput;
    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p2, p3}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object v3

    .line 78
    .local v3, "extractors":[Landroidx/media3/extractor/Extractor;
    array-length v0, v3

    .line 79
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 80
    .local v4, "sniffFailures":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/extractor/SniffFailure;>;"
    array-length v0, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 81
    aget-object v0, v3, v5

    iput-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    goto/16 :goto_4

    .line 83
    :cond_1
    array-length v7, v3

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_a

    aget-object v9, v3, v8

    .line 85
    .local v9, "extractor":Landroidx/media3/extractor/Extractor;
    :try_start_0
    invoke-interface {v9, v1}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    iput-object v9, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    cmp-long v0, v7, p4

    if-nez v0, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 96
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 87
    goto :goto_3

    .line 89
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroidx/media3/extractor/Extractor;->getSniffFailureDetails()Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "sniffFailureDetails":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/SniffFailure;>;"
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    nop

    .end local v0    # "sniffFailureDetails":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/SniffFailure;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_5

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    cmp-long v0, v10, p4

    if-nez v0, :cond_8

    :cond_5
    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v7, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v7, :cond_6

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    cmp-long v7, v7, p4

    if-nez v7, :cond_7

    :cond_6
    move v5, v6

    :cond_7
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 96
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 97
    throw v0

    .line 92
    :catch_0
    move-exception v0

    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_9

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    cmp-long v0, v10, p4

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v5

    goto :goto_2

    :cond_9
    :goto_1
    move v0, v6

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 96
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 97
    nop

    .line 83
    .end local v9    # "extractor":Landroidx/media3/extractor/Extractor;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 99
    :cond_a
    :goto_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-eqz v0, :cond_b

    .line 113
    :goto_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    move-object/from16 v5, p8

    invoke-interface {v0, v5}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 114
    return-void

    .line 100
    :cond_b
    move-object/from16 v5, p8

    new-instance v0, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "None of the available extractors ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 102
    const-string v7, ", "

    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v7

    .line 105
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    new-instance v9, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 104
    invoke-static {v8, v9}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v8

    .line 103
    invoke-virtual {v7, v8}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") could read the stream."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 110
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw v0
.end method

.method public read(Landroidx/media3/extractor/PositionHolder;)I
    .locals 2
    .param p1, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/Extractor;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {v0, v1, p1}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 118
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    .line 120
    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    .line 122
    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 123
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "seekTimeUs"    # J

    .line 143
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    .line 144
    return-void
.end method
