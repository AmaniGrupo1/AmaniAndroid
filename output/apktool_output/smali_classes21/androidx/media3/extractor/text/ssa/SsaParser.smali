.class public final Landroidx/media3/extractor/text/ssa/SsaParser;
.super Ljava/lang/Object;
.source "SsaParser.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# static fields
.field public static final CUE_REPLACEMENT_BEHAVIOR:I = 0x1

.field private static final DEFAULT_MARGIN:F = 0.05f

.field private static final DIALOGUE_LINE_PREFIX:Ljava/lang/String; = "Dialogue:"

.field static final FORMAT_LINE_PREFIX:Ljava/lang/String; = "Format:"

.field private static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

.field static final STYLE_LINE_PREFIX:Ljava/lang/String; = "Style:"

.field private static final TAG:Ljava/lang/String; = "SsaParser"


# instance fields
.field private final dialogueFormatFromInitializationData:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

.field private final haveInitializationData:Z

.field private final parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

.field private screenHeight:F

.field private screenWidth:F

.field private styles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ssa/SsaStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    nop

    .line 68
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaParser;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/ssa/SsaParser;-><init>(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 109
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const v0, -0x800001

    iput v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->screenWidth:F

    .line 111
    iput v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->screenHeight:F

    .line 112
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    .line 114
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    .line 119
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "formatLine":Ljava/lang/String;
    const-string v2, "Format:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 121
    nop

    .line 122
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    iput-object v2, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->dialogueFormatFromInitializationData:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    .line 123
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v1}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseHeader(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    .line 124
    .end local v0    # "formatLine":Ljava/lang/String;
    goto :goto_0

    .line 125
    :cond_0
    iput-boolean v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->dialogueFormatFromInitializationData:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    .line 128
    :goto_0
    return-void
.end method

.method private static addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I
    .locals 4
    .param p0, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;>;)I"
        }
    .end annotation

    .line 573
    .local p2, "sortedCueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroidx/media3/common/text/Cue;>;>;"
    const/4 v0, 0x0

    .line 574
    .local v0, "insertionIndex":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 575
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 576
    return v1

    .line 579
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-gez v2, :cond_1

    .line 580
    add-int/lit8 v0, v1, 0x1

    .line 581
    goto :goto_1

    .line 574
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 584
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 586
    nop

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 586
    :goto_2
    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 589
    return v0
.end method

