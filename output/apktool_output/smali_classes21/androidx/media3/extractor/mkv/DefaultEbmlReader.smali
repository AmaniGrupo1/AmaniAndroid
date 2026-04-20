.class final Landroidx/media3/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Landroidx/media3/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

.field private final scratch:[B

.field private final varintReader:Landroidx/media3/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 66
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    .line 67
    new-instance v0, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    .line 68
    return-void
.end method

.method private maybeResyncToNextLevel1Element(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "processor"
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 173
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 174
    iget-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Landroidx/media3/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    .line 175
    .local v0, "varintLength":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    .line 176
    iget-object v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v0, v1}, Landroidx/media3/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 177
    .local v1, "potentialId":I
    iget-object v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/mkv/EbmlProcessor;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 179
    int-to-long v2, v1

    return-wide v2

    .line 182
    .end local v1    # "potentialId":I
    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 183
    .end local v0    # "varintLength":I
    goto :goto_0
.end method

.method private readFloat(Landroidx/media3/extractor/ExtractorInput;I)D
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v0

    .line 214
    .local v0, "integerValue":J
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 215
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    float-to-double v2, v2

    .local v2, "floatValue":D
    goto :goto_0

    .line 217
    .end local v2    # "floatValue":D
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 219
    .restart local v2    # "floatValue":D
    :goto_0
    return-wide v2
.end method

.method private readInteger(Landroidx/media3/extractor/ExtractorInput;I)J
    .locals 7
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 196
    const-wide/16 v0, 0x0

    .line 197
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 198
    const/16 v3, 0x8

    shl-long v3, v0, v3

    iget-object v5, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method private static readString(Landroidx/media3/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    if-nez p1, :cond_0

    .line 233
    const-string v0, ""

    return-object v0

    .line 235
    :cond_0
    new-array v0, p1, [B

    .line 236
    .local v0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 238
    move v2, p1

    .line 239
    .local v2, "trimmedLength":I
    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_1

    .line 240
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v3
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/mkv/EbmlProcessor;)V
    .locals 0
    .param p1, "processor"    # Landroidx/media3/extractor/mkv/EbmlProcessor;

    .line 72
    iput-object p1, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    .line 73
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 12
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 87
    .local v0, "head":Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-static {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 88
    iget-object v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget-object v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v3}, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v3

    invoke-interface {v2, v3}, Landroidx/media3/extractor/mkv/EbmlProcessor;->endMasterElement(I)V

    .line 89
    return v1

    .line 92
    :cond_0
    iget v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 93
    iget-object v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v1, v3, v4}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    .line 94
    .local v4, "result":J
    const-wide/16 v6, -0x2

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 95
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 97
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 98
    return v3

    .line 101
    :cond_2
    long-to-int v2, v4

    iput v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 102
    iput v1, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 105
    .end local v4    # "result":J
    :cond_3
    iget v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v2, v1, :cond_4

    .line 106
    iget-object v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    const/16 v4, 0x8

    invoke-virtual {v2, p1, v3, v1, v4}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 107
    const/4 v2, 0x2

    iput v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 110
    :cond_4
    iget-object v2, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v2, v4}, Landroidx/media3/extractor/mkv/EbmlProcessor;->getElementType(I)I

    move-result v2

    .line 111
    .local v2, "type":I
    const-wide/16 v4, 0x8

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 153
    move-object v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 128
    :pswitch_0
    iget-wide v7, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    iget-wide v7, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v4, v7, v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 130
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid float size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 133
    :cond_6
    :goto_1
    iget-object v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v6, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v6, v6

    invoke-direct {p0, p1, v6}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->readFloat(Landroidx/media3/extractor/ExtractorInput;I)D

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroidx/media3/extractor/mkv/EbmlProcessor;->floatElement(ID)V

    .line 134
    iput v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 135
    return v1

    .line 145
    :pswitch_1
    iget-object v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v6, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v6, v6

    invoke-interface {v4, v5, v6, p1}, Landroidx/media3/extractor/mkv/EbmlProcessor;->binaryElement(IILandroidx/media3/extractor/ExtractorInput;)V

    .line 146
    iput v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 147
    return v1

    .line 137
    :pswitch_2
    iget-wide v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v4, v4, v7

    if-gtz v4, :cond_7

    .line 141
    iget-object v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v6, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v6, v6

    invoke-static {p1, v6}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->readString(Landroidx/media3/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroidx/media3/extractor/mkv/EbmlProcessor;->stringElement(ILjava/lang/String;)V

    .line 142
    iput v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 143
    return v1

    .line 138
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String element size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 120
    :pswitch_3
    iget-wide v7, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v4, v7, v4

    if-gtz v4, :cond_8

    .line 124
    iget-object v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v6, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v6, v6

    invoke-direct {p0, p1, v6}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroidx/media3/extractor/mkv/EbmlProcessor;->integerElement(IJ)V

    .line 125
    iput v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 126
    return v1

    .line 121
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 113
    :pswitch_4
    move-object v4, v6

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    .line 114
    .local v6, "elementContentPosition":J
    iget-wide v8, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long v10, v6, v8

    .line 115
    .local v10, "elementEndPosition":J
    iget-object v5, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v8, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v9, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-direct {v8, v9, v10, v11, v4}, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLandroidx/media3/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 116
    iget-object v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v8, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v4 .. v9}, Landroidx/media3/extractor/mkv/EbmlProcessor;->startMasterElement(IJJ)V

    .line 117
    iput v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 118
    return v1

    .line 149
    .end local v6    # "elementContentPosition":J
    .end local v10    # "elementEndPosition":J
    :pswitch_5
    iget-wide v4, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v4

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 150
    iput v3, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 151
    nop

    .line 156
    .end local v0    # "head":Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;
    .end local v2    # "type":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 78
    iget-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 79
    iget-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/VarintReader;->reset()V

    .line 80
    return-void
.end method
