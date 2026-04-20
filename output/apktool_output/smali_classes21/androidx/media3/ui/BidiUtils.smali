.class final Landroidx/media3/ui/BidiUtils;
.super Ljava/lang/Object;
.source "BidiUtils.java"


# static fields
.field private static final CRLF_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LF_JOINER:Lcom/google/common/base/Joiner;

.field private static final LF_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final TAG:Ljava/lang/String; = "BidiUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "\n"

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v1

    sput-object v1, Landroidx/media3/ui/BidiUtils;->LF_SPLITTER:Lcom/google/common/base/Splitter;

    .line 43
    const-string v1, "\r\n"

    invoke-static {v1}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v1

    sput-object v1, Landroidx/media3/ui/BidiUtils;->CRLF_SPLITTER:Lcom/google/common/base/Splitter;

    .line 44
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Landroidx/media3/ui/BidiUtils;->LF_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsRtl(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "input"    # Ljava/lang/CharSequence;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 67
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 71
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 72
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 73
    .local v3, "codePoint":I
    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    .line 74
    .local v4, "dir":B
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/16 v6, 0x10

    if-eq v4, v6, :cond_2

    const/16 v6, 0x11

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 81
    .end local v3    # "codePoint":I
    .end local v4    # "dir":B
    goto :goto_0

    .line 78
    .restart local v3    # "codePoint":I
    .restart local v4    # "dir":B
    :cond_2
    :goto_1
    return v5

    .line 82
    .end local v2    # "offset":I
    .end local v3    # "codePoint":I
    .end local v4    # "dir":B
    :cond_3
    return v0
.end method

.method public static wrapText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 18
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 96
    move-object/from16 v0, p0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 97
    .local v1, "bidiFormatter":Landroid/text/BidiFormatter;
    const/4 v2, 0x0

    .line 98
    .local v2, "spannedInput":Landroid/text/Spanned;
    const/4 v3, 0x0

    .line 99
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 100
    .local v4, "spanStarts":[I
    const/4 v5, 0x0

    .line 102
    .local v5, "spanEnds":[I
    instance-of v6, v0, Landroid/text/Spanned;

    if-eqz v6, :cond_0

    .line 104
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 105
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2, v8, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 107
    array-length v6, v3

    new-array v4, v6, [I

    .line 108
    array-length v6, v3

    new-array v5, v6, [I

    .line 109
    const/4 v6, -0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    .line 110
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 116
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    sget-object v6, Landroidx/media3/ui/BidiUtils;->CRLF_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, v0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    .line 118
    .local v6, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    .local v7, "eolLength":I
    goto :goto_0

    .line 120
    .end local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "eolLength":I
    :cond_1
    sget-object v6, Landroidx/media3/ui/BidiUtils;->LF_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, v0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    .line 121
    .restart local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 124
    .restart local v7    # "eolLength":I
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v8, "wrappedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 128
    .local v9, "spanUpdate":I
    const/4 v10, 0x0

    .line 129
    .local v10, "lineStart":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 131
    .local v12, "line":Ljava/lang/String;
    sget-object v13, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v12, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, "wrappedLine":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 133
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    .line 137
    .local v14, "diff":I
    if-lez v14, :cond_2

    .line 138
    add-int/lit8 v9, v9, 0x1

    .line 140
    :cond_2
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    array-length v0, v3

    if-ge v15, v0, :cond_7

    .line 142
    aget v0, v4, v15

    if-gez v0, :cond_4

    aget-object v0, v3, v15

    .line 143
    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-lt v0, v10, :cond_3

    aget-object v0, v3, v15

    .line 144
    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v17, v1

    .end local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    .local v17, "bidiFormatter":Landroid/text/BidiFormatter;
    add-int v1, v10, v16

    if-ge v0, v1, :cond_5

    .line 145
    aput v9, v4, v15

    goto :goto_3

    .line 143
    .end local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    goto :goto_3

    .line 142
    .end local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_4
    move-object/from16 v17, v1

    .line 147
    .end local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_5
    :goto_3
    aget v0, v5, v15

    if-gez v0, :cond_6

    aget-object v0, v3, v15

    .line 148
    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v10, :cond_6

    aget-object v0, v3, v15

    .line 149
    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v10

    if-ge v0, v1, :cond_6

    .line 150
    aput v9, v5, v15

    .line 140
    :cond_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_2

    .end local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_7
    move-object/from16 v17, v1

    .line 153
    .end local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v15    # "j":I
    .restart local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    add-int/2addr v10, v0

    .line 154
    if-lez v14, :cond_9

    .line 155
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 132
    .end local v14    # "diff":I
    .end local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_8
    move-object/from16 v17, v1

    .line 158
    .end local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_9
    :goto_4
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "wrappedLine":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_1

    .line 162
    .end local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_a
    move-object/from16 v17, v1

    .end local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    .restart local v17    # "bidiFormatter":Landroid/text/BidiFormatter;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget-object v1, Landroidx/media3/ui/BidiUtils;->LF_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {v1, v8}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 164
    .local v0, "wrapped":Landroid/text/SpannableStringBuilder;
    if-eqz v3, :cond_c

    .line 165
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v11, v3

    if-ge v1, v11, :cond_c

    .line 170
    aget-object v11, v3, v1

    invoke-interface {v2, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    aget v12, v4, v1

    add-int/2addr v11, v12

    .line 171
    .local v11, "start":I
    aget-object v12, v3, v1

    invoke-interface {v2, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    aget v13, v5, v1

    add-int/2addr v12, v13

    .line 172
    .local v12, "end":I
    aget-object v13, v3, v1

    invoke-interface {v2, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    .line 173
    .local v13, "flags":I
    if-ltz v11, :cond_b

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-ge v11, v14, :cond_b

    if-ltz v12, :cond_b

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-gt v12, v14, :cond_b

    .line 175
    aget-object v14, v3, v1

    invoke-virtual {v0, v14, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 177
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Span out of bounds: start="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",end="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",len="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 179
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 177
    const-string v15, "BidiUtils"

    invoke-static {v15, v14}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "flags":I
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 184
    .end local v1    # "i":I
    :cond_c
    return-object v0
.end method
