.class final Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;
.super Ljava/lang/Object;
.source "HeicMotionPhotoExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field private static final STATE_ENDED:I = 0x4

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_MOTION_PHOTO_VIDEO:I = 0x3

.field private static final STATE_SNIFFING_MOTION_PHOTO_VIDEO:I = 0x2


# instance fields
.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private motionPhotoMetadata:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

.field private mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

.field private mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/StartOffsetExtractorInput;

.field private mp4StartPosition:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    .line 94
    return-void
.end method

.method private endReading()V
    .locals 4

    .line 242
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 243
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    .line 245
    return-void
.end method

.method private outputImageTrack(Landroidx/media3/extractor/metadata/MotionPhotoMetadata;)V
    .locals 5
    .param p1, "motionPhotoMetadata"    # Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    .line 232
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 233
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 234
    .local v0, "imageTrackOutput":Landroidx/media3/extractor/TrackOutput;
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 236
    const-string v2, "image/heic"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 237
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 239
    return-void
.end method

.method private readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 19
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-nez v2, :cond_1

    .line 157
    iget-object v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 158
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 157
    const/4 v5, 0x0

    invoke-interface {v1, v2, v5, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    return v5

    .line 161
    :cond_0
    iput v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    .line 162
    iget-object v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 163
    iget-object v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomSize:J

    .line 164
    iget-object v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    iput v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomType:I

    .line 167
    :cond_1
    iget-wide v5, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomSize:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_2

    .line 168
    const/16 v2, 0x8

    .line 169
    .local v2, "headerBytesRemaining":I
    iget-object v5, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {v1, v5, v4, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 170
    iget v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v2

    iput v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    .line 171
    iget-object v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomSize:J

    .line 174
    .end local v2    # "headerBytesRemaining":I
    :cond_2
    iget v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomType:I

    const v4, 0x6d707664

    if-ne v2, v4, :cond_3

    .line 175
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    .line 176
    iget-wide v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    iget v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    int-to-long v6, v2

    sub-long v11, v4, v6

    .line 177
    .local v11, "boxStartPosition":J
    new-instance v8, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    iget-wide v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    iget-wide v6, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomSize:J

    iget v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    int-to-long v9, v2

    sub-long v17, v6, v9

    const-wide/16 v9, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v15, v4

    invoke-direct/range {v8 .. v18}, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v8, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    .line 184
    iget-object v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    invoke-direct {v0, v2}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->outputImageTrack(Landroidx/media3/extractor/metadata/MotionPhotoMetadata;)V

    .line 185
    const/4 v2, 0x2

    iput v2, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    .line 186
    .end local v11    # "boxStartPosition":J
    goto :goto_0

    .line 187
    :cond_3
    iput v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    .line 189
    :goto_0
    return v3
.end method

.method private readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-wide v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 194
    .local v0, "atomPayloadSize":J
    long-to-int v2, v0

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 195
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    .line 196
    iput v2, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    .line 197
    return-void
.end method

.method private readMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/StartOffsetExtractorInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eq p1, v0, :cond_1

    .line 218
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 219
    new-instance v0, Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-wide v1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 223
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 224
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/StartOffsetExtractorInput;

    invoke-virtual {v0, v1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    .line 225
    .local v0, "readResult":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 226
    iget-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    iget-wide v3, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 228
    :cond_2
    return v0
.end method

.method private sniffMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 205
    :cond_0
    new-instance v0, Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-wide v1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 206
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/StartOffsetExtractorInput;

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    new-instance v1, Landroidx/media3/extractor/StartOffsetExtractorOutput;

    iget-wide v2, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    iget-object v4, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 208
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/ExtractorOutput;

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/extractor/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    .line 207
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->endReading()V

    .line 213
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 103
    iput-object p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 104
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

    .line 109
    nop

    :cond_0
    :goto_0
    iget v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    return v1

    .line 123
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->readMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 120
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->sniffMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;)V

    .line 121
    goto :goto_0

    .line 117
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V

    .line 118
    goto :goto_0

    .line 111
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->endReading()V

    .line 113
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 153
    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 134
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    .line 136
    iput v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->atomHeaderBytesRead:I

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4StartPosition:J

    .line 138
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    goto :goto_0

    .line 142
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->seek(JJ)V

    .line 145
    :cond_1
    :goto_0
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/media3/extractor/heif/HeifSniffer;->sniff(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
