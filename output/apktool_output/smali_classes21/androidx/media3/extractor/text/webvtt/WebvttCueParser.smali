.class public final Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;,
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;,
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;,
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_POSITION:F = 0.5f

.field private static final DEFAULT_TEXT_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_RUBY:Ljava/lang/String; = "ruby"

.field private static final TAG_RUBY_TEXT:Ljava/lang/String; = "rt"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"

.field private static final TEXT_ALIGNMENT_CENTER:I = 0x2

.field private static final TEXT_ALIGNMENT_END:I = 0x3

.field private static final TEXT_ALIGNMENT_LEFT:I = 0x4

.field private static final TEXT_ALIGNMENT_RIGHT:I = 0x5

.field private static final TEXT_ALIGNMENT_START:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 123
    nop

    .line 124
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 125
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v0, "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "white"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    .line 181
    .end local v0    # "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v0, "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    .line 191
    .end local v0    # "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .locals 5
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 654
    .local p1, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    .local v1, "className":Ljava/lang/String;
    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x21

    if-eqz v2, :cond_0

    .line 656
    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 657
    .local v2, "color":I
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v4, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .end local v2    # "color":I
    goto :goto_1

    .line 658
    :cond_0
    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 660
    .restart local v2    # "color":I
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v4, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 658
    .end local v2    # "color":I
    :cond_1
    :goto_1
    nop

    .line 662
    .end local v1    # "className":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 663
    :cond_2
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .param p0, "entity"    # Ljava/lang/String;
    .param p1, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "nbsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring unsupported entity: \'&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 511
    :pswitch_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 512
    goto :goto_2

    .line 508
    :pswitch_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 509
    goto :goto_2

    .line 505
    :pswitch_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 506
    goto :goto_2

    .line 502
    :pswitch_3
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 503
    nop

    .line 517
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_3
        0xd88 -> :sswitch_2
        0x179c4 -> :sswitch_1
        0x337f11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "cueId"    # Ljava/lang/String;
    .param p2, "startTag"    # Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 582
    .local p3, "nestedElements":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    .local p4, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v3, v1, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v4

    .line 583
    .local v4, "rubyTagPosition":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    .local v5, "sortedNestedElements":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    move-object/from16 v6, p3

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 585
    invoke-static {}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$100()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 586
    const/4 v7, 0x0

    .line 587
    .local v7, "deletedCharCount":I
    iget v8, v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 588
    .local v8, "lastRubyTextEnd":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 589
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-static {v10}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v10

    iget-object v10, v10, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const-string/jumbo v11, "rt"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 590
    goto :goto_1

    .line 592
    :cond_0
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    .line 596
    .local v10, "rubyTextElement":Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;
    nop

    .line 598
    invoke-static {v10}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v11

    invoke-static {v3, v1, v11}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v11

    .line 597
    const/4 v12, 0x1

    invoke-static {v11, v4, v12}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->firstKnownRubyPosition(III)I

    move-result v11

    .line 602
    .local v11, "rubyPosition":I
    invoke-static {v10}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v12

    iget v12, v12, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    sub-int/2addr v12, v7

    .line 603
    .local v12, "adjustedRubyTextStart":I
    invoke-static {v10}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$300(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)I

    move-result v13

    sub-int/2addr v13, v7

    .line 604
    .local v13, "adjustedRubyTextEnd":I
    invoke-virtual {v0, v12, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 605
    .local v14, "rubyText":Ljava/lang/CharSequence;
    invoke-virtual {v0, v12, v13}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 606
    new-instance v15, Landroidx/media3/common/text/RubySpan;

    .line 607
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1, v11}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    .line 606
    const/16 v1, 0x21

    invoke-virtual {v0, v15, v8, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 611
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v7, v1

    .line 613
    move v1, v12

    move v8, v1

    .line 588
    .end local v10    # "rubyTextElement":Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;
    .end local v11    # "rubyPosition":I
    .end local v12    # "adjustedRubyTextStart":I
    .end local v13    # "adjustedRubyTextEnd":I
    .end local v14    # "rubyText":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 615
    .end local v9    # "i":I
    :cond_1
    return-void
.end method

.method private static applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 6
    .param p0, "cueId"    # Ljava/lang/String;
    .param p1, "startTag"    # Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .param p3, "text"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p2, "nestedElements":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    .local p4, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    iget v0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 542
    .local v0, "start":I
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 544
    .local v1, "end":I
    iget-object v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "ruby"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_1
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_5
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_7
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_0

    .line 567
    return-void

    .line 565
    :pswitch_0
    goto :goto_2

    .line 561
    :pswitch_1
    iget-object v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-static {p3, v2, v0, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyVoiceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 562
    goto :goto_2

    .line 558
    :pswitch_2
    iget-object v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    invoke-static {p3, v2, v0, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    .line 559
    goto :goto_2

    .line 555
    :pswitch_3
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 556
    goto :goto_2

    .line 552
    :pswitch_4
    invoke-static {p3, p0, p1, p2, p4}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V

    .line 553
    goto :goto_2

    .line 549
    :pswitch_5
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 550
    goto :goto_2

    .line 546
    :pswitch_6
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 547
    nop

    .line 570
    :goto_2
    invoke-static {p4, p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object v2

    .line 571
    .local v2, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 572
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v4, v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    invoke-static {p3, v4, v0, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;II)V

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 574
    .end local v3    # "i":I
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static applyStyleToText(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;II)V
    .locals 4
    .param p0, "spannedText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "style"    # Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 672
    if-nez p1, :cond_0

    .line 673
    return-void

    .line 675
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_1

    .line 676
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 678
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 676
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 683
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 686
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 687
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 689
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 690
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 692
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 690
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 697
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 700
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 698
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 705
    :cond_5
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 706
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 708
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 713
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 731
    :pswitch_0
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 733
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 731
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 737
    goto :goto_0

    .line 723
    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 725
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 723
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 729
    goto :goto_0

    .line 715
    :pswitch_2
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 717
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 715
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 721
    nop

    .line 742
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getCombineUpright()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 743
    new-instance v0, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {v0}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 746
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static applyVoiceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 2
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "voice"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 667
    new-instance v0, Landroidx/media3/common/text/VoiceSpan;

    invoke-direct {v0, p1}, Landroidx/media3/common/text/VoiceSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 668
    return-void
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .locals 2
    .param p0, "markup"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .line 495
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 496
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method private static firstKnownRubyPosition(III)I
    .locals 1
    .param p0, "position1"    # I
    .param p1, "position2"    # I
    .param p2, "position3"    # I

    .line 633
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 634
    return p0

    .line 636
    :cond_0
    if-eq p1, v0, :cond_1

    .line 637
    return p1

    .line 639
    :cond_1
    if-eq p2, v0, :cond_2

    .line 640
    return p2

    .line 642
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;"
        }
    .end annotation

    .line 762
    .local p0, "declaredStyles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v0, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 764
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 765
    .local v2, "style":Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    iget-object v3, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v4, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    iget-object v5, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    .line 766
    .local v3, "score":I
    if-lez v3, :cond_0

    .line 767
    new-instance v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v3, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILandroidx/media3/extractor/text/webvtt/WebvttCssStyle;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v2    # "style":Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .end local v3    # "score":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 771
    return-object v0
.end method

.method private static getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I
    .locals 5
    .param p1, "cueId"    # Ljava/lang/String;
    .param p2, "startTag"    # Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            ")I"
        }
    .end annotation

    .line 619
    .local p0, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object v0

    .line 620
    .local v0, "styleMatches":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 621
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v2, v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 622
    .local v2, "style":Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    invoke-virtual {v2}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 623
    invoke-virtual {v2}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result v3

    return v3

    .line 620
    .end local v2    # "style":Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "i":I
    :cond_1
    return v3
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tagExpression"    # Ljava/lang/String;

    .line 755
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 757
    const-string v0, "[ \\.]"

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 3
    .param p0, "tagName"    # Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "ruby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "rt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 531
    return v1

    .line 529
    :pswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static newCueForText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 239
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 240
    .local v0, "infoBuilder":Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
    iput-object p0, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 241
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v1

    return-object v1
.end method

.method public static parseCue(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;
    .locals 5
    .param p0, "webvttData"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 202
    .local p1, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "firstLine":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    return-object v1

    .line 206
    :cond_0
    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 207
    .local v2, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-static {v1, v2, p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v1

    return-object v1

    .line 212
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "secondLine":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 214
    return-object v1

    .line 216
    :cond_2
    sget-object v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v1

    return-object v1

    .line 221
    :cond_3
    return-object v1
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "cueHeaderMatcher"    # Ljava/util/regex/Matcher;
    .param p2, "webvttData"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 344
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 347
    .local v0, "builder":Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
    nop

    .line 348
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    .line 349
    nop

    .line 350
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    nop

    .line 356
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v1, "textBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 364
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 368
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 369
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->build()Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v2

    return-object v2

    .line 351
    .end local v1    # "textBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping cue with bad header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebvttCueParser"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x0

    return-object v2
.end method

.method static parseCueSettingsList(Ljava/lang/String;)Landroidx/media3/common/text/Cue$Builder;
    .locals 2
    .param p0, "cueSettingsList"    # Ljava/lang/String;

    .line 231
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 232
    .local v0, "builder":Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
    invoke-static {p0, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 233
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    return-object v1
.end method

.method private static parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 7
    .param p0, "cueSettingsList"    # Ljava/lang/String;
    .param p1, "builder"    # Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 374
    const-string v0, "WebvttCueParser"

    sget-object v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 376
    .local v1, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 377
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 378
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 380
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "line"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    invoke-static {v3, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_1

    .line 382
    :cond_0
    const-string v4, "align"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    goto :goto_1

    .line 384
    :cond_1
    const-string/jumbo v4, "position"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    invoke-static {v3, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_1

    .line 386
    :cond_2
    const-string/jumbo v4, "size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 387
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v4

    iput v4, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    goto :goto_1

    .line 388
    :cond_3
    const-string/jumbo v4, "vertical"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 389
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseVerticalAttribute(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    goto :goto_1

    .line 391
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cue setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_1
    goto :goto_2

    .line 393
    :catch_0
    move-exception v4

    .line 394
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bad cue setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    goto/16 :goto_0

    .line 397
    :cond_5
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 17
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    .line 254
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 255
    .local v3, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 256
    .local v4, "startTagStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;>;"
    const/4 v5, 0x0

    .line 257
    .local v5, "pos":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v6, "nestedElements":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_10

    .line 259
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 260
    .local v7, "curr":C
    sparse-switch v7, :sswitch_data_0

    .line 318
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 262
    :sswitch_0
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 263
    add-int/lit8 v5, v5, 0x1

    .line 264
    goto/16 :goto_8

    .line 266
    :cond_0
    move v8, v5

    .line 267
    .local v8, "ltPos":I
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x2f

    const/4 v12, 0x1

    if-ne v9, v11, :cond_1

    move v9, v12

    goto :goto_1

    :cond_1
    move v9, v10

    .line 268
    .local v9, "isClosingTag":Z
    :goto_1
    add-int/lit8 v13, v8, 0x1

    invoke-static {v1, v13}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v5

    .line 269
    add-int/lit8 v13, v5, -0x2

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_2

    move v10, v12

    .line 270
    .local v10, "isVoidTag":Z
    :cond_2
    nop

    .line 271
    if-eqz v9, :cond_3

    const/4 v12, 0x2

    :cond_3
    add-int/2addr v12, v8

    if-eqz v10, :cond_4

    add-int/lit8 v11, v5, -0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v5, -0x1

    :goto_2
    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "fullTagExpression":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 273
    goto :goto_0

    .line 275
    :cond_5
    invoke-static {v11}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 276
    .local v12, "tagName":Ljava/lang/String;
    invoke-static {v12}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 277
    goto :goto_0

    .line 279
    :cond_6
    if-eqz v9, :cond_a

    .line 282
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 283
    move/from16 v16, v5

    goto :goto_5

    .line 285
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 286
    .local v13, "startTag":Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v0, v13, v6, v3, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 287
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 288
    new-instance v14, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    move/from16 v16, v5

    .end local v5    # "pos":I
    .local v16, "pos":I
    const/4 v5, 0x0

    invoke-direct {v14, v13, v15, v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;-><init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;ILandroidx/media3/extractor/text/webvtt/WebvttCueParser$1;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 290
    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    :cond_8
    move/from16 v16, v5

    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 292
    :goto_4
    iget-object v5, v13, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v5, v16

    goto :goto_3

    .line 293
    .end local v13    # "startTag":Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    :cond_a
    move/from16 v16, v5

    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    if-nez v10, :cond_b

    .line 294
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-static {v11, v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_6

    .line 293
    :cond_b
    :goto_5
    nop

    .line 322
    .end local v7    # "curr":C
    .end local v8    # "ltPos":I
    .end local v9    # "isClosingTag":Z
    .end local v10    # "isVoidTag":Z
    .end local v11    # "fullTagExpression":Ljava/lang/String;
    .end local v12    # "tagName":Ljava/lang/String;
    :goto_6
    move/from16 v5, v16

    goto :goto_8

    .line 298
    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    .restart local v7    # "curr":C
    :sswitch_1
    add-int/lit8 v8, v5, 0x1

    const/16 v9, 0x3b

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 299
    .local v8, "semiColonEndIndex":I
    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x20

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 301
    .local v9, "spaceEndIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_c

    .line 302
    move v11, v9

    goto :goto_7

    .line 303
    :cond_c
    if-ne v9, v10, :cond_d

    .line 304
    move v11, v8

    goto :goto_7

    .line 305
    :cond_d
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_7
    nop

    .line 306
    .local v11, "entityEndIndex":I
    if-eq v11, v10, :cond_f

    .line 307
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 308
    if-ne v11, v9, :cond_e

    .line 309
    const-string v10, " "

    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 311
    :cond_e
    add-int/lit8 v5, v11, 0x1

    goto :goto_8

    .line 313
    :cond_f
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 314
    add-int/lit8 v5, v5, 0x1

    .line 316
    nop

    .line 322
    .end local v7    # "curr":C
    .end local v8    # "semiColonEndIndex":I
    .end local v9    # "spaceEndIndex":I
    .end local v11    # "entityEndIndex":I
    :goto_8
    goto/16 :goto_0

    .line 324
    :cond_10
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    .line 325
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {v0, v7, v6, v3, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_9

    .line 327
    :cond_11
    nop

    .line 329
    invoke-static {}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v7

    .line 330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 327
    invoke-static {v0, v7, v8, v3, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 333
    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v7

    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseLineAnchor(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/high16 v0, -0x80000000

    return v0

    .line 422
    :pswitch_0
    return v1

    .line 420
    :pswitch_1
    return v2

    .line 417
    :pswitch_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 400
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 401
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 402
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseLineAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 403
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 405
    :cond_0
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    invoke-static {p0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 407
    iput v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    goto :goto_0

    .line 409
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 410
    const/4 v1, 0x1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 412
    :goto_0
    return-void
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "line-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "line-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/high16 v0, -0x80000000

    return v0

    .line 448
    :pswitch_0
    return v1

    .line 445
    :pswitch_1
    return v2

    .line 442
    :pswitch_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6dd215c0 -> :sswitch_5
        -0x514d33ab -> :sswitch_4
        -0x4c1a40fd -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 430
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 431
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    .line 433
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 435
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    .line 436
    return-void
.end method

.method private static parseTextAlignment(Ljava/lang/String;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alignment value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return v5

    .line 479
    :pswitch_0
    return v1

    .line 477
    :pswitch_1
    return v2

    .line 475
    :pswitch_2
    return v5

    .line 472
    :pswitch_3
    return v3

    .line 470
    :pswitch_4
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVerticalAttribute(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "rl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid \'vertical\' value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/high16 v0, -0x80000000

    return v0

    .line 460
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 458
    :pswitch_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0xd86 -> :sswitch_1
        0xe3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
