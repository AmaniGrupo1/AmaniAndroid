.class public final Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$H265NalHeader;,
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265VpsData;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265LayerInfo;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormat;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;,
        Landroidx/media3/container/NalUnitUtil$PpsData;,
        Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final H264_NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final H264_NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final H264_NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final H264_NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final H264_NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final H264_NAL_UNIT_TYPE_PREFIX:I = 0xe

.field public static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field public static final H264_NAL_UNIT_TYPE_UNSPECIFIED:I = 0x18

.field public static final H265_NAL_UNIT_TYPE_AUD:I = 0x23

.field public static final H265_NAL_UNIT_TYPE_BLA_W_LP:I = 0x10

.field public static final H265_NAL_UNIT_TYPE_CRA:I = 0x15

.field public static final H265_NAL_UNIT_TYPE_PPS:I = 0x22

.field public static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final H265_NAL_UNIT_TYPE_RASL_R:I = 0x9

.field public static final H265_NAL_UNIT_TYPE_SPS:I = 0x21

.field public static final H265_NAL_UNIT_TYPE_SUFFIX_SEI:I = 0x28

.field public static final H265_NAL_UNIT_TYPE_UNSPECIFIED:I = 0x30

.field public static final H265_NAL_UNIT_TYPE_VPS:I = 0x20

.field private static final INVALID_ID:I = -0x1

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PREFIX:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field public static final VVC_NAL_UNIT_TYPE_DCI:I = 0xd

.field public static final VVC_NAL_UNIT_TYPE_OPI:I = 0xc

.field public static final VVC_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x17

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 508
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    .line 514
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 537
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 543
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 2603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2605
    return-void
.end method

.method private static applyConformanceWindowToHeight(IIII)I
    .locals 2
    .param p0, "height"    # I
    .param p1, "chromaFormatIdc"    # I
    .param p2, "offsetTop"    # I
    .param p3, "offsetBottom"    # I

    .line 2212
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    .line 2213
    .local v0, "subHeightC":I
    :cond_0
    add-int v1, p2, p3

    mul-int/2addr v1, v0

    sub-int v1, p0, v1

    return v1
.end method

.method private static applyConformanceWindowToWidth(IIII)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "chromaFormatIdc"    # I
    .param p2, "offsetLeft"    # I
    .param p3, "offsetRight"    # I

    .line 2205
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2206
    .local v0, "subWidthC":I
    :cond_1
    :goto_0
    add-int v1, p2, p3

    mul-int/2addr v1, v0

    sub-int v1, p0, v1

    return v1
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .line 1995
    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    .line 1996
    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    .line 1997
    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    .line 1998
    return-void
.end method

