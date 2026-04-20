.class Landroidx/media3/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_AIT:I = 0x6f

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_DVBSUBS:I = 0x59

.field private static final TS_PMT_DESC_DVB_EXT:I = 0x7f

.field private static final TS_PMT_DESC_DVB_EXT_AC4:I = 0x15

.field private static final TS_PMT_DESC_DVB_EXT_DTS_HD:I = 0xe

.field private static final TS_PMT_DESC_DVB_EXT_DTS_UHD:I = 0x21

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

.field final synthetic this$0:Landroidx/media3/extractor/ts/TsExtractor;

.field private final trackIdToPidScratch:Landroid/util/SparseIntArray;

.field private final trackIdToReaderScratch:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;I)V
    .locals 1
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 703
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 705
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 706
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 707
    iput p2, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 708
    return-void
.end method

.method private readEsInfo(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
    .locals 16
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 853
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 854
    .local v1, "descriptorsStartPosition":I
    add-int v2, v1, p2

    .line 855
    .local v2, "descriptorsEndPosition":I
    const/4 v3, -0x1

    .line 856
    .local v3, "streamType":I
    const/4 v4, 0x0

    .line 857
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 858
    .local v5, "audioType":I
    const/4 v6, 0x0

    move v8, v3

    move-object v9, v4

    move v10, v5

    move-object v11, v6

    .line 859
    .end local v3    # "streamType":I
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "audioType":I
    .local v8, "streamType":I
    .local v9, "language":Ljava/lang/String;
    .local v10, "audioType":I
    .local v11, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v2, :cond_11

    .line 860
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 861
    .local v3, "descriptorTag":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 862
    .local v4, "descriptorLength":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    .line 863
    .local v5, "positionOfNextDescriptor":I
    if-le v5, v2, :cond_0

    .line 865
    goto/16 :goto_5

    .line 867
    :cond_0
    const/4 v6, 0x5

    if-ne v3, v6, :cond_5

    .line 868
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 869
    .local v6, "formatIdentifier":J
    const-wide/32 v12, 0x41432d33

    cmp-long v12, v6, v12

    if-nez v12, :cond_1

    .line 870
    const/16 v8, 0x81

    goto :goto_1

    .line 871
    :cond_1
    const-wide/32 v12, 0x45414333

    cmp-long v12, v6, v12

    if-nez v12, :cond_2

    .line 872
    const/16 v8, 0x87

    goto :goto_1

    .line 873
    :cond_2
    const-wide/32 v12, 0x41432d34

    cmp-long v12, v6, v12

    if-nez v12, :cond_3

    .line 874
    const/16 v8, 0xac

    goto :goto_1

    .line 875
    :cond_3
    const-wide/32 v12, 0x48455643

    cmp-long v12, v6, v12

    if-nez v12, :cond_4

    .line 876
    const/16 v8, 0x24

    .line 878
    .end local v6    # "formatIdentifier":J
    :cond_4
    :goto_1
    goto/16 :goto_4

    :cond_5
    const/16 v6, 0x6a

    if-ne v3, v6, :cond_6

    .line 879
    const/16 v6, 0x81

    move v8, v6

    .end local v8    # "streamType":I
    .local v6, "streamType":I
    goto/16 :goto_4

    .line 880
    .end local v6    # "streamType":I
    .restart local v8    # "streamType":I
    :cond_6
    const/16 v6, 0x7a

    if-ne v3, v6, :cond_7

    .line 881
    const/16 v6, 0x87

    move v8, v6

    .end local v8    # "streamType":I
    .restart local v6    # "streamType":I
    goto/16 :goto_4

    .line 882
    .end local v6    # "streamType":I
    .restart local v8    # "streamType":I
    :cond_7
    const/16 v6, 0x7f

    if-ne v3, v6, :cond_b

    .line 884
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 885
    .local v6, "descriptorTagExt":I
    const/16 v7, 0x15

    if-ne v6, v7, :cond_8

    .line 887
    const/16 v8, 0xac

    goto :goto_2

    .line 888
    :cond_8
    const/16 v7, 0xe

    if-ne v6, v7, :cond_9

    .line 890
    const/16 v8, 0x88

    goto :goto_2

    .line 891
    :cond_9
    const/16 v7, 0x21

    if-ne v6, v7, :cond_a

    .line 893
    const/16 v8, 0x8b

    .line 895
    .end local v6    # "descriptorTagExt":I
    :cond_a
    :goto_2
    goto :goto_4

    :cond_b
    const/16 v6, 0x7b

    if-ne v3, v6, :cond_c

    .line 896
    const/16 v6, 0x8a

    move v8, v6

    .end local v8    # "streamType":I
    .local v6, "streamType":I
    goto :goto_4

    .line 897
    .end local v6    # "streamType":I
    .restart local v8    # "streamType":I
    :cond_c
    const/16 v6, 0xa

    const/4 v7, 0x3

    if-ne v3, v6, :cond_d

    .line 898
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 899
    .end local v9    # "language":Ljava/lang/String;
    .local v6, "language":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    move-object v9, v6

    move v10, v7

    .end local v10    # "audioType":I
    .local v7, "audioType":I
    goto :goto_4

    .line 900
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "audioType":I
    .restart local v9    # "language":Ljava/lang/String;
    .restart local v10    # "audioType":I
    :cond_d
    const/16 v6, 0x59

    if-ne v3, v6, :cond_f

    .line 901
    const/16 v6, 0x59

    .line 902
    .end local v8    # "streamType":I
    .local v6, "streamType":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .end local v11    # "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    .local v8, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v11

    if-ge v11, v5, :cond_e

    .line 904
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 905
    .local v11, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 906
    .local v12, "dvbSubtitlingType":I
    const/4 v13, 0x4

    new-array v14, v13, [B

    .line 907
    .local v14, "initializationData":[B
    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v13}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 908
    new-instance v13, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v13, v11, v12, v14}, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    .end local v11    # "dvbLanguage":Ljava/lang/String;
    .end local v12    # "dvbSubtitlingType":I
    .end local v14    # "initializationData":[B
    goto :goto_3

    .line 903
    :cond_e
    move-object v11, v8

    move v8, v6

    goto :goto_4

    .line 911
    .end local v6    # "streamType":I
    .local v8, "streamType":I
    .local v11, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :cond_f
    const/16 v6, 0x6f

    if-ne v3, v6, :cond_10

    .line 912
    const/16 v6, 0x101

    move v8, v6

    .line 915
    :cond_10
    :goto_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 916
    .end local v3    # "descriptorTag":I
    .end local v4    # "descriptorLength":I
    .end local v5    # "positionOfNextDescriptor":I
    goto/16 :goto_0

    .line 917
    :cond_11
    :goto_5
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 918
    new-instance v7, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    .line 923
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    .line 918
    return-object v7
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 22
    .param p1, "sectionData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 721
    .local v2, "tableId":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 723
    return-void

    .line 727
    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v4

    if-eq v4, v3, :cond_2

    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media3/extractor/ts/TsExtractor;->access$100(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 730
    :cond_1
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 731
    invoke-static {v7}, Landroidx/media3/extractor/ts/TsExtractor;->access$300(Landroidx/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v7}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 732
    .local v4, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v7}, Landroidx/media3/extractor/ts/TsExtractor;->access$300(Landroidx/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 728
    .end local v4    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    :cond_2
    :goto_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v4}, Landroidx/media3/extractor/ts/TsExtractor;->access$300(Landroidx/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/TimestampAdjuster;

    .line 736
    .restart local v4    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 737
    .local v7, "secondHeaderByte":I
    and-int/lit16 v8, v7, 0x80

    if-nez v8, :cond_3

    .line 739
    return-void

    .line 742
    :cond_3
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 743
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 748
    .local v8, "programNumber":I
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 750
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 752
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 753
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/media3/extractor/ts/TsExtractor;->access$402(Landroidx/media3/extractor/ts/TsExtractor;I)I

    .line 756
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 757
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 758
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v13, 0xc

    invoke-virtual {v10, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 761
    .local v10, "programInfoLength":I
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 763
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v14}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v14

    const/16 v15, 0x2000

    const/16 v5, 0x15

    if-ne v14, v3, :cond_4

    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v14}, Landroidx/media3/extractor/ts/TsExtractor;->access$500(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v14

    if-nez v14, :cond_4

    .line 766
    new-instance v16, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    const/16 v20, 0x0

    sget-object v21, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/16 v17, 0x15

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    move-object/from16 v14, v16

    .line 768
    .local v14, "id3EsInfo":Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v3}, Landroidx/media3/extractor/ts/TsExtractor;->access$600(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    move-result-object v3

    invoke-interface {v3, v5, v14}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/media3/extractor/ts/TsExtractor;->access$502(Landroidx/media3/extractor/ts/TsExtractor;Landroidx/media3/extractor/ts/TsPayloadReader;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 769
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v3}, Landroidx/media3/extractor/ts/TsExtractor;->access$500(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 770
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v3}, Landroidx/media3/extractor/ts/TsExtractor;->access$500(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v3

    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 772
    invoke-static {v6}, Landroidx/media3/extractor/ts/TsExtractor;->access$700(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    move-result-object v6

    new-instance v13, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v13, v8, v5, v15}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 770
    invoke-interface {v3, v4, v6, v13}, Landroidx/media3/extractor/ts/TsPayloadReader;->init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 777
    .end local v14    # "id3EsInfo":Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
    :cond_4
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 778
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 779
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    .line 780
    .local v3, "remainingEntriesLength":I
    :goto_2
    if-lez v3, :cond_c

    .line 781
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v13, 0x5

    invoke-virtual {v1, v6, v13}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 782
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 783
    .local v6, "streamType":I
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v14, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 784
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v14, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 785
    .local v14, "elementaryPid":I
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 786
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 787
    .local v9, "esInfoLength":I
    invoke-direct {v0, v1, v9}, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v11

    .line 788
    .local v11, "esInfo":Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
    const/4 v12, 0x6

    if-eq v6, v12, :cond_5

    if-ne v6, v13, :cond_6

    .line 789
    :cond_5
    iget v6, v11, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 791
    :cond_6
    add-int/lit8 v12, v9, 0x5

    sub-int/2addr v3, v12

    .line 793
    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v12}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    move v12, v6

    goto :goto_3

    :cond_7
    move v12, v14

    .line 794
    .local v12, "trackId":I
    :goto_3
    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$800(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 795
    goto :goto_5

    .line 800
    :cond_8
    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v13

    const/4 v15, 0x2

    if-ne v13, v15, :cond_9

    if-ne v6, v5, :cond_9

    .line 801
    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$500(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v13

    goto :goto_4

    .line 802
    :cond_9
    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$600(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    move-result-object v13

    invoke-interface {v13, v6, v11}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v13

    :goto_4
    nop

    .line 803
    .local v13, "reader":Landroidx/media3/extractor/ts/TsPayloadReader;
    iget-object v15, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v15}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v15

    const/4 v5, 0x2

    if-ne v15, v5, :cond_a

    iget-object v5, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 804
    const/16 v15, 0x2000

    invoke-virtual {v5, v12, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ge v14, v5, :cond_b

    .line 805
    :cond_a
    iget-object v5, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    iget-object v5, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v5, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    .end local v6    # "streamType":I
    .end local v9    # "esInfoLength":I
    .end local v11    # "esInfo":Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
    .end local v12    # "trackId":I
    .end local v13    # "reader":Landroidx/media3/extractor/ts/TsPayloadReader;
    .end local v14    # "elementaryPid":I
    :cond_b
    nop

    .line 780
    :goto_5
    const/16 v5, 0x15

    const/4 v9, 0x3

    const/4 v11, 0x4

    const/16 v12, 0xd

    const/16 v15, 0x2000

    goto/16 :goto_2

    .line 810
    :cond_c
    iget-object v5, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 811
    .local v5, "trackIdCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_f

    .line 812
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 813
    .local v9, "trackId":I
    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 814
    .local v11, "trackPid":I
    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v12}, Landroidx/media3/extractor/ts/TsExtractor;->access$800(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v9, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 815
    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v12}, Landroidx/media3/extractor/ts/TsExtractor;->access$900(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v12

    invoke-virtual {v12, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 816
    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 817
    .local v12, "reader":Landroidx/media3/extractor/ts/TsPayloadReader;
    if-eqz v12, :cond_e

    .line 818
    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$500(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v13

    if-eq v12, v13, :cond_d

    .line 819
    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 821
    invoke-static {v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$700(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    move-result-object v13

    new-instance v14, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v15, 0x2000

    invoke-direct {v14, v8, v9, v15}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 819
    invoke-interface {v12, v4, v13, v14}, Landroidx/media3/extractor/ts/TsPayloadReader;->init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_7

    .line 818
    :cond_d
    const/16 v15, 0x2000

    .line 824
    :goto_7
    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 817
    :cond_e
    const/16 v15, 0x2000

    .line 811
    .end local v9    # "trackId":I
    .end local v11    # "trackPid":I
    .end local v12    # "reader":Landroidx/media3/extractor/ts/TsPayloadReader;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 828
    .end local v6    # "i":I
    :cond_f
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v6

    .line 835
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 828
    const/4 v15, 0x2

    if-ne v6, v15, :cond_10

    .line 829
    invoke-static {v9}, Landroidx/media3/extractor/ts/TsExtractor;->access$1000(Landroidx/media3/extractor/ts/TsExtractor;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 830
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media3/extractor/ts/TsExtractor;->access$700(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 831
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroidx/media3/extractor/ts/TsExtractor;->access$102(Landroidx/media3/extractor/ts/TsExtractor;I)I

    .line 832
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    const/4 v13, 0x1

    invoke-static {v6, v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$1002(Landroidx/media3/extractor/ts/TsExtractor;Z)Z

    goto :goto_a

    .line 835
    :cond_10
    const/4 v11, 0x0

    invoke-static {v9}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v6

    iget v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 836
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v9}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v9

    const/4 v13, 0x1

    if-ne v9, v13, :cond_11

    move v9, v11

    goto :goto_9

    :cond_11
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v9}, Landroidx/media3/extractor/ts/TsExtractor;->access$100(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v9

    sub-int/2addr v9, v13

    :goto_9
    invoke-static {v6, v9}, Landroidx/media3/extractor/ts/TsExtractor;->access$102(Landroidx/media3/extractor/ts/TsExtractor;I)I

    .line 837
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media3/extractor/ts/TsExtractor;->access$100(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v6

    if-nez v6, :cond_12

    .line 838
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media3/extractor/ts/TsExtractor;->access$700(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 839
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    const/4 v13, 0x1

    invoke-static {v6, v13}, Landroidx/media3/extractor/ts/TsExtractor;->access$1002(Landroidx/media3/extractor/ts/TsExtractor;Z)Z

    .line 842
    :cond_12
    :goto_a
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 716
    return-void
.end method
