.class public final Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "AppInfoTableDecoder.java"


# static fields
.field public static final APPLICATION_INFORMATION_TABLE_ID:I = 0x74

.field private static final DESCRIPTOR_SIMPLE_APPLICATION_LOCATION:I = 0x15

.field private static final DESCRIPTOR_TRANSPORT_PROTOCOL:I = 0x2

.field private static final TRANSPORT_PROTOCOL_HTTP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    return-void
.end method

.method private static parseAit(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/common/Metadata;
    .locals 20
    .param p0, "sectionData"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 63
    move-object/from16 v0, p0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 64
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 65
    .local v2, "sectionLength":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    .line 69
    .local v3, "endOfSection":I
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 71
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 75
    .local v5, "commonDescriptorsLength":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 78
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v7, "appInfoTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;>;"
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v8

    if-ge v8, v3, :cond_7

    .line 82
    const/4 v8, 0x0

    .line 83
    .local v8, "urlBase":Ljava/lang/String;
    const/4 v9, 0x0

    .line 86
    .local v9, "urlExtension":Ljava/lang/String;
    const/16 v10, 0x30

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 88
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 91
    .local v11, "controlCode":I
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 93
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 94
    .local v12, "applicationDescriptorsLoopLength":I
    nop

    .line 95
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v13

    add-int/2addr v13, v12

    .line 96
    .local v13, "positionOfNextApplication":I
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v14

    if-ge v14, v13, :cond_5

    .line 97
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 98
    .local v14, "descriptorTag":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 99
    .local v15, "descriptorLength":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v16

    add-int v1, v16, v15

    .line 101
    .local v1, "positionOfNextDescriptor":I
    const/4 v4, 0x2

    if-ne v14, v4, :cond_3

    .line 103
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 105
    .local v4, "protocolId":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 107
    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 109
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v6

    if-ge v6, v1, :cond_1

    .line 110
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 111
    .local v6, "urlBaseLength":I
    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 113
    move/from16 v17, v1

    const/16 v10, 0x8

    .end local v1    # "positionOfNextDescriptor":I
    .local v17, "positionOfNextDescriptor":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 114
    .local v1, "extensionCount":I
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 115
    .local v10, "urlExtensionIndex":I
    :goto_3
    if-ge v10, v1, :cond_0

    .line 117
    move/from16 v18, v1

    move/from16 v19, v2

    const/16 v1, 0x8

    .end local v1    # "extensionCount":I
    .end local v2    # "sectionLength":I
    .local v18, "extensionCount":I
    .local v19, "sectionLength":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 118
    .local v2, "urlExtensionLength":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 116
    .end local v2    # "urlExtensionLength":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    goto :goto_3

    .line 115
    .end local v18    # "extensionCount":I
    .end local v19    # "sectionLength":I
    .restart local v1    # "extensionCount":I
    .local v2, "sectionLength":I
    :cond_0
    move/from16 v18, v1

    move/from16 v19, v2

    const/16 v1, 0x8

    .line 120
    .end local v1    # "extensionCount":I
    .end local v2    # "sectionLength":I
    .end local v6    # "urlBaseLength":I
    .end local v10    # "urlExtensionIndex":I
    .restart local v19    # "sectionLength":I
    move v10, v1

    move/from16 v1, v17

    goto :goto_2

    .line 109
    .end local v17    # "positionOfNextDescriptor":I
    .end local v19    # "sectionLength":I
    .local v1, "positionOfNextDescriptor":I
    .restart local v2    # "sectionLength":I
    :cond_1
    move/from16 v17, v1

    move/from16 v19, v2

    move v1, v10

    .end local v1    # "positionOfNextDescriptor":I
    .end local v2    # "sectionLength":I
    .restart local v17    # "positionOfNextDescriptor":I
    .restart local v19    # "sectionLength":I
    goto :goto_4

    .line 107
    .end local v17    # "positionOfNextDescriptor":I
    .end local v19    # "sectionLength":I
    .restart local v1    # "positionOfNextDescriptor":I
    .restart local v2    # "sectionLength":I
    :cond_2
    move/from16 v17, v1

    move/from16 v19, v2

    move v1, v10

    .end local v1    # "positionOfNextDescriptor":I
    .end local v2    # "sectionLength":I
    .restart local v17    # "positionOfNextDescriptor":I
    .restart local v19    # "sectionLength":I
    goto :goto_4

    .line 122
    .end local v4    # "protocolId":I
    .end local v17    # "positionOfNextDescriptor":I
    .end local v19    # "sectionLength":I
    .restart local v1    # "positionOfNextDescriptor":I
    .restart local v2    # "sectionLength":I
    :cond_3
    move/from16 v17, v1

    move/from16 v19, v2

    move v1, v10

    .end local v1    # "positionOfNextDescriptor":I
    .end local v2    # "sectionLength":I
    .restart local v17    # "positionOfNextDescriptor":I
    .restart local v19    # "sectionLength":I
    const/16 v2, 0x15

    if-ne v14, v2, :cond_4

    .line 124
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v15, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .end local v9    # "urlExtension":Ljava/lang/String;
    .local v2, "urlExtension":Ljava/lang/String;
    goto :goto_5

    .line 122
    .end local v2    # "urlExtension":Ljava/lang/String;
    .restart local v9    # "urlExtension":Ljava/lang/String;
    :cond_4
    :goto_4
    nop

    .line 127
    :goto_5
    mul-int/lit8 v2, v17, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 128
    .end local v14    # "descriptorTag":I
    .end local v15    # "descriptorLength":I
    .end local v17    # "positionOfNextDescriptor":I
    move v10, v1

    move/from16 v2, v19

    const/16 v1, 0xc

    const/4 v4, 0x4

    const/16 v6, 0x10

    goto/16 :goto_1

    .line 130
    .end local v19    # "sectionLength":I
    .local v2, "sectionLength":I
    :cond_5
    move/from16 v19, v2

    .end local v2    # "sectionLength":I
    .restart local v19    # "sectionLength":I
    mul-int/lit8 v1, v13, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 132
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 133
    new-instance v1, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v8    # "urlBase":Ljava/lang/String;
    .end local v9    # "urlExtension":Ljava/lang/String;
    .end local v11    # "controlCode":I
    .end local v12    # "applicationDescriptorsLoopLength":I
    .end local v13    # "positionOfNextApplication":I
    :cond_6
    move/from16 v2, v19

    const/16 v1, 0xc

    const/4 v4, 0x4

    const/16 v6, 0x10

    goto/16 :goto_0

    .line 137
    .end local v19    # "sectionLength":I
    .restart local v2    # "sectionLength":I
    :cond_7
    move/from16 v19, v2

    .end local v2    # "sectionLength":I
    .restart local v19    # "sectionLength":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v7}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_6
    return-object v1
.end method


# virtual methods
.method protected decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 4
    .param p1, "inputBuffer"    # Landroidx/media3/extractor/metadata/MetadataInputBuffer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 55
    .local v0, "tableId":I
    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    invoke-static {v1}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;->parseAit(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    return-object v1
.end method