.method private static createCodecStringFromH265SpsPalyoad(Landroidx/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2052
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2053
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 2054
    .local v0, "maxSubLayersMinus1":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2055
    nop

    .line 2056
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v1

    .line 2061
    .local v1, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-boolean v3, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    iget-object v6, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget v7, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 602
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 603
    .local v0, "length":I
    const/4 v1, 0x0

    .line 604
    .local v1, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 605
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_3

    .line 606
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 607
    .local v3, "value":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 608
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 610
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 611
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 612
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 613
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 614
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 615
    return-void

    .line 617
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v3, :cond_1

    .line 618
    add-int/lit8 v1, v1, 0x1

    .line 620
    :cond_1
    if-eqz v3, :cond_2

    .line 621
    const/4 v1, 0x0

    .line 623
    :cond_2
    nop

    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    .line 624
    goto :goto_0

    .line 626
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 627
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .line 1933
    sub-int v0, p2, p1

    .line 1935
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1936
    if-nez v0, :cond_1

    .line 1937
    return p2

    .line 1940
    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    .line 1941
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1942
    add-int/lit8 v1, p1, -0x3

    return v1

    .line 1943
    :cond_2
    if-le v0, v2, :cond_3

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_3

    aget-byte v3, p0, p1

    if-ne v3, v2, :cond_3

    .line 1944
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1945
    add-int/lit8 v1, p1, -0x2

    return v1

    .line 1946
    :cond_3
    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 1950
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1951
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 1954
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 1957
    .local v4, "limit":I
    add-int/lit8 v5, p1, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_7

    .line 1958
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    .line 1961
    :cond_5
    add-int/lit8 v6, v5, -0x2

    aget-byte v6, p0, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v5, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_6

    aget-byte v6, p0, v5

    if-ne v6, v2, :cond_6

    .line 1962
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 1963
    add-int/lit8 v1, v5, -0x2

    return v1

    .line 1967
    :cond_6
    add-int/lit8 v5, v5, -0x2

    .line 1957
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 1972
    .end local v5    # "i":I
    :cond_7
    nop

    .line 1973
    if-le v0, v3, :cond_9

    .line 1974
    add-int/lit8 v5, p2, -0x3

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_8

    move v5, v2

    goto :goto_3

    :cond_8
    move v5, v1

    goto :goto_3

    .line 1975
    :cond_9
    if-ne v0, v3, :cond_b

    .line 1976
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_a

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_a

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_a

    move v5, v2

    goto :goto_3

    :cond_a
    move v5, v1

    goto :goto_3

    .line 1977
    :cond_b
    aget-boolean v5, p3, v2

    if-eqz v5, :cond_c

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_c

    move v5, v2

    goto :goto_3

    :cond_c
    move v5, v1

    :goto_3
    aput-boolean v5, p3, v1

    .line 1979
    nop

    .line 1980
    if-le v0, v2, :cond_e

    .line 1981
    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    move v5, v2

    goto :goto_4

    :cond_d
    move v5, v1

    goto :goto_4

    .line 1982
    :cond_e
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_f

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_f

    move v5, v2

    goto :goto_4

    :cond_f
    move v5, v1

    :goto_4
    aput-boolean v5, p3, v2

    .line 1984
    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_10

    move v1, v2

    :cond_10
    aput-boolean v1, p3, v3

    .line 1986
    return p2
.end method

.method private static findNalUnitPositions([B)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2036
    const/4 v0, 0x0

    .line 2037
    .local v0, "offset":I
    const/4 v1, 0x3

    new-array v1, v1, [Z

    .line 2038
    .local v1, "prefixFlags":[Z
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 2039
    .local v2, "nalUnitPositions":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 2040
    array-length v3, p0

    invoke-static {p0, v0, v3, v1}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v3

    .line 2041
    .local v3, "nalUnitOffset":I
    array-length v4, p0

    if-eq v3, v4, :cond_0

    .line 2042
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2044
    :cond_0
    add-int/lit8 v0, v3, 0x3

    .line 2045
    .end local v3    # "nalUnitOffset":I
    goto :goto_0

    .line 2046
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 2071
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 2072
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2073
    return v0

    .line 2071
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2076
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2012
    .local p0, "csdBuffers":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2013
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2014
    .local v1, "buffer":[B
    array-length v2, v1

    .line 2015
    .local v2, "limit":I
    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 2016
    invoke-static {v1}, Landroidx/media3/container/NalUnitUtil;->findNalUnitPositions([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 2017
    .local v4, "nalUnitPositions":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2019
    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    if-ge v6, v2, :cond_0

    .line 2021
    new-instance v6, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2022
    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v6, v1, v7, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 2023
    .local v6, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v7

    .line 2024
    .local v7, "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    iget v8, v7, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    const/16 v9, 0x21

    if-ne v8, v9, :cond_0

    iget v8, v7, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    if-nez v8, :cond_0

    .line 2025
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->createCodecStringFromH265SpsPalyoad(Landroidx/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2017
    .end local v6    # "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    .end local v7    # "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2012
    .end local v1    # "buffer":[B
    .end local v2    # "limit":I
    .end local v4    # "nalUnitPositions":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2031
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 796
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getNalStructureMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 2592
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/dolby-vision"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2594
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const-string v1, "dva1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const-string v1, "dvav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2596
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const-string v1, "dvh1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const-string v1, "dvhe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2597
    :cond_1
    const-string/jumbo v0, "video/hevc"

    return-object v0

    .line 2595
    :cond_2
    :goto_0
    const-string/jumbo v0, "video/avc"

    return-object v0

    .line 2600
    :cond_3
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 689
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static isDependedOn([BIILandroidx/media3/common/Format;)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "format"    # Landroidx/media3/common/Format;

    .line 760
    iget-object v0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    aget-byte v0, p0, p1

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->isH264NalUnitDependedOn(B)Z

    move-result v0

    return v0

    .line 763
    :cond_0
    iget-object v0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/container/NalUnitUtil;->isH265NalUnitDependedOn([BIILandroidx/media3/common/Format;)Z

    move-result v0

    return v0

    .line 766
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isH264NalUnitDependedOn(B)Z
    .locals 5
    .param p0, "nalUnitHeaderFirstByte"    # B

    .line 699
    and-int/lit8 v0, p0, 0x60

    shr-int/lit8 v0, v0, 0x5

    .line 700
    .local v0, "nalRefIdc":I
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 704
    return v1

    .line 707
    :cond_0
    and-int/lit8 v2, p0, 0x1f

    .line 708
    .local v2, "nalUnitType":I
    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 711
    return v3

    .line 713
    :cond_1
    const/16 v4, 0x9

    if-ne v2, v4, :cond_2

    .line 715
    return v3

    .line 717
    :cond_2
    const/16 v4, 0xe

    if-ne v2, v4, :cond_3

    .line 720
    return v3

    .line 724
    :cond_3
    return v1
.end method

.method private static isH265NalUnitDependedOn([BIILandroidx/media3/common/Format;)Z
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "format"    # Landroidx/media3/common/Format;

    .line 771
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    add-int v1, p1, p2

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 772
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v0

    .line 773
    .local v0, "header":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    iget v1, v0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    const/16 v2, 0x23

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 775
    return v3

    .line 777
    :cond_0
    iget v1, v0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    const/16 v2, 0xe

    const/4 v4, 0x1

    if-gt v1, v2, :cond_1

    iget v1, v0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 778
    .local v1, "isSubLayerNonReferencePicture":Z
    :goto_0
    if-eqz v1, :cond_2

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->temporalId:I

    iget v5, p3, Landroidx/media3/common/Format;->maxSubLayers:I

    sub-int/2addr v5, v4

    if-ne v2, v5, :cond_2

    .line 782
    return v3

    .line 784
    :cond_2
    return v4
.end method

.method public static isNalUnitSei(Landroidx/media3/common/Format;B)Z
    .locals 2
    .param p0, "format"    # Landroidx/media3/common/Format;
    .param p1, "nalUnitHeaderFirstByte"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-static {p0, v0, v1}, Landroidx/media3/container/NalUnitUtil;->isNalUnitSei(Landroidx/media3/common/Format;[BI)Z

    move-result v0

    return v0
.end method

.method public static isNalUnitSei(Landroidx/media3/common/Format;[BI)Z
    .locals 5
    .param p0, "format"    # Landroidx/media3/common/Format;
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 661
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->getNalStructureMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 663
    return v1

    .line 665
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "video/vvc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "video/avc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "video/hevc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 676
    return v1

    .line 673
    :pswitch_0
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v2, v2, 0x3

    .line 674
    .local v2, "nalUnitType":I
    const/16 v4, 0x17

    if-ne v2, v4, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 669
    .end local v2    # "nalUnitType":I
    :pswitch_1
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x7e

    shr-int/2addr v2, v3

    const/16 v4, 0x27

    if-ne v2, v4, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 667
    :pswitch_2
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x1f

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    move v1, v3

    :cond_4
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x4f62860f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "nalUnitHeaderFirstByte"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 638
    :cond_0
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x7e

    shr-int/2addr v0, v1

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 636
    :goto_0
    return v1
.end method

.method public static numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I
    .locals 2
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 739
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->getNalStructureMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    const/4 v1, 0x1

    return v1

    .line 743
    :cond_0
    const-string/jumbo v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 744
    const-string/jumbo v1, "video/vvc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 747
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 745
    :cond_2
    :goto_0
    const/4 v1, 0x2

    return v1
.end method

.method private static parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    .locals 4
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 1039
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1040
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 1041
    .local v1, "nalUnitType":I
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 1042
    .local v0, "layerId":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1043
    .local v2, "temporalId":I
    new-instance v3, Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    invoke-direct {v3, v1, v0, v2}, Landroidx/media3/container/NalUnitUtil$H265NalHeader;-><init>(III)V

    return-object v3
.end method

.method private static parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .locals 17
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "profilePresentFlag"    # Z
    .param p2, "maxSubLayersMinus1"    # I
    .param p3, "prevProfileTierLevel"    # Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 2151
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 2152
    .local v3, "generalProfileSpace":I
    const/4 v4, 0x0

    .line 2153
    .local v4, "generalTierFlag":Z
    const/4 v5, 0x0

    .line 2154
    .local v5, "generalProfileIdc":I
    const/4 v6, 0x0

    .line 2155
    .local v6, "generalProfileCompatibilityFlags":I
    const/4 v7, 0x6

    new-array v7, v7, [I

    .line 2156
    .local v7, "constraintBytes":[I
    const/4 v8, 0x2

    const/16 v9, 0x8

    if-eqz p1, :cond_3

    .line 2157
    invoke-virtual {v0, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 2158
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 2159
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 2160
    const/4 v6, 0x0

    .line 2161
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v11, 0x20

    if-ge v10, v11, :cond_1

    .line 2162
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2163
    const/4 v11, 0x1

    shl-int/2addr v11, v10

    or-int/2addr v6, v11

    .line 2161
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2166
    .end local v10    # "i":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    array-length v11, v7

    if-ge v10, v11, :cond_2

    .line 2167
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v11

    aput v11, v7, v10

    .line 2166
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    .end local v10    # "i":I
    goto :goto_2

    .line 2169
    :cond_3
    if-eqz v2, :cond_4

    .line 2170
    iget v3, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    .line 2171
    iget-boolean v4, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    .line 2172
    iget v5, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    .line 2173
    iget v6, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    .line 2174
    iget-object v7, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    goto :goto_2

    .line 2169
    :cond_4
    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    .line 2176
    .end local v3    # "generalProfileSpace":I
    .end local v4    # "generalTierFlag":Z
    .end local v5    # "generalProfileIdc":I
    .end local v6    # "generalProfileCompatibilityFlags":I
    .end local v7    # "constraintBytes":[I
    .local v11, "generalProfileSpace":I
    .local v12, "generalTierFlag":Z
    .local v13, "generalProfileIdc":I
    .local v14, "generalProfileCompatibilityFlags":I
    .local v15, "constraintBytes":[I
    :goto_2
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v16

    .line 2179
    .local v16, "generalLevelIdc":I
    const/4 v3, 0x0

    .line 2180
    .local v3, "toSkip":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_7

    .line 2181
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2182
    add-int/lit8 v3, v3, 0x58

    .line 2184
    :cond_5
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2185
    add-int/lit8 v3, v3, 0x8

    .line 2180
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2188
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2189
    if-lez v1, :cond_8

    .line 2190
    rsub-int/lit8 v4, v1, 0x8

    mul-int/2addr v4, v8

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2193
    :cond_8
    new-instance v10, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    invoke-direct/range {v10 .. v16}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;-><init>(IZII[II)V

    return-object v10
.end method

.method private static parseH265RepFormat(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265RepFormat;
    .locals 11
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2252
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 2253
    .local v1, "frameWidth":I
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 2254
    .local v0, "frameHeight":I
    const/4 v2, 0x0

    .line 2255
    .local v2, "chromaFormatIdc":I
    const/4 v3, 0x0

    .line 2256
    .local v3, "bitDepthLumaMinus8":I
    const/4 v4, 0x0

    .line 2257
    .local v4, "bitDepthChromaMinus8":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2258
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 2259
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 2260
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2262
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 2263
    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    move v6, v2

    move v7, v3

    move v8, v4

    goto :goto_0

    .line 2257
    :cond_1
    move v6, v2

    move v7, v3

    move v8, v4

    .line 2265
    .end local v2    # "chromaFormatIdc":I
    .end local v3    # "bitDepthLumaMinus8":I
    .end local v4    # "bitDepthChromaMinus8":I
    .local v6, "chromaFormatIdc":I
    .local v7, "bitDepthLumaMinus8":I
    .local v8, "bitDepthChromaMinus8":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2266
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 2267
    .local v2, "confWinLeftOffset":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 2268
    .local v3, "confWinRightOffset":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 2269
    .local v4, "confWinTopOffset":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 2270
    .local v5, "confWinBottomOffset":I
    nop

    .line 2271
    invoke-static {v1, v6, v2, v3}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    move-result v1

    .line 2273
    nop

    .line 2274
    invoke-static {v0, v6, v4, v5}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    move-result v0

    move v10, v0

    move v9, v1

    goto :goto_1

    .line 2265
    .end local v2    # "confWinLeftOffset":I
    .end local v3    # "confWinRightOffset":I
    .end local v4    # "confWinTopOffset":I
    .end local v5    # "confWinBottomOffset":I
    :cond_2
    move v10, v0

    move v9, v1

    .line 2277
    .end local v0    # "frameHeight":I
    .end local v1    # "frameWidth":I
    .local v9, "frameWidth":I
    .local v10, "frameHeight":I
    :goto_1
    new-instance v5, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    invoke-direct/range {v5 .. v10}, Landroidx/media3/container/NalUnitUtil$H265RepFormat;-><init>(IIIII)V

    return-object v5
.end method

.method private static parseH265RepFormatsAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;I)Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
    .locals 6
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "maxLayers"    # I

    .line 2223
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2224
    .local v0, "numRepFormats":I
    nop

    .line 2225
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 2226
    .local v2, "repFormats":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265RepFormat;>;"
    new-array v3, p1, [I

    .line 2227
    .local v3, "repFormatIndices":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2229
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->parseH265RepFormat(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2227
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2231
    .end local v4    # "i":I
    :cond_0
    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2232
    int-to-double v4, v0

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v4, v5, v1}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v1

    .line 2235
    .local v1, "bitLen":I
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, p1, :cond_1

    .line 2236
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    aput v5, v3, v4

    .line 2235
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2238
    .end local v1    # "bitLen":I
    .end local v4    # "i":I
    :cond_1
    goto :goto_3

    .line 2239
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 2240
    add-int/lit8 v4, v0, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v3, v1

    .line 2239
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2243
    .end local v1    # "i":I
    :cond_3
    :goto_3
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;-><init>(Ljava/util/List;[I)V

    return-object v1
.end method

.method public static parseH265Sei3dRefDisplayInfo([BII)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    .locals 23
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 1816
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x2

    .line 1817
    .local v1, "seiRbspPos":I
    add-int/lit8 v2, p2, -0x1

    .line 1818
    .local v2, "last1BitBytePos":I
    :goto_0
    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    if-le v2, v1, :cond_0

    .line 1819
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1821
    :cond_0
    aget-byte v3, v0, v2

    if-eqz v3, :cond_10

    if-gt v2, v1, :cond_1

    move/from16 v22, v1

    const/16 v20, 0x0

    goto/16 :goto_a

    .line 1825
    :cond_1
    new-instance v3, Landroidx/media3/container/ParsableNalUnitBitArray;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v3, v0, v1, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1828
    .local v3, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    :goto_1
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1830
    const/4 v5, 0x0

    .line 1831
    .local v5, "payloadType":I
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 1832
    .local v7, "nextByte":I
    :goto_2
    const/16 v8, 0xff

    if-ne v7, v8, :cond_2

    .line 1833
    add-int/lit16 v5, v5, 0xff

    .line 1834
    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    goto :goto_2

    .line 1836
    :cond_2
    add-int/2addr v5, v7

    .line 1838
    const/4 v9, 0x0

    .line 1839
    .local v9, "payloadSize":I
    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 1840
    :goto_3
    if-ne v7, v8, :cond_3

    .line 1841
    add-int/lit16 v9, v9, 0xff

    .line 1842
    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    goto :goto_3

    .line 1844
    :cond_3
    add-int/2addr v9, v7

    .line 1845
    if-eqz v9, :cond_e

    invoke-virtual {v3, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_4

    move/from16 v22, v1

    const/16 v20, 0x0

    goto/16 :goto_9

    .line 1849
    :cond_4
    const/16 v6, 0xb0

    if-ne v5, v6, :cond_d

    .line 1850
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 1851
    .local v11, "precRefDisplayWidth":I
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 1852
    .local v6, "refViewingDistanceFlag":Z
    const/4 v8, 0x0

    .line 1853
    .local v8, "precRefViewingDist":I
    if-eqz v6, :cond_5

    .line 1854
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    move v12, v8

    goto :goto_4

    .line 1853
    :cond_5
    move v12, v8

    .line 1856
    .end local v8    # "precRefViewingDist":I
    .local v12, "precRefViewingDist":I
    :goto_4
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 1857
    .local v8, "numRefDisplaysMinus1":I
    const/4 v10, -0x1

    .line 1858
    .local v10, "leftViewId":I
    const/4 v13, -0x1

    .line 1859
    .local v13, "rightViewId":I
    const/4 v14, -0x1

    .line 1860
    .local v14, "exponentRefDisplayWidth":I
    const/4 v15, -0x1

    .line 1861
    .local v15, "mantissaRefDisplayWidth":I
    const/16 v16, -0x1

    .line 1862
    .local v16, "exponentRefViewingDist":I
    const/16 v17, -0x1

    .line 1863
    .local v17, "mantissaRefViewingDist":I
    const/16 v18, 0x0

    move/from16 v19, v14

    move v14, v10

    move/from16 v10, v18

    move/from16 v18, v16

    move/from16 v16, v19

    move/from16 v19, v17

    move/from16 v17, v15

    move v15, v13

    .end local v13    # "rightViewId":I
    .local v10, "i":I
    .local v14, "leftViewId":I
    .local v15, "rightViewId":I
    .local v16, "exponentRefDisplayWidth":I
    .local v17, "mantissaRefDisplayWidth":I
    .local v18, "exponentRefViewingDist":I
    .local v19, "mantissaRefViewingDist":I
    :goto_5
    if-gt v10, v8, :cond_c

    .line 1864
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 1865
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 1866
    const/4 v13, 0x6

    const/16 v20, 0x0

    invoke-virtual {v3, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 1867
    .end local v16    # "exponentRefDisplayWidth":I
    .local v4, "exponentRefDisplayWidth":I
    const/16 v13, 0x3f

    if-ne v4, v13, :cond_6

    .line 1868
    return-object v20

    .line 1871
    :cond_6
    const/4 v13, 0x0

    if-nez v4, :cond_7

    .line 1872
    add-int/lit8 v0, v11, -0x1e

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6

    .line 1873
    :cond_7
    add-int v0, v4, v11

    add-int/lit8 v0, v0, -0x1f

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_6
    nop

    .line 1874
    .local v0, "refDispWidthBits":I
    nop

    .line 1875
    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v17

    .line 1876
    if-eqz v6, :cond_a

    .line 1877
    const/4 v13, 0x6

    invoke-virtual {v3, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    .line 1878
    .end local v18    # "exponentRefViewingDist":I
    .local v13, "exponentRefViewingDist":I
    move/from16 v21, v0

    const/16 v0, 0x3f

    .end local v0    # "refDispWidthBits":I
    .local v21, "refDispWidthBits":I
    if-ne v13, v0, :cond_8

    .line 1879
    return-object v20

    .line 1882
    :cond_8
    if-nez v13, :cond_9

    .line 1883
    add-int/lit8 v0, v12, -0x1e

    move/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "seiRbspPos":I
    .local v22, "seiRbspPos":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_7

    .line 1884
    .end local v22    # "seiRbspPos":I
    .restart local v1    # "seiRbspPos":I
    :cond_9
    move/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "seiRbspPos":I
    .restart local v22    # "seiRbspPos":I
    add-int v0, v13, v12

    add-int/lit8 v0, v0, -0x1f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_7
    nop

    .line 1885
    .local v0, "refViewDistBits":I
    nop

    .line 1886
    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    move/from16 v19, v1

    move/from16 v18, v13

    .end local v19    # "mantissaRefViewingDist":I
    .local v1, "mantissaRefViewingDist":I
    goto :goto_8

    .line 1876
    .end local v13    # "exponentRefViewingDist":I
    .end local v21    # "refDispWidthBits":I
    .end local v22    # "seiRbspPos":I
    .local v0, "refDispWidthBits":I
    .local v1, "seiRbspPos":I
    .restart local v18    # "exponentRefViewingDist":I
    .restart local v19    # "mantissaRefViewingDist":I
    :cond_a
    move/from16 v21, v0

    move/from16 v22, v1

    .line 1888
    .end local v0    # "refDispWidthBits":I
    .end local v1    # "seiRbspPos":I
    .restart local v21    # "refDispWidthBits":I
    .restart local v22    # "seiRbspPos":I
    :goto_8
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1889
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1863
    .end local v21    # "refDispWidthBits":I
    :cond_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v16, v4

    move/from16 v1, v22

    goto :goto_5

    .line 1893
    .end local v4    # "exponentRefDisplayWidth":I
    .end local v10    # "i":I
    .end local v22    # "seiRbspPos":I
    .restart local v1    # "seiRbspPos":I
    .restart local v16    # "exponentRefDisplayWidth":I
    :cond_c
    new-instance v10, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    add-int/lit8 v13, v8, 0x1

    invoke-direct/range {v10 .. v19}, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;-><init>(IIIIIIIII)V

    return-object v10

    .line 1904
    .end local v6    # "refViewingDistanceFlag":Z
    .end local v8    # "numRefDisplaysMinus1":I
    .end local v11    # "precRefDisplayWidth":I
    .end local v12    # "precRefViewingDist":I
    .end local v14    # "leftViewId":I
    .end local v15    # "rightViewId":I
    .end local v16    # "exponentRefDisplayWidth":I
    .end local v17    # "mantissaRefDisplayWidth":I
    .end local v18    # "exponentRefViewingDist":I
    .end local v19    # "mantissaRefViewingDist":I
    :cond_d
    move/from16 v22, v1

    const/16 v20, 0x0

    .end local v1    # "seiRbspPos":I
    .restart local v22    # "seiRbspPos":I
    mul-int/lit8 v0, v9, 0x8

    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1906
    .end local v5    # "payloadType":I
    .end local v7    # "nextByte":I
    .end local v9    # "payloadSize":I
    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 1845
    .end local v22    # "seiRbspPos":I
    .restart local v1    # "seiRbspPos":I
    .restart local v5    # "payloadType":I
    .restart local v7    # "nextByte":I
    .restart local v9    # "payloadSize":I
    :cond_e
    move/from16 v22, v1

    const/16 v20, 0x0

    .line 1846
    .end local v1    # "seiRbspPos":I
    .restart local v22    # "seiRbspPos":I
    :goto_9
    return-object v20

    .line 1907
    .end local v5    # "payloadType":I
    .end local v7    # "nextByte":I
    .end local v9    # "payloadSize":I
    .end local v22    # "seiRbspPos":I
    .restart local v1    # "seiRbspPos":I
    :cond_f
    const/16 v20, 0x0

    return-object v20

    .line 1821
    .end local v3    # "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    :cond_10
    move/from16 v22, v1

    const/16 v20, 0x0

    .line 1822
    .end local v1    # "seiRbspPos":I
    .restart local v22    # "seiRbspPos":I
    :goto_a
    return-object v20
.end method

.method public static parseH265SpsNalUnit([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 2
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I
    .param p3, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1543
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1544
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v0

    .line 1546
    .local v0, "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1, p2, v0, p3}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BIILandroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v1

    return-object v1
.end method

.method public static parseH265SpsNalUnitPayload([BIILandroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 29
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I
    .param p3, "nalHeader"    # Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    .param p4, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1566
    move-object/from16 v1, p3

    move-object/from16 v0, p4

    new-instance v2, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1567
    .local v2, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1570
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 1571
    .local v7, "maxSubLayersMinus1":I
    iget v8, v1, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x7

    if-ne v7, v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move/from16 v17, v8

    .line 1573
    .local v17, "multiLayerExtSpsFlag":Z
    const/4 v8, 0x0

    .line 1574
    .local v8, "layerIdInVps":I
    if-eqz v0, :cond_1

    iget-object v11, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1575
    iget v11, v1, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    iget-object v12, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1576
    .local v11, "layerId":I
    iget-object v12, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v12, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v8, v12, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    move/from16 v18, v8

    goto :goto_1

    .line 1578
    .end local v11    # "layerId":I
    :cond_1
    move/from16 v18, v8

    .end local v8    # "layerIdInVps":I
    .local v18, "layerIdInVps":I
    :goto_1
    const/4 v8, 0x0

    .line 1579
    .local v8, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    if-nez v17, :cond_2

    .line 1580
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1581
    nop

    .line 1582
    const/4 v11, 0x0

    invoke-static {v2, v10, v7, v11}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v8

    goto :goto_2

    .line 1587
    :cond_2
    if-eqz v0, :cond_3

    .line 1588
    iget-object v11, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v11, v11, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->indices:[I

    aget v11, v11, v18

    .line 1589
    .local v11, "profileTierLevelIdx":I
    iget-object v12, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v12, v12, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v12

    if-le v12, v11, :cond_3

    .line 1590
    iget-object v12, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v12, v12, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Lcom/google/common/collect/ImmutableList;

    .line 1591
    invoke-virtual {v12, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 1595
    .end local v11    # "profileTierLevelIdx":I
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 1596
    .local v11, "seqParameterSetId":I
    const/4 v12, 0x0

    .line 1597
    .local v12, "chromaFormatIdc":I
    const/4 v13, 0x0

    .line 1598
    .local v13, "frameWidth":I
    const/4 v14, 0x0

    .line 1599
    .local v14, "frameHeight":I
    const/4 v15, 0x0

    .line 1600
    .local v15, "decodedWidth":I
    const/16 v16, 0x0

    .line 1601
    .local v16, "decodedHeight":I
    const/16 v19, 0x0

    .line 1602
    .local v19, "bitDepthLumaMinus8":I
    const/16 v20, 0x0

    .line 1603
    .local v20, "bitDepthChromaMinus8":I
    const/16 v21, -0x1

    .line 1604
    .local v21, "spsRepFormatIdx":I
    const/16 v9, 0x8

    if-eqz v17, :cond_8

    .line 1605
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1606
    invoke-virtual {v2, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v21

    move/from16 v10, v21

    goto :goto_3

    .line 1605
    :cond_4
    move/from16 v10, v21

    .line 1608
    .end local v21    # "spsRepFormatIdx":I
    .local v10, "spsRepFormatIdx":I
    :goto_3
    if-eqz v0, :cond_7

    iget-object v9, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    if-eqz v9, :cond_7

    .line 1609
    const/4 v9, -0x1

    if-ne v10, v9, :cond_5

    .line 1610
    iget-object v6, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    iget-object v6, v6, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->indices:[I

    aget v6, v6, v18

    .end local v10    # "spsRepFormatIdx":I
    .local v6, "spsRepFormatIdx":I
    goto :goto_4

    .line 1609
    .end local v6    # "spsRepFormatIdx":I
    .restart local v10    # "spsRepFormatIdx":I
    :cond_5
    move v6, v10

    .line 1612
    .end local v10    # "spsRepFormatIdx":I
    .restart local v6    # "spsRepFormatIdx":I
    :goto_4
    if-eq v6, v9, :cond_6

    iget-object v9, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    iget-object v9, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    .line 1613
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    if-le v9, v6, :cond_6

    .line 1614
    iget-object v9, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    iget-object v9, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v9, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    .line 1615
    .local v9, "repFormat":Landroidx/media3/container/NalUnitUtil$H265RepFormat;
    iget v12, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->chromaFormatIdc:I

    .line 1616
    iget v15, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->width:I

    .line 1617
    iget v10, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->height:I

    .line 1618
    .end local v16    # "decodedHeight":I
    .local v10, "decodedHeight":I
    move v13, v15

    .line 1619
    move v14, v10

    .line 1620
    iget v1, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthLumaMinus8:I

    .line 1621
    .end local v19    # "bitDepthLumaMinus8":I
    .local v1, "bitDepthLumaMinus8":I
    iget v9, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthChromaMinus8:I

    .line 1622
    .end local v20    # "bitDepthChromaMinus8":I
    .local v9, "bitDepthChromaMinus8":I
    move/from16 v19, v1

    move/from16 v21, v6

    move v6, v9

    move/from16 v16, v10

    move v10, v15

    goto :goto_6

    .line 1649
    .end local v1    # "bitDepthLumaMinus8":I
    .end local v9    # "bitDepthChromaMinus8":I
    .end local v10    # "decodedHeight":I
    .restart local v16    # "decodedHeight":I
    .restart local v19    # "bitDepthLumaMinus8":I
    .restart local v20    # "bitDepthChromaMinus8":I
    :cond_6
    move/from16 v21, v6

    move v10, v15

    move/from16 v6, v20

    goto :goto_6

    .end local v6    # "spsRepFormatIdx":I
    .local v10, "spsRepFormatIdx":I
    :cond_7
    move/from16 v21, v10

    move v10, v15

    move/from16 v6, v20

    goto :goto_6

    .line 1625
    .end local v10    # "spsRepFormatIdx":I
    .restart local v21    # "spsRepFormatIdx":I
    :cond_8
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 1626
    const/4 v1, 0x3

    if-ne v12, v1, :cond_9

    .line 1627
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1629
    :cond_9
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 1630
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 1631
    .end local v16    # "decodedHeight":I
    .local v1, "decodedHeight":I
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1632
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 1633
    .local v6, "confWinLeftOffset":I
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 1634
    .local v9, "confWinRightOffset":I
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 1635
    .local v10, "confWinTopOffset":I
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 1636
    .local v3, "confWinBottomOffset":I
    nop

    .line 1637
    invoke-static {v15, v12, v6, v9}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    move-result v13

    .line 1639
    nop

    .line 1640
    invoke-static {v1, v12, v10, v3}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    move-result v3

    .line 1642
    .end local v6    # "confWinLeftOffset":I
    .end local v9    # "confWinRightOffset":I
    .end local v10    # "confWinTopOffset":I
    .end local v14    # "frameHeight":I
    .local v3, "frameHeight":I
    move v14, v3

    goto :goto_5

    .line 1643
    .end local v3    # "frameHeight":I
    .restart local v14    # "frameHeight":I
    :cond_a
    move v3, v15

    .line 1644
    .end local v13    # "frameWidth":I
    .local v3, "frameWidth":I
    move v6, v1

    move v13, v3

    move v14, v6

    .line 1646
    .end local v3    # "frameWidth":I
    .restart local v13    # "frameWidth":I
    :goto_5
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 1647
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    move/from16 v16, v1

    move v10, v15

    move/from16 v6, v20

    .line 1649
    .end local v1    # "decodedHeight":I
    .end local v15    # "decodedWidth":I
    .end local v20    # "bitDepthChromaMinus8":I
    .local v6, "bitDepthChromaMinus8":I
    .local v10, "decodedWidth":I
    .restart local v16    # "decodedHeight":I
    :goto_6
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 1650
    .local v20, "log2MaxPicOrderCntLsbMinus4":I
    const/4 v1, -0x1

    .line 1651
    .local v1, "maxNumReorderPics":I
    if-nez v17, :cond_c

    .line 1653
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v9, 0x0

    goto :goto_7

    :cond_b
    move v9, v7

    .local v9, "i":I
    :goto_7
    if-gt v9, v7, :cond_c

    .line 1654
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1656
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1657
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1653
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1660
    .end local v9    # "i":I
    :cond_c
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1661
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1662
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1663
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1664
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1665
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1666
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1667
    const/4 v3, 0x0

    .line 1668
    .local v3, "inferScalingListFlag":Z
    if-eqz v17, :cond_d

    .line 1669
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 1671
    :cond_d
    if-eqz v3, :cond_e

    .line 1672
    const/4 v9, 0x6

    invoke-virtual {v2, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_8

    .line 1673
    :cond_e
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1674
    invoke-static {v2}, Landroidx/media3/container/NalUnitUtil;->skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 1677
    .end local v3    # "inferScalingListFlag":Z
    :cond_f
    :goto_8
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1678
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1680
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1681
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1682
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1683
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1685
    :cond_10
    invoke-static {v2}, Landroidx/media3/container/NalUnitUtil;->skipH265ShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 1686
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1687
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 1688
    .local v9, "numLongTermRefPicsSps":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_9
    if-ge v15, v9, :cond_11

    .line 1689
    add-int/lit8 v22, v20, 0x4

    .line 1691
    .local v22, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v3, v22, 0x1

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1688
    .end local v22    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x2

    goto :goto_9

    .line 1694
    .end local v9    # "numLongTermRefPicsSps":I
    .end local v15    # "i":I
    :cond_11
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1695
    const/4 v9, -0x1

    .line 1696
    .local v9, "colorSpace":I
    const/4 v15, -0x1

    .line 1697
    .local v15, "colorRange":I
    const/16 v22, -0x1

    .line 1698
    .local v22, "colorTransfer":I
    const/high16 v24, 0x3f800000    # 1.0f

    .line 1699
    .local v24, "pixelWidthHeightRatio":F
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 1700
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v25

    if-eqz v25, :cond_15

    .line 1701
    move/from16 v26, v1

    const/16 v3, 0x8

    .end local v1    # "maxNumReorderPics":I
    .local v26, "maxNumReorderPics":I
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 1702
    .local v1, "aspectRatioIdc":I
    const/16 v3, 0xff

    if-ne v1, v3, :cond_13

    .line 1703
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 1704
    .local v4, "sarWidth":I
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 1705
    .local v3, "sarHeight":I
    if-eqz v4, :cond_12

    if-eqz v3, :cond_12

    .line 1706
    int-to-float v5, v4

    move/from16 v27, v4

    .end local v4    # "sarWidth":I
    .local v27, "sarWidth":I
    int-to-float v4, v3

    div-float v24, v5, v4

    goto :goto_a

    .line 1705
    .end local v27    # "sarWidth":I
    .restart local v4    # "sarWidth":I
    :cond_12
    move/from16 v27, v4

    .line 1708
    .end local v3    # "sarHeight":I
    .end local v4    # "sarWidth":I
    :goto_a
    goto :goto_b

    :cond_13
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v3, v3

    if-ge v1, v3, :cond_14

    .line 1709
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v3, v3, v1

    move/from16 v24, v3

    .end local v24    # "pixelWidthHeightRatio":F
    .local v3, "pixelWidthHeightRatio":F
    goto :goto_b

    .line 1711
    .end local v3    # "pixelWidthHeightRatio":F
    .restart local v24    # "pixelWidthHeightRatio":F
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NalUnitUtil"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1700
    .end local v26    # "maxNumReorderPics":I
    .local v1, "maxNumReorderPics":I
    :cond_15
    move/from16 v26, v1

    .line 1714
    .end local v1    # "maxNumReorderPics":I
    .restart local v26    # "maxNumReorderPics":I
    :goto_b
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1715
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1717
    :cond_16
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1718
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1720
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v25, 0x1

    goto :goto_c

    :cond_17
    const/16 v25, 0x2

    .line 1721
    .end local v15    # "colorRange":I
    .local v25, "colorRange":I
    :goto_c
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1722
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 1723
    .local v1, "colorPrimaries":I
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 1724
    .local v4, "transferCharacteristics":I
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1726
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v3

    .line 1727
    .end local v9    # "colorSpace":I
    .local v3, "colorSpace":I
    nop

    .line 1728
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    .line 1729
    .end local v4    # "transferCharacteristics":I
    .end local v22    # "colorTransfer":I
    .local v1, "colorTransfer":I
    move/from16 v22, v1

    move v9, v3

    move/from16 v15, v25

    goto :goto_d

    .line 1721
    .end local v1    # "colorTransfer":I
    .end local v3    # "colorSpace":I
    .restart local v9    # "colorSpace":I
    .restart local v22    # "colorTransfer":I
    :cond_18
    move/from16 v15, v25

    goto :goto_d

    .line 1730
    .end local v25    # "colorRange":I
    .restart local v15    # "colorRange":I
    :cond_19
    if-eqz v0, :cond_1a

    iget-object v1, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    if-eqz v1, :cond_1a

    .line 1731
    iget-object v1, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    iget-object v1, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->indices:[I

    aget v1, v1, v18

    .line 1732
    .local v1, "videoSignalInfoIdx":I
    iget-object v3, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    iget-object v3, v3, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-le v3, v1, :cond_1a

    .line 1733
    iget-object v3, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    iget-object v3, v3, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Lcom/google/common/collect/ImmutableList;

    .line 1734
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    .line 1735
    .local v3, "videoSignalInfo":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;
    iget v4, v3, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorSpace:I

    .line 1736
    .end local v9    # "colorSpace":I
    .local v4, "colorSpace":I
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorRange:I

    .line 1737
    .end local v15    # "colorRange":I
    .local v5, "colorRange":I
    iget v9, v3, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorTransfer:I

    move v15, v5

    move/from16 v22, v9

    move v9, v4

    .line 1740
    .end local v1    # "videoSignalInfoIdx":I
    .end local v3    # "videoSignalInfo":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;
    .end local v4    # "colorSpace":I
    .end local v5    # "colorRange":I
    .restart local v9    # "colorSpace":I
    .restart local v15    # "colorRange":I
    :cond_1a
    :goto_d
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1741
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1742
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1744
    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1745
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1748
    mul-int/lit8 v14, v14, 0x2

    move/from16 v28, v14

    move v14, v9

    move/from16 v9, v28

    goto :goto_e

    .line 1745
    :cond_1c
    move/from16 v28, v14

    move v14, v9

    move/from16 v9, v28

    goto :goto_e

    .line 1699
    .end local v26    # "maxNumReorderPics":I
    .local v1, "maxNumReorderPics":I
    :cond_1d
    move/from16 v26, v1

    .end local v1    # "maxNumReorderPics":I
    .restart local v26    # "maxNumReorderPics":I
    move/from16 v28, v14

    move v14, v9

    move/from16 v9, v28

    .line 1752
    .local v9, "frameHeight":I
    .local v14, "colorSpace":I
    :goto_e
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-object/from16 v1, p3

    move-object v3, v8

    move v4, v12

    move v8, v13

    move/from16 v5, v19

    move/from16 v12, v24

    move/from16 v13, v26

    move-object/from16 v19, v2

    move v2, v7

    move v7, v11

    move/from16 v11, v16

    move/from16 v16, v22

    .end local v22    # "colorTransfer":I
    .end local v24    # "pixelWidthHeightRatio":F
    .end local v26    # "maxNumReorderPics":I
    .local v2, "maxSubLayersMinus1":I
    .local v3, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v4, "chromaFormatIdc":I
    .local v5, "bitDepthLumaMinus8":I
    .local v7, "seqParameterSetId":I
    .local v8, "frameWidth":I
    .local v11, "decodedHeight":I
    .local v12, "pixelWidthHeightRatio":F
    .local v13, "maxNumReorderPics":I
    .local v16, "colorTransfer":I
    .local v19, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-direct/range {v0 .. v16}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;ILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIIIFIIII)V

    .end local v13    # "maxNumReorderPics":I
    .restart local v26    # "maxNumReorderPics":I
    return-object v0
.end method

.method private static parseH265VideoSignalInfo(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;
    .locals 4
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2410
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2413
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2415
    .local v0, "colorRange":I
    :goto_0
    nop

    .line 2416
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    .line 2418
    .local v2, "colorSpace":I
    nop

    .line 2420
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 2419
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    .line 2421
    .local v3, "colorTransfer":I
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2423
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    invoke-direct {v1, v2, v0, v3}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;-><init>(III)V

    return-object v1
.end method

.method private static parseH265VideoSignalInfosAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;II[I)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    .locals 11
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "maxLayers"    # I
    .param p2, "numLayerSets"    # I
    .param p3, "maxSubLayersInLayerSet"    # [I

    .line 2350
    const/4 v0, 0x1

    .line 2351
    .local v0, "crossLayerIrapAlignedFlag":Z
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2352
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .line 2354
    :cond_0
    if-eqz v0, :cond_1

    .line 2355
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2358
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 2359
    .local v1, "bitRatePresentVpsFlag":Z
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 2360
    .local v2, "picRatePresentVpsFlag":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_8

    .line 2363
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_8

    .line 2364
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    aget v5, p3, v3

    if-ge v4, v5, :cond_7

    .line 2365
    const/4 v5, 0x0

    .line 2366
    .local v5, "bitRatePresentFlag":Z
    const/4 v6, 0x0

    .line 2367
    .local v6, "picRatePresentFlag":Z
    if-eqz v1, :cond_3

    .line 2368
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    .line 2370
    :cond_3
    if-eqz v2, :cond_4

    .line 2371
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 2373
    :cond_4
    if-eqz v5, :cond_5

    .line 2374
    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2376
    :cond_5
    if-eqz v6, :cond_6

    .line 2377
    const/16 v7, 0x12

    invoke-virtual {p0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2364
    .end local v5    # "bitRatePresentFlag":Z
    .end local v6    # "picRatePresentFlag":Z
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2363
    .end local v4    # "j":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2382
    .end local v3    # "i":I
    :cond_8
    move v3, p1

    .line 2383
    .local v3, "numVideoSignalInfos":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 2384
    .local v4, "videoSignalInfoIdxPresentFlag":Z
    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    .line 2385
    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 2387
    :cond_9
    nop

    .line 2388
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 2389
    .local v7, "videoSignalInfos":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;>;"
    new-array v8, p1, [I

    .line 2390
    .local v8, "videoSignalInfoIdices":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_a

    .line 2392
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->parseH265VideoSignalInfo(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2390
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2394
    .end local v9    # "i":I
    :cond_a
    if-eqz v4, :cond_b

    if-le v3, v6, :cond_b

    .line 2397
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, p1, :cond_b

    .line 2398
    invoke-virtual {p0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    aput v9, v8, v6

    .line 2397
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2401
    .end local v6    # "i":I
    :cond_b
    new-instance v5, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;-><init>(Ljava/util/List;[I)V

    return-object v5
.end method

.method public static parseH265VpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .locals 3
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 1026
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1027
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v1

    .line 1028
    .local v1, "nalHeader":Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    invoke-static {v0, v1}, Landroidx/media3/container/NalUnitUtil;->parseH265VpsNalUnitPayload(Landroidx/media3/container/ParsableNalUnitBitArray;Landroidx/media3/container/NalUnitUtil$H265NalHeader;)Landroidx/media3/container/NalUnitUtil$H265VpsData;

    move-result-object v2

    return-object v2
.end method

.method private static parseH265VpsNalUnitPayload(Landroidx/media3/container/ParsableNalUnitBitArray;Landroidx/media3/container/NalUnitUtil$H265NalHeader;)Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .locals 67
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "nalHeader"    # Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 1052
    move-object/from16 v0, p0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1053
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 1054
    .local v2, "baseLayerInternalFlag":Z
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 1055
    .local v3, "baseLayerAvailableFlag":Z
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 1057
    .local v5, "maxLayers":I
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 1058
    .local v8, "maxSubLayersMinus1":I
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1060
    nop

    .line 1061
    const/4 v9, 0x0

    invoke-static {v0, v6, v8, v9}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v9

    .line 1068
    .local v9, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    move v10, v8

    .local v10, "i":I
    :goto_0
    if-gt v10, v8, :cond_1

    .line 1069
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1070
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1071
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1068
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1074
    .end local v10    # "i":I
    :cond_1
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 1075
    .local v10, "maxLayerId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/2addr v12, v6

    .line 1077
    .local v12, "numLayerSets":I
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 1078
    .local v13, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    new-instance v14, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    new-array v15, v6, [I

    invoke-direct {v14, v13, v15}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    move-object/from16 v19, v14

    .line 1083
    .local v19, "baseLayerProfileTierLevelsAndIndices":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;
    const/4 v14, 0x2

    if-lt v5, v14, :cond_2

    if-lt v12, v14, :cond_2

    move v15, v6

    goto :goto_1

    :cond_2
    move v15, v11

    .line 1086
    .local v15, "haveEnoughLayerSets":Z
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move/from16 v16, v6

    goto :goto_2

    :cond_3
    move/from16 v16, v11

    :goto_2
    move/from16 v22, v16

    .line 1089
    .local v22, "baseLayerIncluded":Z
    add-int/lit8 v1, v10, 0x1

    if-lt v1, v5, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    move v1, v11

    .line 1090
    .local v1, "haveLargeEnoughMaxLayerIdInNuh":Z
    :goto_3
    if-eqz v15, :cond_5c

    if-eqz v22, :cond_5c

    if-nez v1, :cond_5

    move/from16 v25, v1

    move/from16 v34, v2

    move/from16 v41, v3

    move/from16 v54, v8

    move-object/from16 v55, v9

    move/from16 v48, v10

    move-object/from16 v26, v13

    move/from16 v61, v15

    goto/16 :goto_42

    .line 1101
    :cond_5
    add-int/lit8 v17, v10, 0x1

    move/from16 v18, v6

    new-array v6, v14, [I

    aput v17, v6, v18

    aput v12, v6, v11

    move/from16 v17, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 1102
    .local v4, "layerSetLayerIdList":[[I
    new-array v6, v12, [I

    .line 1103
    .local v6, "numLayersInIdList":[I
    new-array v14, v12, [I

    .line 1105
    .local v14, "layerSetMaxLayerId":[I
    aget-object v21, v4, v11

    aput v11, v21, v11

    .line 1106
    aput v18, v6, v11

    .line 1107
    aput v11, v14, v11

    .line 1109
    const/16 v21, 0x1

    move/from16 v7, v21

    .local v7, "i":I
    :goto_4
    if-ge v7, v12, :cond_8

    .line 1110
    const/16 v21, 0x0

    .line 1111
    .local v21, "n":I
    const/16 v24, 0x0

    move/from16 v11, v24

    .local v11, "j":I
    :goto_5
    if-gt v11, v10, :cond_7

    .line 1112
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1113
    aget-object v25, v4, v7

    add-int/lit8 v26, v21, 0x1

    .end local v21    # "n":I
    .local v26, "n":I
    aput v11, v25, v21

    .line 1114
    aput v11, v14, v7

    move/from16 v21, v26

    .line 1116
    .end local v26    # "n":I
    .restart local v21    # "n":I
    :cond_6
    aput v21, v6, v7

    .line 1111
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1109
    .end local v11    # "j":I
    .end local v21    # "n":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    goto :goto_4

    .line 1120
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1121
    const/16 v7, 0x40

    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1122
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1123
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1125
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 1126
    .local v7, "numHrdParameters":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v7, :cond_c

    .line 1127
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1128
    if-eqz v11, :cond_b

    .line 1129
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v21

    if-eqz v21, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v25, v1

    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    move/from16 v25, v1

    move/from16 v1, v18

    .line 1128
    .end local v1    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .local v25, "haveLargeEnoughMaxLayerIdInNuh":Z
    :goto_8
    invoke-static {v0, v1, v8}, Landroidx/media3/container/NalUnitUtil;->skipH265HrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;ZI)V

    .line 1126
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v25

    goto :goto_6

    .end local v25    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .restart local v1    # "haveLargeEnoughMaxLayerIdInNuh":Z
    :cond_c
    move/from16 v25, v1

    .end local v1    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .restart local v25    # "haveLargeEnoughMaxLayerIdInNuh":Z
    goto :goto_9

    .line 1120
    .end local v7    # "numHrdParameters":I
    .end local v11    # "i":I
    .end local v25    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .restart local v1    # "haveLargeEnoughMaxLayerIdInNuh":Z
    :cond_d
    move/from16 v25, v1

    .line 1134
    .end local v1    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .restart local v25    # "haveLargeEnoughMaxLayerIdInNuh":Z
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1136
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1144
    :cond_e
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    .line 1147
    nop

    .line 1148
    const/4 v1, 0x0

    invoke-static {v0, v1, v8, v9}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v7

    .line 1151
    .local v7, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 1152
    .local v1, "splittingFlag":Z
    const/16 v11, 0x10

    move/from16 v32, v1

    .end local v1    # "splittingFlag":Z
    .local v32, "splittingFlag":Z
    new-array v1, v11, [Z

    .line 1153
    .local v1, "scalabilityMaskFlag":[Z
    const/16 v21, 0x0

    .line 1154
    .local v21, "numScalabilityTypes":I
    const/16 v26, 0x0

    move-object/from16 v33, v1

    move/from16 v34, v2

    move/from16 v1, v21

    move/from16 v2, v26

    .end local v21    # "numScalabilityTypes":I
    .local v1, "numScalabilityTypes":I
    .local v2, "i":I
    .local v33, "scalabilityMaskFlag":[Z
    .local v34, "baseLayerInternalFlag":Z
    :goto_a
    if-ge v2, v11, :cond_10

    .line 1155
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v21

    aput-boolean v21, v33, v2

    .line 1156
    aget-boolean v21, v33, v2

    if-eqz v21, :cond_f

    .line 1157
    add-int/lit8 v1, v1, 0x1

    .line 1154
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1164
    .end local v2    # "i":I
    :cond_10
    if-eqz v1, :cond_5b

    aget-boolean v2, v33, v18

    if-nez v2, :cond_11

    move/from16 v39, v1

    move/from16 v41, v3

    move-object/from16 v42, v4

    move-object/from16 v23, v7

    move/from16 v54, v8

    move-object/from16 v55, v9

    move/from16 v48, v10

    move-object/from16 v26, v13

    move-object/from16 v60, v14

    move/from16 v61, v15

    goto/16 :goto_41

    .line 1173
    :cond_11
    new-array v2, v1, [I

    .line 1174
    .local v2, "dimensionIdLenMinus1":[I
    const/16 v21, 0x0

    move/from16 v11, v21

    .restart local v11    # "i":I
    :goto_b
    move-object/from16 v35, v2

    .end local v2    # "dimensionIdLenMinus1":[I
    .local v35, "dimensionIdLenMinus1":[I
    sub-int v2, v1, v32

    if-ge v11, v2, :cond_12

    .line 1175
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v21

    aput v21, v35, v11

    .line 1174
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v35

    goto :goto_b

    .line 1177
    .end local v11    # "i":I
    :cond_12
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    .line 1178
    .local v2, "dimBitOffset":[I
    if-eqz v32, :cond_15

    .line 1179
    const/4 v11, 0x1

    .restart local v11    # "i":I
    :goto_c
    if-ge v11, v1, :cond_14

    .line 1180
    const/16 v21, 0x0

    move-object/from16 v36, v2

    move/from16 v2, v21

    .local v2, "j":I
    .local v36, "dimBitOffset":[I
    :goto_d
    if-ge v2, v11, :cond_13

    .line 1181
    aget v21, v36, v11

    aget v27, v35, v2

    add-int/lit8 v27, v27, 0x1

    add-int v21, v21, v27

    aput v21, v36, v11

    .line 1180
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1179
    .end local v2    # "j":I
    :cond_13
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v36

    goto :goto_c

    .end local v36    # "dimBitOffset":[I
    .local v2, "dimBitOffset":[I
    :cond_14
    move-object/from16 v36, v2

    .line 1184
    .end local v2    # "dimBitOffset":[I
    .end local v11    # "i":I
    .restart local v36    # "dimBitOffset":[I
    aput v17, v36, v1

    goto :goto_e

    .line 1178
    .end local v36    # "dimBitOffset":[I
    .restart local v2    # "dimBitOffset":[I
    :cond_15
    move-object/from16 v36, v2

    .line 1187
    .end local v2    # "dimBitOffset":[I
    .restart local v36    # "dimBitOffset":[I
    :goto_e
    const/4 v2, 0x2

    new-array v11, v2, [I

    aput v1, v11, v18

    const/16 v24, 0x0

    aput v5, v11, v24

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 1190
    .local v2, "dimensionId":[[I
    new-array v11, v5, [I

    .line 1191
    .local v11, "layerIdInNuh":[I
    aput v24, v11, v24

    .line 1192
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v37

    .line 1193
    .local v37, "nuhLayerIdPresentFlag":Z
    const/16 v21, 0x1

    move-object/from16 v38, v2

    move/from16 v2, v21

    .local v2, "i":I
    .local v38, "dimensionId":[[I
    :goto_f
    if-ge v2, v5, :cond_1a

    .line 1194
    if-eqz v37, :cond_16

    .line 1195
    move/from16 v21, v2

    move/from16 v2, v17

    .end local v2    # "i":I
    .local v21, "i":I
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v17

    aput v17, v11, v21

    goto :goto_10

    .line 1197
    .end local v21    # "i":I
    .restart local v2    # "i":I
    :cond_16
    move/from16 v21, v2

    move/from16 v2, v17

    .end local v2    # "i":I
    .restart local v21    # "i":I
    aput v21, v11, v21

    .line 1199
    :goto_10
    if-nez v32, :cond_18

    .line 1200
    const/16 v17, 0x0

    move/from16 v2, v17

    .local v2, "j":I
    :goto_11
    if-ge v2, v1, :cond_17

    .line 1201
    aget-object v17, v38, v21

    aget v28, v35, v2

    move/from16 v29, v2

    .end local v2    # "j":I
    .local v29, "j":I
    add-int/lit8 v2, v28, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    aput v2, v17, v29

    .line 1200
    add-int/lit8 v2, v29, 0x1

    .end local v29    # "j":I
    .restart local v2    # "j":I
    goto :goto_11

    :cond_17
    move/from16 v29, v2

    .end local v2    # "j":I
    goto :goto_13

    .line 1204
    :cond_18
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_12
    if-ge v2, v1, :cond_19

    .line 1205
    aget-object v17, v38, v21

    aget v28, v11, v21

    add-int/lit8 v29, v2, 0x1

    aget v29, v36, v29

    shl-int v29, v18, v29

    add-int/lit8 v29, v29, -0x1

    and-int v28, v28, v29

    aget v29, v36, v2

    shr-int v28, v28, v29

    aput v28, v17, v2

    .line 1204
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1193
    .end local v2    # "j":I
    :cond_19
    :goto_13
    add-int/lit8 v2, v21, 0x1

    const/16 v17, 0x6

    .end local v21    # "i":I
    .local v2, "i":I
    goto :goto_f

    :cond_1a
    move/from16 v21, v2

    .line 1212
    .end local v2    # "i":I
    add-int/lit8 v2, v10, 0x1

    new-array v2, v2, [I

    .line 1213
    .local v2, "viewOrderIdx":[I
    const/16 v17, 0x1

    .line 1214
    .local v17, "numViews":I
    const/16 v21, 0x0

    move/from16 v39, v1

    move-object/from16 v40, v2

    move/from16 v1, v17

    move/from16 v2, v21

    .end local v17    # "numViews":I
    .local v1, "numViews":I
    .local v2, "i":I
    .local v39, "numScalabilityTypes":I
    .local v40, "viewOrderIdx":[I
    :goto_14
    move/from16 v41, v3

    .end local v3    # "baseLayerAvailableFlag":Z
    .local v41, "baseLayerAvailableFlag":Z
    const/4 v3, -0x1

    if-ge v2, v5, :cond_22

    .line 1215
    aget v17, v11, v2

    aput v3, v40, v17

    .line 1217
    const/4 v3, 0x0

    .local v3, "scalabilityMaskFlagIndex":I
    const/16 v17, 0x0

    .line 1218
    .local v17, "j":I
    :goto_15
    move-object/from16 v42, v4

    const/16 v4, 0x10

    .end local v4    # "layerSetLayerIdList":[[I
    .local v42, "layerSetLayerIdList":[[I
    if-ge v3, v4, :cond_1d

    .line 1220
    aget-boolean v21, v33, v3

    if-eqz v21, :cond_1c

    .line 1221
    move/from16 v4, v18

    if-ne v3, v4, :cond_1b

    .line 1226
    aget v4, v11, v2

    aget-object v21, v38, v2

    aget v21, v21, v17

    aput v21, v40, v4

    .line 1228
    :cond_1b
    add-int/lit8 v17, v17, 0x1

    .line 1219
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v42

    const/16 v18, 0x1

    goto :goto_15

    .line 1231
    .end local v3    # "scalabilityMaskFlagIndex":I
    .end local v17    # "j":I
    :cond_1d
    if-lez v2, :cond_20

    .line 1232
    const/4 v3, 0x1

    .line 1233
    .local v3, "newView":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_16
    if-ge v4, v2, :cond_1f

    .line 1234
    aget v17, v11, v2

    move/from16 v21, v2

    .end local v2    # "i":I
    .restart local v21    # "i":I
    aget v2, v40, v17

    aget v17, v11, v4

    move/from16 v27, v3

    .end local v3    # "newView":Z
    .local v27, "newView":Z
    aget v3, v40, v17

    if-ne v2, v3, :cond_1e

    .line 1235
    const/4 v3, 0x0

    .line 1236
    .end local v27    # "newView":Z
    .restart local v3    # "newView":Z
    goto :goto_17

    .line 1233
    .end local v3    # "newView":Z
    .restart local v27    # "newView":Z
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v21

    move/from16 v3, v27

    goto :goto_16

    .end local v21    # "i":I
    .end local v27    # "newView":Z
    .restart local v2    # "i":I
    .restart local v3    # "newView":Z
    :cond_1f
    move/from16 v21, v2

    move/from16 v27, v3

    .line 1239
    .end local v2    # "i":I
    .end local v4    # "j":I
    .restart local v21    # "i":I
    :goto_17
    if-eqz v3, :cond_21

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1231
    .end local v3    # "newView":Z
    .end local v21    # "i":I
    .restart local v2    # "i":I
    :cond_20
    move/from16 v21, v2

    .line 1214
    .end local v2    # "i":I
    .restart local v21    # "i":I
    :cond_21
    :goto_18
    add-int/lit8 v2, v21, 0x1

    move/from16 v3, v41

    move-object/from16 v4, v42

    const/16 v18, 0x1

    .end local v21    # "i":I
    .restart local v2    # "i":I
    goto :goto_14

    .end local v42    # "layerSetLayerIdList":[[I
    .local v4, "layerSetLayerIdList":[[I
    :cond_22
    move/from16 v21, v2

    move-object/from16 v42, v4

    .line 1245
    .end local v2    # "i":I
    .end local v4    # "layerSetLayerIdList":[[I
    .restart local v42    # "layerSetLayerIdList":[[I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 1246
    .local v2, "viewIdLen":I
    const/4 v4, 0x2

    if-lt v1, v4, :cond_5a

    if-nez v2, :cond_23

    move/from16 v43, v1

    move/from16 v44, v2

    move-object/from16 v23, v7

    move/from16 v54, v8

    move-object/from16 v55, v9

    move/from16 v48, v10

    move-object/from16 v50, v11

    move-object/from16 v26, v13

    move-object/from16 v60, v14

    move/from16 v61, v15

    goto/16 :goto_40

    .line 1255
    :cond_23
    new-array v4, v1, [I

    .line 1256
    .local v4, "viewIdVals":[I
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "i":I
    :goto_19
    if-ge v3, v1, :cond_24

    .line 1257
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v16

    aput v16, v4, v3

    .line 1256
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1260
    .end local v3    # "i":I
    :cond_24
    add-int/lit8 v3, v10, 0x1

    new-array v3, v3, [I

    .line 1261
    .local v3, "layerIdInVps":[I
    const/16 v16, 0x0

    move/from16 v43, v1

    move/from16 v1, v16

    .local v1, "i":I
    .local v43, "numViews":I
    :goto_1a
    if-ge v1, v5, :cond_25

    .line 1262
    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    aget v1, v11, v16

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v16, v3, v1

    .line 1261
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_1a

    :cond_25
    move/from16 v16, v1

    .line 1264
    .end local v1    # "i":I
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 1265
    .local v1, "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    const/16 v16, 0x0

    move/from16 v44, v2

    move/from16 v2, v16

    .local v2, "i":I
    .local v44, "viewIdLen":I
    :goto_1b
    if-gt v2, v10, :cond_27

    .line 1266
    move/from16 v16, v2

    .end local v2    # "i":I
    .restart local v16    # "i":I
    aget v2, v40, v16

    move-object/from16 v45, v3

    .end local v3    # "layerIdInVps":[I
    .local v45, "layerIdInVps":[I
    add-int/lit8 v3, v43, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1267
    .local v2, "viewIdValIdx":I
    if-ltz v2, :cond_26

    aget v3, v4, v2

    goto :goto_1c

    :cond_26
    const/4 v3, -0x1

    .line 1268
    .local v3, "viewIdVal":I
    :goto_1c
    move/from16 v21, v2

    .end local v2    # "viewIdValIdx":I
    .local v21, "viewIdValIdx":I
    new-instance v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    move-object/from16 v46, v4

    .end local v4    # "viewIdVals":[I
    .local v46, "viewIdVals":[I
    aget v4, v45, v16

    invoke-direct {v2, v4, v3}, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1265
    .end local v3    # "viewIdVal":I
    .end local v21    # "viewIdValIdx":I
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    .end local v16    # "i":I
    .local v2, "i":I
    goto :goto_1b

    .end local v45    # "layerIdInVps":[I
    .end local v46    # "viewIdVals":[I
    .local v3, "layerIdInVps":[I
    .restart local v4    # "viewIdVals":[I
    :cond_27
    move/from16 v16, v2

    move-object/from16 v45, v3

    move-object/from16 v46, v4

    .line 1270
    .end local v2    # "i":I
    .end local v3    # "layerIdInVps":[I
    .end local v4    # "viewIdVals":[I
    .restart local v45    # "layerIdInVps":[I
    .restart local v46    # "viewIdVals":[I
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1272
    .local v2, "layerInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v3, v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    .line 1274
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1281
    :cond_28
    const/4 v3, -0x1

    .line 1282
    .local v3, "secondaryViewLayerId":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1d
    if-gt v4, v10, :cond_2a

    .line 1283
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v47, v1

    .end local v1    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .local v47, "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    move-object/from16 v1, v16

    check-cast v1, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v1, v1, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    move/from16 v16, v3

    const/4 v3, -0x1

    .end local v3    # "secondaryViewLayerId":I
    .local v16, "secondaryViewLayerId":I
    if-eq v1, v3, :cond_29

    .line 1284
    move v3, v4

    .line 1285
    .end local v16    # "secondaryViewLayerId":I
    .restart local v3    # "secondaryViewLayerId":I
    goto :goto_1e

    .line 1282
    .end local v3    # "secondaryViewLayerId":I
    .restart local v16    # "secondaryViewLayerId":I
    :cond_29
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move-object/from16 v1, v47

    goto :goto_1d

    .end local v16    # "secondaryViewLayerId":I
    .end local v47    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .restart local v1    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .restart local v3    # "secondaryViewLayerId":I
    :cond_2a
    move-object/from16 v47, v1

    move/from16 v16, v3

    .line 1288
    .end local v1    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .end local v4    # "i":I
    .restart local v47    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    :goto_1e
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b

    .line 1290
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1299
    :cond_2b
    const/4 v4, 0x2

    new-array v1, v4, [I

    const/16 v18, 0x1

    aput v5, v1, v18

    const/16 v24, 0x0

    aput v5, v1, v24

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    .line 1300
    .local v1, "directDependencyFlag":[[Z
    move/from16 v48, v10

    const/4 v4, 0x2

    .end local v10    # "maxLayerId":I
    .local v48, "maxLayerId":I
    new-array v10, v4, [I

    aput v5, v10, v18

    aput v5, v10, v24

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    .line 1301
    .local v4, "dependencyFlag":[[Z
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1f
    if-ge v10, v5, :cond_2d

    .line 1302
    const/16 v16, 0x0

    move-object/from16 v49, v4

    move/from16 v4, v16

    .local v4, "j":I
    .local v49, "dependencyFlag":[[Z
    :goto_20
    if-ge v4, v10, :cond_2c

    .line 1303
    aget-object v16, v1, v10

    aget-object v17, v49, v10

    .line 1304
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v21

    aput-boolean v21, v17, v4

    aput-boolean v21, v16, v4

    .line 1302
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1301
    .end local v4    # "j":I
    :cond_2c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v49

    goto :goto_1f

    .end local v49    # "dependencyFlag":[[Z
    .local v4, "dependencyFlag":[[Z
    :cond_2d
    move-object/from16 v49, v4

    .line 1307
    .end local v4    # "dependencyFlag":[[Z
    .end local v10    # "i":I
    .restart local v49    # "dependencyFlag":[[Z
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_21
    if-ge v4, v5, :cond_31

    .line 1308
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_22
    move-object/from16 v50, v11

    .end local v11    # "layerIdInNuh":[I
    .local v50, "layerIdInNuh":[I
    add-int/lit8 v11, v5, -0x1

    if-ge v10, v11, :cond_30

    .line 1309
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_23
    if-ge v11, v4, :cond_2f

    .line 1310
    aget-object v16, v49, v4

    aget-boolean v16, v16, v11

    if-eqz v16, :cond_2e

    aget-object v16, v49, v11

    aget-boolean v16, v16, v10

    if-eqz v16, :cond_2e

    .line 1311
    aget-object v16, v49, v4

    const/16 v18, 0x1

    aput-boolean v18, v16, v10

    .line 1312
    goto :goto_24

    .line 1309
    :cond_2e
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 1308
    .end local v11    # "k":I
    :cond_2f
    :goto_24
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, v50

    goto :goto_22

    .line 1307
    .end local v10    # "j":I
    :cond_30
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v50

    goto :goto_21

    .end local v50    # "layerIdInNuh":[I
    .local v11, "layerIdInNuh":[I
    :cond_31
    move-object/from16 v50, v11

    .line 1319
    .end local v4    # "i":I
    .end local v11    # "layerIdInNuh":[I
    .restart local v50    # "layerIdInNuh":[I
    add-int/lit8 v10, v48, 0x1

    new-array v4, v10, [I

    .line 1320
    .local v4, "numDirectRefLayers":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_25
    if-ge v10, v5, :cond_33

    .line 1321
    const/4 v11, 0x0

    .line 1322
    .local v11, "d":I
    const/16 v16, 0x0

    move-object/from16 v51, v4

    move/from16 v4, v16

    .local v4, "j":I
    .local v51, "numDirectRefLayers":[I
    :goto_26
    if-ge v4, v10, :cond_32

    .line 1323
    aget-object v16, v1, v10

    aget-boolean v16, v16, v4

    add-int v11, v11, v16

    .line 1322
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1325
    .end local v4    # "j":I
    :cond_32
    aget v4, v50, v10

    aput v11, v51, v4

    .line 1320
    .end local v11    # "d":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v51

    goto :goto_25

    .end local v51    # "numDirectRefLayers":[I
    .local v4, "numDirectRefLayers":[I
    :cond_33
    move-object/from16 v51, v4

    .line 1328
    .end local v4    # "numDirectRefLayers":[I
    .end local v10    # "i":I
    .restart local v51    # "numDirectRefLayers":[I
    const/4 v4, 0x0

    .line 1329
    .local v4, "numIndependentLayers":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_27
    if-ge v10, v5, :cond_35

    .line 1330
    aget v11, v50, v10

    aget v11, v51, v11

    if-nez v11, :cond_34

    .line 1331
    add-int/lit8 v4, v4, 0x1

    .line 1329
    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    .line 1334
    .end local v10    # "i":I
    :cond_35
    const/4 v10, 0x1

    if-le v4, v10, :cond_36

    .line 1336
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1346
    :cond_36
    new-array v10, v5, [I

    .line 1347
    .local v10, "subLayersVpsMaxMinus1":[I
    new-array v11, v12, [I

    .line 1348
    .local v11, "maxSubLayersInLayerSet":[I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_38

    .line 1349
    const/16 v16, 0x0

    move/from16 v52, v4

    move/from16 v4, v16

    .local v4, "i":I
    .local v52, "numIndependentLayers":I
    :goto_28
    if-ge v4, v5, :cond_37

    .line 1350
    move/from16 v16, v4

    const/4 v4, 0x3

    .end local v4    # "i":I
    .local v16, "i":I
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v17

    aput v17, v10, v16

    .line 1349
    add-int/lit8 v4, v16, 0x1

    .end local v16    # "i":I
    .restart local v4    # "i":I
    goto :goto_28

    :cond_37
    move/from16 v16, v4

    .end local v4    # "i":I
    goto :goto_29

    .line 1353
    .end local v52    # "numIndependentLayers":I
    .local v4, "numIndependentLayers":I
    :cond_38
    move/from16 v52, v4

    .end local v4    # "numIndependentLayers":I
    .restart local v52    # "numIndependentLayers":I
    const/4 v4, 0x0

    invoke-static {v10, v4, v5, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 1355
    :goto_29
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    if-ge v4, v12, :cond_3a

    .line 1356
    const/16 v16, 0x0

    .line 1357
    .local v16, "layerSetMaxSubLayersMinus1":I
    const/16 v17, 0x0

    move/from16 v21, v4

    move-object/from16 v53, v10

    move/from16 v4, v16

    move/from16 v10, v17

    .end local v16    # "layerSetMaxSubLayersMinus1":I
    .local v4, "layerSetMaxSubLayersMinus1":I
    .local v10, "k":I
    .local v21, "i":I
    .local v53, "subLayersVpsMaxMinus1":[I
    :goto_2b
    move-object/from16 v26, v13

    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v26, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    aget v13, v6, v21

    if-ge v10, v13, :cond_39

    .line 1358
    aget-object v13, v42, v21

    aget v13, v13, v10

    .line 1359
    .local v13, "layerId":I
    nop

    .line 1362
    invoke-virtual {v2, v13}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v10

    .end local v10    # "k":I
    .local v17, "k":I
    move-object/from16 v10, v16

    check-cast v10, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v10, v10, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    aget v10, v53, v10

    .line 1360
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1357
    .end local v13    # "layerId":I
    add-int/lit8 v10, v17, 0x1

    move-object/from16 v13, v26

    .end local v17    # "k":I
    .restart local v10    # "k":I
    goto :goto_2b

    :cond_39
    move/from16 v17, v10

    .line 1364
    .end local v10    # "k":I
    add-int/lit8 v10, v4, 0x1

    aput v10, v11, v21

    .line 1355
    .end local v4    # "layerSetMaxSubLayersMinus1":I
    add-int/lit8 v4, v21, 0x1

    move-object/from16 v13, v26

    move-object/from16 v10, v53

    .end local v21    # "i":I
    .local v4, "i":I
    goto :goto_2a

    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v53    # "subLayersVpsMaxMinus1":[I
    .local v10, "subLayersVpsMaxMinus1":[I
    .local v13, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    :cond_3a
    move/from16 v21, v4

    move-object/from16 v53, v10

    move-object/from16 v26, v13

    .line 1367
    .end local v4    # "i":I
    .end local v10    # "subLayersVpsMaxMinus1":[I
    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v53    # "subLayersVpsMaxMinus1":[I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1368
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2c
    add-int/lit8 v10, v5, -0x1

    if-ge v4, v10, :cond_3d

    .line 1369
    add-int/lit8 v10, v4, 0x1

    .local v10, "j":I
    :goto_2d
    if-ge v10, v5, :cond_3c

    .line 1370
    aget-object v13, v1, v10

    aget-boolean v13, v13, v4

    if-eqz v13, :cond_3b

    .line 1371
    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_2e

    .line 1370
    :cond_3b
    const/4 v13, 0x3

    .line 1369
    :goto_2e
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_3c
    const/4 v13, 0x3

    .line 1368
    .end local v10    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1376
    .end local v4    # "i":I
    :cond_3d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1379
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    const/4 v10, 0x1

    add-int/2addr v4, v10

    .line 1380
    .local v4, "numProfileTierLevels":I
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v13

    .line 1381
    .local v13, "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    invoke-virtual {v13, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1382
    if-le v4, v10, :cond_3f

    .line 1383
    invoke-virtual {v13, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1384
    move-object v10, v7

    .line 1385
    .local v10, "prevProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    const/16 v16, 0x2

    move-object/from16 v23, v7

    move/from16 v7, v16

    .local v7, "i":I
    .local v23, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :goto_2f
    if-ge v7, v4, :cond_3e

    .line 1386
    nop

    .line 1389
    move/from16 v16, v7

    .end local v7    # "i":I
    .local v16, "i":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    .line 1387
    invoke-static {v0, v7, v8, v10}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v7

    .line 1392
    .local v7, "nextProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v13, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1393
    move-object v10, v7

    .line 1385
    .end local v7    # "nextProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    add-int/lit8 v7, v16, 0x1

    .end local v16    # "i":I
    .local v7, "i":I
    goto :goto_2f

    :cond_3e
    move/from16 v16, v7

    .end local v7    # "i":I
    .restart local v16    # "i":I
    goto :goto_30

    .line 1382
    .end local v10    # "prevProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v16    # "i":I
    .end local v23    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v7, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :cond_3f
    move-object/from16 v23, v7

    .line 1396
    .end local v7    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v23    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    :goto_30
    invoke-virtual {v13}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 1400
    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v7, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v12

    .line 1401
    .local v10, "numOutputLayerSets":I
    if-le v10, v12, :cond_40

    .line 1404
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1412
    :cond_40
    move/from16 v54, v8

    move-object/from16 v55, v9

    const/4 v8, 0x2

    .end local v8    # "maxSubLayersMinus1":I
    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v54, "maxSubLayersMinus1":I
    .local v55, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    invoke-virtual {v0, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    .line 1414
    .local v9, "defaultOutputLayerIdc":I
    add-int/lit8 v16, v48, 0x1

    move-object/from16 v56, v13

    .end local v13    # "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v56, "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    new-array v13, v8, [I

    const/16 v18, 0x1

    aput v16, v13, v18

    const/16 v24, 0x0

    aput v10, v13, v24

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    .line 1415
    .local v8, "outputLayerFlag":[[Z
    new-array v13, v10, [I

    .line 1416
    .local v13, "numOutputLayersInOutputLayerSet":[I
    move-object/from16 v57, v8

    .end local v8    # "outputLayerFlag":[[Z
    .local v57, "outputLayerFlag":[[Z
    new-array v8, v10, [I

    .line 1417
    .local v8, "olsHighestOutputLayerId":[I
    const/16 v16, 0x0

    move-object/from16 v58, v8

    move/from16 v8, v16

    .local v8, "i":I
    .local v58, "olsHighestOutputLayerId":[I
    :goto_31
    if-ge v8, v12, :cond_45

    .line 1418
    move/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "i":I
    .restart local v16    # "i":I
    aput v8, v13, v16

    .line 1419
    aget v17, v14, v16

    aput v17, v58, v16

    .line 1420
    if-nez v9, :cond_41

    .line 1421
    move-object/from16 v59, v13

    .end local v13    # "numOutputLayersInOutputLayerSet":[I
    .local v59, "numOutputLayersInOutputLayerSet":[I
    aget-object v13, v57, v16

    move-object/from16 v60, v14

    .end local v14    # "layerSetMaxLayerId":[I
    .local v60, "layerSetMaxLayerId":[I
    aget v14, v6, v16

    move/from16 v61, v15

    const/4 v15, 0x1

    .end local v15    # "haveEnoughLayerSets":Z
    .local v61, "haveEnoughLayerSets":Z
    invoke-static {v13, v8, v14, v15}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1422
    aget v8, v6, v16

    aput v8, v59, v16

    goto :goto_34

    .line 1423
    .end local v59    # "numOutputLayersInOutputLayerSet":[I
    .end local v60    # "layerSetMaxLayerId":[I
    .end local v61    # "haveEnoughLayerSets":Z
    .restart local v13    # "numOutputLayersInOutputLayerSet":[I
    .restart local v14    # "layerSetMaxLayerId":[I
    .restart local v15    # "haveEnoughLayerSets":Z
    :cond_41
    move-object/from16 v59, v13

    move-object/from16 v60, v14

    move/from16 v61, v15

    const/4 v15, 0x1

    .end local v13    # "numOutputLayersInOutputLayerSet":[I
    .end local v14    # "layerSetMaxLayerId":[I
    .end local v15    # "haveEnoughLayerSets":Z
    .restart local v59    # "numOutputLayersInOutputLayerSet":[I
    .restart local v60    # "layerSetMaxLayerId":[I
    .restart local v61    # "haveEnoughLayerSets":Z
    if-ne v9, v15, :cond_44

    .line 1424
    aget v8, v60, v16

    .line 1425
    .local v8, "highestLayerId":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_32
    aget v14, v6, v16

    if-ge v13, v14, :cond_43

    .line 1426
    aget-object v14, v57, v16

    aget-object v15, v42, v16

    aget v15, v15, v13

    if-ne v15, v8, :cond_42

    const/4 v15, 0x1

    goto :goto_33

    :cond_42
    const/4 v15, 0x0

    :goto_33
    aput-boolean v15, v14, v13

    .line 1425
    add-int/lit8 v13, v13, 0x1

    goto :goto_32

    .line 1428
    .end local v13    # "j":I
    :cond_43
    const/16 v18, 0x1

    aput v18, v59, v16

    .line 1429
    .end local v8    # "highestLayerId":I
    goto :goto_34

    .line 1430
    :cond_44
    move/from16 v18, v15

    const/16 v24, 0x0

    aget-object v8, v57, v24

    aput-boolean v18, v8, v24

    .line 1431
    aput v18, v59, v24

    .line 1417
    :goto_34
    add-int/lit8 v8, v16, 0x1

    move-object/from16 v13, v59

    move-object/from16 v14, v60

    move/from16 v15, v61

    .end local v16    # "i":I
    .local v8, "i":I
    goto :goto_31

    .end local v59    # "numOutputLayersInOutputLayerSet":[I
    .end local v60    # "layerSetMaxLayerId":[I
    .end local v61    # "haveEnoughLayerSets":Z
    .local v13, "numOutputLayersInOutputLayerSet":[I
    .restart local v14    # "layerSetMaxLayerId":[I
    .restart local v15    # "haveEnoughLayerSets":Z
    :cond_45
    move/from16 v16, v8

    move-object/from16 v59, v13

    move-object/from16 v60, v14

    move/from16 v61, v15

    .line 1435
    .end local v8    # "i":I
    .end local v13    # "numOutputLayersInOutputLayerSet":[I
    .end local v14    # "layerSetMaxLayerId":[I
    .end local v15    # "haveEnoughLayerSets":Z
    .restart local v59    # "numOutputLayersInOutputLayerSet":[I
    .restart local v60    # "layerSetMaxLayerId":[I
    .restart local v61    # "haveEnoughLayerSets":Z
    add-int/lit8 v8, v48, 0x1

    new-array v8, v8, [I

    .line 1436
    .local v8, "profileTierLevelIndices":[I
    add-int/lit8 v13, v48, 0x1

    const/4 v14, 0x2

    new-array v15, v14, [I

    const/16 v18, 0x1

    aput v13, v15, v18

    const/16 v24, 0x0

    aput v10, v15, v24

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Z

    .line 1437
    .local v13, "necessaryLayerFlag":[[Z
    const/4 v14, 0x0

    .line 1439
    .local v14, "targetOutputLayerSetIdx":I
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_35
    if-ge v15, v10, :cond_55

    .line 1440
    move/from16 v62, v14

    const/4 v14, 0x2

    .end local v14    # "targetOutputLayerSetIdx":I
    .local v62, "targetOutputLayerSetIdx":I
    if-ne v9, v14, :cond_47

    .line 1441
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_36
    move/from16 v63, v9

    .end local v9    # "defaultOutputLayerIdc":I
    .local v63, "defaultOutputLayerIdc":I
    aget v9, v6, v15

    if-ge v14, v9, :cond_48

    .line 1442
    aget-object v9, v57, v15

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    aput-boolean v16, v9, v14

    .line 1443
    aget v9, v59, v15

    aget-object v16, v57, v15

    aget-boolean v16, v16, v14

    add-int v9, v9, v16

    aput v9, v59, v15

    .line 1444
    aget-object v9, v57, v15

    aget-boolean v9, v9, v14

    if-eqz v9, :cond_46

    .line 1445
    aget-object v9, v42, v15

    aget v9, v9, v14

    aput v9, v58, v15

    .line 1441
    :cond_46
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v63

    goto :goto_36

    .line 1440
    .end local v14    # "j":I
    .end local v63    # "defaultOutputLayerIdc":I
    .restart local v9    # "defaultOutputLayerIdc":I
    :cond_47
    move/from16 v63, v9

    .line 1452
    .end local v9    # "defaultOutputLayerIdc":I
    .restart local v63    # "defaultOutputLayerIdc":I
    :cond_48
    if-nez v62, :cond_4b

    aget-object v9, v42, v15

    const/16 v24, 0x0

    aget v9, v9, v24

    if-nez v9, :cond_4c

    aget-object v9, v57, v15

    aget-boolean v9, v9, v24

    if-eqz v9, :cond_4c

    .line 1453
    const/4 v9, 0x1

    move/from16 v14, v62

    .end local v62    # "targetOutputLayerSetIdx":I
    .local v9, "j":I
    .local v14, "targetOutputLayerSetIdx":I
    :goto_37
    move/from16 v16, v14

    .end local v14    # "targetOutputLayerSetIdx":I
    .local v16, "targetOutputLayerSetIdx":I
    aget v14, v6, v15

    if-ge v9, v14, :cond_4a

    .line 1454
    aget-object v14, v42, v15

    aget v14, v14, v9

    if-ne v14, v3, :cond_49

    aget-object v14, v57, v15

    aget-boolean v14, v14, v3

    if-eqz v14, :cond_49

    .line 1456
    move v14, v15

    .end local v16    # "targetOutputLayerSetIdx":I
    .restart local v14    # "targetOutputLayerSetIdx":I
    goto :goto_38

    .line 1453
    .end local v14    # "targetOutputLayerSetIdx":I
    .restart local v16    # "targetOutputLayerSetIdx":I
    :cond_49
    move/from16 v14, v16

    .end local v16    # "targetOutputLayerSetIdx":I
    .restart local v14    # "targetOutputLayerSetIdx":I
    :goto_38
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .end local v14    # "targetOutputLayerSetIdx":I
    .restart local v16    # "targetOutputLayerSetIdx":I
    :cond_4a
    move/from16 v14, v16

    goto :goto_39

    .line 1452
    .end local v9    # "j":I
    .end local v16    # "targetOutputLayerSetIdx":I
    .restart local v62    # "targetOutputLayerSetIdx":I
    :cond_4b
    const/16 v24, 0x0

    .line 1461
    :cond_4c
    move/from16 v14, v62

    .end local v62    # "targetOutputLayerSetIdx":I
    .restart local v14    # "targetOutputLayerSetIdx":I
    :goto_39
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_3a
    move/from16 v64, v3

    .end local v3    # "secondaryViewLayerId":I
    .local v64, "secondaryViewLayerId":I
    aget v3, v6, v15

    if-ge v9, v3, :cond_53

    .line 1462
    const/4 v3, 0x1

    if-le v4, v3, :cond_51

    .line 1463
    aget-object v3, v13, v15

    aget-object v16, v57, v15

    aget-boolean v16, v16, v9

    aput-boolean v16, v3, v9

    .line 1464
    move-object v3, v7

    move-object/from16 v65, v8

    .end local v7    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v8    # "profileTierLevelIndices":[I
    .local v3, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v65, "profileTierLevelIndices":[I
    int-to-double v7, v4

    move-object/from16 v26, v3

    .end local v3    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v7, v8, v3}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v3

    .line 1465
    .local v3, "bitLen":I
    aget-object v7, v13, v15

    aget-boolean v7, v7, v9

    if-nez v7, :cond_4f

    .line 1466
    aget-object v7, v42, v15

    aget v7, v7, v9

    invoke-virtual {v2, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v7, v7, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 1467
    .local v7, "currLayerIdInVps":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3b
    if-ge v8, v9, :cond_4e

    .line 1468
    aget-object v16, v42, v15

    move/from16 v66, v4

    .end local v4    # "numProfileTierLevels":I
    .local v66, "numProfileTierLevels":I
    aget v4, v16, v8

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v4, v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 1469
    .local v4, "refLayerIdInVps":I
    aget-object v16, v49, v7

    aget-boolean v16, v16, v4

    if-eqz v16, :cond_4d

    .line 1470
    aget-object v16, v13, v15

    const/16 v18, 0x1

    aput-boolean v18, v16, v9

    .line 1471
    goto :goto_3c

    .line 1467
    .end local v4    # "refLayerIdInVps":I
    :cond_4d
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v66

    goto :goto_3b

    .end local v66    # "numProfileTierLevels":I
    .local v4, "numProfileTierLevels":I
    :cond_4e
    move/from16 v66, v4

    .end local v4    # "numProfileTierLevels":I
    .restart local v66    # "numProfileTierLevels":I
    goto :goto_3c

    .line 1465
    .end local v7    # "currLayerIdInVps":I
    .end local v8    # "k":I
    .end local v66    # "numProfileTierLevels":I
    .restart local v4    # "numProfileTierLevels":I
    :cond_4f
    move/from16 v66, v4

    .line 1475
    .end local v4    # "numProfileTierLevels":I
    .restart local v66    # "numProfileTierLevels":I
    :goto_3c
    aget-object v4, v13, v15

    aget-boolean v4, v4, v9

    if-eqz v4, :cond_52

    .line 1476
    if-lez v14, :cond_50

    if-ne v15, v14, :cond_50

    .line 1478
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    aput v4, v65, v9

    goto :goto_3d

    .line 1480
    :cond_50
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_3d

    .line 1462
    .end local v3    # "bitLen":I
    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v65    # "profileTierLevelIndices":[I
    .end local v66    # "numProfileTierLevels":I
    .restart local v4    # "numProfileTierLevels":I
    .local v7, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v8, "profileTierLevelIndices":[I
    :cond_51
    move/from16 v66, v4

    move-object/from16 v26, v7

    move-object/from16 v65, v8

    .line 1461
    .end local v4    # "numProfileTierLevels":I
    .end local v7    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v8    # "profileTierLevelIndices":[I
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v65    # "profileTierLevelIndices":[I
    .restart local v66    # "numProfileTierLevels":I
    :cond_52
    :goto_3d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v26

    move/from16 v3, v64

    move-object/from16 v8, v65

    move/from16 v4, v66

    goto :goto_3a

    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v65    # "profileTierLevelIndices":[I
    .end local v66    # "numProfileTierLevels":I
    .restart local v4    # "numProfileTierLevels":I
    .restart local v7    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v8    # "profileTierLevelIndices":[I
    :cond_53
    move/from16 v66, v4

    move-object/from16 v26, v7

    move-object/from16 v65, v8

    .line 1485
    .end local v4    # "numProfileTierLevels":I
    .end local v7    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v8    # "profileTierLevelIndices":[I
    .end local v9    # "j":I
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v65    # "profileTierLevelIndices":[I
    .restart local v66    # "numProfileTierLevels":I
    aget v3, v59, v15

    const/4 v4, 0x1

    if-ne v3, v4, :cond_54

    aget v3, v58, v15

    aget v3, v51, v3

    if-lez v3, :cond_54

    .line 1487
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1439
    :cond_54
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v26

    move/from16 v9, v63

    move/from16 v3, v64

    move-object/from16 v8, v65

    move/from16 v4, v66

    goto/16 :goto_35

    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v63    # "defaultOutputLayerIdc":I
    .end local v64    # "secondaryViewLayerId":I
    .end local v65    # "profileTierLevelIndices":[I
    .end local v66    # "numProfileTierLevels":I
    .local v3, "secondaryViewLayerId":I
    .restart local v4    # "numProfileTierLevels":I
    .restart local v7    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v8    # "profileTierLevelIndices":[I
    .local v9, "defaultOutputLayerIdc":I
    :cond_55
    move/from16 v64, v3

    move/from16 v66, v4

    move-object/from16 v26, v7

    move-object/from16 v65, v8

    move/from16 v63, v9

    move/from16 v62, v14

    .line 1491
    .end local v3    # "secondaryViewLayerId":I
    .end local v4    # "numProfileTierLevels":I
    .end local v7    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v8    # "profileTierLevelIndices":[I
    .end local v9    # "defaultOutputLayerIdc":I
    .end local v14    # "targetOutputLayerSetIdx":I
    .end local v15    # "i":I
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v62    # "targetOutputLayerSetIdx":I
    .restart local v63    # "defaultOutputLayerIdc":I
    .restart local v64    # "secondaryViewLayerId":I
    .restart local v65    # "profileTierLevelIndices":[I
    .restart local v66    # "numProfileTierLevels":I
    if-nez v62, :cond_56

    .line 1493
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1501
    :cond_56
    invoke-static {v0, v5}, Landroidx/media3/container/NalUnitUtil;->parseH265RepFormatsAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;I)Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    move-result-object v30

    .line 1503
    .local v30, "repFormatsAndIndices":Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1504
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_3e
    if-ge v3, v5, :cond_58

    .line 1505
    aget v4, v50, v3

    aget v4, v51, v4

    if-nez v4, :cond_57

    .line 1506
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1504
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1510
    .end local v3    # "i":I
    :cond_58
    invoke-static {v0, v10, v11, v6, v13}, Landroidx/media3/container/NalUnitUtil;->skipH265DpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V

    .line 1513
    invoke-static {v0, v5, v1}, Landroidx/media3/container/NalUnitUtil;->skipToH265VuiPresentFlagAfterDpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[[Z)V

    .line 1515
    const/4 v3, 0x0

    .line 1516
    .local v3, "videoSignalInfosAndIndices":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1517
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    .line 1518
    nop

    .line 1519
    invoke-static {v0, v5, v12, v11}, Landroidx/media3/container/NalUnitUtil;->parseH265VideoSignalInfosAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;II[I)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    move-result-object v3

    move-object/from16 v31, v3

    goto :goto_3f

    .line 1516
    :cond_59
    move-object/from16 v31, v3

    .line 1523
    .end local v3    # "videoSignalInfosAndIndices":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    .local v31, "videoSignalInfosAndIndices":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    :goto_3f
    move-object/from16 v3, v26

    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v3, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    new-instance v26, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    new-instance v4, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    move-object/from16 v7, v65

    .end local v65    # "profileTierLevelIndices":[I
    .local v7, "profileTierLevelIndices":[I
    invoke-direct {v4, v3, v7}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    move-object/from16 v27, p1

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    .end local v2    # "layerInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .local v28, "layerInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    invoke-direct/range {v26 .. v31}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v26

    .line 1246
    .end local v3    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v23    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v28    # "layerInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .end local v30    # "repFormatsAndIndices":Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
    .end local v31    # "videoSignalInfosAndIndices":Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    .end local v43    # "numViews":I
    .end local v44    # "viewIdLen":I
    .end local v45    # "layerIdInVps":[I
    .end local v46    # "viewIdVals":[I
    .end local v47    # "layerInfosBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265LayerInfo;>;"
    .end local v48    # "maxLayerId":I
    .end local v49    # "dependencyFlag":[[Z
    .end local v50    # "layerIdInNuh":[I
    .end local v51    # "numDirectRefLayers":[I
    .end local v52    # "numIndependentLayers":I
    .end local v53    # "subLayersVpsMaxMinus1":[I
    .end local v54    # "maxSubLayersMinus1":I
    .end local v55    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v56    # "profileTierLevelsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v57    # "outputLayerFlag":[[Z
    .end local v58    # "olsHighestOutputLayerId":[I
    .end local v59    # "numOutputLayersInOutputLayerSet":[I
    .end local v60    # "layerSetMaxLayerId":[I
    .end local v61    # "haveEnoughLayerSets":Z
    .end local v62    # "targetOutputLayerSetIdx":I
    .end local v63    # "defaultOutputLayerIdc":I
    .end local v64    # "secondaryViewLayerId":I
    .end local v66    # "numProfileTierLevels":I
    .local v1, "numViews":I
    .local v2, "viewIdLen":I
    .local v7, "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v8, "maxSubLayersMinus1":I
    .local v9, "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .local v10, "maxLayerId":I
    .local v11, "layerIdInNuh":[I
    .local v13, "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .local v14, "layerSetMaxLayerId":[I
    .local v15, "haveEnoughLayerSets":Z
    :cond_5a
    move/from16 v43, v1

    move/from16 v44, v2

    move-object/from16 v23, v7

    move/from16 v54, v8

    move-object/from16 v55, v9

    move/from16 v48, v10

    move-object/from16 v50, v11

    move-object/from16 v26, v13

    move-object/from16 v60, v14

    move/from16 v61, v15

    .line 1248
    .end local v1    # "numViews":I
    .end local v2    # "viewIdLen":I
    .end local v7    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v8    # "maxSubLayersMinus1":I
    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v10    # "maxLayerId":I
    .end local v11    # "layerIdInNuh":[I
    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v14    # "layerSetMaxLayerId":[I
    .end local v15    # "haveEnoughLayerSets":Z
    .restart local v23    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v43    # "numViews":I
    .restart local v44    # "viewIdLen":I
    .restart local v48    # "maxLayerId":I
    .restart local v50    # "layerIdInNuh":[I
    .restart local v54    # "maxSubLayersMinus1":I
    .restart local v55    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v60    # "layerSetMaxLayerId":[I
    .restart local v61    # "haveEnoughLayerSets":Z
    :goto_40
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1164
    .end local v23    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v35    # "dimensionIdLenMinus1":[I
    .end local v36    # "dimBitOffset":[I
    .end local v37    # "nuhLayerIdPresentFlag":Z
    .end local v38    # "dimensionId":[[I
    .end local v39    # "numScalabilityTypes":I
    .end local v40    # "viewOrderIdx":[I
    .end local v41    # "baseLayerAvailableFlag":Z
    .end local v42    # "layerSetLayerIdList":[[I
    .end local v43    # "numViews":I
    .end local v44    # "viewIdLen":I
    .end local v48    # "maxLayerId":I
    .end local v50    # "layerIdInNuh":[I
    .end local v54    # "maxSubLayersMinus1":I
    .end local v55    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v60    # "layerSetMaxLayerId":[I
    .end local v61    # "haveEnoughLayerSets":Z
    .local v1, "numScalabilityTypes":I
    .local v3, "baseLayerAvailableFlag":Z
    .local v4, "layerSetLayerIdList":[[I
    .restart local v7    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v8    # "maxSubLayersMinus1":I
    .restart local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v10    # "maxLayerId":I
    .restart local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v14    # "layerSetMaxLayerId":[I
    .restart local v15    # "haveEnoughLayerSets":Z
    :cond_5b
    move/from16 v39, v1

    move/from16 v41, v3

    move-object/from16 v42, v4

    move-object/from16 v23, v7

    move/from16 v54, v8

    move-object/from16 v55, v9

    move/from16 v48, v10

    move-object/from16 v26, v13

    move-object/from16 v60, v14

    move/from16 v61, v15

    .line 1165
    .end local v1    # "numScalabilityTypes":I
    .end local v3    # "baseLayerAvailableFlag":Z
    .end local v4    # "layerSetLayerIdList":[[I
    .end local v7    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v8    # "maxSubLayersMinus1":I
    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v10    # "maxLayerId":I
    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v14    # "layerSetMaxLayerId":[I
    .end local v15    # "haveEnoughLayerSets":Z
    .restart local v23    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v39    # "numScalabilityTypes":I
    .restart local v41    # "baseLayerAvailableFlag":Z
    .restart local v42    # "layerSetLayerIdList":[[I
    .restart local v48    # "maxLayerId":I
    .restart local v54    # "maxSubLayersMinus1":I
    .restart local v55    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v60    # "layerSetMaxLayerId":[I
    .restart local v61    # "haveEnoughLayerSets":Z
    :goto_41
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1090
    .end local v6    # "numLayersInIdList":[I
    .end local v23    # "baseLayerProfileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v25    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .end local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v32    # "splittingFlag":Z
    .end local v33    # "scalabilityMaskFlag":[Z
    .end local v34    # "baseLayerInternalFlag":Z
    .end local v39    # "numScalabilityTypes":I
    .end local v41    # "baseLayerAvailableFlag":Z
    .end local v42    # "layerSetLayerIdList":[[I
    .end local v48    # "maxLayerId":I
    .end local v54    # "maxSubLayersMinus1":I
    .end local v55    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v60    # "layerSetMaxLayerId":[I
    .end local v61    # "haveEnoughLayerSets":Z
    .local v1, "haveLargeEnoughMaxLayerIdInNuh":Z
    .local v2, "baseLayerInternalFlag":Z
    .restart local v3    # "baseLayerAvailableFlag":Z
    .restart local v8    # "maxSubLayersMinus1":I
    .restart local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v10    # "maxLayerId":I
    .restart local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v15    # "haveEnoughLayerSets":Z
    :cond_5c
    move/from16 v25, v1

    move/from16 v34, v2

    move/from16 v41, v3

    move/from16 v54, v8

    move-object/from16 v55, v9

    move/from16 v48, v10

    move-object/from16 v26, v13

    move/from16 v61, v15

    .line 1092
    .end local v1    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .end local v2    # "baseLayerInternalFlag":Z
    .end local v3    # "baseLayerAvailableFlag":Z
    .end local v8    # "maxSubLayersMinus1":I
    .end local v9    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .end local v10    # "maxLayerId":I
    .end local v13    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .end local v15    # "haveEnoughLayerSets":Z
    .restart local v25    # "haveLargeEnoughMaxLayerIdInNuh":Z
    .restart local v26    # "profileTierLevels":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;>;"
    .restart local v34    # "baseLayerInternalFlag":Z
    .restart local v41    # "baseLayerAvailableFlag":Z
    .restart local v48    # "maxLayerId":I
    .restart local v54    # "maxSubLayersMinus1":I
    .restart local v55    # "profileTierLevel":Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .restart local v61    # "haveEnoughLayerSets":Z
    :goto_42
    new-instance v16, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 1
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 1781
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object v0

    return-object v0
.end method

.method public static parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 5
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 1794
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1795
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 1796
    .local v1, "picParameterSetId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 1797
    .local v2, "seqParameterSetId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1798
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 1799
    .local v3, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v4, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v4, v1, v2, v3}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v4
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 1
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 809
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 40
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 822
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 823
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 824
    .local v6, "profileIdc":I
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 825
    .local v7, "constraintsFlagsAndReservedZero2Bits":I
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 826
    .local v8, "levelIdc":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 828
    .local v9, "seqParameterSetId":I
    const/4 v5, 0x1

    .line 829
    .local v5, "chromaFormatIdc":I
    const/4 v10, 0x0

    .line 830
    .local v10, "separateColorPlaneFlag":Z
    const/4 v11, 0x0

    .line 831
    .local v11, "bitDepthLumaMinus8":I
    const/4 v12, 0x0

    .line 832
    .local v12, "bitDepthChromaMinus8":I
    const/16 v15, 0xf4

    const/16 v4, 0x7a

    const/16 v13, 0x6e

    const/16 v14, 0x64

    if-eq v6, v14, :cond_1

    if-eq v6, v13, :cond_1

    if-eq v6, v4, :cond_1

    if-eq v6, v15, :cond_1

    const/16 v15, 0x2c

    if-eq v6, v15, :cond_1

    const/16 v15, 0x53

    if-eq v6, v15, :cond_1

    const/16 v15, 0x56

    if-eq v6, v15, :cond_1

    const/16 v15, 0x76

    if-eq v6, v15, :cond_1

    const/16 v15, 0x80

    if-eq v6, v15, :cond_1

    const/16 v15, 0x8a

    if-ne v6, v15, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    move v14, v11

    move v15, v12

    goto :goto_4

    .line 842
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 843
    const/4 v15, 0x3

    if-ne v5, v15, :cond_2

    .line 844
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 846
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 847
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 848
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 849
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    .line 850
    .local v15, "seqScalingMatrixPresentFlag":Z
    if-eqz v15, :cond_6

    .line 851
    const/4 v4, 0x3

    if-eq v5, v4, :cond_3

    const/16 v4, 0x8

    goto :goto_1

    :cond_3
    const/16 v4, 0xc

    .line 852
    .local v4, "limit":I
    :goto_1
    const/16 v23, 0x0

    move/from16 v13, v23

    .local v13, "i":I
    :goto_2
    if-ge v13, v4, :cond_6

    .line 853
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v23

    .line 854
    .local v23, "seqScalingListPresentFlag":Z
    if-eqz v23, :cond_5

    .line 855
    const/4 v14, 0x6

    if-ge v13, v14, :cond_4

    const/16 v14, 0x10

    goto :goto_3

    :cond_4
    const/16 v14, 0x40

    :goto_3
    invoke-static {v0, v14}, Landroidx/media3/container/NalUnitUtil;->skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V

    .line 852
    .end local v23    # "seqScalingListPresentFlag":Z
    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x64

    goto :goto_2

    .line 861
    .end local v4    # "limit":I
    .end local v13    # "i":I
    .end local v15    # "seqScalingMatrixPresentFlag":Z
    :cond_6
    move v4, v5

    move v14, v11

    move v15, v12

    .end local v5    # "chromaFormatIdc":I
    .end local v11    # "bitDepthLumaMinus8":I
    .end local v12    # "bitDepthChromaMinus8":I
    .local v4, "chromaFormatIdc":I
    .local v14, "bitDepthLumaMinus8":I
    .local v15, "bitDepthChromaMinus8":I
    :goto_4
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    .line 862
    .local v5, "frameNumLength":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 863
    .local v11, "picOrderCntType":I
    const/4 v12, 0x0

    .line 864
    .local v12, "picOrderCntLsbLength":I
    const/4 v13, 0x0

    .line 865
    .local v13, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v1, 0x1

    if-nez v11, :cond_7

    .line 867
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v23

    add-int/lit8 v12, v23, 0x4

    move/from16 v23, v1

    goto :goto_6

    .line 868
    :cond_7
    if-ne v11, v1, :cond_8

    .line 869
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    .line 870
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 871
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 872
    move/from16 v23, v1

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    int-to-long v1, v1

    .line 873
    .local v1, "numRefFramesInPicOrderCntCycle":J
    const/16 v26, 0x0

    move-wide/from16 v27, v1

    move/from16 v1, v26

    .local v1, "i":I
    .local v27, "numRefFramesInPicOrderCntCycle":J
    :goto_5
    int-to-long v2, v1

    cmp-long v2, v2, v27

    if-gez v2, :cond_9

    .line 874
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 873
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, p2

    goto :goto_5

    .line 868
    .end local v1    # "i":I
    .end local v27    # "numRefFramesInPicOrderCntCycle":J
    :cond_8
    move/from16 v23, v1

    .line 877
    :cond_9
    :goto_6
    move v1, v10

    .end local v10    # "separateColorPlaneFlag":Z
    .local v1, "separateColorPlaneFlag":Z
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 878
    .local v10, "maxNumRefFrames":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 880
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 881
    .local v2, "picWidthInMbs":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 882
    .local v3, "picHeightInMapUnits":I
    const/16 v26, 0x56

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    .line 883
    .local v17, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v27, v17, 0x2

    mul-int v27, v27, v3

    .line 884
    .local v27, "frameHeightInMbs":I
    if-nez v17, :cond_a

    .line 885
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 888
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 889
    mul-int/lit8 v28, v2, 0x10

    .line 890
    .local v28, "frameWidth":I
    mul-int/lit8 v29, v27, 0x10

    .line 891
    .local v29, "frameHeight":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v30

    .line 892
    .local v30, "frameCroppingFlag":Z
    const/16 v31, 0x2

    if-eqz v30, :cond_e

    .line 893
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v32

    .line 894
    .local v32, "frameCropLeftOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v33

    .line 895
    .local v33, "frameCropRightOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v34

    .line 896
    .local v34, "frameCropTopOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v35

    .line 899
    .local v35, "frameCropBottomOffset":I
    if-nez v4, :cond_b

    .line 900
    const/16 v36, 0x1

    .line 901
    .local v36, "cropUnitX":I
    rsub-int/lit8 v37, v17, 0x2

    move/from16 v38, v36

    move/from16 v36, v1

    move/from16 v1, v23

    .local v37, "cropUnitY":I
    goto :goto_9

    .line 903
    .end local v36    # "cropUnitX":I
    .end local v37    # "cropUnitY":I
    :cond_b
    move/from16 v36, v1

    const/4 v1, 0x3

    .end local v1    # "separateColorPlaneFlag":Z
    .local v36, "separateColorPlaneFlag":Z
    if-ne v4, v1, :cond_c

    move/from16 v1, v23

    goto :goto_7

    :cond_c
    move/from16 v1, v31

    .line 904
    .local v1, "subWidthC":I
    :goto_7
    move/from16 v37, v1

    move/from16 v1, v23

    .end local v1    # "subWidthC":I
    .local v37, "subWidthC":I
    if-ne v4, v1, :cond_d

    move/from16 v23, v31

    goto :goto_8

    :cond_d
    move/from16 v23, v1

    .line 905
    .local v23, "subHeightC":I
    :goto_8
    move/from16 v38, v37

    .line 906
    .local v38, "cropUnitX":I
    rsub-int/lit8 v39, v17, 0x2

    mul-int v39, v39, v23

    move/from16 v37, v39

    .line 908
    .end local v23    # "subHeightC":I
    .local v37, "cropUnitY":I
    :goto_9
    add-int v23, v32, v33

    mul-int v23, v23, v38

    sub-int v28, v28, v23

    .line 909
    add-int v23, v34, v35

    mul-int v23, v23, v37

    sub-int v29, v29, v23

    goto :goto_a

    .line 892
    .end local v32    # "frameCropLeftOffset":I
    .end local v33    # "frameCropRightOffset":I
    .end local v34    # "frameCropTopOffset":I
    .end local v35    # "frameCropBottomOffset":I
    .end local v36    # "separateColorPlaneFlag":Z
    .end local v37    # "cropUnitY":I
    .end local v38    # "cropUnitX":I
    .local v1, "separateColorPlaneFlag":Z
    :cond_e
    move/from16 v36, v1

    move/from16 v1, v23

    .line 912
    .end local v1    # "separateColorPlaneFlag":Z
    .restart local v36    # "separateColorPlaneFlag":Z
    :goto_a
    const/16 v23, -0x1

    .line 913
    .local v23, "colorSpace":I
    const/16 v32, -0x1

    .line 914
    .local v32, "colorRange":I
    const/16 v33, -0x1

    .line 915
    .local v33, "colorTransfer":I
    const/high16 v34, 0x3f800000    # 1.0f

    .line 926
    .local v34, "pixelWidthHeightRatio":F
    const/16 v1, 0x2c

    if-eq v6, v1, :cond_f

    move/from16 v1, v26

    if-eq v6, v1, :cond_f

    const/16 v1, 0x64

    if-eq v6, v1, :cond_f

    const/16 v1, 0x6e

    if-eq v6, v1, :cond_f

    const/16 v1, 0x7a

    if-eq v6, v1, :cond_f

    const/16 v1, 0xf4

    if-ne v6, v1, :cond_10

    :cond_f
    and-int/lit8 v1, v7, 0x10

    if-eqz v1, :cond_10

    .line 927
    const/4 v1, 0x0

    goto :goto_b

    .line 928
    :cond_10
    const/16 v1, 0x10

    :goto_b
    nop

    .line 929
    .local v1, "maxNumReorderFrames":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 931
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v18

    .line 932
    .local v18, "aspectRatioInfoPresentFlag":Z
    if-eqz v18, :cond_14

    .line 933
    move/from16 v21, v1

    move/from16 v26, v2

    const/16 v1, 0x8

    .end local v1    # "maxNumReorderFrames":I
    .end local v2    # "picWidthInMbs":I
    .local v21, "maxNumReorderFrames":I
    .local v26, "picWidthInMbs":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 934
    .local v2, "aspectRatioIdc":I
    const/16 v1, 0xff

    if-ne v2, v1, :cond_12

    .line 935
    move/from16 v37, v3

    const/16 v1, 0x10

    .end local v3    # "picHeightInMapUnits":I
    .local v37, "picHeightInMapUnits":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 936
    .local v3, "sarWidth":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 937
    .local v1, "sarHeight":I
    if-eqz v3, :cond_11

    if-eqz v1, :cond_11

    .line 938
    move/from16 v38, v4

    .end local v4    # "chromaFormatIdc":I
    .local v38, "chromaFormatIdc":I
    int-to-float v4, v3

    move/from16 v20, v3

    .end local v3    # "sarWidth":I
    .local v20, "sarWidth":I
    int-to-float v3, v1

    div-float v34, v4, v3

    goto :goto_c

    .line 937
    .end local v20    # "sarWidth":I
    .end local v38    # "chromaFormatIdc":I
    .restart local v3    # "sarWidth":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_11
    move/from16 v20, v3

    move/from16 v38, v4

    .line 940
    .end local v1    # "sarHeight":I
    .end local v3    # "sarWidth":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v38    # "chromaFormatIdc":I
    :goto_c
    goto :goto_d

    .end local v37    # "picHeightInMapUnits":I
    .end local v38    # "chromaFormatIdc":I
    .local v3, "picHeightInMapUnits":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_12
    move/from16 v37, v3

    move/from16 v38, v4

    .end local v3    # "picHeightInMapUnits":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v37    # "picHeightInMapUnits":I
    .restart local v38    # "chromaFormatIdc":I
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v1, v1

    if-ge v2, v1, :cond_13

    .line 941
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v34, v1, v2

    goto :goto_d

    .line 943
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 932
    .end local v21    # "maxNumReorderFrames":I
    .end local v26    # "picWidthInMbs":I
    .end local v37    # "picHeightInMapUnits":I
    .end local v38    # "chromaFormatIdc":I
    .local v1, "maxNumReorderFrames":I
    .local v2, "picWidthInMbs":I
    .restart local v3    # "picHeightInMapUnits":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_14
    move/from16 v21, v1

    move/from16 v26, v2

    move/from16 v37, v3

    move/from16 v38, v4

    .line 946
    .end local v1    # "maxNumReorderFrames":I
    .end local v2    # "picWidthInMbs":I
    .end local v3    # "picHeightInMapUnits":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v21    # "maxNumReorderFrames":I
    .restart local v26    # "picWidthInMbs":I
    .restart local v37    # "picHeightInMapUnits":I
    .restart local v38    # "chromaFormatIdc":I
    :goto_d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 947
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 949
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 950
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 952
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_e

    :cond_16
    move/from16 v1, v31

    :goto_e
    move/from16 v32, v1

    .line 953
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 954
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 955
    .local v2, "colorPrimaries":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 956
    .local v3, "transferCharacteristics":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 958
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v23

    .line 959
    nop

    .line 960
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v33

    .line 963
    .end local v2    # "colorPrimaries":I
    .end local v3    # "transferCharacteristics":I
    :cond_17
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 964
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 965
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 967
    :cond_18
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 968
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 970
    :cond_19
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 971
    .local v1, "nalHrdParametersPresent":Z
    if-eqz v1, :cond_1a

    .line 972
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 974
    :cond_1a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 975
    .local v2, "vclHrdParametersPresent":Z
    if-eqz v2, :cond_1b

    .line 976
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 978
    :cond_1b
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    .line 979
    :cond_1c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 981
    :cond_1d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 982
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 983
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 984
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 985
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 986
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 987
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 988
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 989
    .end local v21    # "maxNumReorderFrames":I
    .local v3, "maxNumReorderFrames":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move/from16 v25, v3

    move/from16 v22, v23

    move/from16 v23, v32

    move/from16 v24, v33

    goto :goto_f

    .line 982
    .end local v3    # "maxNumReorderFrames":I
    .restart local v21    # "maxNumReorderFrames":I
    :cond_1e
    move/from16 v25, v21

    move/from16 v22, v23

    move/from16 v23, v32

    move/from16 v24, v33

    goto :goto_f

    .line 929
    .end local v18    # "aspectRatioInfoPresentFlag":Z
    .end local v21    # "maxNumReorderFrames":I
    .end local v26    # "picWidthInMbs":I
    .end local v37    # "picHeightInMapUnits":I
    .end local v38    # "chromaFormatIdc":I
    .local v1, "maxNumReorderFrames":I
    .local v2, "picWidthInMbs":I
    .local v3, "picHeightInMapUnits":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_1f
    move/from16 v21, v1

    move/from16 v26, v2

    move/from16 v37, v3

    move/from16 v38, v4

    .end local v1    # "maxNumReorderFrames":I
    .end local v2    # "picWidthInMbs":I
    .end local v3    # "picHeightInMapUnits":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v21    # "maxNumReorderFrames":I
    .restart local v26    # "picWidthInMbs":I
    .restart local v37    # "picHeightInMapUnits":I
    .restart local v38    # "chromaFormatIdc":I
    move/from16 v25, v21

    move/from16 v22, v23

    move/from16 v23, v32

    move/from16 v24, v33

    .line 993
    .end local v21    # "maxNumReorderFrames":I
    .end local v32    # "colorRange":I
    .end local v33    # "colorTransfer":I
    .local v22, "colorSpace":I
    .local v23, "colorRange":I
    .local v24, "colorTransfer":I
    .local v25, "maxNumReorderFrames":I
    :goto_f
    move/from16 v18, v5

    .end local v5    # "frameNumLength":I
    .local v18, "frameNumLength":I
    new-instance v5, Landroidx/media3/container/NalUnitUtil$SpsData;

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v11, v28

    move/from16 v12, v29

    move/from16 v13, v34

    move/from16 v16, v36

    .end local v28    # "frameWidth":I
    .end local v29    # "frameHeight":I
    .end local v34    # "pixelWidthHeightRatio":F
    .end local v36    # "separateColorPlaneFlag":Z
    .local v11, "frameWidth":I
    .local v12, "frameHeight":I
    .local v13, "pixelWidthHeightRatio":F
    .local v16, "separateColorPlaneFlag":Z
    .local v19, "picOrderCntType":I
    .local v20, "picOrderCntLsbLength":I
    .local v21, "deltaPicOrderAlwaysZeroFlag":Z
    invoke-direct/range {v5 .. v25}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v5
.end method

.method private static skipH265DpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V
    .locals 6
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "numOutputLayerSets"    # I
    .param p2, "maxSubLayersInLayerSet"    # [I
    .param p3, "numLayersInIdList"    # [I
    .param p4, "necessaryLayerFlag"    # [[Z

    .line 2292
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_6

    .line 2293
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 2294
    .local v1, "subLayerFlagInfoPresentFlag":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget v3, p2, v0

    if-ge v2, v3, :cond_5

    .line 2296
    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    .line 2297
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .local v3, "subLayerDpbInfoPresentFlag":Z
    goto :goto_2

    .line 2299
    .end local v3    # "subLayerDpbInfoPresentFlag":Z
    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 2301
    .restart local v3    # "subLayerDpbInfoPresentFlag":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 2302
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_3
    aget v5, p3, v0

    if-ge v4, v5, :cond_3

    .line 2304
    aget-object v5, p4, v0

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_2

    .line 2305
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2302
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2308
    .end local v4    # "k":I
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2309
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2294
    .end local v3    # "subLayerDpbInfoPresentFlag":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2292
    .end local v1    # "subLayerFlagInfoPresentFlag":Z
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2313
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private static skipH265HrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;ZI)V
    .locals 11
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "commonInfPresentFlag"    # Z
    .param p2, "maxSubLayersMinus1"    # I

    .line 2086
    const/4 v0, 0x0

    .line 2087
    .local v0, "nalHrdParametersPresentFlag":Z
    const/4 v1, 0x0

    .line 2088
    .local v1, "vclHrdParametersPresentFlag":Z
    const/4 v2, 0x0

    .line 2089
    .local v2, "subPicHrdParametersPresentFlag":Z
    if-eqz p1, :cond_3

    .line 2090
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .line 2091
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 2092
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 2093
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 2094
    if-eqz v2, :cond_1

    .line 2097
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2099
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2100
    if-eqz v2, :cond_2

    .line 2101
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2105
    :cond_2
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2108
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_a

    .line 2109
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 2110
    .local v4, "fixedPicRateGeneralFlag":Z
    move v5, v4

    .line 2111
    .local v5, "fixedPicRateWithinCvsFlag":Z
    const/4 v6, 0x0

    .line 2112
    .local v6, "lowDelayHrdFlag":Z
    const/4 v7, 0x0

    .line 2113
    .local v7, "cpbCntMinus1":I
    if-nez v4, :cond_4

    .line 2114
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    .line 2116
    :cond_4
    if-eqz v5, :cond_5

    .line 2117
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_1

    .line 2119
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 2121
    :goto_1
    if-nez v6, :cond_6

    .line 2122
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 2124
    :cond_6
    const/4 v8, 0x0

    .line 2125
    .local v8, "numSubLayerHrdParameters":I
    add-int/2addr v8, v0

    .line 2126
    add-int/2addr v8, v1

    .line 2127
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v8, :cond_9

    .line 2128
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    if-gt v10, v7, :cond_8

    .line 2129
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2130
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2131
    if-eqz v2, :cond_7

    .line 2132
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2133
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2135
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2128
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2127
    .end local v10    # "k":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2108
    .end local v4    # "fixedPicRateGeneralFlag":Z
    .end local v5    # "fixedPicRateWithinCvsFlag":Z
    .end local v6    # "lowDelayHrdFlag":Z
    .end local v7    # "cpbCntMinus1":I
    .end local v8    # "numSubLayerHrdParameters":I
    .end local v9    # "j":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2139
    .end local v3    # "i":I
    :cond_a
    return-void
.end method

.method private static skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 6
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2455
    const/4 v0, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 2456
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 2457
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2459
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    .line 2461
    :cond_0
    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    shl-int v3, v4, v3

    const/16 v5, 0x40

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2462
    .local v3, "coefNum":I
    if-le v0, v4, :cond_1

    .line 2464
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 2466
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 2467
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 2466
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2456
    .end local v3    # "coefNum":I
    .end local v5    # "i":I
    :cond_2
    :goto_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v4, v3

    :cond_3
    add-int/2addr v2, v4

    goto :goto_1

    .line 2455
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2472
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method private static skipH265ShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 21
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2481
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 2486
    .local v0, "numShortTermRefPicSets":I
    const/4 v1, -0x1

    .line 2487
    .local v1, "previousNumNegativePics":I
    const/4 v2, -0x1

    .line 2488
    .local v2, "previousNumPositivePics":I
    const/4 v3, 0x0

    new-array v4, v3, [I

    .line 2489
    .local v4, "previousDeltaPocS0":[I
    new-array v5, v3, [I

    .line 2490
    .local v5, "previousDeltaPocS1":[I
    const/4 v6, 0x0

    .local v6, "stRpsIdx":I
    :goto_0
    if-ge v6, v0, :cond_12

    .line 2496
    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v3

    .line 2497
    .local v8, "interRefPicSetPredictionFlag":Z
    :goto_1
    if-eqz v8, :cond_d

    .line 2498
    add-int v9, v1, v2

    .line 2500
    .local v9, "previousNumDeltaPocs":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 2501
    .local v10, "deltaRpsSign":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v7

    .line 2502
    .local v11, "absDeltaRps":I
    mul-int/lit8 v12, v10, 0x2

    rsub-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    .line 2504
    .local v12, "deltaRps":I
    add-int/lit8 v13, v9, 0x1

    new-array v13, v13, [Z

    .line 2505
    .local v13, "useDeltaFlags":[Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-gt v14, v9, :cond_2

    .line 2506
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    if-nez v15, :cond_1

    .line 2507
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    aput-boolean v15, v13, v14

    goto :goto_3

    .line 2510
    :cond_1
    aput-boolean v7, v13, v14

    .line 2505
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2516
    .end local v14    # "j":I
    :cond_2
    const/4 v7, 0x0

    .line 2517
    .local v7, "i":I
    add-int/lit8 v14, v9, 0x1

    new-array v14, v14, [I

    .line 2518
    .local v14, "deltaPocS0":[I
    add-int/lit8 v15, v9, 0x1

    new-array v15, v15, [I

    .line 2519
    .local v15, "deltaPocS1":[I
    add-int/lit8 v16, v2, -0x1

    .local v16, "j":I
    :goto_4
    if-ltz v16, :cond_4

    .line 2520
    aget v17, v5, v16

    add-int v17, v17, v12

    .line 2521
    .local v17, "dPoc":I
    if-gez v17, :cond_3

    add-int v18, v1, v16

    aget-boolean v18, v13, v18

    if-eqz v18, :cond_3

    .line 2522
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "i":I
    .local v18, "i":I
    aput v17, v14, v7

    move/from16 v7, v18

    .line 2519
    .end local v17    # "dPoc":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 2525
    .end local v16    # "j":I
    :cond_4
    if-gez v12, :cond_5

    aget-boolean v16, v13, v9

    if-eqz v16, :cond_5

    .line 2526
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .local v16, "i":I
    aput v12, v14, v7

    move/from16 v7, v16

    .line 2528
    .end local v16    # "i":I
    .restart local v7    # "i":I
    :cond_5
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "j":I
    :goto_5
    if-ge v3, v1, :cond_7

    .line 2529
    aget v17, v4, v3

    add-int v17, v17, v12

    .line 2530
    .restart local v17    # "dPoc":I
    if-gez v17, :cond_6

    aget-boolean v18, v13, v3

    if-eqz v18, :cond_6

    .line 2531
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "i":I
    .restart local v18    # "i":I
    aput v17, v14, v7

    move/from16 v7, v18

    .line 2528
    .end local v17    # "dPoc":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2534
    .end local v3    # "j":I
    :cond_7
    move v3, v7

    .line 2535
    .local v3, "numNegativePics":I
    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 2537
    const/4 v7, 0x0

    .line 2538
    add-int/lit8 v17, v1, -0x1

    .local v17, "j":I
    :goto_6
    if-ltz v17, :cond_9

    .line 2539
    aget v18, v4, v17

    add-int v18, v18, v12

    .line 2540
    .local v18, "dPoc":I
    if-lez v18, :cond_8

    aget-boolean v19, v13, v17

    if-eqz v19, :cond_8

    .line 2541
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .local v19, "i":I
    aput v18, v15, v7

    move/from16 v7, v19

    .line 2538
    .end local v18    # "dPoc":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_8
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 2544
    .end local v17    # "j":I
    :cond_9
    if-lez v12, :cond_a

    aget-boolean v17, v13, v9

    if-eqz v17, :cond_a

    .line 2545
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "i":I
    .local v17, "i":I
    aput v12, v15, v7

    move/from16 v7, v17

    .line 2547
    .end local v17    # "i":I
    .restart local v7    # "i":I
    :cond_a
    const/16 v17, 0x0

    move/from16 v20, v17

    move/from16 v17, v0

    move/from16 v0, v20

    .local v0, "j":I
    .local v17, "numShortTermRefPicSets":I
    :goto_7
    if-ge v0, v2, :cond_c

    .line 2548
    aget v18, v5, v0

    add-int v18, v18, v12

    .line 2549
    .restart local v18    # "dPoc":I
    if-lez v18, :cond_b

    add-int v19, v1, v0

    aget-boolean v19, v13, v19

    if-eqz v19, :cond_b

    .line 2550
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .restart local v19    # "i":I
    aput v18, v15, v7

    move/from16 v7, v19

    .line 2547
    .end local v18    # "dPoc":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2553
    .end local v0    # "j":I
    :cond_c
    move v0, v7

    .line 2554
    .local v0, "numPositivePics":I
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 2555
    .end local v9    # "previousNumDeltaPocs":I
    .end local v10    # "deltaRpsSign":I
    .end local v11    # "absDeltaRps":I
    .end local v12    # "deltaRps":I
    .end local v13    # "useDeltaFlags":[Z
    .end local v15    # "deltaPocS1":[I
    .local v7, "deltaPocS1":[I
    goto :goto_c

    .line 2556
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v14    # "deltaPocS0":[I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_d
    move/from16 v17, v0

    .end local v0    # "numShortTermRefPicSets":I
    .restart local v17    # "numShortTermRefPicSets":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 2557
    .restart local v3    # "numNegativePics":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 2558
    .local v0, "numPositivePics":I
    new-array v14, v3, [I

    .line 2559
    .restart local v14    # "deltaPocS0":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    if-ge v9, v3, :cond_f

    .line 2560
    nop

    .line 2561
    if-lez v9, :cond_e

    add-int/lit8 v10, v9, -0x1

    aget v10, v14, v10

    goto :goto_9

    :cond_e
    const/4 v10, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v7

    sub-int/2addr v10, v11

    aput v10, v14, v9

    .line 2562
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2559
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2564
    .end local v9    # "i":I
    :cond_f
    new-array v9, v0, [I

    .line 2565
    .local v9, "deltaPocS1":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a
    if-ge v10, v0, :cond_11

    .line 2566
    nop

    .line 2567
    if-lez v10, :cond_10

    add-int/lit8 v11, v10, -0x1

    aget v11, v9, v11

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/2addr v12, v7

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 2568
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2565
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_11
    move-object v7, v9

    .line 2571
    .end local v9    # "deltaPocS1":[I
    .end local v10    # "i":I
    .restart local v7    # "deltaPocS1":[I
    :goto_c
    move v1, v3

    .line 2572
    move v2, v0

    .line 2573
    move-object v4, v14

    .line 2574
    move-object v5, v7

    .line 2490
    .end local v0    # "numPositivePics":I
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v8    # "interRefPicSetPredictionFlag":Z
    .end local v14    # "deltaPocS0":[I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2576
    .end local v6    # "stRpsIdx":I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_12
    return-void
.end method

.method private static skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 2
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2440
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2441
    .local v0, "codedPictureBufferCount":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2443
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2444
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2445
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2451
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2452
    return-void
.end method

.method private static skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "size"    # I

    .line 2427
    const/16 v0, 0x8

    .line 2428
    .local v0, "lastScale":I
    const/16 v1, 0x8

    .line 2429
    .local v1, "nextScale":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2430
    if-eqz v1, :cond_0

    .line 2431
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v3

    .line 2432
    .local v3, "deltaScale":I
    add-int v4, v0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    move v1, v4

    .line 2434
    .end local v3    # "deltaScale":I
    :cond_0
    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v0, v3

    .line 2429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2436
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private static skipToH265VuiPresentFlagAfterDpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[[Z)V
    .locals 4
    .param p0, "data"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "maxLayers"    # I
    .param p2, "directDependencyFlag"    # [[Z

    .line 2322
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 2323
    .local v0, "directDepTypeLen":I
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2324
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_2

    .line 2328
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 2329
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2330
    aget-object v3, p2, v1

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 2331
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2329
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2328
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2336
    .end local v1    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 2337
    .local v1, "nonVuiExtensionLen":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_4

    .line 2338
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2337
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2340
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .line 557
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, "position":I
    const/4 v2, 0x0

    .line 560
    .local v2, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v1, p1, :cond_2

    .line 561
    :try_start_0
    invoke-static {p0, v1, p1}, Landroidx/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v3

    move v1, v3

    .line 562
    if-ge v1, p1, :cond_0

    .line 563
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v3, v3

    if-gt v3, v2, :cond_1

    .line 565
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    .line 566
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    sput-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 568
    :cond_1
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v1, v3, v2

    .line 569
    add-int/lit8 v1, v1, 0x3

    move v2, v4

    goto :goto_0

    .line 589
    .end local v1    # "position":I
    .end local v4    # "scratchEscapeCount":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 573
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int v3, p1, v2

    .line 574
    .local v3, "unescapedLength":I
    const/4 v4, 0x0

    .line 575
    .local v4, "escapedPosition":I
    const/4 v5, 0x0

    .line 576
    .local v5, "unescapedPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 577
    sget-object v7, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    aget v7, v7, v6

    .line 578
    .local v7, "nextEscapePosition":I
    sub-int v8, v7, v4

    .line 579
    .local v8, "copyLength":I
    invoke-static {p0, v4, p0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 580
    add-int/2addr v5, v8

    .line 581
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "unescapedPosition":I
    .local v9, "unescapedPosition":I
    const/4 v10, 0x0

    aput-byte v10, p0, v5

    .line 582
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v10, p0, v9

    .line 583
    add-int/lit8 v9, v8, 0x3

    add-int/2addr v4, v9

    .line 576
    .end local v7    # "nextEscapePosition":I
    .end local v8    # "copyLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 586
    .end local v6    # "i":I
    :cond_3
    sub-int v6, v3, v5

    .line 587
    .local v6, "remainingLength":I
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    monitor-exit v0

    return v3

    .line 589
    .end local v1    # "position":I
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4    # "escapedPosition":I
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
