.class public final Landroidx/media3/container/ObuParser;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/ObuParser$Obu;,
        Landroidx/media3/container/ObuParser$NotYetImplementedException;,
        Landroidx/media3/container/ObuParser$FrameHeader;,
        Landroidx/media3/container/ObuParser$SequenceHeader;
    }
.end annotation


# static fields
.field public static final OBU_FRAME:I = 0x6

.field public static final OBU_FRAME_HEADER:I = 0x3

.field public static final OBU_METADATA:I = 0x5

.field public static final OBU_PADDING:I = 0xf

.field public static final OBU_SEQUENCE_HEADER:I = 0x1

.field public static final OBU_TEMPORAL_DELIMITER:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 36
    invoke-static {p0}, Landroidx/media3/container/ObuParser;->skipUvlc(Landroidx/media3/common/util/ParsableBitArray;)V

    return-void
.end method

.method static synthetic access$200(Z)V
    .locals 0
    .param p0, "x0"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 36
    invoke-static {p0}, Landroidx/media3/container/ObuParser;->throwWhenFeatureRequired(Z)V

    return-void
.end method

.method private static leb128(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 129
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 130
    .local v2, "leb128Byte":I
    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 131
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_0

    .line 132
    goto :goto_1

    .line 128
    .end local v2    # "leb128Byte":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private static skipUvlc(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 2
    .param p0, "parsableBitArray"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 408
    .local v1, "done":Z
    if-eqz v1, :cond_1

    .line 409
    nop

    .line 415
    .end local v1    # "done":Z
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 416
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 418
    :cond_0
    return-void

    .line 411
    .restart local v1    # "done":Z
    :cond_1
    nop

    .end local v1    # "done":Z
    add-int/lit8 v0, v0, 0x1

    .line 412
    goto :goto_0
.end method

.method public static split(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 7
    .param p0, "sample"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/container/ObuParser$Obu;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    .local v0, "readOnlySample":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "obuList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/container/ObuParser$Obu;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 95
    .local v2, "headerByte":I
    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0xf

    .line 96
    .local v3, "obuType":I
    shr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x1

    .line 97
    .local v4, "extensionFlag":I
    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 100
    :cond_0
    shr-int/lit8 v5, v2, 0x1

    and-int/lit8 v5, v5, 0x1

    .line 101
    .local v5, "obuHasSizeField":I
    if-eqz v5, :cond_1

    .line 102
    invoke-static {v0}, Landroidx/media3/container/ObuParser;->leb128(Ljava/nio/ByteBuffer;)I

    move-result v6

    .local v6, "obuSize":I
    goto :goto_1

    .line 106
    .end local v6    # "obuSize":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v2    # "headerByte":I
    .end local v4    # "extensionFlag":I
    .end local v5    # "obuHasSizeField":I
    .restart local v6    # "obuSize":I
    :goto_1
    nop

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 116
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 119
    .local v2, "payload":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 120
    new-instance v4, Landroidx/media3/container/ObuParser$Obu;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v5}, Landroidx/media3/container/ObuParser$Obu;-><init>(ILjava/nio/ByteBuffer;Landroidx/media3/container/ObuParser$1;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    .end local v2    # "payload":Ljava/nio/ByteBuffer;
    .end local v3    # "obuType":I
    .end local v6    # "obuSize":I
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 112
    .local v2, "ignored":Ljava/nio/BufferUnderflowException;
    nop

    .line 123
    .end local v2    # "ignored":Ljava/nio/BufferUnderflowException;
    :cond_3
    :goto_2
    return-object v1
.end method

.method private static throwWhenFeatureRequired(Z)V
    .locals 2
    .param p0, "expression"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 508
    if-nez p0, :cond_0

    .line 511
    return-void

    .line 509
    :cond_0
    new-instance v0, Landroidx/media3/container/ObuParser$NotYetImplementedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/container/ObuParser$NotYetImplementedException;-><init>(Landroidx/media3/container/ObuParser$1;)V

    throw v0
.end method
