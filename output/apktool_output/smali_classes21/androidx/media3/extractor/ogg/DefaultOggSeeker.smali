.class final Landroidx/media3/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFFSET:I = 0x7530

.field private static final MATCH_BYTE_RANGE:I = 0x186a0

.field private static final MATCH_RANGE:I = 0x11940

.field private static final STATE_IDLE:I = 0x4

.field private static final STATE_READ_LAST_PAGE:I = 0x1

.field private static final STATE_SEEK:I = 0x2

.field private static final STATE_SEEK_TO_END:I = 0x0

.field private static final STATE_SKIP:I = 0x3


# instance fields
.field private end:J

.field private endGranule:J

.field private final pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

.field private final payloadEndPosition:J

.field private final payloadStartPosition:J

.field private positionBeforeSeekToEnd:J

.field private start:J

.field private startGranule:J

.field private state:I

.field private final streamReader:Landroidx/media3/extractor/ogg/StreamReader;

.field private targetGranule:J

.field private totalGranules:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ogg/StreamReader;JJJJZ)V
    .locals 4
    .param p1, "streamReader"    # Landroidx/media3/extractor/ogg/StreamReader;
    .param p2, "payloadStartPosition"    # J
    .param p4, "payloadEndPosition"    # J
    .param p6, "firstPayloadPageSize"    # J
    .param p8, "firstPayloadPageGranulePosition"    # J
    .param p10, "firstPayloadPageIsLastPage"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 79
    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    .line 80
    iput-wide p2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    .line 81
    iput-wide p4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    .line 82
    sub-long v2, p4, p2

    cmp-long v0, p6, v2

    if-eqz v0, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    iput v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2

    .line 84
    :cond_2
    :goto_1
    iput-wide p8, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 85
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 89
    :goto_2
    new-instance v0, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 90
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)Landroidx/media3/extractor/ogg/StreamReader;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 34
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 34
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 34
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 34
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    return-wide v0
.end method

.method private getNextSeekPosition(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 24
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    cmp-long v2, v2, v4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    .line 156
    return-wide v3

    .line 159
    :cond_0
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 160
    .local v5, "currentPosition":J
    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v7, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-virtual {v2, v1, v7, v8}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    iget-wide v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 164
    iget-wide v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    return-wide v2

    .line 162
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No ogg page can be found."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_2
    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 168
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 170
    iget-wide v7, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v9, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v7, v9

    .line 171
    .local v7, "granuleDistance":J
    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v2, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v9, v9, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v2, v9

    .line 172
    .local v2, "pageSize":I
    const-wide/16 v9, 0x0

    cmp-long v11, v9, v7

    if-gtz v11, :cond_3

    const-wide/32 v11, 0x11940

    cmp-long v11, v7, v11

    if-gez v11, :cond_3

    .line 173
    return-wide v3

    .line 176
    :cond_3
    cmp-long v3, v7, v9

    if-gez v3, :cond_4

    .line 177
    iput-wide v5, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    .line 178
    iget-object v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v3, v3, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_0

    .line 180
    :cond_4
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v11, v2

    add-long/2addr v3, v11

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    .line 181
    iget-object v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v3, v3, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 184
    :goto_0
    iget-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v11, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v3, v11

    const-wide/32 v11, 0x186a0

    cmp-long v3, v3, v11

    if-gez v3, :cond_5

    .line 185
    iget-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    .line 186
    iget-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    return-wide v3

    .line 189
    :cond_5
    int-to-long v3, v2

    cmp-long v9, v7, v9

    if-gtz v9, :cond_6

    const-wide/16 v12, 0x2

    goto :goto_1

    :cond_6
    const-wide/16 v12, 0x1

    :goto_1
    mul-long/2addr v3, v12

    .line 190
    .local v3, "offset":J
    nop

    .line 191
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    sub-long/2addr v12, v3

    iget-wide v14, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 v16, 0x1

    iget-wide v10, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v14, v10

    mul-long/2addr v14, v7

    iget-wide v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    move v11, v2

    .end local v2    # "pageSize":I
    .local v11, "pageSize":I
    iget-wide v1, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v9, v1

    div-long/2addr v14, v9

    add-long v18, v12, v14

    .line 194
    .local v18, "nextPosition":J
    iget-wide v1, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    sub-long v22, v9, v16

    move-wide/from16 v20, v1

    invoke-static/range {v18 .. v23}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private skipToPageOfTargetGranule(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 209
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 210
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 211
    nop

    .line 217
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 218
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v1, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 214
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    .line 215
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->createSeekMap()Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method

.method public createSeekMap()Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .locals 4

    .line 130
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;Landroidx/media3/extractor/ogg/DefaultOggSeeker$1;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96
    :pswitch_0
    return-wide v1

    .line 111
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 112
    .local v4, "position":J
    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 113
    return-wide v4

    .line 115
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 118
    .end local v4    # "position":J
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->skipToPageOfTargetGranule(Landroidx/media3/extractor/ExtractorInput;)V

    .line 119
    iput v3, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 120
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    .line 98
    :pswitch_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 101
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const-wide/32 v4, 0xff1b

    sub-long/2addr v0, v4

    .line 102
    .local v0, "lastPageSearchPosition":J
    iget-wide v4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 103
    return-wide v0

    .line 107
    .end local v0    # "lastPageSearchPosition":J
    :cond_1
    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 108
    iput v3, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 109
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method readGranuleOfLastPage(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;->reset()V

    .line 231
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 235
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v1, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 236
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 237
    .local v0, "granulePosition":J
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v2, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 238
    invoke-virtual {v2, p1}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 240
    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    .line 241
    .local v2, "hasPopulated":Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v3, v3, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v4, v4, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroidx/media3/extractor/ExtractorUtil;->skipFullyQuietly(Landroidx/media3/extractor/ExtractorInput;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    iget-object v3, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v0, v3, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 247
    .end local v2    # "hasPopulated":Z
    goto :goto_0

    .line 244
    .restart local v2    # "hasPopulated":Z
    :cond_1
    :goto_1
    return-wide v0

    .line 248
    .end local v2    # "hasPopulated":Z
    :cond_2
    return-wide v0

    .line 232
    .end local v0    # "granulePosition":J
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public startSeek(J)V
    .locals 10
    .param p1, "targetGranule"    # J

    .line 135
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    .end local p1    # "targetGranule":J
    .local v4, "targetGranule":J
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    .line 136
    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 137
    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    .line 138
    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    .line 139
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 140
    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    .line 141
    return-void
.end method
