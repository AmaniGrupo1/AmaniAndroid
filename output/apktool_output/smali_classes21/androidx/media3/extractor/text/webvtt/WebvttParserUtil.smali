.class public final Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;
.super Ljava/lang/Object;
.source "WebvttParserUtil.java"


# static fields
.field private static final COMMENT:Ljava/util/regex/Pattern;

.field private static final WEBVTT_HEADER:Ljava/lang/String; = "WEBVTT"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "^NOTE([ \t].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findNextCueHeader(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/regex/Matcher;
    .locals 3
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 111
    nop

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 116
    :cond_1
    sget-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 117
    .local v0, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    return-object v0

    .line 120
    .end local v0    # "cueHeaderMatcher":Ljava/util/regex/Matcher;
    :cond_2
    goto :goto_0

    .line 122
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 2
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 56
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "WEBVTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static parsePercentage(Ljava/lang/String;)F
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 94
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Percentages must end with %"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseTimestampUs(Ljava/lang/String;)J
    .locals 11
    .param p0, "timestamp"    # Ljava/lang/String;

    .line 68
    const-wide/16 v0, 0x0

    .line 69
    .local v0, "value":J
    const-string v2, "\\."

    invoke-static {p0, v2}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const-string v5, ":"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "subparts":[Ljava/lang/String;
    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 72
    .local v6, "subpart":Ljava/lang/String;
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long v0, v7, v9

    .line 71
    .end local v6    # "subpart":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    .line 75
    array-length v3, v2

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    .line 76
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "millis":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 78
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v0, v7

    goto :goto_1

    .line 80
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected 3 decimal places, got: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    .end local v3    # "millis":Ljava/lang/String;
    :cond_2
    :goto_1
    mul-long/2addr v5, v0

    return-wide v5
.end method

.method public static validateWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 43
    .local v0, "startPosition":I
    invoke-static {p0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected WEBVTT. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method
