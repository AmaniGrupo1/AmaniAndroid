.class public final Landroidx/media3/extractor/text/cea/Cea608Decoder;
.super Landroidx/media3/extractor/text/cea/CeaDecoder;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
    }
.end annotation


# static fields
.field private static final BASIC_CHARACTER_SET:[I

.field private static final CC_FIELD_FLAG:I = 0x1

.field private static final CC_IMPLICIT_DATA_HEADER:B = -0x4t

.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final CC_TYPE_FLAG:I = 0x2

.field private static final CC_VALID_FLAG:I = 0x4

.field private static final COLUMN_INDICES:[I

.field private static final CTRL_BACKSPACE:B = 0x21t

.field private static final CTRL_CARRIAGE_RETURN:B = 0x2dt

.field private static final CTRL_DELETE_TO_END_OF_ROW:B = 0x24t

.field private static final CTRL_END_OF_CAPTION:B = 0x2ft

.field private static final CTRL_ERASE_DISPLAYED_MEMORY:B = 0x2ct

.field private static final CTRL_ERASE_NON_DISPLAYED_MEMORY:B = 0x2et

.field private static final CTRL_RESUME_CAPTION_LOADING:B = 0x20t

.field private static final CTRL_RESUME_DIRECT_CAPTIONING:B = 0x29t

.field private static final CTRL_RESUME_TEXT_DISPLAY:B = 0x2bt

.field private static final CTRL_ROLL_UP_CAPTIONS_2_ROWS:B = 0x25t

.field private static final CTRL_ROLL_UP_CAPTIONS_3_ROWS:B = 0x26t

.field private static final CTRL_ROLL_UP_CAPTIONS_4_ROWS:B = 0x27t

.field private static final CTRL_TEXT_RESTART:B = 0x2at

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field public static final MIN_DATA_CHANNEL_TIMEOUT_MS:J = 0x3e80L

.field private static final NTSC_CC_CHANNEL_1:I = 0x0

.field private static final NTSC_CC_CHANNEL_2:I = 0x1

.field private static final NTSC_CC_FIELD_1:I = 0x0

.field private static final NTSC_CC_FIELD_2:I = 0x1

.field private static final ODD_PARITY_BYTE_TABLE:[Z

.field private static final ROW_INDICES:[I

.field private static final SPECIAL_CHARACTER_SET:[I

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I

.field private static final STYLE_COLORS:[I

.field private static final STYLE_ITALICS:I = 0x7

.field private static final STYLE_UNCHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea608Decoder"


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final ccData:Landroidx/media3/common/util/ParsableByteArray;

.field private final cueBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannel:I

.field private currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

.field private isCaptionValid:Z

.field private isInCaptionService:Z

.field private lastCueUpdateUs:J

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final packetLength:I

.field private repeatableControlCc1:B

.field private repeatableControlCc2:B

.field private repeatableControlSet:Z

.field private final selectedChannel:I

.field private final selectedField:I

.field private final validDataChannelTimeoutUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ROW_INDICES:[I

    .line 77
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    .line 149
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    .line 250
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    .line 271
    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    .line 282
    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    .line 292
    const/16 v0, 0x100

    new-array v0, v0, [Z

    fill-array-data v0, :array_7

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    return-void

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_4
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_5
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_6
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "accessibilityChannel"    # I
    .param p3, "validDataChannelTimeoutMs"    # J

    .line 364
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;-><init>()V

    .line 365
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    .line 368
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    .line 369
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 370
    const-wide/16 v5, 0x3e80

    cmp-long v3, p3, v5

    if-ltz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 371
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p3

    iput-wide v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    goto :goto_1

    .line 373
    :cond_1
    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    .line 375
    :goto_1
    const-string v3, "application/x-mp4-cea-608"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->packetLength:I

    .line 376
    packed-switch p2, :pswitch_data_0

    .line 394
    const-string v3, "Cea608Decoder"

    const-string v5, "Invalid channel. Defaulting to CC1."

    invoke-static {v3, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 396
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_3

    .line 390
    :pswitch_0
    iput v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 391
    iput v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    .line 392
    goto :goto_3

    .line 386
    :pswitch_1
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 387
    iput v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    .line 388
    goto :goto_3

    .line 382
    :pswitch_2
    iput v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 383
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    .line 384
    goto :goto_3

    .line 378
    :pswitch_3
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 379
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    .line 380
    nop

    .line 399
    :goto_3
    invoke-direct {p0, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 400
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 401
    iput-boolean v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 402
    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 403
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 52
    sget-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    return-object v0
.end method

.method private static getBasicChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .line 799
    and-int/lit8 v0, p0, 0x7f

    add-int/lit8 v0, v0, -0x20

    .line 800
    .local v0, "index":I
    sget-object v1, Landroidx/media3/extractor/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getChannel(B)I
    .locals 1
    .param p0, "cc1"    # B

    .line 847
    shr-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 711
    const/4 v0, 0x2

    .line 712
    .local v0, "positionAnchor":I
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 713
    .local v1, "cueBuilderCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    .local v2, "cueBuilderCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 715
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->build(I)Landroidx/media3/common/text/Cue;

    move-result-object v4

    .line 716
    .local v4, "cue":Landroidx/media3/common/text/Cue;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    if-eqz v4, :cond_0

    .line 718
    iget v5, v4, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 714
    .end local v4    # "cue":Landroidx/media3/common/text/Cue;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 723
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    .local v3, "displayCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 725
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/text/Cue;

    .line 726
    .local v5, "cue":Landroidx/media3/common/text/Cue;
    if-eqz v5, :cond_3

    .line 727
    iget v6, v5, Landroidx/media3/common/text/Cue;->positionAnchor:I

    if-eq v6, v0, :cond_2

    .line 729
    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v6, v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->build(I)Landroidx/media3/common/text/Cue;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroidx/media3/common/text/Cue;

    .line 731
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v5    # "cue":Landroidx/media3/common/text/Cue;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 735
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method private static getExtendedEsFrChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .line 831
    and-int/lit8 v0, p0, 0x1f

    .line 832
    .local v0, "index":I
    sget-object v1, Landroidx/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedPtDeChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .line 836
    and-int/lit8 v0, p0, 0x1f

    .line 837
    .local v0, "index":I
    sget-object v1, Landroidx/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedWestEuropeanChar(BB)C
    .locals 1
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 821
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    .line 823
    invoke-static {p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getExtendedEsFrChar(B)C

    move-result v0

    return v0

    .line 826
    :cond_0
    invoke-static {p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getExtendedPtDeChar(B)C

    move-result v0

    return v0
.end method

.method private static getSpecialNorthAmericanChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .line 810
    and-int/lit8 v0, p0, 0xf

    .line 811
    .local v0, "index":I
    sget-object v1, Landroidx/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private handleMidrowCtrl(B)V
    .locals 3
    .param p1, "cc2"    # B

    .line 598
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    .line 601
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 602
    .local v1, "underline":Z
    :goto_0
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x7

    .line 603
    .local v0, "style":I
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    .line 604
    return-void
.end method

.method private handleMiscCode(B)V
    .locals 3
    .param p1, "cc2"    # B

    .line 644
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 668
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-nez v0, :cond_0

    .line 669
    return-void

    .line 661
    :sswitch_0
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 662
    return-void

    .line 654
    :sswitch_1
    invoke-direct {p0, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 655
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 656
    return-void

    .line 650
    :sswitch_2
    invoke-direct {p0, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 651
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 652
    return-void

    .line 646
    :sswitch_3
    invoke-direct {p0, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 647
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 648
    return-void

    .line 658
    :sswitch_4
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 659
    return-void

    .line 672
    :cond_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 683
    :sswitch_5
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 684
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 685
    goto :goto_0

    .line 680
    :sswitch_6
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 681
    goto :goto_0

    .line 689
    :sswitch_7
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 690
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rollUp()V

    goto :goto_0

    .line 674
    :sswitch_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 675
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v1, :cond_2

    .line 676
    :cond_1
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 698
    :sswitch_9
    goto :goto_0

    .line 694
    :sswitch_a
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 695
    nop

    .line 703
    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_4
        0x25 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_a
        0x24 -> :sswitch_9
        0x2c -> :sswitch_8
        0x2d -> :sswitch_7
        0x2e -> :sswitch_6
        0x2f -> :sswitch_5
    .end sparse-switch
.end method

.method private handlePreambleAddressCode(BB)V
    .locals 7
    .param p1, "cc1"    # B
    .param p2, "cc2"    # B

    .line 609
    sget-object v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ROW_INDICES:[I

    and-int/lit8 v1, p1, 0x7

    aget v0, v0, v1

    .line 615
    .local v0, "row":I
    and-int/lit8 v1, p2, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 616
    .local v1, "nextRowDown":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 617
    add-int/lit8 v0, v0, 0x1

    .line 620
    :cond_1
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v4}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$100(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;)I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 621
    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-eq v4, v3, :cond_2

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 622
    new-instance v4, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    iget v6, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    .line 623
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v4, v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$102(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I

    .line 630
    :cond_3
    and-int/lit8 v4, p2, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    .line 631
    .local v4, "isCursor":Z
    :goto_1
    and-int/lit8 v5, p2, 0x1

    if-ne v5, v3, :cond_5

    move v2, v3

    .line 632
    .local v2, "underline":Z
    :cond_5
    shr-int/lit8 v3, p2, 0x1

    and-int/lit8 v3, v3, 0x7

    .line 636
    .local v3, "cursorOrStyle":I
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    if-eqz v4, :cond_6

    const/16 v6, 0x8

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    invoke-virtual {v5, v6, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    .line 638
    if-eqz v4, :cond_7

    .line 639
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    sget-object v6, Landroidx/media3/extractor/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    aget v6, v6, v3

    invoke-static {v5, v6}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$202(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I

    .line 641
    :cond_7
    return-void
.end method

.method private static isCtrlCode(B)Z
    .locals 1
    .param p0, "cc1"    # B

    .line 842
    and-int/lit16 v0, p0, 0xe0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isExtendedWestEuropeanChar(BB)Z
    .locals 2
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 817
    and-int/lit16 v0, p0, 0xf6

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xe0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMidrowCtrlCode(BB)Z
    .locals 2
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 853
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMiscCode(BB)Z
    .locals 2
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 871
    and-int/lit16 v0, p0, 0xf6

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPreambleAddressCode(BB)Z
    .locals 2
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 859
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRepeatable(B)Z
    .locals 2
    .param p0, "cc1"    # B

    .line 876
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRepeatedCommand(ZBB)Z
    .locals 3
    .param p1, "captionValid"    # Z
    .param p2, "cc1"    # B
    .param p3, "cc2"    # B

    .line 574
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isRepeatable(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    iget-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-byte v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne v1, p2, :cond_0

    iget-byte v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne v1, p3, :cond_0

    .line 577
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 578
    return v2

    .line 583
    :cond_0
    iput-boolean v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 584
    iput-byte p2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 585
    iput-byte p3, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc2:B

    goto :goto_0

    .line 589
    :cond_1
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 591
    :goto_0
    return v0
.end method

.method private static isServiceSwitchCommand(B)Z
    .locals 2
    .param p0, "cc1"    # B

    .line 885
    and-int/lit16 v0, p0, 0xf6

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSpecialNorthAmericanChar(BB)Z
    .locals 2
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 806
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTabCtrlCode(BB)Z
    .locals 2
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 865
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const/16 v0, 0x23

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isXdsControlCode(B)Z
    .locals 2
    .param p0, "cc1"    # B

    .line 880
    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    const/16 v1, 0xf

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeUpdateIsInCaptionService(BB)V
    .locals 2
    .param p1, "cc1"    # B
    .param p2, "cc2"    # B

    .line 776
    invoke-static {p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isXdsControlCode(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 777
    iput-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    goto :goto_0

    .line 778
    :cond_0
    invoke-static {p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isServiceSwitchCommand(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 782
    :sswitch_0
    iput-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 783
    goto :goto_0

    .line 790
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 791
    nop

    .line 796
    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x25 -> :sswitch_1
        0x26 -> :sswitch_1
        0x27 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private resetCueBuilders()V
    .locals 2

    .line 770
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 771
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 772
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    return-void
.end method

.method private setCaptionMode(I)V
    .locals 3
    .param p1, "captionMode"    # I

    .line 739
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, p1, :cond_0

    .line 740
    return-void

    .line 743
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    .line 744
    .local v0, "oldCaptionMode":I
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    .line 746
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 748
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 749
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2, p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setCaptionMode(I)V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 755
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 756
    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-nez p1, :cond_4

    .line 760
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 762
    :cond_4
    return-void
.end method

.method private setCaptionRowCount(I)V
    .locals 1
    .param p1, "captionRowCount"    # I

    .line 765
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionRowCount:I

    .line 766
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    .line 767
    return-void
.end method

.method private shouldClearStuckCaptions()Z
    .locals 6

    .line 1156
    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-wide v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1159
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getPositionUs()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    sub-long/2addr v2, v4

    .line 1160
    .local v2, "elapsedUs":J
    iget-wide v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1157
    .end local v2    # "elapsedUs":J
    :cond_2
    :goto_0
    return v1
.end method

.method private updateAndVerifyCurrentChannel(B)Z
    .locals 2
    .param p1, "cc1"    # B

    .line 564
    invoke-static {p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getChannel(B)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    .line 567
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected createSubtitle()Landroidx/media3/extractor/text/Subtitle;
    .locals 2

    .line 459
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 460
    new-instance v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 11
    .param p1, "inputBuffer"    # Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 466
    iget-object v0, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 467
    .local v0, "subtitleData":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, "captionDataProcessed":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->packetLength:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_11

    .line 470
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->packetLength:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, -0x4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 472
    .local v2, "ccHeader":I
    :goto_1
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 473
    .local v3, "ccByte1":I
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 479
    .local v5, "ccByte2":I
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_2

    .line 481
    goto :goto_0

    .line 484
    :cond_2
    and-int/lit8 v6, v2, 0x1

    iget v7, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    if-eq v6, v7, :cond_3

    .line 486
    goto :goto_0

    .line 490
    :cond_3
    and-int/lit8 v6, v3, 0x7f

    int-to-byte v6, v6

    .line 491
    .local v6, "ccData1":B
    and-int/lit8 v7, v5, 0x7f

    int-to-byte v7, v7

    .line 493
    .local v7, "ccData2":B
    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 495
    goto :goto_0

    .line 498
    :cond_4
    iget-boolean v8, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 499
    .local v8, "previousIsCaptionValid":Z
    and-int/lit8 v9, v2, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    sget-object v9, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    aget-boolean v9, v9, v3

    if-eqz v9, :cond_5

    sget-object v9, Landroidx/media3/extractor/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    aget-boolean v9, v9, v5

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 504
    iget-boolean v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    invoke-direct {p0, v4, v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isRepeatedCommand(ZBB)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 506
    goto :goto_0

    .line 509
    :cond_6
    iget-boolean v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    if-nez v4, :cond_7

    .line 510
    if-eqz v8, :cond_0

    .line 512
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 513
    const/4 v1, 0x1

    goto :goto_0

    .line 518
    :cond_7
    invoke-direct {p0, v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->maybeUpdateIsInCaptionService(BB)V

    .line 519
    iget-boolean v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    if-nez v4, :cond_8

    .line 521
    goto :goto_0

    .line 524
    :cond_8
    invoke-direct {p0, v6}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->updateAndVerifyCurrentChannel(B)Z

    move-result v4

    if-nez v4, :cond_9

    .line 526
    goto :goto_0

    .line 529
    :cond_9
    invoke-static {v6}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 530
    invoke-static {v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isSpecialNorthAmericanChar(BB)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 531
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getSpecialNorthAmericanChar(B)C

    move-result v9

    invoke-virtual {v4, v9}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_3

    .line 532
    :cond_a
    invoke-static {v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isExtendedWestEuropeanChar(BB)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 534
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 535
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getExtendedWestEuropeanChar(BB)C

    move-result v9

    invoke-virtual {v4, v9}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_3

    .line 536
    :cond_b
    invoke-static {v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isMidrowCtrlCode(BB)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 537
    invoke-direct {p0, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->handleMidrowCtrl(B)V

    goto :goto_3

    .line 538
    :cond_c
    invoke-static {v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isPreambleAddressCode(BB)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 539
    invoke-direct {p0, v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->handlePreambleAddressCode(BB)V

    goto :goto_3

    .line 540
    :cond_d
    invoke-static {v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isTabCtrlCode(BB)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 541
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    add-int/lit8 v9, v7, -0x20

    invoke-static {v4, v9}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$002(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I

    goto :goto_3

    .line 542
    :cond_e
    invoke-static {v6, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isMiscCode(BB)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 543
    invoke-direct {p0, v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->handleMiscCode(B)V

    goto :goto_3

    .line 547
    :cond_f
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v9

    invoke-virtual {v4, v9}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    .line 548
    and-int/lit16 v4, v7, 0xe0

    if-eqz v4, :cond_10

    .line 549
    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v7}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v9

    invoke-virtual {v4, v9}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    .line 552
    :cond_10
    :goto_3
    const/4 v1, 0x1

    .line 553
    .end local v2    # "ccHeader":I
    .end local v3    # "ccByte1":I
    .end local v5    # "ccByte2":I
    .end local v6    # "ccData1":B
    .end local v7    # "ccData2":B
    .end local v8    # "previousIsCaptionValid":Z
    goto/16 :goto_0

    .line 555
    :cond_11
    if-eqz v1, :cond_13

    .line 556
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-eq v2, v4, :cond_12

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    .line 557
    :cond_12
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 558
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getPositionUs()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 561
    :cond_13
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 435
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    .line 436
    .local v0, "outputBuffer":Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    if-eqz v0, :cond_0

    .line 437
    return-object v0

    .line 439
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->shouldClearStuckCaptions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getAvailableOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v2

    .line 441
    .end local v0    # "outputBuffer":Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .local v2, "outputBuffer":Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    if-eqz v2, :cond_1

    .line 442
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 443
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 444
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->createSubtitle()Landroidx/media3/extractor/text/Subtitle;

    move-result-object v5

    .line 445
    .local v5, "subtitle":Landroidx/media3/extractor/text/Subtitle;
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->getPositionUs()J

    move-result-wide v3

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLandroidx/media3/extractor/text/Subtitle;J)V

    .line 446
    return-object v2

    .line 441
    .end local v5    # "subtitle":Landroidx/media3/extractor/text/Subtitle;
    :cond_1
    move-object v0, v2

    .line 449
    .end local v2    # "outputBuffer":Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .restart local v0    # "outputBuffer":Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2

    .line 412
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->flush()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 414
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 416
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 417
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 418
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 419
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 420
    iput-byte v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 421
    iput-byte v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 422
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 424
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 425
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 407
    const-string v0, "Cea608Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .line 454
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

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

    .line 51
    invoke-super {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 430
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

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/media3/extractor/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
