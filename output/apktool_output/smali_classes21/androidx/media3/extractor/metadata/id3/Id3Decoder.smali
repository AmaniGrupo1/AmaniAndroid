.class public final Landroidx/media3/extractor/metadata/id3/Id3Decoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "Id3Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;,
        Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;
    }
.end annotation


# static fields
.field private static final FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER:I = 0x20

.field private static final FRAME_FLAG_V3_IS_COMPRESSED:I = 0x80

.field private static final FRAME_FLAG_V3_IS_ENCRYPTED:I = 0x40

.field private static final FRAME_FLAG_V4_HAS_DATA_LENGTH:I = 0x1

.field private static final FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER:I = 0x40

.field private static final FRAME_FLAG_V4_IS_COMPRESSED:I = 0x8

.field private static final FRAME_FLAG_V4_IS_ENCRYPTED:I = 0x4

.field private static final FRAME_FLAG_V4_IS_UNSYNCHRONIZED:I = 0x2

.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I = 0x494433

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field public static final NO_FRAMES_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroidx/media3/extractor/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>(Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)V
    .locals 0
    .param p1, "framePredicate"    # Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 94
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    .line 95
    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 96
    return-void
.end method

.method private static copyOfRangeIfValid([BII)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 865
    if-gt p2, p1, :cond_0

    .line 867
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 869
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decodeApicFrame(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/metadata/id3/ApicFrame;
    .locals 12
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I

    .line 586
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 587
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 589
    .local v1, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 590
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 594
    const/4 v3, 0x2

    const-string v5, "image/"

    if-ne p2, v3, :cond_0

    .line 595
    const/4 v3, 0x2

    .line 596
    .local v3, "mimeTypeEndIndex":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x3

    sget-object v8, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v4, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "mimeType":Ljava/lang/String;
    const-string v5, "image/jpg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 598
    const-string v4, "image/jpeg"

    goto :goto_0

    .line 601
    .end local v3    # "mimeTypeEndIndex":I
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 602
    .restart local v3    # "mimeTypeEndIndex":I
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 603
    invoke-static {v6}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    :cond_1
    :goto_0
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 611
    .local v5, "pictureType":I
    add-int/lit8 v6, v3, 0x2

    .line 612
    .local v6, "descriptionStartIndex":I
    invoke-static {v2, v6, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v7

    .line 613
    .local v7, "descriptionEndIndex":I
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v6

    invoke-direct {v8, v2, v6, v9, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 617
    .local v8, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v9

    add-int/2addr v9, v7

    .line 618
    .local v9, "pictureDataStartIndex":I
    array-length v10, v2

    invoke-static {v2, v9, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v10

    .line 620
    .local v10, "pictureData":[B
    new-instance v11, Landroidx/media3/extractor/metadata/id3/ApicFrame;

    invoke-direct {v11, v4, v8, v5, v10}, Landroidx/media3/extractor/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v11
.end method

.method private static decodeBinaryFrame(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/extractor/metadata/id3/BinaryFrame;
    .locals 2
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 773
    new-array v0, p1, [B

    .line 774
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 776
    new-instance v1, Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Landroidx/media3/extractor/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeChapterFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterFrame;
    .locals 17
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 657
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 658
    .local v1, "framePosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 659
    .local v2, "chapterIdEndIndex":I
    new-instance v3, Ljava/lang/String;

    .line 661
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int v5, v2, v1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v8, v3

    .line 665
    .local v8, "chapterId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 667
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 668
    .local v9, "startTime":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 669
    .local v10, "endTime":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 670
    .local v3, "startOffset":J
    const-wide v5, 0xffffffffL

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 671
    const-wide/16 v3, -0x1

    move-wide v11, v3

    goto :goto_0

    .line 670
    :cond_0
    move-wide v11, v3

    .line 673
    .end local v3    # "startOffset":J
    .local v11, "startOffset":J
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 674
    .local v3, "endOffset":J
    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 675
    const-wide/16 v3, -0x1

    move-wide v13, v3

    goto :goto_1

    .line 674
    :cond_1
    move-wide v13, v3

    .line 678
    .end local v3    # "endOffset":J
    .local v13, "endOffset":J
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v3, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/id3/Id3Frame;>;"
    add-int v4, v1, p1

    .line 680
    .local v4, "limit":I
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 681
    nop

    .line 682
    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v15, p5

    move/from16 v16, v1

    .end local v1    # "framePosition":I
    .local v16, "framePosition":I
    invoke-static {v5, v0, v6, v7, v15}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v1

    .line 684
    .local v1, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    if-eqz v1, :cond_2

    .line 685
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .end local v1    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_2
    move/from16 v1, v16

    goto :goto_2

    .line 689
    .end local v16    # "framePosition":I
    .local v1, "framePosition":I
    :cond_3
    move/from16 v16, v1

    .end local v1    # "framePosition":I
    .restart local v16    # "framePosition":I
    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 690
    .local v1, "subFrameArray":[Landroidx/media3/extractor/metadata/id3/Id3Frame;
    new-instance v7, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    move-object v15, v1

    .end local v1    # "subFrameArray":[Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v15, "subFrameArray":[Landroidx/media3/extractor/metadata/id3/Id3Frame;
    invoke-direct/range {v7 .. v15}, Landroidx/media3/extractor/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V

    return-object v7
.end method

.method private static decodeChapterTOCFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;
    .locals 16
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 700
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 701
    .local v1, "framePosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 702
    .local v2, "elementIdEndIndex":I
    new-instance v3, Ljava/lang/String;

    .line 704
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int v5, v2, v1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v8, v3

    .line 708
    .local v8, "elementId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 710
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 711
    .local v3, "ctocFlags":I
    and-int/lit8 v4, v3, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 712
    .local v9, "isRoot":Z
    :goto_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 714
    .local v10, "isOrdered":Z
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 715
    .local v4, "childCount":I
    new-array v11, v4, [Ljava/lang/String;

    .line 716
    .local v11, "children":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_2

    .line 717
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 718
    .local v7, "startIndex":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    invoke-static {v12, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v12

    .line 719
    .local v12, "endIndex":I
    new-instance v13, Ljava/lang/String;

    .line 721
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v14

    sub-int v15, v12, v7

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v7, v15, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v13, v11, v6

    .line 722
    add-int/lit8 v5, v12, 0x1

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 716
    .end local v7    # "startIndex":I
    .end local v12    # "endIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 725
    .end local v6    # "i":I
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v5, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/id3/Id3Frame;>;"
    add-int v6, v1, p1

    .line 727
    .local v6, "limit":I
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 729
    nop

    .line 730
    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v7, p5

    invoke-static {v13, v0, v14, v15, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v12

    .line 732
    .local v12, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    if-eqz v12, :cond_3

    .line 733
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    .end local v12    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_3
    goto :goto_3

    .line 737
    :cond_4
    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v7, p5

    const/4 v12, 0x0

    new-array v12, v12, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 738
    .local v12, "subFrameArray":[Landroidx/media3/extractor/metadata/id3/Id3Frame;
    new-instance v7, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v7 .. v12}, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V

    return-object v7
.end method

.method private static decodeCommentFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/CommentFrame;
    .locals 10
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 625
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 627
    const/4 v0, 0x0

    return-object v0

    .line 630
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 631
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 633
    .local v1, "charset":Ljava/nio/charset/Charset;
    const/4 v2, 0x3

    new-array v3, v2, [B

    .line 634
    .local v3, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 635
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 637
    .local v5, "language":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x4

    new-array v2, v2, [B

    .line 638
    .end local v3    # "data":[B
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x4

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 640
    invoke-static {v2, v4, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v3

    .line 641
    .local v3, "descriptionEndIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 643
    .local v6, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 644
    .local v4, "textStartIndex":I
    invoke-static {v2, v4, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v7

    .line 645
    .local v7, "textEndIndex":I
    invoke-static {v2, v4, v7, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, "text":Ljava/lang/String;
    new-instance v9, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    invoke-direct {v9, v5, v6, v8}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method private static decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 21
    .param p0, "majorVersion"    # I
    .param p1, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "unsignedIntFrameSizeHack"    # Z
    .param p3, "frameHeaderSize"    # I
    .param p4, "framePredicate"    # Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 290
    move/from16 v3, p0

    move-object/from16 v7, p1

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 291
    .local v1, "frameId0":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 292
    .local v4, "frameId1":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 293
    .local v5, "frameId2":I
    const/4 v8, 0x3

    if-lt v3, v8, :cond_0

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 296
    .local v6, "frameId3":I
    :goto_0
    const/4 v9, 0x4

    if-ne v3, v9, :cond_2

    .line 297
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 298
    .local v2, "frameSize":I
    if-nez p2, :cond_1

    .line 299
    and-int/lit16 v10, v2, 0xff

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0xe

    or-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x15

    or-int v2, v10, v11

    move v10, v2

    goto :goto_1

    .line 298
    :cond_1
    move v10, v2

    goto :goto_1

    .line 305
    .end local v2    # "frameSize":I
    :cond_2
    if-ne v3, v8, :cond_3

    .line 306
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    move v10, v2

    .restart local v2    # "frameSize":I
    goto :goto_1

    .line 308
    .end local v2    # "frameSize":I
    :cond_3
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    move v10, v2

    .line 311
    .local v10, "frameSize":I
    :goto_1
    if-lt v3, v8, :cond_4

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    move v11, v2

    .line 312
    .local v11, "flags":I
    const/4 v12, 0x0

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    .line 319
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 320
    return-object v12

    .line 323
    :cond_5
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int v13, v2, v10

    .line 324
    .local v13, "nextFramePosition":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    const-string v14, "Id3Decoder"

    if-le v13, v2, :cond_6

    .line 325
    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v14, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 327
    return-object v12

    .line 330
    :cond_6
    if-eqz p4, :cond_7

    .line 331
    move v2, v3

    move v3, v1

    move-object/from16 v1, p4

    .end local v1    # "frameId0":I
    .local v3, "frameId0":I
    invoke-interface/range {v1 .. v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v15

    move v1, v3

    move v3, v2

    move v2, v4

    move v4, v5

    move v5, v6

    .end local v3    # "frameId0":I
    .end local v6    # "frameId3":I
    .restart local v1    # "frameId0":I
    .local v2, "frameId1":I
    .local v4, "frameId2":I
    .local v5, "frameId3":I
    if-nez v15, :cond_8

    .line 333
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 334
    return-object v12

    .line 330
    .end local v2    # "frameId1":I
    .local v4, "frameId1":I
    .local v5, "frameId2":I
    .restart local v6    # "frameId3":I
    :cond_7
    move v2, v4

    move v4, v5

    move v5, v6

    .line 338
    .end local v6    # "frameId3":I
    .restart local v2    # "frameId1":I
    .local v4, "frameId2":I
    .local v5, "frameId3":I
    :cond_8
    const/4 v6, 0x0

    .line 339
    .local v6, "isCompressed":Z
    const/4 v15, 0x0

    .line 340
    .local v15, "isEncrypted":Z
    const/16 v16, 0x0

    .line 341
    .local v16, "isUnsynchronized":Z
    const/16 v17, 0x0

    .line 342
    .local v17, "hasDataLength":Z
    const/16 v18, 0x0

    .line 343
    .local v18, "hasGroupIdentifier":Z
    const/4 v0, 0x1

    if-ne v3, v8, :cond_c

    .line 344
    and-int/lit16 v8, v11, 0x80

    if-eqz v8, :cond_9

    move v8, v0

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    move v6, v8

    .line 345
    and-int/lit8 v8, v11, 0x40

    if-eqz v8, :cond_a

    move v8, v0

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    move v15, v8

    .line 346
    and-int/lit8 v8, v11, 0x20

    if-eqz v8, :cond_b

    move/from16 v19, v0

    goto :goto_5

    :cond_b
    const/16 v19, 0x0

    :goto_5
    move/from16 v18, v19

    .line 348
    move/from16 v17, v6

    move v8, v6

    goto :goto_b

    .line 349
    :cond_c
    if-ne v3, v9, :cond_12

    .line 350
    and-int/lit8 v8, v11, 0x40

    if-eqz v8, :cond_d

    move v8, v0

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    :goto_6
    move/from16 v18, v8

    .line 351
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_e

    move v8, v0

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    move v6, v8

    .line 352
    and-int/lit8 v8, v11, 0x4

    if-eqz v8, :cond_f

    move v8, v0

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    move v15, v8

    .line 353
    and-int/lit8 v8, v11, 0x2

    if-eqz v8, :cond_10

    move v8, v0

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    move/from16 v16, v8

    .line 354
    and-int/lit8 v8, v11, 0x1

    if-eqz v8, :cond_11

    move/from16 v19, v0

    goto :goto_a

    :cond_11
    const/16 v19, 0x0

    :goto_a
    move/from16 v17, v19

    move v8, v6

    goto :goto_b

    .line 349
    :cond_12
    move v8, v6

    .line 357
    .end local v6    # "isCompressed":Z
    .local v8, "isCompressed":Z
    :goto_b
    if-nez v8, :cond_28

    if-eqz v15, :cond_13

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    goto/16 :goto_13

    .line 363
    :cond_13
    if-eqz v18, :cond_14

    .line 364
    add-int/lit8 v10, v10, -0x1

    .line 365
    invoke-virtual {v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 367
    :cond_14
    if-eqz v17, :cond_15

    .line 368
    add-int/lit8 v10, v10, -0x4

    .line 369
    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 371
    :cond_15
    if-eqz v16, :cond_16

    .line 372
    invoke-static {v7, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroidx/media3/common/util/ParsableByteArray;I)I

    move-result v10

    .line 375
    :cond_16
    const/4 v9, 0x0

    .line 376
    .local v9, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    const/4 v12, 0x0

    .line 378
    .local v12, "error":Ljava/lang/Throwable;
    const/16 v0, 0x54

    const/4 v6, 0x2

    if-ne v1, v0, :cond_18

    const/16 v0, 0x58

    if-ne v2, v0, :cond_18

    if-ne v4, v0, :cond_18

    if-eq v3, v6, :cond_17

    if-ne v5, v0, :cond_18

    .line 382
    :cond_17
    :try_start_0
    invoke-static {v7, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeTxxxFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v10

    move v10, v2

    move v2, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v0, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_f

    .line 383
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_18
    const/16 v0, 0x54

    if-ne v1, v0, :cond_19

    .line 384
    invoke-static {v3, v1, v2, v4, v5}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "id":Ljava/lang/String;
    invoke-static {v7, v10, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v6

    .line 386
    .end local v0    # "id":Ljava/lang/String;
    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v6, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    move-object v0, v7

    move v7, v1

    move-object v1, v0

    move v0, v10

    move v10, v2

    move v2, v0

    move v9, v5

    move-object v0, v6

    move/from16 v19, v8

    move v8, v4

    goto/16 :goto_f

    .line 437
    .end local v6    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v7

    move v7, v1

    move-object/from16 v1, v19

    move/from16 v19, v10

    move v10, v2

    move/from16 v2, v19

    move/from16 v19, v8

    move-object/from16 v20, v9

    move v8, v4

    move v9, v5

    goto/16 :goto_10

    .line 434
    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    :goto_c
    move-object/from16 v19, v7

    move v7, v1

    move-object/from16 v1, v19

    move/from16 v19, v10

    move v10, v2

    move/from16 v2, v19

    move/from16 v19, v8

    move-object/from16 v20, v9

    move v8, v4

    move v9, v5

    goto/16 :goto_11

    .line 386
    :cond_19
    const/16 v0, 0x57

    if-ne v1, v0, :cond_1b

    const/16 v0, 0x58

    if-ne v2, v0, :cond_1b

    if-ne v4, v0, :cond_1b

    if-eq v3, v6, :cond_1a

    if-ne v5, v0, :cond_1b

    .line 390
    :cond_1a
    invoke-static {v7, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeWxxxFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v10

    move v10, v2

    move v2, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v0, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_f

    .line 391
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1b
    const/16 v0, 0x57

    if-ne v1, v0, :cond_1c

    .line 392
    invoke-static {v3, v1, v2, v4, v5}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "id":Ljava/lang/String;
    invoke-static {v7, v10, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    move-result-object v6

    .line 394
    .end local v0    # "id":Ljava/lang/String;
    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v6    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    move-object v0, v7

    move v7, v1

    move-object v1, v0

    move v0, v10

    move v10, v2

    move v2, v0

    move v9, v5

    move-object v0, v6

    move/from16 v19, v8

    move v8, v4

    goto/16 :goto_f

    .end local v6    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1c
    const/16 v0, 0x49

    const/16 v6, 0x50

    if-ne v1, v6, :cond_1d

    const/16 v6, 0x52

    if-ne v2, v6, :cond_1d

    if-ne v4, v0, :cond_1d

    const/16 v6, 0x56

    if-ne v5, v6, :cond_1d

    .line 395
    invoke-static {v7, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodePrivFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/PrivFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v10

    move v10, v2

    move v2, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v0, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_f

    .line 396
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1d
    const/16 v6, 0x47

    const/16 v0, 0x4f

    if-ne v1, v6, :cond_1f

    const/16 v6, 0x45

    if-ne v2, v6, :cond_1f

    if-ne v4, v0, :cond_1f

    const/16 v6, 0x42

    if-eq v5, v6, :cond_1e

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1f

    .line 400
    :cond_1e
    invoke-static {v7, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeGeobFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/GeobFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v10

    move v10, v2

    move v2, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_f

    .line 401
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1f
    const/16 v0, 0x43

    const/4 v6, 0x2

    if-ne v3, v6, :cond_20

    const/16 v6, 0x50

    if-ne v1, v6, :cond_21

    const/16 v6, 0x49

    if-ne v2, v6, :cond_21

    if-ne v4, v0, :cond_21

    goto :goto_d

    :cond_20
    const/16 v6, 0x41

    if-ne v1, v6, :cond_21

    const/16 v6, 0x50

    if-ne v2, v6, :cond_21

    const/16 v6, 0x49

    if-ne v4, v6, :cond_21

    if-ne v5, v0, :cond_21

    .line 404
    :goto_d
    invoke-static {v7, v10, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeApicFrame(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v10

    move v10, v2

    move v2, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_f

    .line 405
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_21
    const/16 v6, 0x4d

    if-ne v1, v0, :cond_23

    const/16 v0, 0x4f

    if-ne v2, v0, :cond_23

    if-ne v4, v6, :cond_23

    if-eq v5, v6, :cond_22

    const/4 v0, 0x2

    if-ne v3, v0, :cond_23

    .line 409
    :cond_22
    invoke-static {v7, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeCommentFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v10

    move v10, v2

    move v2, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    .end local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_f

    .line 410
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v9    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_23
    const/16 v0, 0x43

    if-ne v1, v0, :cond_24

    const/16 v0, 0x48

    if-ne v2, v0, :cond_24

    const/16 v0, 0x41

    if-ne v4, v0, :cond_24

    const/16 v0, 0x50

    if-ne v5, v0, :cond_24

    .line 411
    nop

    .line 412
    move-object v6, v7

    move v7, v1

    move-object v1, v6

    move v6, v10

    move v10, v2

    move v2, v6

    move-object/from16 v6, p4

    move/from16 v19, v8

    move-object/from16 v20, v9

    move v8, v4

    move v9, v5

    move/from16 v4, p2

    move/from16 v5, p3

    .end local v1    # "frameId0":I
    .end local v4    # "frameId2":I
    .end local v5    # "frameId3":I
    .local v2, "frameSize":I
    .local v7, "frameId0":I
    .local v8, "frameId2":I
    .local v9, "frameId3":I
    .local v10, "frameId1":I
    .local v19, "isCompressed":Z
    .local v20, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :try_start_1
    invoke-static/range {v1 .. v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeChapterFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v3, p0

    move-object/from16 v1, p1

    .end local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_f

    .line 437
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :catchall_1
    move-exception v0

    move/from16 v3, p0

    move-object/from16 v1, p1

    goto/16 :goto_10

    .line 434
    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    :goto_e
    move/from16 v3, p0

    move-object/from16 v1, p1

    goto :goto_11

    .line 410
    .end local v7    # "frameId0":I
    .end local v19    # "isCompressed":Z
    .end local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v1    # "frameId0":I
    .local v2, "frameId1":I
    .restart local v4    # "frameId2":I
    .restart local v5    # "frameId3":I
    .local v8, "isCompressed":Z
    .local v9, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v10, "frameSize":I
    :cond_24
    move v7, v10

    move v10, v2

    move v2, v7

    move v7, v1

    move/from16 v19, v8

    move-object/from16 v20, v9

    move v8, v4

    move v9, v5

    .line 419
    .end local v1    # "frameId0":I
    .end local v4    # "frameId2":I
    .end local v5    # "frameId3":I
    .local v2, "frameSize":I
    .restart local v7    # "frameId0":I
    .local v8, "frameId2":I
    .local v9, "frameId3":I
    .local v10, "frameId1":I
    .restart local v19    # "isCompressed":Z
    .restart local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    const/16 v0, 0x43

    if-ne v7, v0, :cond_25

    const/16 v1, 0x54

    if-ne v10, v1, :cond_25

    const/16 v1, 0x4f

    if-ne v8, v1, :cond_25

    if-ne v9, v0, :cond_25

    .line 420
    nop

    .line 421
    move/from16 v3, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_2
    invoke-static/range {v1 .. v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    move-result-object v0

    .end local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_f

    .line 419
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_25
    move/from16 v3, p0

    move-object/from16 v1, p1

    .line 428
    if-ne v7, v6, :cond_26

    const/16 v0, 0x4c

    if-ne v10, v0, :cond_26

    if-ne v8, v0, :cond_26

    const/16 v0, 0x54

    if-ne v9, v0, :cond_26

    .line 429
    invoke-static {v1, v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeMlltFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/MlltFrame;

    move-result-object v0

    .end local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_f

    .line 431
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_26
    invoke-static {v3, v7, v10, v8, v9}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "id":Ljava/lang/String;
    invoke-static {v1, v2, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeBinaryFrame(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v4

    .line 437
    .end local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v0, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :goto_f
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 438
    goto :goto_12

    .line 437
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .restart local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :catchall_2
    move-exception v0

    :goto_10
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 438
    throw v0

    .line 434
    :catch_4
    move-exception v0

    goto :goto_11

    :catch_5
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Throwable;
    :goto_11
    move-object v12, v0

    .line 437
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 438
    move-object/from16 v0, v20

    .line 439
    .end local v20    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .local v0, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :goto_12
    if-nez v0, :cond_27

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode frame: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 443
    invoke-static {v3, v7, v10, v8, v9}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", frameSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-static {v14, v4, v12}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    :cond_27
    return-object v0

    .line 357
    .end local v0    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .end local v7    # "frameId0":I
    .end local v9    # "frameId3":I
    .end local v12    # "error":Ljava/lang/Throwable;
    .end local v19    # "isCompressed":Z
    .restart local v1    # "frameId0":I
    .local v2, "frameId1":I
    .restart local v4    # "frameId2":I
    .restart local v5    # "frameId3":I
    .local v8, "isCompressed":Z
    .local v10, "frameSize":I
    :cond_28
    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v5

    move/from16 v19, v8

    move v8, v4

    .line 358
    .end local v1    # "frameId0":I
    .end local v4    # "frameId2":I
    .end local v5    # "frameId3":I
    .restart local v7    # "frameId0":I
    .local v8, "frameId2":I
    .restart local v9    # "frameId3":I
    .restart local v19    # "isCompressed":Z
    :goto_13
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v14, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 360
    return-object v12
.end method

.method private static decodeGeobFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/GeobFrame;
    .locals 14
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 558
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 559
    .local v0, "encoding":I
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 561
    .local v1, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 562
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 564
    invoke-static {v2, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 565
    .local v3, "mimeTypeEndIndex":I
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 566
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "mimeType":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    .line 570
    .local v5, "filenameStartIndex":I
    invoke-static {v2, v5, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v6

    .line 571
    .local v6, "filenameEndIndex":I
    invoke-static {v2, v5, v6, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int/2addr v8, v6

    .line 574
    .local v8, "descriptionStartIndex":I
    invoke-static {v2, v8, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v9

    .line 575
    .local v9, "descriptionEndIndex":I
    nop

    .line 576
    invoke-static {v2, v8, v9, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 578
    .local v10, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v11

    add-int/2addr v11, v9

    .line 579
    .local v11, "objectDataStartIndex":I
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v12

    .line 581
    .local v12, "objectData":[B
    new-instance v13, Landroidx/media3/extractor/metadata/id3/GeobFrame;

    invoke-direct {v13, v4, v7, v10, v12}, Landroidx/media3/extractor/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;
    .locals 10
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 164
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, "Id3Decoder"

    if-ge v0, v1, :cond_0

    .line 165
    const-string v0, "Data too short to be an ID3 tag"

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v2

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 170
    .local v0, "id":I
    const v1, 0x494433

    if-eq v0, v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%06X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v2

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 176
    .local v1, "majorVersion":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 177
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 178
    .local v5, "flags":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v6

    .line 180
    .local v6, "framesSize":I
    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-ne v1, v7, :cond_4

    .line 181
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v9

    .line 182
    .local v7, "isCompressed":Z
    :goto_0
    if-eqz v7, :cond_3

    .line 183
    const-string v4, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v2

    .line 186
    .end local v7    # "isCompressed":Z
    :cond_3
    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    if-ne v1, v7, :cond_7

    .line 187
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v9

    .line 188
    .local v2, "hasExtendedHeader":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 189
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 190
    .local v3, "extendedHeaderSize":I
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 191
    add-int/lit8 v7, v3, 0x4

    sub-int/2addr v6, v7

    .line 193
    .end local v2    # "hasExtendedHeader":Z
    .end local v3    # "extendedHeaderSize":I
    :cond_6
    goto :goto_4

    :cond_7
    if-ne v1, v8, :cond_d

    .line 194
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_2

    :cond_8
    move v2, v9

    .line 195
    .restart local v2    # "hasExtendedHeader":Z
    :goto_2
    if-eqz v2, :cond_9

    .line 196
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    .line 197
    .restart local v3    # "extendedHeaderSize":I
    add-int/lit8 v7, v3, -0x4

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 198
    sub-int/2addr v6, v3

    .line 200
    .end local v3    # "extendedHeaderSize":I
    :cond_9
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_a

    move v3, v4

    goto :goto_3

    :cond_a
    move v3, v9

    .line 201
    .local v3, "hasFooter":Z
    :goto_3
    if-eqz v3, :cond_b

    .line 202
    add-int/lit8 v6, v6, -0xa

    .line 204
    .end local v2    # "hasExtendedHeader":Z
    .end local v3    # "hasFooter":Z
    :cond_b
    nop

    .line 210
    :goto_4
    if-ge v1, v8, :cond_c

    and-int/lit16 v2, v5, 0x80

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    move v4, v9

    .line 211
    .local v4, "isUnsynchronized":Z
    :goto_5
    new-instance v2, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v2, v1, v4, v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    return-object v2

    .line 205
    .end local v4    # "isUnsynchronized":Z
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v2
.end method

.method private static decodeMlltFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/MlltFrame;
    .locals 14
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 743
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 744
    .local v1, "mpegFramesBetweenReference":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 745
    .local v2, "bytesBetweenReference":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 746
    .local v3, "millisecondsBetweenReference":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 747
    .local v6, "bitsForBytesDeviation":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 749
    .local v7, "bitsForMillisecondsDeviation":I
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    move-object v8, v0

    .line 750
    .local v8, "references":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual {v8, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 751
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 v9, v0, 0x8

    .line 752
    .local v9, "referencesBits":I
    add-int v10, v6, v7

    .line 753
    .local v10, "bitsPerReference":I
    div-int v11, v9, v10

    .line 754
    .local v11, "referencesCount":I
    new-array v4, v11, [I

    .line 755
    .local v4, "bytesDeviations":[I
    new-array v5, v11, [I

    .line 756
    .local v5, "millisecondsDeviations":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_0

    .line 757
    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 758
    .local v12, "bytesDeviation":I
    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 759
    .local v13, "millisecondsDeviation":I
    aput v12, v4, v0

    .line 760
    aput v13, v5, v0

    .line 756
    .end local v12    # "bytesDeviation":I
    .end local v13    # "millisecondsDeviation":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object v0
.end method

.method private static decodePrivFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/PrivFrame;
    .locals 6
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 545
    new-array v0, p1, [B

    .line 546
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 548
    invoke-static {v0, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 549
    .local v2, "ownerEndIndex":I
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 551
    .local v3, "owner":Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .line 552
    .local v1, "privateDataStartIndex":I
    array-length v4, v0

    invoke-static {v0, v1, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v4

    .line 554
    .local v4, "privateData":[B
    new-instance v5, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    invoke-direct {v5, v3, v4}, Landroidx/media3/extractor/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 883
    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 884
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static decodeTextInformationFrame(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 5
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 475
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 477
    return-object v1

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 482
    .local v0, "encoding":I
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 483
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 485
    invoke-static {v2, v0, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeTextInformationFrameValues([BII)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 486
    .local v3, "values":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    new-instance v4, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-direct {v4, p2, v1, v3}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v4
.end method

.method private static decodeTextInformationFrameValues([BII)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "encoding"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    array-length v0, p0

    const-string v1, ""

    if-lt p2, v0, :cond_0

    .line 492
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 495
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 496
    .local v0, "values":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    move v2, p2

    .line 497
    .local v2, "valueStartIndex":I
    invoke-static {p0, v2, p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v3

    .line 498
    .local v3, "valueEndIndex":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 499
    new-instance v4, Ljava/lang/String;

    sub-int v5, v3, v2

    .line 500
    invoke-static {p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, p0, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 501
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 503
    invoke-static {p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int v2, v3, v5

    .line 504
    invoke-static {p0, v2, p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v3

    .line 505
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 508
    .local v4, "result":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    return-object v1
.end method

.method private static decodeTxxxFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 7
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 453
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 460
    .local v0, "encoding":I
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [B

    .line 461
    .local v1, "data":[B
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 463
    invoke-static {v1, v3, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v2

    .line 464
    .local v2, "descriptionEndIndex":I
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v1, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 466
    .local v4, "description":Ljava/lang/String;
    nop

    .line 468
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 467
    invoke-static {v1, v0, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeTextInformationFrameValues([BII)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 469
    .local v3, "values":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    new-instance v5, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    const-string v6, "TXXX"

    invoke-direct {v5, v6, v4, v3}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v5
.end method

.method private static decodeUrlLinkFrame(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;
    .locals 5
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 535
    new-array v0, p1, [B

    .line 536
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 538
    invoke-static {v0, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 539
    .local v2, "urlEndIndex":I
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 541
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    const/4 v4, 0x0

    invoke-direct {v1, p2, v4, v3}, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static decodeWxxxFrame(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;
    .locals 9
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 513
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 515
    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 520
    .local v0, "encoding":I
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [B

    .line 521
    .local v1, "data":[B
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 523
    invoke-static {v1, v3, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v2

    .line 524
    .local v2, "descriptionEndIndex":I
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v1, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 526
    .local v4, "description":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 527
    .local v3, "urlStartIndex":I
    invoke-static {v1, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v5

    .line 528
    .local v5, "urlEndIndex":I
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v1, v3, v5, v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "url":Ljava/lang/String;
    new-instance v7, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    const-string v8, "WXXX"

    invoke-direct {v7, v8, v4, v6}, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method private static delimiterLength(I)I
    .locals 1
    .param p0, "encodingByte"    # I

    .line 851
    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 852
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 851
    :goto_1
    return v0
.end method

.method private static getCharset(I)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "encodingByte"    # I

    .line 802
    packed-switch p0, :pswitch_data_0

    .line 811
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0

    .line 808
    :pswitch_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 806
    :pswitch_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 804
    :pswitch_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .locals 5
    .param p0, "majorVersion"    # I
    .param p1, "frameId0"    # I
    .param p2, "frameId1"    # I
    .param p3, "frameId2"    # I
    .param p4, "frameId3"    # I

    .line 817
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 818
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%c%c%c"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 819
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%c%c%c%c"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_0
    return-object v0
.end method

.method private static indexOfTerminator([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .line 823
    invoke-static {p0, p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 826
    .local v0, "terminationPos":I
    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 831
    :cond_0
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 832
    sub-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    .line 833
    return v0

    .line 835
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    goto :goto_0

    .line 838
    :cond_2
    array-length v1, p0

    return v1

    .line 827
    :cond_3
    :goto_1
    return v0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .line 842
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 843
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 844
    return v0

    .line 842
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method static synthetic lambda$static$0(IIIII)Z
    .locals 1
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method private static removeUnsynchronization(Landroidx/media3/common/util/ParsableByteArray;I)I
    .locals 7
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "length"    # I

    .line 788
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 789
    .local v0, "bytes":[B
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 790
    .local v1, "startPosition":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    add-int v4, v1, p1

    if-ge v3, v4, :cond_1

    .line 791
    aget-byte v3, v0, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    .line 792
    sub-int v3, v2, v1

    .line 793
    .local v3, "relativePosition":I
    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x1

    sub-int v6, p1, v3

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    add-int/lit8 p1, p1, -0x1

    .line 790
    .end local v3    # "relativePosition":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    .end local v2    # "i":I
    :cond_1
    return p1
.end method

.method private static validateFrames(Landroidx/media3/common/util/ParsableByteArray;IIZ)Z
    .locals 19
    .param p0, "id3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "majorVersion"    # I
    .param p2, "frameHeaderSize"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z

    .line 219
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 221
    .local v3, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v0, v5, :cond_e

    .line 226
    const/4 v0, 0x3

    if-lt v2, v0, :cond_0

    .line 227
    :try_start_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 228
    .local v6, "id":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 229
    .local v7, "frameSize":J
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .local v9, "flags":I
    goto :goto_1

    .line 231
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v6

    .line 232
    .restart local v6    # "id":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v7, v7

    .line 233
    .restart local v7    # "frameSize":J
    const/4 v9, 0x0

    .line 236
    .restart local v9    # "flags":I
    :goto_1
    const-wide/16 v10, 0x0

    if-nez v6, :cond_1

    cmp-long v12, v7, v10

    if-nez v12, :cond_1

    if-nez v9, :cond_1

    .line 238
    nop

    .line 279
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 238
    return v4

    .line 240
    :cond_1
    const/4 v12, 0x4

    const/4 v13, 0x0

    if-ne v2, v12, :cond_3

    if-nez p3, :cond_3

    .line 242
    const-wide/32 v14, 0x808080

    and-long/2addr v14, v7

    cmp-long v10, v14, v10

    if-eqz v10, :cond_2

    .line 243
    nop

    .line 279
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 243
    return v13

    .line 245
    :cond_2
    const-wide/16 v10, 0xff

    and-long v14, v7, v10

    const/16 v16, 0x8

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0x7

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x10

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0xe

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x18

    shr-long v16, v7, v16

    and-long v10, v16, v10

    const/16 v16, 0x15

    shl-long v10, v10, v16

    or-long v7, v14, v10

    .line 251
    :cond_3
    const/4 v10, 0x0

    .line 252
    .local v10, "hasGroupIdentifier":Z
    const/4 v11, 0x0

    .line 253
    .local v11, "hasDataLength":Z
    if-ne v2, v12, :cond_6

    .line 254
    and-int/lit8 v0, v9, 0x40

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v13

    :goto_2
    move v10, v0

    .line 255
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v13

    :goto_3
    move v11, v4

    goto :goto_6

    .line 256
    :cond_6
    if-ne v2, v0, :cond_9

    .line 257
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move v0, v13

    :goto_4
    move v10, v0

    .line 259
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v4, v13

    :goto_5
    move v11, v4

    .line 261
    :cond_9
    :goto_6
    const/4 v0, 0x0

    .line 262
    .local v0, "minimumFrameSize":I
    if-eqz v10, :cond_a

    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 265
    :cond_a
    if-eqz v11, :cond_b

    .line 266
    add-int/lit8 v0, v0, 0x4

    .line 268
    :cond_b
    int-to-long v14, v0

    cmp-long v4, v7, v14

    if-gez v4, :cond_c

    .line 269
    nop

    .line 279
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 269
    return v13

    .line 271
    :cond_c
    :try_start_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v14, v4

    cmp-long v4, v14, v7

    if-gez v4, :cond_d

    .line 272
    nop

    .line 279
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 272
    return v13

    .line 274
    :cond_d
    long-to-int v4, v7

    :try_start_3
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    .end local v0    # "minimumFrameSize":I
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    .end local v10    # "hasGroupIdentifier":Z
    .end local v11    # "hasDataLength":Z
    goto/16 :goto_0

    .line 279
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 277
    :cond_e
    nop

    .line 279
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 277
    return v4

    .line 279
    :catchall_1
    move-exception v0

    move/from16 v5, p2

    :goto_7
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 280
    throw v0
.end method


# virtual methods
.method protected decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 2
    .param p1, "inputBuffer"    # Landroidx/media3/extractor/metadata/MetadataInputBuffer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media3/common/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public decode([BI)Landroidx/media3/common/Metadata;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "id3Frames":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/id3/Id3Frame;>;"
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 118
    .local v1, "id3Data":Landroidx/media3/common/util/ParsableByteArray;
    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v2

    .line 119
    .local v2, "id3Header":Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 120
    return-object v3

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 124
    .local v4, "startPosition":I
    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    .line 125
    .local v5, "frameHeaderSize":I
    :goto_0
    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v6

    .line 126
    .local v6, "framesSize":I
    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$200(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v7

    invoke-static {v1, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroidx/media3/common/util/ParsableByteArray;I)I

    move-result v6

    .line 129
    :cond_2
    add-int v7, v4, v6

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 131
    const/4 v7, 0x0

    .line 132
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v5, v9}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media3/common/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-nez v8, :cond_4

    .line 133
    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    invoke-static {v1, v9, v5, v8}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media3/common/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 134
    const/4 v7, 0x1

    goto :goto_1

    .line 136
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Id3Decoder"

    invoke-static {v9, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v3

    .line 141
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v5, :cond_6

    .line 143
    nop

    .line 145
    invoke-static {v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v3

    iget-object v8, p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 144
    invoke-static {v3, v1, v7, v5, v8}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v3

    .line 150
    .local v3, "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    if-eqz v3, :cond_5

    .line 151
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "frame":Landroidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_5
    goto :goto_1

    .line 155
    :cond_6
    new-instance v3, Landroidx/media3/common/Metadata;

    invoke-direct {v3, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    return-object v3
.end method
