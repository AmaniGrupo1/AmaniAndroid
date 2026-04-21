.class final Landroidx/media3/extractor/mp4/SefReader;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/SefReader$DataReference;
    }
.end annotation


# static fields
.field private static final ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final COLON_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LENGTH_OF_ONE_SDR:I = 0xc

.field private static final SAMSUNG_TAIL_SIGNATURE:I = 0x53454654

.field private static final STATE_CHECKING_FOR_SEF:I = 0x1

.field private static final STATE_READING_SDRS:I = 0x2

.field private static final STATE_READING_SEF_DATA:I = 0x3

.field private static final STATE_SHOULD_CHECK_FOR_SEF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SefReader"

.field private static final TAIL_FOOTER_LENGTH:I = 0x8

.field private static final TAIL_HEADER_LENGTH:I = 0xc

.field private static final TYPE_SLOW_MOTION_DATA:I = 0x890

.field private static final TYPE_SUPER_SLOW_DEFLICKERING_ON:I = 0xb04

.field private static final TYPE_SUPER_SLOW_MOTION_BGM:I = 0xb01

.field private static final TYPE_SUPER_SLOW_MOTION_DATA:I = 0xb00

.field private static final TYPE_SUPER_SLOW_MOTION_EDIT_DATA:I = 0xb03


# instance fields
.field private final dataReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/SefReader$DataReference;",
            ">;"
        }
    .end annotation
.end field

.field private readerState:I

.field private tailLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    .line 99
    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    .line 108
    return-void
.end method

.method private checkForSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)V
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 148
    .local v0, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 149
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    .line 150
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x53454654

    if-eq v1, v2, :cond_0

    .line 151
    const-wide/16 v1, 0x0

    iput-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 152
    return-void

    .line 157
    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget v3, p0, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v3, v3, -0xc

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 158
    const/4 v1, 0x2

    iput v1, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    .line 159
    return-void
.end method

