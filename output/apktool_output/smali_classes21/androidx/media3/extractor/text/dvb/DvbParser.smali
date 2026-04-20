.class public final Landroidx/media3/extractor/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "DvbParser.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;,
        Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;,
        Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;,
        Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    }
.end annotation


# static fields
.field public static final CUE_REPLACEMENT_BEHAVIOR:I = 0x2

.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    .line 90
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    .line 91
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 113
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 115
    .local v0, "data":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 116
    .local v2, "subtitleCompositionPage":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 117
    .local v3, "subtitleAncillaryPage":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    iget-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 121
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 124
    iget-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 125
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    .line 126
    new-instance v5, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    const/4 v10, 0x0

    const/16 v11, 0x23f

    const/16 v6, 0x2cf

    const/16 v7, 0x23f

    const/4 v8, 0x0

    const/16 v9, 0x2cf

    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v5, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    .line 127
    new-instance v4, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    .line 130
    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v5

    .line 131
    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v6

    .line 132
    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v4, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    .line 133
    new-instance v1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    .line 134
    return-void
.end method

.method private static buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "bitsPerEntry"    # I
    .param p2, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 926
    new-array v0, p0, [B

    .line 927
    .local v0, "clutMapTable":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 928
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .locals 3

    .line 580
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 581
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 582
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 583
    const/4 v1, 0x2

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 584
    const/4 v1, 0x3

    const v2, -0x808081

    aput v2, v0, v1

    .line 585
    return-object v0
.end method

.method private static generateDefault4BitClutEntries()[I
    .locals 8

    .line 589
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 590
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 591
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 592
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_3

    .line 593
    nop

    .line 596
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    .line 597
    :goto_1
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v1

    .line 598
    :goto_2
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_3

    :cond_2
    move v6, v1

    .line 594
    :goto_3
    invoke-static {v4, v3, v5, v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto :goto_7

    .line 600
    :cond_3
    nop

    .line 603
    and-int/lit8 v3, v2, 0x1

    const/16 v5, 0x7f

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_4

    :cond_4
    move v3, v1

    .line 604
    :goto_4
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_5

    :cond_5
    move v6, v1

    .line 605
    :goto_5
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    move v5, v1

    .line 601
    :goto_6
    invoke-static {v4, v3, v6, v5}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 591
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v2    # "i":I
    :cond_7
    return-object v0
.end method

.method private static generateDefault8BitClutEntries()[I
    .locals 10

    .line 612
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 613
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 614
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1c

    .line 615
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_3

    .line 616
    nop

    .line 619
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    .line 620
    :goto_1
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v1

    .line 621
    :goto_2
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v4, v1

    .line 617
    :goto_3
    const/16 v6, 0x3f

    invoke-static {v6, v3, v5, v4}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_1c

    .line 623
    :cond_3
    and-int/lit16 v3, v2, 0x88

    const/16 v5, 0x7f

    const/16 v6, 0xaa

    const/16 v7, 0x2b

    const/16 v8, 0x55

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1c

    .line 649
    :sswitch_0
    nop

    .line 652
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_4

    move v3, v7

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_5

    move v5, v8

    goto :goto_5

    :cond_5
    move v5, v1

    :goto_5
    add-int/2addr v3, v5

    .line 653
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_6

    :cond_6
    move v5, v1

    :goto_6
    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_7

    move v6, v8

    goto :goto_7

    :cond_7
    move v6, v1

    :goto_7
    add-int/2addr v5, v6

    .line 654
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_8

    goto :goto_8

    :cond_8
    move v7, v1

    :goto_8
    and-int/lit8 v6, v2, 0x40

    if-eqz v6, :cond_9

    goto :goto_9

    :cond_9
    move v8, v1

    :goto_9
    add-int/2addr v7, v8

    .line 650
    invoke-static {v4, v3, v5, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_1c

    .line 641
    :sswitch_1
    nop

    .line 644
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_a

    move v3, v7

    goto :goto_a

    :cond_a
    move v3, v1

    :goto_a
    add-int/2addr v3, v5

    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_b

    move v6, v8

    goto :goto_b

    :cond_b
    move v6, v1

    :goto_b
    add-int/2addr v3, v6

    .line 645
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_c

    move v6, v7

    goto :goto_c

    :cond_c
    move v6, v1

    :goto_c
    add-int/2addr v6, v5

    and-int/lit8 v9, v2, 0x20

    if-eqz v9, :cond_d

    move v9, v8

    goto :goto_d

    :cond_d
    move v9, v1

    :goto_d
    add-int/2addr v6, v9

    .line 646
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_e

    goto :goto_e

    :cond_e
    move v7, v1

    :goto_e
    add-int/2addr v7, v5

    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_f

    goto :goto_f

    :cond_f
    move v8, v1

    :goto_f
    add-int/2addr v7, v8

    .line 642
    invoke-static {v4, v3, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 647
    goto/16 :goto_1c

    .line 633
    :sswitch_2
    nop

    .line 636
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_10

    move v3, v8

    goto :goto_10

    :cond_10
    move v3, v1

    :goto_10
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_11

    move v4, v6

    goto :goto_11

    :cond_11
    move v4, v1

    :goto_11
    add-int/2addr v3, v4

    .line 637
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_12

    move v4, v8

    goto :goto_12

    :cond_12
    move v4, v1

    :goto_12
    and-int/lit8 v7, v2, 0x20

    if-eqz v7, :cond_13

    move v7, v6

    goto :goto_13

    :cond_13
    move v7, v1

    :goto_13
    add-int/2addr v4, v7

    .line 638
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_14

    goto :goto_14

    :cond_14
    move v8, v1

    :goto_14
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_15

    goto :goto_15

    :cond_15
    move v6, v1

    :goto_15
    add-int/2addr v8, v6

    .line 634
    invoke-static {v5, v3, v4, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 639
    goto :goto_1c

    .line 625
    :sswitch_3
    nop

    .line 628
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_16

    move v3, v8

    goto :goto_16

    :cond_16
    move v3, v1

    :goto_16
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_17

    move v5, v6

    goto :goto_17

    :cond_17
    move v5, v1

    :goto_17
    add-int/2addr v3, v5

    .line 629
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_18

    move v5, v8

    goto :goto_18

    :cond_18
    move v5, v1

    :goto_18
    and-int/lit8 v7, v2, 0x20

    if-eqz v7, :cond_19

    move v7, v6

    goto :goto_19

    :cond_19
    move v7, v1

    :goto_19
    add-int/2addr v5, v7

    .line 630
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_1a

    goto :goto_1a

    :cond_1a
    move v8, v1

    :goto_1a
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_1b

    goto :goto_1b

    :cond_1b
    move v6, v1

    :goto_1b
    add-int/2addr v8, v6

    .line 626
    invoke-static {v4, v3, v5, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 631
    nop

    .line 614
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 659
    .end local v2    # "i":I
    :cond_1c
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getColor(IIII)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 663
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method private static paint2BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 10
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 782
    move-object v5, p5

    const/4 v0, 0x0

    .line 784
    .local v0, "endOfPixelCodeString":Z
    :goto_0
    const/4 v1, 0x0

    .line 785
    .local v1, "runLength":I
    const/4 v2, 0x0

    .line 786
    .local v2, "clutIndex":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 787
    .local v6, "peek":I
    if-eqz v6, :cond_0

    .line 788
    const/4 v1, 0x1

    .line 789
    move v2, v6

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_1

    .line 790
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 791
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v1, v7, 0x3

    .line 792
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 793
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 794
    const/4 v1, 0x1

    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 796
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 808
    :pswitch_0
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1d

    .line 809
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 804
    :pswitch_1
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v1, v4, 0xc

    .line 805
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 806
    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 801
    :pswitch_2
    const/4 v1, 0x2

    .line 802
    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 798
    :pswitch_3
    const/4 v0, 0x1

    .line 799
    move v7, v0

    move v8, v1

    move v9, v2

    .line 814
    .end local v0    # "endOfPixelCodeString":Z
    .end local v1    # "runLength":I
    .end local v2    # "clutIndex":I
    .local v7, "endOfPixelCodeString":Z
    .local v8, "runLength":I
    .local v9, "clutIndex":I
    :goto_1
    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    .line 815
    if-eqz p2, :cond_3

    aget-byte v0, p2, v9

    goto :goto_2

    :cond_3
    move v0, v9

    :goto_2
    aget v0, p1, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v8

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 819
    :cond_4
    add-int/2addr p3, v8

    .line 820
    .end local v6    # "peek":I
    .end local v8    # "runLength":I
    .end local v9    # "clutIndex":I
    if-eqz v7, :cond_5

    .line 822
    return p3

    .line 820
    :cond_5
    move-object v5, p5

    move v0, v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paint4BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 10
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 834
    move-object v5, p5

    const/4 v0, 0x0

    .line 836
    .local v0, "endOfPixelCodeString":Z
    :goto_0
    const/4 v1, 0x0

    .line 837
    .local v1, "runLength":I
    const/4 v2, 0x0

    .line 838
    .local v2, "clutIndex":I
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 839
    .local v4, "peek":I
    if-eqz v4, :cond_0

    .line 840
    const/4 v1, 0x1

    .line 841
    move v2, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto/16 :goto_1

    .line 842
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_2

    .line 843
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 844
    if-eqz v4, :cond_1

    .line 845
    add-int/lit8 v1, v4, 0x2

    .line 846
    const/4 v2, 0x0

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto/16 :goto_1

    .line 848
    :cond_1
    const/4 v0, 0x1

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto/16 :goto_1

    .line 850
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_3

    .line 851
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x4

    .line 852
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 854
    :cond_3
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 866
    :pswitch_0
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x19

    .line 867
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 862
    :pswitch_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x9

    .line 863
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 864
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 859
    :pswitch_2
    const/4 v1, 0x2

    .line 860
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 856
    :pswitch_3
    const/4 v1, 0x1

    .line 857
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    .line 872
    .end local v0    # "endOfPixelCodeString":Z
    .end local v1    # "runLength":I
    .end local v2    # "clutIndex":I
    .end local v4    # "peek":I
    .local v6, "endOfPixelCodeString":Z
    .local v7, "runLength":I
    .local v8, "clutIndex":I
    .local v9, "peek":I
    :goto_1
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 873
    if-eqz p2, :cond_4

    aget-byte v0, p2, v8

    goto :goto_2

    :cond_4
    move v0, v8

    :goto_2
    aget v0, p1, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 874
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v7

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 877
    :cond_5
    add-int/2addr p3, v7

    .line 878
    .end local v7    # "runLength":I
    .end local v8    # "clutIndex":I
    .end local v9    # "peek":I
    if-eqz v6, :cond_6

    .line 880
    return p3

    .line 878
    :cond_6
    move-object v5, p5

    move v0, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paint8BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 10
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 892
    move-object v5, p5

    const/4 v0, 0x0

    .line 894
    .local v0, "endOfPixelCodeString":Z
    :goto_0
    const/4 v1, 0x0

    .line 895
    .local v1, "runLength":I
    const/4 v2, 0x0

    .line 896
    .local v2, "clutIndex":I
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 897
    .local v4, "peek":I
    if-eqz v4, :cond_0

    .line 898
    const/4 v1, 0x1

    .line 899
    move v2, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 901
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/4 v7, 0x7

    if-nez v6, :cond_2

    .line 902
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 903
    if-eqz v4, :cond_1

    .line 904
    move v1, v4

    .line 905
    const/4 v2, 0x0

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 907
    :cond_1
    const/4 v0, 0x1

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    goto :goto_1

    .line 910
    :cond_2
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 911
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    .line 915
    .end local v0    # "endOfPixelCodeString":Z
    .end local v1    # "runLength":I
    .end local v2    # "clutIndex":I
    .end local v4    # "peek":I
    .local v6, "endOfPixelCodeString":Z
    .local v7, "runLength":I
    .local v8, "clutIndex":I
    .local v9, "peek":I
    :goto_1
    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    .line 916
    if-eqz p2, :cond_3

    aget-byte v0, p2, v8

    goto :goto_2

    :cond_3
    move v0, v8

    :goto_2
    aget v0, p1, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 917
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v7

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 919
    :cond_4
    add-int/2addr p3, v7

    .line 920
    .end local v7    # "runLength":I
    .end local v8    # "clutIndex":I
    .end local v9    # "peek":I
    if-eqz v6, :cond_5

    .line 922
    return p3

    .line 920
    :cond_5
    move-object v5, p5

    move v0, v6

    goto :goto_0
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 11
    .param p0, "pixelData"    # [B
    .param p1, "clutEntries"    # [I
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 712
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    move-object v1, v0

    .line 713
    .local v1, "data":Landroidx/media3/common/util/ParsableBitArray;
    move v0, p3

    .line 714
    .local v0, "column":I
    move v2, p4

    .line 715
    .local v2, "line":I
    const/4 v3, 0x0

    .line 716
    .local v3, "clutMapTable2To4":[B
    const/4 v4, 0x0

    .line 717
    .local v4, "clutMapTable2To8":[B
    const/4 v5, 0x0

    move-object v8, v4

    move-object v9, v5

    move v4, v0

    move v5, v2

    move-object v0, v3

    .line 719
    .end local v2    # "line":I
    .end local v3    # "clutMapTable2To4":[B
    .local v0, "clutMapTable2To4":[B
    .local v4, "column":I
    .local v5, "line":I
    .local v8, "clutMapTable2To8":[B
    .local v9, "clutMapTable4To8":[B
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    if-eqz v2, :cond_6

    .line 720
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 721
    .local v10, "dataType":I
    const/4 v3, 0x3

    const/4 v6, 0x4

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_6

    .line 763
    :sswitch_0
    move v2, p3

    .line 764
    .end local v4    # "column":I
    .local v2, "column":I
    add-int/lit8 v5, v5, 0x2

    .line 765
    move v4, v2

    goto/16 :goto_6

    .line 760
    .end local v2    # "column":I
    .restart local v4    # "column":I
    :sswitch_1
    const/16 v3, 0x10

    invoke-static {v3, v2, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B

    move-result-object v2

    .line 761
    .end local v9    # "clutMapTable4To8":[B
    .local v2, "clutMapTable4To8":[B
    move-object v9, v2

    goto/16 :goto_6

    .line 757
    .end local v2    # "clutMapTable4To8":[B
    .restart local v9    # "clutMapTable4To8":[B
    :sswitch_2
    invoke-static {v6, v2, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B

    move-result-object v2

    .line 758
    .end local v8    # "clutMapTable2To8":[B
    .local v2, "clutMapTable2To8":[B
    move-object v8, v2

    goto/16 :goto_6

    .line 754
    .end local v2    # "clutMapTable2To8":[B
    .restart local v8    # "clutMapTable2To8":[B
    :sswitch_3
    invoke-static {v6, v6, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B

    move-result-object v0

    .line 755
    goto/16 :goto_6

    .line 749
    :sswitch_4
    nop

    .line 750
    const/4 v3, 0x0

    move-object v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paint8BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    .line 752
    .end local v4    # "column":I
    .local v3, "column":I
    move v4, v3

    goto :goto_6

    .line 738
    .end local v3    # "column":I
    .restart local v4    # "column":I
    :sswitch_5
    if-ne p2, v3, :cond_1

    .line 739
    if-nez v9, :cond_0

    sget-object v2, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_1

    :cond_0
    move-object v2, v9

    :goto_1
    move-object v3, v2

    .local v2, "clutMapTable4ToX":[B
    goto :goto_2

    .line 741
    .end local v2    # "clutMapTable4ToX":[B
    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    .line 743
    .local v3, "clutMapTable4ToX":[B
    :goto_2
    nop

    .line 744
    move-object v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paint4BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 746
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 747
    goto :goto_6

    .line 724
    .end local v3    # "clutMapTable4ToX":[B
    :sswitch_6
    if-ne p2, v3, :cond_3

    .line 725
    if-nez v8, :cond_2

    sget-object v2, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_3

    :cond_2
    move-object v2, v8

    :goto_3
    move-object v3, v2

    .local v2, "clutMapTable2ToX":[B
    goto :goto_5

    .line 726
    .end local v2    # "clutMapTable2ToX":[B
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    .line 727
    if-nez v0, :cond_4

    sget-object v2, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_4

    :cond_4
    move-object v2, v0

    :goto_4
    move-object v3, v2

    .restart local v2    # "clutMapTable2ToX":[B
    goto :goto_5

    .line 729
    .end local v2    # "clutMapTable2ToX":[B
    :cond_5
    const/4 v2, 0x0

    move-object v3, v2

    .line 731
    .local v3, "clutMapTable2ToX":[B
    :goto_5
    nop

    .line 732
    move-object v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paint2BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 734
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 735
    nop

    .line 770
    .end local v3    # "clutMapTable2ToX":[B
    .end local v10    # "dataType":I
    :goto_6
    goto :goto_0

    .line 771
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x20 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static paintPixelDataSubBlocks(Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "objectData"    # Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .param p1, "clutDefinition"    # Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 678
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 679
    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    move-object v2, v0

    .local v0, "clutEntries":[I
    goto :goto_0

    .line 680
    .end local v0    # "clutEntries":[I
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 681
    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    move-object v2, v0

    .restart local v0    # "clutEntries":[I
    goto :goto_0

    .line 683
    .end local v0    # "clutEntries":[I
    :cond_1
    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    move-object v2, v0

    .line 685
    .local v2, "clutEntries":[I
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p2    # "regionDepth":I
    .end local p3    # "horizontalAddress":I
    .end local p4    # "verticalAddress":I
    .end local p5    # "paint":Landroid/graphics/Paint;
    .end local p6    # "canvas":Landroid/graphics/Canvas;
    .local v3, "regionDepth":I
    .local v4, "horizontalAddress":I
    .local v5, "verticalAddress":I
    .local v6, "paint":Landroid/graphics/Paint;
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 693
    move p2, v5

    .end local v5    # "verticalAddress":I
    .local p2, "verticalAddress":I
    iget-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v5, p2, 0x1

    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 701
    return-void
.end method

.method private parse(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/CuesWithTiming;
    .locals 25
    .param p1, "dataBitArray"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    .line 161
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 162
    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v2}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseSubtitlingSegment(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 166
    .local v2, "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    if-nez v2, :cond_1

    .line 167
    new-instance v3, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 168
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 167
    return-object v3

    .line 173
    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v3, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v3, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_1

    .line 175
    :cond_2
    iget-object v3, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    :goto_1
    nop

    .line 176
    .local v3, "displayDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;
    iget-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget v4, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 177
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget v4, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 179
    :cond_3
    iget v4, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 180
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 182
    iget-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v4

    .line 187
    .local v6, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    iget-object v4, v2, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    .line 188
    .local v4, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_e

    .line 190
    iget-object v7, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 191
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    .line 192
    .local v7, "pageRegion":Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 193
    .local v8, "regionId":I
    iget-object v9, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v9, v9, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    .line 196
    .local v9, "regionComposition":Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v11, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v10, v11

    .line 198
    .local v10, "baseHorizontalAddress":I
    iget v11, v7, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v12, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v11, v12

    .line 200
    .local v11, "baseVerticalAddress":I
    iget v12, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v12, v10

    iget v13, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 201
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 204
    .local v12, "clipRight":I
    iget v13, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v13, v11

    iget v14, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    .line 205
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 208
    .local v13, "clipBottom":I
    iget-object v14, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 209
    iget-object v14, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v14, v14, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v15, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    .line 210
    .local v14, "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    if-nez v14, :cond_6

    .line 211
    iget-object v15, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v15, v15, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v1, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    .line 212
    if-nez v14, :cond_5

    .line 213
    iget-object v14, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-object/from16 v16, v14

    goto :goto_3

    .line 212
    :cond_5
    move-object/from16 v16, v14

    goto :goto_3

    .line 210
    :cond_6
    move-object/from16 v16, v14

    .line 217
    .end local v14    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .local v16, "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    :goto_3
    iget-object v1, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    .line 218
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_a

    .line 219
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 220
    .local v15, "objectId":I
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v1

    .end local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .local v22, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    move-object/from16 v1, v17

    check-cast v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    .line 221
    .local v1, "regionObject":Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;
    move-object/from16 v23, v2

    .end local v2    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .local v23, "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    .line 222
    .local v2, "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    if-nez v2, :cond_7

    .line 223
    move-object/from16 v17, v2

    .end local v2    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .local v17, "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    .end local v17    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .restart local v2    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    goto :goto_5

    .line 222
    :cond_7
    move-object/from16 v17, v2

    .line 225
    :goto_5
    if-eqz v2, :cond_9

    .line 226
    move-object/from16 v24, v4

    .end local v4    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .local v24, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    iget-boolean v4, v2, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    iget-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    :goto_6
    move-object/from16 v20, v4

    .line 227
    .local v20, "paint":Landroid/graphics/Paint;
    iget v4, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    move-object/from16 v17, v2

    .end local v2    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .restart local v17    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    iget v2, v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int v18, v10, v2

    iget v2, v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v19, v11, v2

    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v2

    move v2, v15

    move-object/from16 v15, v17

    move/from16 v17, v4

    .end local v17    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .local v2, "objectId":I
    .local v15, "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    invoke-static/range {v15 .. v21}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlocks(Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    move-object/from16 v4, v16

    .end local v16    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .local v4, "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    goto :goto_7

    .line 225
    .end local v20    # "paint":Landroid/graphics/Paint;
    .end local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .local v2, "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .local v4, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .local v15, "objectId":I
    .restart local v16    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    :cond_9
    move/from16 v24, v15

    move-object v15, v2

    move/from16 v2, v24

    move-object/from16 v24, v4

    move-object/from16 v4, v16

    .line 218
    .end local v1    # "regionObject":Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;
    .end local v2    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .end local v15    # "objectId":I
    .end local v16    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .local v4, "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .restart local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v16, v4

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    goto :goto_4

    .end local v22    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .end local v23    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .end local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .local v2, "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .local v4, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .restart local v16    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    :cond_a
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v4, v16

    .line 238
    .end local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .end local v2    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .end local v14    # "j":I
    .end local v16    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .local v4, "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .restart local v22    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .restart local v23    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .restart local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    iget-boolean v1, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v1, :cond_d

    .line 240
    iget v1, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 241
    iget-object v1, v4, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v2, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v1, v1, v2

    .local v1, "color":I
    goto :goto_8

    .line 242
    .end local v1    # "color":I
    :cond_b
    iget v1, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 243
    iget-object v1, v4, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v2, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v1, v1, v2

    .restart local v1    # "color":I
    goto :goto_8

    .line 245
    .end local v1    # "color":I
    :cond_c
    iget-object v1, v4, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v2, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v1, v1, v2

    .line 247
    .restart local v1    # "color":I
    :goto_8
    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v14, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v15, v10

    int-to-float v2, v11

    move/from16 v20, v1

    .end local v1    # "color":I
    .local v20, "color":I
    iget v1, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v1, v10

    int-to-float v1, v1

    move/from16 v17, v1

    iget v1, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v1, v11

    int-to-float v1, v1

    move/from16 v18, v1

    iget-object v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v1

    move/from16 v16, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 256
    .end local v20    # "color":I
    :cond_d
    new-instance v1, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v1}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v14, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    iget v15, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    .line 259
    invoke-static {v2, v10, v11, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 258
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    int-to-float v2, v10

    iget v14, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v14, v14

    div-float/2addr v2, v14

    .line 265
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    int-to-float v14, v11

    iget v15, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 267
    invoke-virtual {v1, v14, v2}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    iget v14, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v14, v14

    iget v15, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 270
    invoke-virtual {v1, v14}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    iget v14, v9, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v14, v14

    iget v15, v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 271
    invoke-virtual {v1, v14}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v1

    .line 256
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    iget-object v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    .end local v4    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .end local v7    # "pageRegion":Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;
    .end local v8    # "regionId":I
    .end local v9    # "regionComposition":Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    .end local v10    # "baseHorizontalAddress":I
    .end local v11    # "baseVerticalAddress":I
    .end local v12    # "clipRight":I
    .end local v13    # "clipBottom":I
    .end local v22    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    goto/16 :goto_2

    .line 279
    .end local v5    # "i":I
    .end local v23    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .end local v24    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .restart local v2    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .local v4, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    :cond_e
    new-instance v5, Landroidx/media3/extractor/text/CuesWithTiming;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    return-object v5
.end method

.method private static parseClutDefinition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .locals 22
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 481
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 482
    .local v2, "clutId":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 483
    add-int/lit8 v3, p1, -0x2

    .line 485
    .local v3, "remainingLength":I
    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v4

    .line 486
    .local v4, "clutEntries2Bit":[I
    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v5

    .line 487
    .local v5, "clutEntries4Bit":[I
    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v6

    .line 489
    .local v6, "clutEntries8Bit":[I
    :goto_0
    if-lez v3, :cond_4

    .line 490
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 491
    .local v7, "entryId":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 492
    .local v8, "entryFlags":I
    add-int/lit8 v3, v3, -0x2

    .line 495
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_0

    .line 496
    move-object v9, v4

    .local v9, "clutEntries":[I
    goto :goto_1

    .line 497
    .end local v9    # "clutEntries":[I
    :cond_0
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_1

    .line 498
    move-object v9, v5

    .restart local v9    # "clutEntries":[I
    goto :goto_1

    .line 500
    .end local v9    # "clutEntries":[I
    :cond_1
    move-object v9, v6

    .line 507
    .restart local v9    # "clutEntries":[I
    :goto_1
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_2

    .line 508
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 509
    .local v10, "y":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 510
    .local v11, "cr":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 511
    .local v12, "cb":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 512
    .local v13, "t":I
    add-int/lit8 v3, v3, -0x4

    goto :goto_2

    .line 514
    .end local v10    # "y":I
    .end local v11    # "cr":I
    .end local v12    # "cb":I
    .end local v13    # "t":I
    :cond_2
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/4 v12, 0x2

    shl-int/2addr v11, v12

    .line 515
    .local v11, "y":I
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/2addr v14, v13

    .line 516
    .local v14, "cr":I
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    shl-int/lit8 v13, v15, 0x4

    .line 517
    .local v13, "cb":I
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    shl-int/lit8 v10, v12, 0x6

    .line 518
    .local v10, "t":I
    add-int/lit8 v3, v3, -0x2

    move v12, v13

    move v13, v10

    move v10, v11

    move v11, v14

    .line 521
    .end local v14    # "cr":I
    .local v10, "y":I
    .local v11, "cr":I
    .restart local v12    # "cb":I
    .local v13, "t":I
    :goto_2
    if-nez v10, :cond_3

    .line 522
    const/4 v11, 0x0

    .line 523
    const/4 v12, 0x0

    .line 524
    const/16 v13, 0xff

    .line 527
    :cond_3
    and-int/lit16 v14, v13, 0xff

    const/16 v15, 0xff

    rsub-int v14, v14, 0xff

    int-to-byte v14, v14

    .line 528
    .local v14, "a":I
    move/from16 v16, v2

    .end local v2    # "clutId":I
    .local v16, "clutId":I
    int-to-double v1, v10

    add-int/lit8 v15, v11, -0x80

    move-wide/from16 v18, v1

    int-to-double v0, v15

    const-wide v20, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v0, v0, v20

    add-double v1, v18, v0

    double-to-int v0, v1

    .line 529
    .local v0, "r":I
    int-to-double v1, v10

    add-int/lit8 v15, v12, -0x80

    move-wide/from16 v18, v1

    int-to-double v1, v15

    const-wide v20, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v1, v1, v20

    sub-double v1, v18, v1

    add-int/lit8 v15, v11, -0x80

    move-wide/from16 v18, v1

    int-to-double v1, v15

    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v1, v1, v20

    sub-double v1, v18, v1

    double-to-int v1, v1

    .line 530
    .local v1, "g":I
    move v15, v3

    .end local v3    # "remainingLength":I
    .local v15, "remainingLength":I
    int-to-double v2, v10

    move-wide/from16 v18, v2

    add-int/lit8 v2, v12, -0x80

    int-to-double v2, v2

    const-wide v20, 0x3ffc5a1cac083127L    # 1.772

    mul-double v2, v2, v20

    add-double v2, v18, v2

    double-to-int v2, v2

    .line 531
    .local v2, "b":I
    nop

    .line 534
    const/4 v3, 0x0

    move/from16 v18, v7

    move/from16 v17, v8

    const/16 v7, 0xff

    .end local v7    # "entryId":I
    .end local v8    # "entryFlags":I
    .local v17, "entryFlags":I
    .local v18, "entryId":I
    invoke-static {v0, v3, v7}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v8

    .line 535
    move/from16 v19, v0

    .end local v0    # "r":I
    .local v19, "r":I
    invoke-static {v1, v3, v7}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    .line 536
    invoke-static {v2, v3, v7}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v3

    .line 532
    invoke-static {v14, v8, v0, v3}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v0

    aput v0, v9, v18

    .line 537
    .end local v1    # "g":I
    .end local v2    # "b":I
    .end local v9    # "clutEntries":[I
    .end local v10    # "y":I
    .end local v11    # "cr":I
    .end local v12    # "cb":I
    .end local v13    # "t":I
    .end local v14    # "a":I
    .end local v17    # "entryFlags":I
    .end local v18    # "entryId":I
    .end local v19    # "r":I
    const/16 v1, 0x8

    move-object/from16 v0, p0

    move v3, v15

    move/from16 v2, v16

    goto/16 :goto_0

    .line 539
    .end local v15    # "remainingLength":I
    .end local v16    # "clutId":I
    .local v2, "clutId":I
    .restart local v3    # "remainingLength":I
    :cond_4
    move/from16 v16, v2

    .end local v2    # "clutId":I
    .restart local v16    # "clutId":I
    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move/from16 v1, v16

    .end local v16    # "clutId":I
    .local v1, "clutId":I
    invoke-direct {v0, v1, v4, v5, v6}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v0
.end method

.method private static parseDisplayDefinition(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;
    .locals 9
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 366
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 367
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 368
    .local v0, "displayWindowFlag":Z
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 369
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 370
    .local v3, "width":I
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 376
    .local v4, "height":I
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 378
    .local v2, "horizontalPositionMinimum":I
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 379
    .local v5, "horizontalPositionMaximum":I
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 380
    .local v6, "verticalPositionMinimum":I
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v8, v1

    move v7, v6

    move v6, v5

    move v5, v2

    .local v1, "verticalPositionMaximum":I
    goto :goto_0

    .line 382
    .end local v1    # "verticalPositionMaximum":I
    .end local v2    # "horizontalPositionMinimum":I
    .end local v5    # "horizontalPositionMaximum":I
    .end local v6    # "verticalPositionMinimum":I
    :cond_0
    const/4 v2, 0x0

    .line 383
    .restart local v2    # "horizontalPositionMinimum":I
    move v5, v3

    .line 384
    .restart local v5    # "horizontalPositionMaximum":I
    const/4 v6, 0x0

    .line 385
    .restart local v6    # "verticalPositionMinimum":I
    move v1, v4

    move v8, v1

    move v7, v6

    move v6, v5

    move v5, v2

    .line 388
    .end local v2    # "horizontalPositionMinimum":I
    .local v5, "horizontalPositionMinimum":I
    .local v6, "horizontalPositionMaximum":I
    .local v7, "verticalPositionMinimum":I
    .local v8, "verticalPositionMaximum":I
    :goto_0
    new-instance v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object v2
.end method

.method private static parseObjectData(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .locals 8
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 548
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 549
    .local v1, "objectId":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 550
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 551
    .local v2, "objectCodingMethod":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 552
    .local v3, "nonModifyingColorFlag":Z
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 554
    sget-object v5, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 555
    .local v5, "topFieldData":[B
    sget-object v6, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 557
    .local v6, "bottomFieldData":[B
    if-ne v2, v4, :cond_0

    .line 558
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 560
    .local v0, "numberOfCodes":I
    mul-int/lit8 v4, v0, 0x10

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .end local v0    # "numberOfCodes":I
    goto :goto_0

    .line 561
    :cond_0
    if-nez v2, :cond_3

    .line 562
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 563
    .local v4, "topFieldDataLength":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 564
    .local v0, "bottomFieldDataLength":I
    const/4 v7, 0x0

    if-lez v4, :cond_1

    .line 565
    new-array v5, v4, [B

    .line 566
    invoke-virtual {p0, v5, v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBytes([BII)V

    .line 568
    :cond_1
    if-lez v0, :cond_2

    .line 569
    new-array v6, v0, [B

    .line 570
    invoke-virtual {p0, v6, v7, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_1

    .line 572
    :cond_2
    move-object v6, v5

    goto :goto_1

    .line 561
    .end local v0    # "bottomFieldDataLength":I
    .end local v4    # "topFieldDataLength":I
    :cond_3
    :goto_0
    nop

    .line 576
    :goto_1
    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    invoke-direct {v0, v1, v3, v5, v6}, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object v0
.end method

.method private static parsePageComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .locals 10
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 399
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 400
    .local v1, "timeoutSecs":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 401
    .local v2, "version":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 402
    .local v4, "state":I
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 403
    add-int/lit8 v3, p1, -0x2

    .line 405
    .local v3, "remainingLength":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 406
    .local v5, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v3, :cond_0

    .line 407
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 408
    .local v6, "regionId":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 409
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 410
    .local v8, "regionHorizontalAddress":I
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 411
    .local v7, "regionVerticalAddress":I
    add-int/lit8 v3, v3, -0x6

    .line 412
    new-instance v9, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-direct {v9, v8, v7}, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    .end local v6    # "regionId":I
    .end local v7    # "regionVerticalAddress":I
    .end local v8    # "regionHorizontalAddress":I
    goto :goto_0

    .line 415
    :cond_0
    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static parseRegionComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    .locals 25
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 420
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 421
    .local v3, "id":I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 422
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 423
    .local v4, "fillFlag":Z
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 424
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 425
    .local v7, "width":I
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 426
    .local v8, "height":I
    move v9, v7

    .end local v7    # "width":I
    .local v9, "width":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 427
    .local v7, "levelOfCompatibility":I
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 428
    .local v5, "depth":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 429
    move v11, v8

    move v8, v5

    move v5, v9

    .end local v9    # "width":I
    .local v5, "width":I
    .local v8, "depth":I
    .local v11, "height":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 430
    .local v9, "clutId":I
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 431
    .local v12, "pixelCode8Bit":I
    move v13, v11

    .end local v11    # "height":I
    .local v13, "height":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 432
    .local v11, "pixelCode4Bit":I
    move v14, v12

    .end local v12    # "pixelCode8Bit":I
    .local v14, "pixelCode8Bit":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 433
    .local v12, "pixelCode2Bit":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 434
    add-int/lit8 v15, p1, -0xa

    .line 436
    .local v15, "remainingLength":I
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v17, v16

    .line 437
    .local v17, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    :goto_0
    if-lez v15, :cond_2

    .line 438
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 439
    .local v1, "objectId":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 440
    .local v6, "objectType":I
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 441
    .local v20, "objectProvider":I
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 442
    .local v21, "objectHorizontalPosition":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 443
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 444
    .local v22, "objectVerticalPosition":I
    add-int/lit8 v15, v15, -0x6

    .line 446
    const/4 v10, 0x0

    .line 447
    .local v10, "foregroundPixelCode":I
    const/16 v18, 0x0

    .line 448
    .local v18, "backgroundPixelCode":I
    const/4 v2, 0x1

    if-eq v6, v2, :cond_1

    const/4 v2, 0x2

    if-ne v6, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    move/from16 v23, v10

    move/from16 v24, v18

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    .line 449
    :goto_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 450
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 451
    add-int/lit8 v15, v15, -0x2

    move/from16 v23, v10

    move/from16 v24, v18

    .line 454
    .end local v10    # "foregroundPixelCode":I
    .end local v18    # "backgroundPixelCode":I
    .local v23, "foregroundPixelCode":I
    .local v24, "backgroundPixelCode":I
    :goto_2
    new-instance v18, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    move/from16 v19, v6

    .end local v6    # "objectType":I
    .local v19, "objectType":I
    invoke-direct/range {v18 .. v24}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    move-object/from16 v6, v17

    move-object/from16 v10, v18

    .end local v17    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .local v6, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    invoke-virtual {v6, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    .end local v1    # "objectId":I
    .end local v19    # "objectType":I
    .end local v20    # "objectProvider":I
    .end local v21    # "objectHorizontalPosition":I
    .end local v22    # "objectVerticalPosition":I
    .end local v23    # "foregroundPixelCode":I
    .end local v24    # "backgroundPixelCode":I
    move v1, v2

    const/4 v2, 0x4

    const/16 v6, 0x10

    const/4 v10, 0x2

    goto :goto_0

    .line 465
    .end local v6    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .restart local v17    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    :cond_2
    move-object/from16 v6, v17

    .end local v17    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .restart local v6    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    new-instance v2, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move v10, v13

    move-object v13, v6

    move v6, v10

    move v10, v14

    .end local v14    # "pixelCode8Bit":I
    .local v6, "height":I
    .local v10, "pixelCode8Bit":I
    .local v13, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    invoke-direct/range {v2 .. v13}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    .end local v10    # "pixelCode8Bit":I
    .restart local v14    # "pixelCode8Bit":I
    return-object v2
.end method

.method private static parseSubtitlingSegment(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;)V
    .locals 8
    .param p0, "data"    # Landroidx/media3/common/util/ParsableBitArray;
    .param p1, "service"    # Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    .line 291
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 292
    .local v0, "segmentType":I
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 293
    .local v2, "pageId":I
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 294
    .local v1, "dataFieldLength":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    .line 296
    .local v3, "dataFieldLimit":I
    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 297
    const-string v4, "DvbParser"

    const-string v5, "Data field length exceeds limit"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 300
    return-void

    .line 303
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 305
    :pswitch_0
    iget v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_8

    .line 306
    invoke-static {p0}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseDisplayDefinition(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v4

    iput-object v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_3

    .line 347
    :pswitch_1
    iget v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_1

    .line 348
    invoke-static {p0}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 349
    .local v4, "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    goto :goto_0

    .line 350
    :cond_1
    iget v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_2

    .line 351
    invoke-static {p0}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 352
    .restart local v4    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    .end local v4    # "objectData":Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    goto/16 :goto_3

    .line 350
    :cond_2
    :goto_0
    goto/16 :goto_3

    .line 338
    :pswitch_2
    iget v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_3

    .line 339
    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 340
    .local v4, "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    goto :goto_1

    .line 341
    :cond_3
    iget v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_4

    .line 342
    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 343
    .restart local v4    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    .end local v4    # "clutDefinition":Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    goto :goto_3

    .line 341
    :cond_4
    :goto_1
    goto :goto_3

    .line 324
    :pswitch_3
    iget-object v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 325
    .local v4, "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    iget v5, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v5, :cond_8

    if-eqz v4, :cond_8

    .line 326
    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseRegionComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move-result-object v5

    .line 327
    .local v5, "regionComposition":Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    iget v6, v4, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v6, :cond_5

    .line 329
    iget-object v6, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    .line 330
    .local v6, "existingRegionComposition":Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    if-eqz v6, :cond_5

    .line 331
    invoke-virtual {v5, v6}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->mergeFrom(Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;)V

    .line 334
    .end local v6    # "existingRegionComposition":Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    :cond_5
    iget-object v6, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    .end local v5    # "regionComposition":Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    goto :goto_3

    .line 310
    .end local v4    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    :pswitch_4
    iget v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_8

    .line 311
    iget-object v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 312
    .local v4, "current":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parsePageComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    move-result-object v5

    .line 313
    .local v5, "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    iget v6, v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v6, :cond_6

    .line 314
    iput-object v5, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 315
    iget-object v6, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 316
    iget-object v6, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 317
    iget-object v6, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_2

    .line 318
    :cond_6
    if-eqz v4, :cond_7

    iget v6, v4, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    iget v7, v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v6, v7, :cond_7

    .line 319
    iput-object v5, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 321
    .end local v4    # "current":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .end local v5    # "pageComposition":Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    :cond_7
    :goto_2
    nop

    .line 361
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 362
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 143
    const/4 v0, 0x2

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "outputOptions"    # Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p5, "output":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    add-int v1, p2, p3

    invoke-direct {v0, p1, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    .line 154
    .local v0, "dataBitArray":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 155
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/dvb/DvbParser;->parse(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/CuesWithTiming;

    move-result-object v1

    invoke-interface {p5, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public reset()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->reset()V

    .line 139
    return-void
.end method
