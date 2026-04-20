.class public final Landroidx/media3/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# static fields
.field private static final DEFAULT_SECTION_BUFFER_LENGTH:I = 0x20

.field private static final MAX_SECTION_LENGTH:I = 0x1002

.field private static final SECTION_HEADER_LENGTH:I = 0x3


# instance fields
.field private bytesRead:I

.field private final reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

.field private final sectionData:Landroidx/media3/common/util/ParsableByteArray;

.field private sectionSyntaxIndicator:Z

.field private totalSectionLength:I

.field private waitingForPayloadStart:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V
    .locals 2
    .param p1, "reader"    # Landroidx/media3/extractor/ts/SectionPayloadReader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media3/extractor/ts/SectionReader;->reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

    .line 49
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 50
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 9
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "flags"    # I

    .line 68
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 69
    .local v0, "payloadUnitStartIndicator":Z
    :goto_0
    const/4 v3, -0x1

    .line 70
    .local v3, "payloadStartPosition":I
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 72
    .local v4, "payloadStartOffset":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int v3, v5, v4

    .line 75
    .end local v4    # "payloadStartOffset":I
    :cond_1
    iget-boolean v4, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    if-eqz v4, :cond_3

    .line 76
    if-nez v0, :cond_2

    .line 77
    return-void

    .line 79
    :cond_2
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 80
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 81
    iput v1, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    .line 84
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_b

    .line 85
    iget v4, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_7

    .line 88
    iget v4, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    if-nez v4, :cond_4

    .line 89
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 90
    .local v4, "tableId":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 91
    const/16 v6, 0xff

    if-ne v4, v6, :cond_4

    .line 93
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 94
    return-void

    .line 97
    .end local v4    # "tableId":I
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    rsub-int/lit8 v6, v6, 0x3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 100
    .local v4, "headerBytesToRead":I
    iget-object v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget v7, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v6, v7, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 101
    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v6, v4

    iput v6, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    .line 102
    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    if-ne v6, v5, :cond_6

    .line 103
    iget-object v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 104
    iget-object v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 105
    iget-object v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 106
    iget-object v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 107
    .local v6, "secondHeaderByte":I
    iget-object v7, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 108
    .local v7, "thirdHeaderByte":I
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_5

    move v8, v2

    goto :goto_2

    :cond_5
    move v8, v1

    :goto_2
    iput-boolean v8, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    .line 109
    and-int/lit8 v8, v6, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v7

    add-int/2addr v8, v5

    iput v8, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    .line 111
    iget-object v5, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v5

    iget v8, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    if-ge v5, v8, :cond_6

    .line 113
    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    iget-object v8, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 114
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v8, 0x1002

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 115
    .local v5, "limit":I
    iget-object v8, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 118
    .end local v4    # "headerBytesToRead":I
    .end local v5    # "limit":I
    .end local v6    # "secondHeaderByte":I
    .end local v7    # "thirdHeaderByte":I
    :cond_6
    goto/16 :goto_1

    .line 120
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 122
    .local v4, "bodyBytesToRead":I
    iget-object v5, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v5, v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 123
    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v5, v4

    iput v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    .line 124
    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    if-ne v5, v6, :cond_a

    .line 125
    iget-boolean v5, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    .line 135
    iget-object v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 125
    if-eqz v5, :cond_9

    .line 127
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    const/4 v7, -0x1

    invoke-static {v5, v1, v6, v7}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v5

    if-eqz v5, :cond_8

    .line 129
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 130
    return-void

    .line 132
    :cond_8
    iget-object v5, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_3

    .line 135
    :cond_9
    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 137
    :goto_3
    iget-object v5, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 138
    iget-object v5, p0, Landroidx/media3/extractor/ts/SectionReader;->reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

    iget-object v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v5, v6}, Landroidx/media3/extractor/ts/SectionPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 139
    iput v1, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    .line 141
    .end local v4    # "bodyBytesToRead":I
    :cond_a
    goto/16 :goto_1

    .line 143
    :cond_b
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 57
    iget-object v0, p0, Landroidx/media3/extractor/ts/SectionReader;->reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/SectionPayloadReader;->init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 59
    return-void
.end method

.method public seek()V
    .locals 1

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 64
    return-void
.end method
