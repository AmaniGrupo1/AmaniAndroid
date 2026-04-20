.class public final Lcom/google/re2j/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CASE_INSENSITIVE:I = 0x1

.field public static final DISABLE_UNICODE_GROUPS:I = 0x8

.field public static final DOTALL:I = 0x2

.field public static final LONGEST_MATCH:I = 0x10

.field public static final MULTILINE:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private final flags:I

.field private final pattern:Ljava/lang/String;

.field private final transient re2:Lcom/google/re2j/RE2;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/re2j/RE2;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "re2"    # Lcom/google/re2j/RE2;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_1

    .line 65
    if-eqz p3, :cond_0

    .line 68
    iput-object p1, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/google/re2j/Pattern;->flags:I

    .line 70
    iput-object p3, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/RE2;

    .line 71
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "re2 is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/re2j/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Lcom/google/re2j/Pattern;
    .locals 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 121
    move-object v0, p0

    .line 122
    .local v0, "flregex":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?i)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?m)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_2
    and-int/lit8 v1, p1, -0x20

    if-nez v1, :cond_3

    .line 137
    invoke-static {v0, p0, p1}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/re2j/Pattern;

    move-result-object v1

    return-object v1

    .line 133
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Flags should only be a combination of MULTILINE, DOTALL, CASE_INSENSITIVE, DISABLE_UNICODE_GROUPS, LONGEST_MATCH"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static compile(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/re2j/Pattern;
    .locals 3
    .param p0, "flregex"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 144
    const/16 v0, 0xd4

    .line 145
    .local v0, "re2Flags":I
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_0

    .line 146
    and-int/lit16 v0, v0, -0x81

    .line 148
    :cond_0
    new-instance v1, Lcom/google/re2j/Pattern;

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 149
    :goto_0
    invoke-static {p0, v0, v2}, Lcom/google/re2j/RE2;->compileImpl(Ljava/lang/String;IZ)Lcom/google/re2j/RE2;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/re2j/Pattern;-><init>(Ljava/lang/String;ILcom/google/re2j/RE2;)V

    return-object v1
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 161
    invoke-static {p0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static matches(Ljava/lang/String;[B)Z
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # [B

    .line 165
    invoke-static {p0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/re2j/Pattern;->matcher([B)Lcom/google/re2j/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 273
    invoke-static {p0}, Lcom/google/re2j/RE2;->quoteMeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private split(Lcom/google/re2j/Matcher;I)[Ljava/lang/String;
    .locals 8
    .param p1, "m"    # Lcom/google/re2j/Matcher;
    .param p2, "limit"    # I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "matchCount":I
    const/4 v1, 0x0

    .line 228
    .local v1, "arraySize":I
    const/4 v2, 0x0

    .line 229
    .local v2, "last":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    add-int/lit8 v0, v0, 0x1

    .line 231
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->start()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 232
    :cond_0
    move v1, v0

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->end()I

    move-result v2

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->inputLength()I

    move-result v3

    if-lt v2, v3, :cond_3

    if-eqz p2, :cond_4

    .line 237
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 238
    move v1, v0

    .line 241
    :cond_4
    const/4 v3, 0x0

    .line 242
    .local v3, "trunc":I
    if-lez p2, :cond_5

    if-le v1, p2, :cond_5

    .line 243
    move v1, p2

    .line 244
    const/4 v3, 0x1

    .line 246
    :cond_5
    new-array v4, v1, [Ljava/lang/String;

    .line 247
    .local v4, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 248
    .local v5, "i":I
    const/4 v2, 0x0

    .line 249
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->reset()Lcom/google/re2j/Matcher;

    .line 250
    :goto_1
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    sub-int v6, v1, v3

    if-ge v5, v6, :cond_6

    .line 251
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->start()I

    move-result v7

    invoke-virtual {p1, v2, v7}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 252
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->end()I

    move-result v2

    move v5, v6

    goto :goto_1

    .line 254
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_6
    if-ge v5, v1, :cond_7

    .line 255
    invoke-virtual {p1}, Lcom/google/re2j/Matcher;->inputLength()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 257
    :cond_7
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 307
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 308
    return v0

    .line 310
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 314
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/re2j/Pattern;

    .line 315
    .local v2, "other":Lcom/google/re2j/Pattern;
    iget v3, p0, Lcom/google/re2j/Pattern;->flags:I

    iget v4, v2, Lcom/google/re2j/Pattern;->flags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 311
    .end local v2    # "other":Lcom/google/re2j/Pattern;
    :cond_3
    :goto_1
    return v1
.end method

.method public flags()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/re2j/Pattern;->flags:I

    return v0
.end method

.method public groupCount()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/RE2;

    invoke-virtual {v0}, Lcom/google/re2j/RE2;->numberOfCapturingGroups()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 321
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/re2j/Pattern;->flags:I

    add-int/2addr v1, v2

    .line 322
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method matcher(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;
    .locals 1
    .param p1, "input"    # Lcom/google/re2j/MatcherInput;

    .line 191
    new-instance v0, Lcom/google/re2j/Matcher;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;Lcom/google/re2j/MatcherInput;)V

    return-object v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 182
    new-instance v0, Lcom/google/re2j/Matcher;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public matcher([B)Lcom/google/re2j/Matcher;
    .locals 2
    .param p1, "input"    # [B

    .line 186
    new-instance v0, Lcom/google/re2j/Matcher;

    invoke-static {p1}, Lcom/google/re2j/MatcherInput;->utf8([B)Lcom/google/re2j/MatcherInput;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;Lcom/google/re2j/MatcherInput;)V

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public matches([B)Z
    .locals 1
    .param p1, "input"    # [B

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/re2j/Pattern;->matcher([B)Lcom/google/re2j/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public namedGroups()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/RE2;

    iget-object v0, v0, Lcom/google/re2j/RE2;->namedGroups:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method re2()Lcom/google/re2j/RE2;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/RE2;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Pattern;->flags:I

    invoke-static {v0, v1}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;I)Lcom/google/re2j/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/RE2;

    invoke-virtual {v0}, Lcom/google/re2j/RE2;->reset()V

    .line 79
    return-void
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/re2j/Pattern;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 221
    new-instance v0, Lcom/google/re2j/Matcher;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, p2}, Lcom/google/re2j/Pattern;->split(Lcom/google/re2j/Matcher;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