.method private static computeDefaultLineOrPosition(I)F
    .locals 1
    .param p0, "anchor"    # I

    .line 552
    packed-switch p0, :pswitch_data_0

    .line 561
    const v0, -0x800001

    return v0

    .line 558
    :pswitch_0
    const v0, 0x3f733333    # 0.95f

    return v0

    .line 556
    :pswitch_1
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 554
    :pswitch_2
    const v0, 0x3d4ccccd    # 0.05f

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createCue(Ljava/lang/String;ILandroidx/media3/extractor/text/ssa/SsaStyle;Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;FF)Landroidx/media3/common/text/Cue;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "layer"    # I
    .param p2, "style"    # Landroidx/media3/extractor/text/ssa/SsaStyle;
    .param p3, "styleOverrides"    # Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
    .param p4, "screenWidth"    # F
    .param p5, "screenHeight"    # F

    .line 401
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 402
    .local v0, "spannableText":Landroid/text/SpannableString;
    new-instance v1, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v1}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/text/Cue$Builder;->setZIndex(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    .line 404
    .local v1, "cue":Landroidx/media3/common/text/Cue$Builder;
    const v2, -0x800001

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    .line 405
    iget-object v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    const/16 v5, 0x21

    if-eqz v4, :cond_0

    .line 406
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 407
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 409
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 406
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 412
    :cond_0
    iget v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->borderStyle:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    iget-object v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 413
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    .line 414
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 416
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v7

    .line 413
    invoke-virtual {v0, v4, v3, v7, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 419
    :cond_1
    iget v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    cmpl-float v4, v4, v2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    cmpl-float v4, p5, v2

    if-eqz v4, :cond_2

    .line 420
    iget v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    div-float/2addr v4, p5

    invoke-virtual {v1, v4, v7}, Landroidx/media3/common/text/Cue$Builder;->setTextSize(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 423
    :cond_2
    iget-boolean v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->bold:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->italic:Z

    if-eqz v4, :cond_3

    .line 424
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 427
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 424
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 429
    :cond_3
    iget-boolean v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->bold:Z

    if-eqz v4, :cond_4

    .line 430
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 433
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 430
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 435
    :cond_4
    iget-boolean v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->italic:Z

    if-eqz v4, :cond_5

    .line 436
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 439
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 436
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 442
    :cond_5
    :goto_0
    iget-boolean v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->underline:Z

    if-eqz v4, :cond_6

    .line 443
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 446
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 443
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 449
    :cond_6
    iget-boolean v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->strikeout:Z

    if-eqz v4, :cond_7

    .line 450
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 453
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 450
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 459
    :cond_7
    iget v4, p3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->alignment:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 460
    iget v4, p3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->alignment:I

    .local v4, "alignment":I
    goto :goto_1

    .line 461
    .end local v4    # "alignment":I
    :cond_8
    if-eqz p2, :cond_9

    .line 462
    iget v4, p2, Landroidx/media3/extractor/text/ssa/SsaStyle;->alignment:I

    .restart local v4    # "alignment":I
    goto :goto_1

    .line 464
    .end local v4    # "alignment":I
    :cond_9
    const/4 v4, -0x1

    .line 466
    .restart local v4    # "alignment":I
    :goto_1
    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaParser;->toTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    .line 467
    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaParser;->toPositionAnchor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    .line 468
    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaParser;->toLineAnchor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 470
    iget-object v5, p3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    if-eqz v5, :cond_a

    cmpl-float v5, p5, v2

    if-eqz v5, :cond_a

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_a

    .line 473
    iget-object v2, p3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p4

    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 474
    iget-object v2, p3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p5

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    goto :goto_2

    .line 477
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->getPositionAnchor()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/text/ssa/SsaParser;->computeDefaultLineOrPosition(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 478
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->getLineAnchor()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/text/ssa/SsaParser;->computeDefaultLineOrPosition(I)F

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 481
    :goto_2
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v2

    return-object v2
.end method

.method private detectUtfCharset(Landroidx/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;
    .locals 2
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 193
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 194
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    return-object v1
.end method

.method private parseDialogueLine(Ljava/lang/String;Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .param p1, "dialogueLine"    # Ljava/lang/String;
    .param p2, "format"    # Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p3, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroidx/media3/common/text/Cue;>;>;"
    .local p4, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v0, "Dialogue:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 325
    nop

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    iget v7, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "lineValues":[Ljava/lang/String;
    array-length v0, v6

    iget v7, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    const-string v8, "SsaParser"

    if-eq v0, v7, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void

    .line 332
    :cond_0
    const/4 v7, 0x0

    .line 333
    .local v7, "layer":I
    iget v0, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->layerIndex:I

    const/4 v9, -0x1

    if-eq v0, v9, :cond_1

    .line 335
    :try_start_0
    iget v0, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->layerIndex:I

    aget-object v0, v6, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    .line 338
    move v12, v7

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "exception":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to parse layer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->layerIndex:I

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    :cond_1
    move v12, v7

    .end local v7    # "layer":I
    .local v12, "layer":I
    :goto_0
    iget v0, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    aget-object v0, v6, v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v10

    .line 342
    .local v10, "startTimeUs":J
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v10, v13

    const-string v7, "Skipping invalid timing: "

    if-nez v0, :cond_2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void

    .line 347
    :cond_2
    iget v0, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    aget-object v0, v6, v0

    move-wide v15, v10

    .end local v10    # "startTimeUs":J
    .local v15, "startTimeUs":J
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v9

    .line 348
    .local v9, "endTimeUs":J
    cmp-long v0, v9, v13

    if-eqz v0, :cond_6

    cmp-long v0, v9, v15

    if-gtz v0, :cond_3

    goto/16 :goto_3

    .line 355
    :cond_3
    iget-object v0, v1, Landroidx/media3/extractor/text/ssa/SsaParser;->styles:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget v0, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_4

    .line 356
    iget-object v0, v1, Landroidx/media3/extractor/text/ssa/SsaParser;->styles:Ljava/util/Map;

    iget v7, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ssa/SsaStyle;

    move-object v13, v0

    goto :goto_1

    .line 357
    :cond_4
    const/4 v0, 0x0

    move-object v13, v0

    :goto_1
    nop

    .line 358
    .local v13, "style":Landroidx/media3/extractor/text/ssa/SsaStyle;
    iget v0, v3, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    aget-object v0, v6, v0

    .line 359
    .local v0, "rawText":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->parseFromDialogue(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;

    move-result-object v14

    .line 360
    .local v14, "styleOverrides":Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
    nop

    .line 361
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
    const-string v8, "\\N"

    const-string v11, "\n"

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 363
    const-string v8, "\\n"

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 364
    const-string v8, "\\h"

    const-string/jumbo v11, "\u00a0"

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, "text":Ljava/lang/String;
    move-wide v7, v15

    .end local v15    # "startTimeUs":J
    .local v7, "startTimeUs":J
    iget v15, v1, Landroidx/media3/extractor/text/ssa/SsaParser;->screenWidth:F

    move-object/from16 v17, v0

    .end local v0    # "rawText":Ljava/lang/String;
    .local v17, "rawText":Ljava/lang/String;
    iget v0, v1, Landroidx/media3/extractor/text/ssa/SsaParser;->screenHeight:F

    move/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroidx/media3/extractor/text/ssa/SsaParser;->createCue(Ljava/lang/String;ILandroidx/media3/extractor/text/ssa/SsaStyle;Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;FF)Landroidx/media3/common/text/Cue;

    move-result-object v0

    .line 367
    .local v0, "cue":Landroidx/media3/common/text/Cue;
    invoke-static {v7, v8, v5, v4}, Landroidx/media3/extractor/text/ssa/SsaParser;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result v15

    .line 368
    .local v15, "startTimeIndex":I
    invoke-static {v9, v10, v5, v4}, Landroidx/media3/extractor/text/ssa/SsaParser;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result v1

    .line 370
    .local v1, "endTimeIndex":I
    move/from16 v16, v15

    move/from16 v3, v16

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 371
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v1

    .end local v1    # "endTimeIndex":I
    .local v18, "endTimeIndex":I
    move-object/from16 v1, v16

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    goto :goto_2

    .line 373
    .end local v3    # "i":I
    .end local v18    # "endTimeIndex":I
    .restart local v1    # "endTimeIndex":I
    :cond_5
    return-void

    .line 349
    .end local v0    # "cue":Landroidx/media3/common/text/Cue;
    .end local v1    # "endTimeIndex":I
    .end local v7    # "startTimeUs":J
    .end local v11    # "text":Ljava/lang/String;
    .end local v13    # "style":Landroidx/media3/extractor/text/ssa/SsaStyle;
    .end local v14    # "styleOverrides":Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
    .end local v17    # "rawText":Ljava/lang/String;
    .local v15, "startTimeUs":J
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private parseEventBody(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V
    .locals 4
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 299
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroidx/media3/common/text/Cue;>;>;"
    .local p3, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->dialogueFormatFromInitializationData:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    .local v0, "format":Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
    :cond_1
    :goto_0
    invoke-virtual {p1, p4}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "currentLine":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 302
    const-string v1, "Format:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-static {v2}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_2
    const-string v1, "Dialogue:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    if-nez v0, :cond_3

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping dialogue line before complete format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SsaParser"

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    goto :goto_0

    .line 309
    :cond_3
    invoke-direct {p0, v2, v0, p2, p3}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseDialogueLine(Ljava/lang/String;Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 312
    :cond_4
    return-void
.end method

.method private parseHeader(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 205
    nop

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 206
    const-string v0, "[Script Info]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseScriptInfo(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "[V4+ Styles]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-static {p1, p2}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseStyles(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->styles:Ljava/util/Map;

    goto :goto_0

    .line 210
    :cond_2
    const-string v0, "[V4 Styles]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    const-string v0, "SsaParser"

    const-string v2, "[V4 Styles] are not supported"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_3
    const-string v0, "[Events]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 217
    :cond_4
    return-void
.end method

.method private parseScriptInfo(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .locals 6
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 231
    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->peekCodePoint(Ljava/nio/charset/Charset;)I

    move-result v0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_3

    .line 233
    :cond_0
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "infoNameAndValue":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 235
    goto :goto_0

    .line 237
    :cond_1
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    :cond_2
    goto :goto_1

    :pswitch_0
    const-string/jumbo v2, "playresy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_2

    :pswitch_1
    const-string/jumbo v4, "playresx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 247
    :pswitch_2
    :try_start_0
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->screenHeight:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_3

    .line 248
    :catch_0
    move-exception v2

    goto :goto_3

    .line 240
    :pswitch_3
    :try_start_1
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->screenWidth:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    goto :goto_3

    .line 241
    :catch_1
    move-exception v2

    .line 244
    nop

    .line 253
    .end local v0    # "infoNameAndValue":[Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 254
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x70092d0c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static parseStyles(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .locals 5
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ssa/SsaStyle;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 268
    .local v0, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/extractor/text/ssa/SsaStyle;>;"
    const/4 v1, 0x0

    .line 270
    .local v1, "formatInfo":Landroidx/media3/extractor/text/ssa/SsaStyle$Format;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "currentLine":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 271
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->peekCodePoint(Ljava/nio/charset/Charset;)I

    move-result v2

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_5

    .line 272
    :cond_1
    const-string v2, "Format:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaStyle$Format;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_2
    const-string v2, "Style:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    if-nez v1, :cond_3

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SsaParser"

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    goto :goto_0

    .line 279
    :cond_3
    invoke-static {v3, v1}, Landroidx/media3/extractor/text/ssa/SsaStyle;->fromStyleLine(Ljava/lang/String;Landroidx/media3/extractor/text/ssa/SsaStyle$Format;)Landroidx/media3/extractor/text/ssa/SsaStyle;

    move-result-object v2

    .line 280
    .local v2, "style":Landroidx/media3/extractor/text/ssa/SsaStyle;
    if-eqz v2, :cond_4

    .line 281
    iget-object v4, v2, Landroidx/media3/extractor/text/ssa/SsaStyle;->name:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .end local v2    # "style":Landroidx/media3/extractor/text/ssa/SsaStyle;
    :cond_4
    goto :goto_0

    .line 285
    :cond_5
    return-object v0
.end method

.method private static parseTimecodeUs(Ljava/lang/String;)J
    .locals 9
    .param p0, "timeString"    # Ljava/lang/String;

    .line 382
    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaParser;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v1

    .line 386
    :cond_0
    nop

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v1, v5

    .line 388
    .local v1, "timestampUs":J
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v3

    mul-long/2addr v7, v5

    add-long/2addr v1, v7

    .line 389
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 390
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 391
    return-wide v1
.end method

.method private static toLineAnchor(I)I
    .locals 3
    .param p0, "alignment"    # I

    .line 508
    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_0

    .line 524
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaParser"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return v0

    .line 520
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 516
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 512
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 522
    :pswitch_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static toPositionAnchor(I)I
    .locals 3
    .param p0, "alignment"    # I

    .line 530
    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_0

    .line 546
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaParser"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return v0

    .line 542
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 538
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 534
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 544
    :pswitch_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static toTextAlignment(I)Landroid/text/Layout$Alignment;
    .locals 3
    .param p0, "alignment"    # I

    .line 486
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 502
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaParser"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-object v0

    .line 498
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 494
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 490
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 500
    :pswitch_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 21
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

    .line 142
    .local p5, "output":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v4, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroidx/media3/common/text/Cue;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v5, "startTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    add-int v7, v1, p3

    move-object/from16 v8, p1

    invoke-virtual {v6, v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 146
    iget-object v6, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 147
    iget-object v6, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/text/ssa/SsaParser;->detectUtfCharset(Landroidx/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 149
    .local v6, "charset":Ljava/nio/charset/Charset;
    iget-boolean v7, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    if-nez v7, :cond_0

    .line 150
    iget-object v7, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v7, v6}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseHeader(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    .line 152
    :cond_0
    iget-object v7, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v7, v4, v5, v6}, Landroidx/media3/extractor/text/ssa/SsaParser;->parseEventBody(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V

    .line 156
    iget-wide v9, v2, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v9, v11

    if-eqz v7, :cond_1

    iget-boolean v7, v2, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->outputAllCues:Z

    if-eqz v7, :cond_1

    .line 157
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 158
    :cond_1
    const/4 v7, 0x0

    :goto_0
    nop

    .line 159
    .local v7, "cuesWithTimingBeforeRequestedStartTimeUs":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 160
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/util/List;

    .line 161
    .local v14, "cuesForThisStartTime":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    .line 164
    move-wide/from16 v17, v11

    goto :goto_3

    .line 165
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_6

    .line 169
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 171
    .local v15, "startTimeUs":J
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 172
    .local v19, "endTimeUs":J
    new-instance v13, Landroidx/media3/extractor/text/CuesWithTiming;

    sub-long v17, v19, v15

    invoke-direct/range {v13 .. v18}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 175
    .local v13, "cuesWithTiming":Landroidx/media3/extractor/text/CuesWithTiming;
    move-wide/from16 v17, v11

    iget-wide v11, v2, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    cmp-long v10, v11, v17

    if-eqz v10, :cond_4

    iget-wide v10, v2, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    cmp-long v10, v19, v10

    if-ltz v10, :cond_3

    goto :goto_2

    .line 177
    :cond_3
    if-eqz v7, :cond_5

    .line 178
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 176
    :cond_4
    :goto_2
    invoke-interface {v3, v13}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 159
    .end local v13    # "cuesWithTiming":Landroidx/media3/extractor/text/CuesWithTiming;
    .end local v14    # "cuesForThisStartTime":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    .end local v15    # "startTimeUs":J
    .end local v19    # "endTimeUs":J
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v11, v17

    goto :goto_1

    .line 167
    .restart local v14    # "cuesForThisStartTime":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    :cond_6
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    .line 181
    .end local v9    # "i":I
    .end local v14    # "cuesForThisStartTime":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    :cond_7
    if-eqz v7, :cond_8

    .line 182
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 183
    .local v10, "cuesWithTiming":Landroidx/media3/extractor/text/CuesWithTiming;
    invoke-interface {v3, v10}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 184
    .end local v10    # "cuesWithTiming":Landroidx/media3/extractor/text/CuesWithTiming;
    goto :goto_4

    .line 186
    :cond_8
    return-void
.end method
