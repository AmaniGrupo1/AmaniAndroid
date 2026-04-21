.class public final Landroidx/media3/extractor/text/cea/Cea708Decoder;
.super Landroidx/media3/extractor/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;,
        Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;,
        Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

.field private final ccData:Landroidx/media3/common/util/ParsableByteArray;

.field private final cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field private currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private final isWideAspectRatio:Z

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private previousSequenceNumber:I

.field private final selectedServiceNumber:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 5
    .param p1, "accessibilityChannel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 176
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;-><init>()V

    .line 177
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 178
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    .line 180
    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 181
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 183
    invoke-static {p2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->isWideAspectRatio:Z

    .line 185
    const/16 v1, 0x8

    new-array v2, v1, [Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iput-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 186
    const/4 v2, 0x0

    .line 190
    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 186
    if-ge v2, v1, :cond_2

    .line 187
    new-instance v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v4}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v4, v3, v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 190
    .end local v2    # "i":I
    :cond_2
    aget-object v0, v3, v0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 191
    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    .line 288
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->processCurrentPacket()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 295
    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v0, "displayCueInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 820
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->build()Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    move-result-object v2

    .line 822
    .local v2, "cueInfo":Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    if-eqz v2, :cond_0

    .line 823
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    .end local v2    # "cueInfo":Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->access$000()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 828
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 829
    .local v1, "displayCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 830
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Landroidx/media3/common/text/Cue;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 832
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private handleC0Command(I)V
    .locals 3
    .param p1, "command"    # I

    .line 401
    sparse-switch p1, :sswitch_data_0

    .line 421
    const/16 v0, 0x11

    const-string v1, "Cea708Decoder"

    if-lt p1, v0, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 419
    :sswitch_0
    goto :goto_0

    .line 415
    :sswitch_1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 416
    goto :goto_0

    .line 412
    :sswitch_2
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 413
    goto :goto_0

    .line 409
    :sswitch_3
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backspace()V

    .line 410
    goto :goto_0

    .line 406
    :sswitch_4
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 407
    goto :goto_0

    .line 404
    :sswitch_5
    goto :goto_0

    .line 424
    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C0 command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3 -> :sswitch_4
        0x8 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private handleC1Command(I)V
    .locals 5
    .param p1, "command"    # I

    .line 435
    const/16 v0, 0x10

    const/4 v1, 0x1

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    .line 545
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea708Decoder"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 536
    :pswitch_1
    add-int/lit16 v0, p1, -0x98

    .line 537
    .local v0, "window":I
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 539
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v0, :cond_e

    .line 540
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 541
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    goto/16 :goto_5

    .line 521
    .end local v0    # "window":I
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 525
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    .line 527
    goto/16 :goto_5

    .line 513
    :pswitch_3
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 517
    :cond_1
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenLocation()V

    .line 519
    goto/16 :goto_5

    .line 505
    :pswitch_4
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 509
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenColor()V

    .line 511
    goto/16 :goto_5

    .line 497
    :pswitch_5
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v1

    if-nez v1, :cond_3

    .line 499
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 501
    :cond_3
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    .line 503
    goto/16 :goto_5

    .line 494
    :pswitch_6
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 495
    goto/16 :goto_5

    .line 492
    :pswitch_7
    goto/16 :goto_5

    .line 488
    :pswitch_8
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 489
    goto/16 :goto_5

    .line 480
    :pswitch_9
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_5

    .line 481
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 482
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    .line 480
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "i":I
    :cond_5
    goto/16 :goto_5

    .line 472
    :pswitch_a
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-gt v0, v2, :cond_7

    .line 473
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v4, v0, 0x8

    aget-object v3, v3, v4

    .line 475
    .local v3, "cueInfoBuilder":Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;
    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 472
    .end local v3    # "cueInfoBuilder":Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    .end local v0    # "i":I
    :cond_7
    goto :goto_5

    .line 465
    :pswitch_b
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    if-gt v0, v2, :cond_9

    .line 466
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 467
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 465
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 470
    .end local v0    # "i":I
    :cond_9
    goto :goto_5

    .line 458
    :pswitch_c
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_3
    if-gt v0, v2, :cond_b

    .line 459
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 460
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v4, v0, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 458
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 463
    .end local v0    # "i":I
    :cond_b
    goto :goto_5

    .line 451
    :pswitch_d
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_4
    if-gt v0, v2, :cond_d

    .line 452
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 453
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    .line 451
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 456
    .end local v0    # "i":I
    :cond_d
    goto :goto_5

    .line 444
    :pswitch_e
    add-int/lit8 v0, p1, -0x80

    .line 445
    .local v0, "window":I
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v0, :cond_e

    .line 446
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 447
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 547
    .end local v0    # "window":I
    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 2
    .param p1, "command"    # I

    .line 551
    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 554
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 555
    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 556
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 557
    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 558
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 560
    :cond_3
    :goto_0
    return-void
.end method

.method private handleC3Command(I)V
    .locals 3
    .param p1, "command"    # I

    .line 564
    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 565
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 566
    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 567
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 568
    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 572
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 573
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 574
    .local v0, "length":I
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    mul-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 576
    .end local v0    # "length":I
    :cond_2
    :goto_0
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 12
    .param p1, "window"    # I

    .line 778
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v0, p1

    .line 782
    .local v1, "cueInfoBuilder":Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 783
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 786
    .local v0, "visible":Z
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 787
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 789
    .local v3, "priority":I
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 790
    .local v5, "relativePositioning":Z
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 792
    .local v6, "verticalAnchor":I
    iget-object v7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 794
    .local v7, "horizontalAnchor":I
    iget-object v8, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 795
    .local v8, "anchorId":I
    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 797
    .local v9, "rowCount":I
    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v10, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 799
    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 801
    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v10, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 802
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 803
    .local v2, "windowStyle":I
    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v10, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 805
    .local v10, "penStyle":I
    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    move v9, v2

    move v2, v0

    .end local v0    # "visible":Z
    .local v2, "visible":Z
    .local v4, "relativePositioning":Z
    .local v5, "verticalAnchor":I
    .local v6, "horizontalAnchor":I
    .local v7, "rowCount":I
    .local v9, "windowStyle":I
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defineWindow(ZIZIIIIII)V

    .line 815
    return-void
.end method

.method private handleG0Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .line 579
    nop

    .line 582
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 579
    const/16 v1, 0x7f

    if-ne p1, v1, :cond_0

    .line 580
    const/16 v1, 0x266b

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 582
    :cond_0
    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 584
    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .line 587
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 588
    return-void
.end method

.method private handleG2Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .line 591
    sparse-switch p1, :sswitch_data_0

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea708Decoder"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 668
    :sswitch_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x250c

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 669
    goto/16 :goto_0

    .line 665
    :sswitch_1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2518

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 666
    goto/16 :goto_0

    .line 662
    :sswitch_2
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 663
    goto/16 :goto_0

    .line 659
    :sswitch_3
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2514

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 660
    goto/16 :goto_0

    .line 656
    :sswitch_4
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2510

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 657
    goto/16 :goto_0

    .line 653
    :sswitch_5
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2502

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 654
    goto/16 :goto_0

    .line 650
    :sswitch_6
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215e

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 651
    goto/16 :goto_0

    .line 647
    :sswitch_7
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215d

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 648
    goto/16 :goto_0

    .line 644
    :sswitch_8
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215c

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 645
    goto/16 :goto_0

    .line 641
    :sswitch_9
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215b

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 642
    goto/16 :goto_0

    .line 638
    :sswitch_a
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x178

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 639
    goto/16 :goto_0

    .line 635
    :sswitch_b
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2120

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 636
    goto/16 :goto_0

    .line 632
    :sswitch_c
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x153

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 633
    goto/16 :goto_0

    .line 629
    :sswitch_d
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x161

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 630
    goto :goto_0

    .line 626
    :sswitch_e
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2122

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 627
    goto :goto_0

    .line 623
    :sswitch_f
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 624
    goto :goto_0

    .line 620
    :sswitch_10
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x201d

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 621
    goto :goto_0

    .line 617
    :sswitch_11
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x201c

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 618
    goto :goto_0

    .line 614
    :sswitch_12
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2019

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 615
    goto :goto_0

    .line 611
    :sswitch_13
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2018

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 612
    goto :goto_0

    .line 608
    :sswitch_14
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2588

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 609
    goto :goto_0

    .line 605
    :sswitch_15
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x152

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 606
    goto :goto_0

    .line 602
    :sswitch_16
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 603
    goto :goto_0

    .line 599
    :sswitch_17
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 600
    goto :goto_0

    .line 596
    :sswitch_18
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 597
    goto :goto_0

    .line 593
    :sswitch_19
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 594
    nop

    .line 675
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_19
        0x21 -> :sswitch_18
        0x25 -> :sswitch_17
        0x2a -> :sswitch_16
        0x2c -> :sswitch_15
        0x30 -> :sswitch_14
        0x31 -> :sswitch_13
        0x32 -> :sswitch_12
        0x33 -> :sswitch_11
        0x34 -> :sswitch_10
        0x35 -> :sswitch_f
        0x39 -> :sswitch_e
        0x3a -> :sswitch_d
        0x3c -> :sswitch_c
        0x3d -> :sswitch_b
        0x3f -> :sswitch_a
        0x76 -> :sswitch_9
        0x77 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_6
        0x7a -> :sswitch_5
        0x7b -> :sswitch_4
        0x7c -> :sswitch_3
        0x7d -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private handleG3Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .line 678
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 679
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x33c4

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea708Decoder"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 685
    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 10

    .line 690
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 691
    .local v3, "textTag":I
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 692
    .local v4, "offset":I
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 694
    .local v5, "penSize":I
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 695
    .local v6, "italicsToggle":Z
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 696
    .local v7, "underlineToggle":Z
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 697
    .local v8, "edgeType":I
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 699
    .local v9, "fontStyle":I
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v2 .. v9}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    .line 701
    return-void
