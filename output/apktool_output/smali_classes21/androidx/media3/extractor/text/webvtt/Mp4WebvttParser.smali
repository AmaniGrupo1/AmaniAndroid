.class public final Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;
.super Ljava/lang/Object;
.source "Mp4WebvttParser.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field public static final CUE_REPLACEMENT_BEHAVIOR:I = 0x2

.field private static final TYPE_payl:I = 0x7061796c

.field private static final TYPE_sttg:I = 0x73747467

.field private static final TYPE_vttc:I = 0x76747463


# instance fields
.field private final parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    .line 62
    return-void
.end method

.method private static parseVttCueBox(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/text/Cue;
    .locals 9
    .param p0, "sampleData"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "remainingCueBoxBytes"    # I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "cueBuilder":Landroidx/media3/common/text/Cue$Builder;
    const/4 v1, 0x0

    .line 101
    .local v1, "cueText":Ljava/lang/CharSequence;
    :goto_0
    if-lez p1, :cond_3

    .line 102
    const/16 v2, 0x8

    if-lt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Incomplete vtt cue box header found."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 105
    .local v2, "boxSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 106
    .local v3, "boxType":I
    add-int/lit8 p1, p1, -0x8

    .line 107
    add-int/lit8 v4, v2, -0x8

    .line 108
    .local v4, "payloadLength":I
    nop

    .line 109
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-static {v5, v6, v4}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    sub-int/2addr p1, v4

    .line 112
    const v6, 0x73747467

    if-ne v3, v6, :cond_1

    .line 113
    invoke-static {v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    goto :goto_2

    .line 114
    :cond_1
    const v6, 0x7061796c

    if-ne v3, v6, :cond_2

    .line 115
    nop

    .line 117
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 116
    const/4 v8, 0x0

    invoke-static {v8, v6, v7}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v1

    .line 121
    .end local v2    # "boxSize":I
    .end local v3    # "boxType":I
    .end local v4    # "payloadLength":I
    .end local v5    # "boxPayload":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_0

    .line 122
    :cond_3
    if-nez v1, :cond_4

    .line 123
    const-string v1, ""

    .line 125
    :cond_4
    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v2

    goto :goto_3

    .line 127
    :cond_5
    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->newCueForText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue;

    move-result-object v2

    .line 125
    :goto_3
    return-object v2
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 7
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

    .line 76
    .local p5, "output":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    add-int v1, p2, p3

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 77
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 79
    .local v2, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 82
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    .line 83
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_1
    const-string v1, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 86
    .local v0, "boxSize":I
    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 87
    .local v1, "boxType":I
    nop

    .line 91
    iget-object v3, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    .line 87
    const v4, 0x76747463

    if-ne v1, v4, :cond_1

    .line 88
    add-int/lit8 v4, v0, -0x8

    invoke-static {v3, v4}, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;->parseVttCueBox(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/text/Cue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :cond_1
    add-int/lit8 v4, v0, -0x8

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 93
    .end local v0    # "boxSize":I
    .end local v1    # "boxType":I
    :goto_2
    goto :goto_0

    .line 94
    :cond_2
    new-instance v1, Landroidx/media3/extractor/text/CuesWithTiming;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
