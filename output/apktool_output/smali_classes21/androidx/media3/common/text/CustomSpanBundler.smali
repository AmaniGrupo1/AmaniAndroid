.class final Landroidx/media3/common/text/CustomSpanBundler;
.super Ljava/lang/Object;
.source "CustomSpanBundler.java"


# static fields
.field private static final FIELD_END_INDEX:Ljava/lang/String;

.field private static final FIELD_FLAGS:Ljava/lang/String;

.field private static final FIELD_PARAMS:Ljava/lang/String;

.field private static final FIELD_START_INDEX:Ljava/lang/String;

.field private static final FIELD_TYPE:Ljava/lang/String;

.field private static final HORIZONTAL_TEXT_IN_VERTICAL_CONTEXT:I = 0x3

.field private static final RUBY:I = 0x1

.field private static final TEXT_EMPHASIS:I = 0x2

.field private static final UNKNOWN:I = -0x1

.field private static final VOICE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_START_INDEX:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_END_INDEX:Ljava/lang/String;

    .line 64
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_FLAGS:Ljava/lang/String;

    .line 65
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_TYPE:Ljava/lang/String;

    .line 66
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_PARAMS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundleCustomSpans(Landroid/text/Spanned;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "bundledCustomSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroidx/media3/common/text/RubySpan;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/text/RubySpan;

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 72
    .local v5, "span":Landroidx/media3/common/text/RubySpan;
    invoke-virtual {v5}, Landroidx/media3/common/text/RubySpan;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v5, v7, v6}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 73
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v5    # "span":Landroidx/media3/common/text/RubySpan;
    .end local v6    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroidx/media3/common/text/TextEmphasisSpan;

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/text/TextEmphasisSpan;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 76
    .local v5, "span":Landroidx/media3/common/text/TextEmphasisSpan;
    nop

    .line 77
    invoke-virtual {v5}, Landroidx/media3/common/text/TextEmphasisSpan;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {p0, v5, v7, v6}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 78
    .restart local v6    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v5    # "span":Landroidx/media3/common/text/TextEmphasisSpan;
    .end local v6    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 81
    :cond_1
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 82
    .local v5, "span":Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;
    nop

    .line 83
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 85
    .restart local v6    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v5    # "span":Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;
    .end local v6    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 87
    :cond_2
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroidx/media3/common/text/VoiceSpan;

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/text/VoiceSpan;

    array-length v2, v1

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 88
    .local v4, "span":Landroidx/media3/common/text/VoiceSpan;
    nop

    .line 89
    invoke-virtual {v4}, Landroidx/media3/common/text/VoiceSpan;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {p0, v4, v6, v5}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 90
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "span":Landroidx/media3/common/text/VoiceSpan;
    .end local v5    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 92
    :cond_3
    return-object v0
.end method

.method private static spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "spanned"    # Landroid/text/Spanned;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "spanType"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_START_INDEX:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_END_INDEX:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_FLAGS:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    if-eqz p3, :cond_0

    .line 127
    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    :cond_0
    return-object v0
.end method

.method public static unbundleAndApplyCustomSpan(Landroid/os/Bundle;Landroid/text/Spannable;)V
    .locals 6
    .param p0, "customSpanBundle"    # Landroid/os/Bundle;
    .param p1, "text"    # Landroid/text/Spannable;

    .line 96
    sget-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_START_INDEX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "start":I
    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_END_INDEX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "end":I
    sget-object v2, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_FLAGS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "flags":I
    sget-object v3, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_TYPE:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 100
    .local v3, "customSpanType":I
    sget-object v4, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_PARAMS:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 101
    .local v4, "span":Landroid/os/Bundle;
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5}, Landroidx/media3/common/text/VoiceSpan;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/VoiceSpan;

    move-result-object v5

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 113
    goto :goto_0

    .line 109
    :pswitch_1
    new-instance v5, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {v5}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    goto :goto_0

    .line 106
    :pswitch_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5}, Landroidx/media3/common/text/TextEmphasisSpan;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/TextEmphasisSpan;

    move-result-object v5

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    goto :goto_0

    .line 103
    :pswitch_3
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5}, Landroidx/media3/common/text/RubySpan;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/RubySpan;

    move-result-object v5

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 104
    nop

    .line 117
    :goto_0
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