.end method

.method private handleSetPenColor()V
    .locals 15

    .line 706
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 707
    .local v0, "foregroundO":I
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 708
    .local v2, "foregroundR":I
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 709
    .local v3, "foregroundG":I
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 710
    .local v4, "foregroundB":I
    nop

    .line 711
    invoke-static {v2, v3, v4, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v5

    .line 713
    .local v5, "foregroundColor":I
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 714
    .local v6, "backgroundO":I
    iget-object v7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 715
    .local v7, "backgroundR":I
    iget-object v8, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v8, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 716
    .local v8, "backgroundG":I
    iget-object v9, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v9, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 717
    .local v9, "backgroundB":I
    nop

    .line 718
    invoke-static {v7, v8, v9, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v10

    .line 720
    .local v10, "backgroundColor":I
    iget-object v11, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 721
    iget-object v11, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 722
    .local v11, "edgeR":I
    iget-object v12, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v12, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 723
    .local v12, "edgeG":I
    iget-object v13, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v13, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 724
    .local v1, "edgeB":I
    invoke-static {v11, v12, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v13

    .line 726
    .local v13, "edgeColor":I
    iget-object v14, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v14, v5, v10, v13}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    .line 727
    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    .line 732
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 733
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 735
    .local v0, "row":I
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 736
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 738
    .local v1, "column":I
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenLocation(II)V

    .line 739
    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 17

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 745
    .local v1, "fillO":I
    iget-object v3, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 746
    .local v3, "fillR":I
    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 747
    .local v4, "fillG":I
    iget-object v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 748
    .local v5, "fillB":I
    invoke-static {v3, v4, v5, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v7

    .line 750
    .local v7, "fillColor":I
    iget-object v6, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 751
    .local v6, "borderType":I
    iget-object v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 752
    .local v14, "borderR":I
    iget-object v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 753
    .local v15, "borderG":I
    iget-object v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 754
    .local v8, "borderB":I
    move v9, v8

    .end local v8    # "borderB":I
    .local v9, "borderB":I
    invoke-static {v14, v15, v9}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v8

    .line 756
    .local v8, "borderColor":I
    iget-object v10, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 757
    or-int/lit8 v6, v6, 0x4

    move v10, v6

    goto :goto_0

    .line 756
    :cond_0
    move v10, v6

    .line 759
    .end local v6    # "borderType":I
    .local v10, "borderType":I
    :goto_0
    iget-object v6, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 760
    .local v6, "wordWrapToggle":Z
    iget-object v11, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v11, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 761
    .local v11, "printDirection":I
    iget-object v12, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v12, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 762
    .local v12, "scrollDirection":I
    iget-object v13, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 765
    .local v13, "justification":I
    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    move/from16 v16, v1

    .end local v1    # "fillO":I
    .local v16, "fillO":I
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 767
    move v1, v9

    move v9, v6

    .end local v6    # "wordWrapToggle":Z
    .local v1, "borderB":I
    .local v9, "wordWrapToggle":Z
    iget-object v6, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v6 .. v13}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    .line 775
    return-void
.end method

.method private processCurrentPacket()V
    .locals 13
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentDtvCcPacket"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const-string v3, "Cea708Decoder"

    if-eq v0, v1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 327
    .local v0, "cuesNeedUpdate":Z
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v4, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 328
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-lez v1, :cond_e

    .line 330
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 331
    .local v1, "serviceNumber":I
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 332
    .local v4, "blockSize":I
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    .line 334
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 335
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 336
    if-ge v1, v5, :cond_1

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid extended service number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    if-nez v4, :cond_2

    .line 343
    if-eqz v1, :cond_e

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceNumber is non-zero ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") when blockSize is 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 349
    :cond_2
    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 356
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 349
    if-eq v1, v5, :cond_3

    .line 350
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 351
    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v5

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v5, v6

    .line 357
    .local v5, "endBlockPosition":I
    :goto_1
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v6

    if-ge v6, v5, :cond_d

    .line 358
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 359
    .local v6, "command":I
    const/16 v8, 0x10

    const/16 v9, 0xff

    const/16 v10, 0x9f

    const/16 v11, 0x7f

    const/16 v12, 0x1f

    if-eq v6, v8, :cond_8

    .line 360
    if-gt v6, v12, :cond_4

    .line 361
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_2

    .line 363
    :cond_4
    if-gt v6, v11, :cond_5

    .line 364
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG0Character(I)V

    .line 365
    const/4 v0, 0x1

    goto :goto_2

    .line 366
    :cond_5
    if-gt v6, v10, :cond_6

    .line 367
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC1Command(I)V

    .line 368
    const/4 v0, 0x1

    goto :goto_2

    .line 369
    :cond_6
    if-gt v6, v9, :cond_7

    .line 370
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG1Character(I)V

    .line 371
    const/4 v0, 0x1

    goto :goto_2

    .line 373
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid base command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 377
    :cond_8
    iget-object v8, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 378
    if-gt v6, v12, :cond_9

    .line 379
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_2

    .line 380
    :cond_9
    if-gt v6, v11, :cond_a

    .line 381
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG2Character(I)V

    .line 382
    const/4 v0, 0x1

    goto :goto_2

    .line 383
    :cond_a
    if-gt v6, v10, :cond_b

    .line 384
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_2

    .line 385
    :cond_b
    if-gt v6, v9, :cond_c

    .line 386
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG3Character(I)V

    .line 387
    const/4 v0, 0x1

    goto :goto_2

    .line 389
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid extended command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v6    # "command":I
    :goto_2
    goto/16 :goto_1

    .line 393
    .end local v1    # "serviceNumber":I
    .end local v4    # "blockSize":I
    .end local v5    # "endBlockPosition":I
    :cond_d
    goto/16 :goto_0

    .line 395
    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 396
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 398
    :cond_f
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    .line 836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 837
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSubtitle()Landroidx/media3/extractor/text/Subtitle;
    .locals 2

    .line 216
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 217
    new-instance v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 17
    .param p1, "inputBuffer"    # Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 225
    .local v2, "subtitleData":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 226
    .local v3, "inputBufferData":[B
    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 227
    :goto_0
    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    .line 228
    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    .line 230
    .local v4, "ccTypeAndValid":I
    and-int/lit8 v6, v4, 0x3

    .line 231
    .local v6, "ccType":I
    and-int/lit8 v7, v4, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ne v7, v9, :cond_0

    move v7, v10

    goto :goto_1

    :cond_0
    move v7, v8

    .line 232
    .local v7, "ccValid":Z
    :goto_1
    iget-object v11, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    int-to-byte v11, v11

    .line 233
    .local v11, "ccData1":B
    iget-object v12, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    int-to-byte v12, v12

    .line 236
    .local v12, "ccData2":B
    const/4 v13, 0x2

    if-eq v6, v13, :cond_1

    if-eq v6, v5, :cond_1

    .line 237
    goto :goto_0

    .line 240
    :cond_1
    if-nez v7, :cond_2

    .line 242
    goto :goto_0

    .line 245
    :cond_2
    const-string v14, "Cea708Decoder"

    if-ne v6, v5, :cond_5

    .line 246
    invoke-direct {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 248
    and-int/lit16 v5, v11, 0xc0

    shr-int/lit8 v5, v5, 0x6

    .line 249
    .local v5, "sequenceNumber":I
    iget v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v15, -0x1

    if-eq v8, v15, :cond_3

    iget v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    add-int/2addr v8, v10

    rem-int/2addr v8, v9

    if-eq v5, v8, :cond_3

    .line 251
    invoke-direct {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sequence number discontinuity. previous="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_3
    iput v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    .line 261
    and-int/lit8 v8, v11, 0x3f

    .line 262
    .local v8, "packetSize":I
    if-nez v8, :cond_4

    .line 263
    const/16 v8, 0x40

    .line 266
    :cond_4
    new-instance v9, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v9, v5, v8}, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v9, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 267
    iget-object v9, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v9, v9, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v14, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v15, v14, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    move/from16 v16, v10

    add-int/lit8 v10, v15, 0x1

    iput v10, v14, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v12, v9, v15

    .line 268
    .end local v5    # "sequenceNumber":I
    .end local v8    # "packetSize":I
    goto :goto_2

    .line 270
    :cond_5
    move/from16 v16, v10

    if-ne v6, v13, :cond_6

    move/from16 v8, v16

    :cond_6
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 272
    iget-object v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v5, :cond_7

    .line 273
    const-string v5, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {v14, v5}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    goto/16 :goto_0

    .line 277
    :cond_7
    iget-object v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v5, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v9, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v11, v5, v9

    .line 278
    iget-object v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v5, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v9, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v12, v5, v9

    .line 281
    :goto_2
    iget-object v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v8, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr v8, v13

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_8

    .line 282
    invoke-direct {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 284
    .end local v4    # "ccTypeAndValid":I
    .end local v6    # "ccType":I
    .end local v7    # "ccValid":Z
    .end local v11    # "ccData1":B
    .end local v12    # "ccData2":B
    :cond_8
    goto/16 :goto_0

    .line 285
    :cond_9
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 53
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 53
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 200
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->flush()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 202
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 203
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 204
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    aget-object v1, v1, v2

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 205
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 206
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 207
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 195
    const-string v0, "Cea708Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .line 211
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 53
    invoke-super {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/media3/extractor/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
