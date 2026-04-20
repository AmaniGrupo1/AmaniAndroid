.class public final Landroidx/media3/extractor/mp4/SmtaAtomUtil;
.super Ljava/lang/Object;
.source "SmtaAtomUtil.java"


# static fields
.field private static final CAMCORDER_FRC_SUPERSLOW_MOTION:I = 0x9

.field private static final CAMCORDER_FRC_SUPERSLOW_MOTION_HEVC:I = 0x16

.field private static final CAMCORDER_NORMAL:I = 0x0

.field private static final CAMCORDER_QFRC_SUPERSLOW_MOTION:I = 0x17

.field private static final CAMCORDER_SINGLE_SUPERSLOW_MOTION:I = 0x7

.field private static final CAMCORDER_SLOW_MOTION_V2:I = 0xc

.field private static final CAMCORDER_SLOW_MOTION_V2_120:I = 0xd

.field private static final CAMCORDER_SLOW_MOTION_V2_HEVC:I = 0x15

.field private static final NO_VALUE:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCaptureFrameRate(ILandroidx/media3/common/util/ParsableByteArray;I)I
    .locals 4
    .param p0, "recordingMode"    # I
    .param p1, "smta"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "limit"    # I

    .line 122
    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    .line 123
    const/16 v0, 0xf0

    return v0

    .line 124
    :cond_0
    const/16 v1, 0xd

    if-ne p0, v1, :cond_1

    .line 125
    const/16 v0, 0x78

    return v0

    .line 126
    :cond_1
    const/16 v1, 0x15

    const v2, -0x7fffffff

    if-eq p0, v1, :cond_2

    .line 127
    return v2

    .line 130
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_6

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int/2addr v1, v3

    if-le v1, p2, :cond_3

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 135
    .local v1, "atomSize":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 136
    .local v3, "atomType":I
    if-lt v1, v0, :cond_5

    const v0, 0x73726672

    if-eq v3, v0, :cond_4

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v0

    return v0

    .line 137
    :cond_5
    :goto_0
    return v2

    .line 131
    .end local v1    # "atomSize":I
    .end local v3    # "atomType":I
    :cond_6
    :goto_1
    return v2
.end method

.method public static parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 10
    .param p0, "smta"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 74
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 75
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_6

    .line 76
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 77
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 78
    .local v2, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 79
    .local v3, "atomType":I
    const v4, 0x73617574

    if-ne v3, v4, :cond_5

    .line 81
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    .line 82
    return-object v1

    .line 84
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 88
    const/4 v4, -0x1

    .line 89
    .local v4, "recordingMode":I
    const/4 v5, 0x0

    .line 90
    .local v5, "svcTemporalLayerCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    .line 91
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 92
    .local v7, "key":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 93
    .local v9, "value":I
    if-nez v7, :cond_1

    .line 94
    move v4, v9

    goto :goto_2

    .line 95
    :cond_1
    if-ne v7, v8, :cond_2

    .line 96
    move v5, v9

    .line 90
    .end local v7    # "key":I
    .end local v9    # "value":I
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 100
    .end local v6    # "i":I
    :cond_3
    invoke-static {v4, p0, p1}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->getCaptureFrameRate(ILandroidx/media3/common/util/ParsableByteArray;I)I

    move-result v6

    .line 101
    .local v6, "captureFrameRate":I
    const v7, -0x7fffffff

    if-ne v6, v7, :cond_4

    .line 102
    return-object v1

    .line 105
    :cond_4
    new-instance v1, Landroidx/media3/common/Metadata;

    new-array v7, v8, [Landroidx/media3/common/Metadata$Entry;

    new-instance v8, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    int-to-float v9, v6

    invoke-direct {v8, v9, v5}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-direct {v1, v7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v1

    .line 107
    .end local v4    # "recordingMode":I
    .end local v5    # "svcTemporalLayerCount":I
    .end local v6    # "captureFrameRate":I
    :cond_5
    add-int v1, v0, v2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 108
    .end local v0    # "atomPosition":I
    .end local v2    # "atomSize":I
    .end local v3    # "atomType":I
    goto :goto_0

    .line 109
    :cond_6
    return-object v1
.end method