.method private static nameToDataType(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "Super_SlowMotion_BGM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "Super_SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "Super_SlowMotion_Edit_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 267
    const-string v0, "Invalid SEF name"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 265
    :pswitch_0
    const/16 v0, 0xb04

    return v0

    .line 263
    :pswitch_1
    const/16 v0, 0xb03

    return v0

    .line 261
    :pswitch_2
    const/16 v0, 0xb01

    return v0

    .line 259
    :pswitch_3
    const/16 v0, 0xb00

    return v0

    .line 257
    :pswitch_4
    const/16 v0, 0x890

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readSdrs(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)V
    .locals 13
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 163
    .local v0, "streamLength":J
    iget v2, p0, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v2, v2, -0xc

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    .line 164
    .local v2, "sdrsLength":I
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 165
    .local v4, "scratch":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 167
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    div-int/lit8 v7, v2, 0xc

    if-ge v5, v7, :cond_0

    .line 168
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 169
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v7

    .line 170
    .local v7, "dataType":I
    sparse-switch v7, :sswitch_data_0

    .line 183
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 178
    :sswitch_0
    iget v8, p0, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    int-to-long v8, v8

    sub-long v8, v0, v8

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    .line 179
    .local v8, "startOffset":J
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 180
    .local v10, "size":I
    iget-object v11, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    new-instance v12, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    invoke-direct {v12, v7, v8, v9, v10}, Landroidx/media3/extractor/mp4/SefReader$DataReference;-><init>(IJI)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    nop

    .line 167
    .end local v7    # "dataType":I
    .end local v8    # "startOffset":J
    .end local v10    # "size":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    .end local v5    # "i":I
    :cond_0
    iget-object v3, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    const-wide/16 v5, 0x0

    iput-wide v5, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 189
    return-void

    .line 192
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    .line 193
    iget-object v3, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    iget-wide v5, v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;->startOffset:J

    iput-wide v5, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 194
    return-void

    :sswitch_data_0
    .sparse-switch
        0x890 -> :sswitch_0
        0xb00 -> :sswitch_0
        0xb01 -> :sswitch_0
        0xb03 -> :sswitch_0
        0xb04 -> :sswitch_0
    .end sparse-switch
.end method

.method private readSefData(Landroidx/media3/extractor/ExtractorInput;Ljava/util/List;)V
    .locals 12
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ExtractorInput;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    .local p2, "slowMotionMetadataEntries":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Metadata$Entry;>;"
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 199
    .local v0, "dataStartOffset":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 200
    .local v2, "totalDataLength":I
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 201
    .local v3, "data":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 203
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 204
    iget-object v5, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    .line 205
    .local v5, "dataReference":Landroidx/media3/extractor/mp4/SefReader$DataReference;
    iget-wide v6, v5, Landroidx/media3/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long/2addr v6, v0

    long-to-int v6, v6

    .line 206
    .local v6, "intendedPosition":I
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 210
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 211
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    .line 212
    .local v7, "nameLength":I
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Landroidx/media3/extractor/mp4/SefReader;->nameToDataType(Ljava/lang/String;)I

    move-result v9

    .line 215
    .local v9, "dataType":I
    iget v10, v5, Landroidx/media3/extractor/mp4/SefReader$DataReference;->size:I

    add-int/lit8 v11, v7, 0x8

    sub-int/2addr v10, v11

    .line 216
    .local v10, "remainingDataLength":I
    sparse-switch v9, :sswitch_data_0

    .line 226
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 224
    :sswitch_0
    goto :goto_1

    .line 218
    :sswitch_1
    invoke-static {v3, v10}, Landroidx/media3/extractor/mp4/SefReader;->readSlowMotionData(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    move-result-object v11

    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    nop

    .line 203
    .end local v5    # "dataReference":Landroidx/media3/extractor/mp4/SefReader$DataReference;
    .end local v6    # "intendedPosition":I
    .end local v7    # "nameLength":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "dataType":I
    .end local v10    # "remainingDataLength":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    .end local v4    # "i":I
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x890 -> :sswitch_1
        0xb00 -> :sswitch_0
        0xb01 -> :sswitch_0
        0xb03 -> :sswitch_0
        0xb04 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readSlowMotionData(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/mp4/SlowMotionData;
    .locals 16
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 234
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "dataString":Ljava/lang/String;
    sget-object v0, Landroidx/media3/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, v2}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 236
    .local v3, "segmentStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 237
    sget-object v0, Landroidx/media3/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    .line 238
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v0, v6, :cond_0

    .line 242
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v11, v8

    .line 243
    .local v11, "startTimeMs":J
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 244
    .local v13, "endTimeMs":J
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 245
    .local v6, "speedMode":I
    add-int/lit8 v8, v6, -0x1

    shl-int v15, v0, v8

    .line 246
    .local v15, "speedDivisor":I
    new-instance v10, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-direct/range {v10 .. v15}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    nop

    .line 236
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "speedMode":I
    .end local v11    # "startTimeMs":J
    .end local v13    # "endTimeMs":J
    .end local v15    # "speedDivisor":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v6

    throw v6

    .line 239
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {v7, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 251
    .end local v4    # "i":I
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;Ljava/util/List;)I
    .locals 8
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ExtractorInput;",
            "Landroidx/media3/extractor/PositionHolder;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    .local p3, "slowMotionMetadataEntries":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Metadata$Entry;>;"
    iget v0, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :pswitch_0
    invoke-direct {p0, p1, p3}, Landroidx/media3/extractor/mp4/SefReader;->readSefData(Landroidx/media3/extractor/ExtractorInput;Ljava/util/List;)V

    .line 137
    iput-wide v2, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 138
    goto :goto_2

    .line 133
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/SefReader;->readSdrs(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)V

    .line 134
    goto :goto_2

    .line 130
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/SefReader;->checkForSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)V

    .line 131
    goto :goto_2

    .line 122
    :pswitch_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 123
    .local v4, "inputLength":J
    nop

    .line 124
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    const-wide/16 v6, 0x8

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    sub-long v2, v4, v6

    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    nop

    .line 126
    :goto_1
    iput-wide v2, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 127
    iput v1, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    .line 128
    nop

    .line 142
    .end local v4    # "inputLength":J
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    .line 113
    return-void
.end method
