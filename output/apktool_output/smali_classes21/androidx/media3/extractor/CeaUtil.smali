.class public final Landroidx/media3/extractor/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE_ATSC:I = 0x31

.field private static final PROVIDER_CODE_DIRECTV:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field public static final USER_DATA_IDENTIFIER_GA94:I = 0x47413934

.field public static final USER_DATA_TYPE_CODE_MPEG_CC:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V
    .locals 12
    .param p0, "presentationTimeUs"    # J
    .param p2, "seiBuffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p3, "outputs"    # [Landroidx/media3/extractor/TrackOutput;

    .line 49
    nop

    :goto_0
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 50
    invoke-static {p2}, Landroidx/media3/extractor/CeaUtil;->readNon255TerminatedValue(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v0

    .line 51
    .local v0, "payloadType":I
    invoke-static {p2}, Landroidx/media3/extractor/CeaUtil;->readNon255TerminatedValue(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    .line 52
    .local v2, "payloadSize":I
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 54
    .local v3, "nextPayloadPosition":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 58
    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const/16 v4, 0x8

    if-lt v2, v4, :cond_8

    .line 59
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 60
    .local v4, "countryCode":I
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 61
    .local v5, "providerCode":I
    const/4 v6, 0x0

    .line 62
    .local v6, "userIdentifier":I
    const/16 v7, 0x31

    if-ne v5, v7, :cond_1

    .line 63
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 66
    .local v8, "userDataTypeCode":I
    const/16 v9, 0x2f

    if-ne v5, v9, :cond_2

    .line 67
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 69
    :cond_2
    const/16 v10, 0xb5

    const/4 v11, 0x0

    if-ne v4, v10, :cond_4

    if-eq v5, v7, :cond_3

    if-ne v5, v9, :cond_4

    :cond_3
    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v9, v1

    goto :goto_1

    :cond_4
    move v9, v11

    .line 73
    .local v9, "messageIsSupportedCeaCaption":Z
    :goto_1
    if-ne v5, v7, :cond_6

    .line 74
    const v7, 0x47413934

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    move v1, v11

    :goto_2
    and-int/2addr v9, v1

    .line 76
    :cond_6
    if-eqz v9, :cond_8

    .line 77
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/extractor/CeaUtil;->consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    goto :goto_4

    .line 56
    .end local v4    # "countryCode":I
    .end local v5    # "providerCode":I
    .end local v6    # "userIdentifier":I
    .end local v8    # "userDataTypeCode":I
    .end local v9    # "messageIsSupportedCeaCaption":Z
    :cond_7
    :goto_3
    const-string v1, "CeaUtil"

    const-string v4, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v1, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    .line 80
    :cond_8
    :goto_4
    invoke-virtual {p2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 81
    .end local v0    # "payloadType":I
    .end local v2    # "payloadSize":I
    .end local v3    # "nextPayloadPosition":I
    goto :goto_0

    .line 82
    :cond_9
    return-void
.end method

.method public static consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V
    .locals 17
    .param p0, "presentationTimeUs"    # J
    .param p2, "ccDataBuffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p3, "outputs"    # [Landroidx/media3/extractor/TrackOutput;

    .line 94
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 95
    .local v2, "firstByte":I
    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 96
    .local v3, "processCcDataFlag":Z
    :goto_0
    if-nez v3, :cond_1

    .line 98
    return-void

    .line 100
    :cond_1
    and-int/lit8 v6, v2, 0x1f

    .line 101
    .local v6, "ccCount":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 104
    mul-int/lit8 v11, v6, 0x3

    .line 105
    .local v11, "sampleLength":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 106
    .local v14, "sampleStartPosition":I
    array-length v15, v1

    move v7, v4

    :goto_1
    if-ge v7, v15, :cond_3

    move v8, v7

    aget-object v7, v1, v8

    .line 107
    .local v7, "output":Landroidx/media3/extractor/TrackOutput;
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 108
    invoke-interface {v7, v0, v11}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 109
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, p0, v9

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 110
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    move/from16 v16, v8

    move-wide/from16 v8, p0

    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 106
    .end local v7    # "output":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    .line 117
    :cond_3
    return-void
.end method

.method private static readNon255TerminatedValue(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3
    .param p0, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "value":I
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_1

    .line 132
    const/4 v1, -0x1

    return v1

    .line 134
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 135
    .local v1, "b":I
    add-int/2addr v0, v1

    .line 136
    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 137
    return v0
.end method
