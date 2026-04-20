.class public final Landroidx/media3/container/ObuParser$FrameHeader;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameHeader"
.end annotation


# static fields
.field private static final FRAME_TYPE_INTRA_ONLY_FRAME:I = 0x2

.field private static final FRAME_TYPE_KEY_FRAME:I = 0x0

.field private static final FRAME_TYPE_SWITCH_FRAME:I = 0x3

.field private static final PROBE_BYTES:I = 0x4


# instance fields
.field private final isDependedOn:Z


# direct methods
.method private constructor <init>(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)V
    .locals 12
    .param p1, "sequenceHeader"    # Landroidx/media3/container/ObuParser$SequenceHeader;
    .param p2, "obu"    # Landroidx/media3/container/ObuParser$Obu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iget v0, p2, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroidx/media3/container/ObuParser$Obu;->type:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 453
    iget-object v0, p2, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 455
    .local v0, "bytes":[B
    iget-object v1, p2, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 456
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 457
    .local v1, "obuData":Landroidx/media3/common/util/ParsableBitArray;
    iget-boolean v5, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    invoke-static {v5}, Landroidx/media3/container/ObuParser;->access$200(Z)V

    .line 458
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 459
    .local v5, "showExistingFrame":Z
    if-eqz v5, :cond_2

    .line 460
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    .line 461
    return-void

    .line 463
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 464
    .local v7, "frameType":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 465
    .local v8, "showFrame":Z
    iget-boolean v9, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    invoke-static {v9}, Landroidx/media3/container/ObuParser;->access$200(Z)V

    .line 466
    if-nez v8, :cond_3

    .line 469
    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    .line 470
    return-void

    .line 473
    :cond_3
    if-eq v7, v3, :cond_5

    if-nez v7, :cond_4

    goto :goto_2

    .line 476
    :cond_4
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    .local v9, "errorResilientMode":Z
    goto :goto_3

    .line 474
    .end local v9    # "errorResilientMode":Z
    :cond_5
    :goto_2
    const/4 v9, 0x1

    .line 478
    .restart local v9    # "errorResilientMode":Z
    :goto_3
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 479
    iget-boolean v10, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    xor-int/2addr v10, v4

    invoke-static {v10}, Landroidx/media3/container/ObuParser;->access$200(Z)V

    .line 480
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    .line 481
    .local v10, "allowScreenContentTools":Z
    if-eqz v10, :cond_6

    .line 482
    iget-boolean v11, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    xor-int/2addr v11, v4

    invoke-static {v11}, Landroidx/media3/container/ObuParser;->access$200(Z)V

    .line 483
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 485
    :cond_6
    iget-boolean v11, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    invoke-static {v11}, Landroidx/media3/container/ObuParser;->access$200(Z)V

    .line 486
    if-eq v7, v3, :cond_7

    .line 487
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 489
    :cond_7
    iget v11, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 490
    if-eq v7, v6, :cond_8

    if-eqz v7, :cond_8

    if-nez v9, :cond_8

    .line 493
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 496
    :cond_8
    if-eq v7, v3, :cond_a

    if-nez v7, :cond_9

    goto :goto_4

    .line 499
    :cond_9
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .local v3, "refreshFrameFlags":I
    goto :goto_5

    .line 497
    .end local v3    # "refreshFrameFlags":I
    :cond_a
    :goto_4
    const/16 v3, 0xff

    .line 501
    .restart local v3    # "refreshFrameFlags":I
    :goto_5
    if-eqz v3, :cond_b

    move v2, v4

    :cond_b
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    .line 502
    return-void
.end method

.method public static parse(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$FrameHeader;
    .locals 2
    .param p0, "sequenceHeader"    # Landroidx/media3/container/ObuParser$SequenceHeader;
    .param p1, "obu"    # Landroidx/media3/container/ObuParser$Obu;

    .line 445
    :try_start_0
    new-instance v0, Landroidx/media3/container/ObuParser$FrameHeader;

    invoke-direct {v0, p0, p1}, Landroidx/media3/container/ObuParser$FrameHeader;-><init>(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "ignored":Landroidx/media3/container/ObuParser$NotYetImplementedException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public isDependedOn()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    return v0
.end method
