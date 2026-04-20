.class Lcom/google/re2j/Regexp;
.super Ljava/lang/Object;
.source "Regexp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/Regexp$Op;
    }
.end annotation


# static fields
.field static final EMPTY_SUBS:[Lcom/google/re2j/Regexp;


# instance fields
.field cap:I

.field flags:I

.field max:I

.field min:I

.field name:Ljava/lang/String;

.field namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field op:Lcom/google/re2j/Regexp$Op;

.field runes:[I

.field subs:[Lcom/google/re2j/Regexp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/re2j/Regexp;

    sput-object v0, Lcom/google/re2j/Regexp;->EMPTY_SUBS:[Lcom/google/re2j/Regexp;

    return-void
.end method

.method constructor <init>(Lcom/google/re2j/Regexp$Op;)V
    .locals 0
    .param p1, "op"    # Lcom/google/re2j/Regexp$Op;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/google/re2j/Regexp;)V
    .locals 1
    .param p1, "that"    # Lcom/google/re2j/Regexp;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 72
    iget v0, p1, Lcom/google/re2j/Regexp;->flags:I

    iput v0, p0, Lcom/google/re2j/Regexp;->flags:I

    .line 73
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 74
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    iput-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    .line 75
    iget v0, p1, Lcom/google/re2j/Regexp;->min:I

    iput v0, p0, Lcom/google/re2j/Regexp;->min:I

    .line 76
    iget v0, p1, Lcom/google/re2j/Regexp;->max:I

    iput v0, p0, Lcom/google/re2j/Regexp;->max:I

    .line 77
    iget v0, p1, Lcom/google/re2j/Regexp;->cap:I

    iput v0, p0, Lcom/google/re2j/Regexp;->cap:I

    .line 78
    iget-object v0, p1, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    .line 80
    return-void
.end method

.method private appendTo(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 105
    sget-object v0, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "(?:"

    const/16 v2, 0x5e

    const/16 v3, 0x29

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 264
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "[invalid char class]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto/16 :goto_c

    .line 230
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 232
    const-string v0, "^\\x00-\\x{10FFFF}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v4

    const/16 v1, 0x2d

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v3, v3

    sub-int/2addr v3, v5

    aget v0, v0, v3

    const v3, 0x10ffff

    if-ne v0, v3, :cond_4

    .line 236
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v2, v2

    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v2, v2, v0

    add-int/2addr v2, v5

    .line 239
    .local v2, "lo":I
    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    sub-int/2addr v3, v5

    .line 240
    .local v3, "hi":I
    invoke-static {p1, v2}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 241
    invoke-static {p1, v2}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    .line 242
    if-eq v2, v3, :cond_2

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p1, v3}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 245
    invoke-static {p1, v3}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    .line 237
    .end local v2    # "lo":I
    .end local v3    # "hi":I
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .end local v0    # "i":I
    :cond_3
    goto :goto_2

    .line 249
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 250
    iget-object v2, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v2, v2, v0

    .line 251
    .restart local v2    # "lo":I
    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    .line 252
    .restart local v3    # "hi":I
    invoke-static {p1, v2}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 253
    invoke-static {p1, v2}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    .line 254
    if-eq v2, v3, :cond_5

    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {p1, v3}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 257
    invoke-static {p1, v3}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    .line 249
    .end local v2    # "lo":I
    .end local v3    # "hi":I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    :cond_6
    :goto_2
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    goto/16 :goto_c

    .line 223
    :pswitch_1
    const-string v0, "\\B"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    goto/16 :goto_c

    .line 220
    :pswitch_2
    const-string v0, "\\b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    goto/16 :goto_c

    .line 217
    :pswitch_3
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    goto/16 :goto_c

    .line 214
    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    goto/16 :goto_c

    .line 207
    :pswitch_5
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 208
    const-string v0, "(?-m:$)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 210
    :cond_7
    const-string v0, "\\z"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    goto/16 :goto_c

    .line 204
    :pswitch_6
    const-string v0, "\\A"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    goto/16 :goto_c

    .line 191
    :pswitch_7
    iget-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 194
    :cond_8
    const-string v0, "(?P<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 192
    :cond_9
    :goto_3
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    :goto_4
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-eq v0, v1, :cond_a

    .line 199
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v4

    invoke-direct {v0, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 201
    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    goto/16 :goto_c

    .line 188
    :pswitch_8
    const-string v0, "(?s:.)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    goto/16 :goto_c

    .line 185
    :pswitch_9
    const-string v0, "(?-s:.)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto/16 :goto_c

    .line 174
    :pswitch_a
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_b

    .line 175
    const-string v0, "(?i:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_b
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v1, v0

    :goto_5
    if-ge v4, v1, :cond_c

    aget v2, v0, v4

    .line 178
    .local v2, "rune":I
    invoke-static {p1, v2}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    .line 177
    .end local v2    # "rune":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 180
    :cond_c
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_13

    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 165
    :pswitch_b
    const-string v0, ""

    .line 166
    .local v0, "sep":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v2, v1

    :goto_6
    if-ge v4, v2, :cond_d

    aget-object v3, v1, v4

    .line 167
    .local v3, "sub":Lcom/google/re2j/Regexp;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "|"

    .line 169
    invoke-direct {v3, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 166
    .end local v3    # "sub":Lcom/google/re2j/Regexp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 171
    :cond_d
    goto/16 :goto_c

    .line 153
    .end local v0    # "sep":Ljava/lang/String;
    :pswitch_c
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v2, v0

    :goto_7
    if-ge v4, v2, :cond_f

    aget-object v5, v0, v4

    .line 154
    .local v5, "sub":Lcom/google/re2j/Regexp;
    iget-object v6, v5, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v7, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    if-ne v6, v7, :cond_e

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v5, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 157
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 159
    :cond_e
    invoke-direct {v5, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 153
    .end local v5    # "sub":Lcom/google/re2j/Regexp;
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 162
    :cond_f
    goto/16 :goto_c

    .line 110
    :pswitch_d
    const-string v0, "(?:)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    goto/16 :goto_c

    .line 107
    :pswitch_e
    const-string v0, "[^\\x00-\\x{10FFFF}]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    goto/16 :goto_c

    .line 117
    :pswitch_f
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v4

    .line 118
    .local v0, "sub":Lcom/google/re2j/Regexp;
    iget-object v2, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    sget-object v4, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v4}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v4

    if-gt v2, v4, :cond_11

    iget-object v2, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v2, v4, :cond_10

    iget-object v2, v0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v2, v2

    if-le v2, v5, :cond_10

    goto :goto_9

    .line 124
    :cond_10
    invoke-direct {v0, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    goto :goto_a

    .line 120
    :cond_11
    :goto_9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v0, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 122
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :goto_a
    sget-object v1, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v2, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x3f

    packed-switch v1, :pswitch_data_1

    goto :goto_b

    .line 137
    :pswitch_10
    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/google/re2j/Regexp;->min:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p0, Lcom/google/re2j/Regexp;->min:I

    iget v3, p0, Lcom/google/re2j/Regexp;->max:I

    if-eq v1, v3, :cond_12

    .line 139
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    iget v1, p0, Lcom/google/re2j/Regexp;->max:I

    if-ltz v1, :cond_12

    .line 141
    iget v1, p0, Lcom/google/re2j/Regexp;->max:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    :cond_12
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 134
    :pswitch_11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    goto :goto_b

    .line 131
    :pswitch_12
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    goto :goto_b

    .line 128
    :pswitch_13
    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    nop

    .line 147
    :goto_b
    iget v1, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_13

    .line 148
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    .end local v0    # "sub":Lcom/google/re2j/Regexp;
    :cond_13
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static quoteIfHyphen(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "rune"    # I

    .line 98
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    .line 99
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    .line 319
    instance-of v0, p1, Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 320
    return v1

    .line 322
    :cond_0
    move-object v0, p0

    .line 323
    .local v0, "x":Lcom/google/re2j/Regexp;
    move-object v2, p1

    check-cast v2, Lcom/google/re2j/Regexp;

    .line 324
    .local v2, "y":Lcom/google/re2j/Regexp;
    iget-object v3, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iget-object v4, v2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-eq v3, v4, :cond_1

    .line 325
    return v1

    .line 327
    :cond_1
    sget-object v3, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v4, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v4}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 330
    :pswitch_1
    iget v3, v0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v2, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eq v3, v4, :cond_a

    .line 331
    return v1

    .line 368
    :pswitch_2
    iget v3, v0, Lcom/google/re2j/Regexp;->cap:I

    iget v4, v2, Lcom/google/re2j/Regexp;->cap:I

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v4, v4, v1

    .line 370
    invoke-virtual {v3, v4}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 371
    :cond_4
    :goto_0
    return v1

    .line 336
    :pswitch_3
    iget-object v3, v0, Lcom/google/re2j/Regexp;->runes:[I

    iget-object v4, v2, Lcom/google/re2j/Regexp;->runes:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 337
    return v1

    .line 342
    :pswitch_4
    iget-object v3, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v3, v3

    iget-object v4, v2, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v4, v4

    if-eq v3, v4, :cond_5

    .line 343
    return v1

    .line 345
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 346
    iget-object v4, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 347
    return v1

    .line 345
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 350
    .end local v3    # "i":I
    :cond_7
    goto :goto_2

    .line 360
    :pswitch_5
    iget v3, v0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v2, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_8

    iget v3, v0, Lcom/google/re2j/Regexp;->min:I

    iget v4, v2, Lcom/google/re2j/Regexp;->min:I

    if-ne v3, v4, :cond_8

    iget v3, v0, Lcom/google/re2j/Regexp;->max:I

    iget v4, v2, Lcom/google/re2j/Regexp;->max:I

    if-ne v3, v4, :cond_8

    iget-object v3, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v4, v4, v1

    .line 363
    invoke-virtual {v3, v4}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 364
    :cond_8
    return v1

    .line 354
    :pswitch_6
    iget v3, v0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v2, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_9

    iget-object v3, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v4, v4, v1

    .line 355
    invoke-virtual {v3, v4}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 356
    :cond_9
    return v1

    .line 375
    :cond_a
    :goto_2
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v0}, Lcom/google/re2j/Regexp$Op;->hashCode()I

    move-result v0

    .line 289
    .local v0, "hashcode":I
    sget-object v1, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v2, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 291
    :pswitch_1
    iget v1, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 v1, v1, 0x100

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 292
    goto :goto_1

    .line 310
    :pswitch_2
    iget v1, p0, Lcom/google/re2j/Regexp;->cap:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/google/re2j/Regexp;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 295
    :pswitch_3
    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 296
    goto :goto_1

    .line 299
    :pswitch_4
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 300
    goto :goto_1

    .line 307
    :pswitch_5
    iget v1, p0, Lcom/google/re2j/Regexp;->min:I

    mul-int/lit8 v1, v1, 0x1f

    iget v3, p0, Lcom/google/re2j/Regexp;->max:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/google/re2j/Regexp;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 308
    goto :goto_1

    .line 304
    :pswitch_6
    iget v1, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/google/re2j/Regexp;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 305
    nop

    .line 313
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method maxCap()I
    .locals 6

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "m":I
    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v2, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    if-ne v1, v2, :cond_0

    .line 273
    iget v0, p0, Lcom/google/re2j/Regexp;->cap:I

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 277
    .local v4, "sub":Lcom/google/re2j/Regexp;
    invoke-virtual {v4}, Lcom/google/re2j/Regexp;->maxCap()I

    move-result v5

    .line 278
    .local v5, "n":I
    if-ge v0, v5, :cond_1

    .line 279
    move v0, v5

    .line 276
    .end local v4    # "sub":Lcom/google/re2j/Regexp;
    .end local v5    # "n":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_2
    return v0
.end method

.method reinit()V
    .locals 2

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/Regexp;->flags:I

    .line 84
    sget-object v1, Lcom/google/re2j/Regexp;->EMPTY_SUBS:[Lcom/google/re2j/Regexp;

    iput-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    .line 86
    iput v0, p0, Lcom/google/re2j/Regexp;->max:I

    iput v0, p0, Lcom/google/re2j/Regexp;->min:I

    iput v0, p0, Lcom/google/re2j/Regexp;->cap:I

    .line 87
    iput-object v1, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
