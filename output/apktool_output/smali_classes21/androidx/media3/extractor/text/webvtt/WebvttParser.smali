.class public final Landroidx/media3/extractor/text/webvtt/WebvttParser;
.super Ljava/lang/Object;
.source "WebvttParser.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# static fields
.field private static final COMMENT_START:Ljava/lang/String; = "NOTE"

.field public static final CUE_REPLACEMENT_BEHAVIOR:I = 0x1

.field private static final EVENT_COMMENT:I = 0x1

.field private static final EVENT_CUE:I = 0x3

.field private static final EVENT_END_OF_FILE:I = 0x0

.field private static final EVENT_NONE:I = -0x1

.field private static final EVENT_STYLE_BLOCK:I = 0x2

.field private static final STYLE_START:Ljava/lang/String; = "STYLE"


# instance fields
.field private final cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

.field private final parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 61
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    .line 62
    return-void
.end method

.method private static getNextEvent(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 4
    .param p0, "parsableWebvttData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 118
    const/4 v0, -0x1

    .line 119
    .local v0, "foundEvent":I
    const/4 v1, 0x0

    .line 120
    .local v1, "currentInputPosition":I
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 121
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 122
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 124
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    :cond_0
    const-string v3, "STYLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const/4 v0, 0x2

    goto :goto_1

    .line 127
    :cond_1
    const-string v3, "NOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    const/4 v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    const/4 v0, 0x3

    .line 132
    .end local v2    # "line":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 134
    return v0
.end method

.method private static skipComment(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 1
    .param p0, "parsableWebvttData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 5
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
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    add-int v1, p2, p3

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 77
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "definedStyles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    :try_start_0
    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "cueInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    :cond_1
    :goto_1
    iget-object v2, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/text/webvtt/WebvttParser;->getNextEvent(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    move v3, v2

    .local v3, "event":I
    if-eqz v2, :cond_6

    .line 91
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    .line 92
    iget-object v2, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/text/webvtt/WebvttParser;->skipComment(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_1

    .line 93
    :cond_2
    const/4 v2, 0x2

    if-ne v3, v2, :cond_4

    .line 94
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 98
    iget-object v2, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    iget-object v4, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseBlock(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 95
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "A style block was found after the first cue."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_4
    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 101
    iget-object v2, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v2

    .line 102
    .local v2, "cueInfo":Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;
    if-eqz v2, :cond_5

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "cueInfo":Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;
    :cond_5
    goto :goto_1

    .line 107
    :cond_6
    new-instance v2, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;

    invoke-direct {v2, v1}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    .line 108
    .local v2, "subtitle":Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;
    invoke-static {v2, p4, p5}, Landroidx/media3/extractor/text/LegacySubtitleUtil;->toCuesWithTiming(Landroidx/media3/extractor/text/Subtitle;Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    .line 109
    return-void

    .line 83
    .end local v1    # "cueInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    .end local v2    # "subtitle":Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;
    .end local v3    # "event":I
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroidx/media3/common/ParserException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
