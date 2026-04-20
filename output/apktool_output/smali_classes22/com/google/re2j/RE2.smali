.class Lcom/google/re2j/RE2;
.super Ljava/lang/Object;
.source "RE2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/RE2$DeliverFunc;,
        Lcom/google/re2j/RE2$ReplaceFunc;
    }
.end annotation


# static fields
.field static final ANCHOR_BOTH:I = 0x2

.field static final ANCHOR_START:I = 0x1

.field static final CLASS_NL:I = 0x4

.field static final DOT_NL:I = 0x8

.field static final FOLD_CASE:I = 0x1

.field static final LITERAL:I = 0x2

.field static final MATCH_NL:I = 0xc

.field static final NON_GREEDY:I = 0x20

.field static final ONE_LINE:I = 0x10

.field static final PERL:I = 0xd4

.field static final PERL_X:I = 0x40

.field static final POSIX:I = 0x0

.field static final UNANCHORED:I = 0x0

.field static final UNICODE_GROUPS:I = 0x80

.field static final WAS_DOLLAR:I = 0x100


# instance fields
.field final cond:I

.field final expr:Ljava/lang/String;

.field longest:Z

.field private final machine:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/re2j/Machine;",
            ">;"
        }
    .end annotation
.end field

.field public namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final numSubexp:I

.field prefix:Ljava/lang/String;

.field prefixComplete:Z

.field prefixRune:I

.field prefixUTF8:[B

.field final prog:Lcom/google/re2j/Prog;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "expr"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    .line 127
    invoke-static {p1}, Lcom/google/re2j/RE2;->compile(Ljava/lang/String;)Lcom/google/re2j/RE2;

    move-result-object v0

    .line 129
    .local v0, "re2":Lcom/google/re2j/RE2;
    iget-object v1, v0, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    .line 130
    iget-object v1, v0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iput-object v1, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    .line 131
    iget v1, v0, Lcom/google/re2j/RE2;->cond:I

    iput v1, p0, Lcom/google/re2j/RE2;->cond:I

    .line 132
    iget v1, v0, Lcom/google/re2j/RE2;->numSubexp:I

    iput v1, p0, Lcom/google/re2j/RE2;->numSubexp:I

    .line 133
    iget-boolean v1, v0, Lcom/google/re2j/RE2;->longest:Z

    iput-boolean v1, p0, Lcom/google/re2j/RE2;->longest:Z

    .line 134
    iget-object v1, v0, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    .line 135
    iget-object v1, v0, Lcom/google/re2j/RE2;->prefixUTF8:[B

    iput-object v1, p0, Lcom/google/re2j/RE2;->prefixUTF8:[B

    .line 136
    iget-boolean v1, v0, Lcom/google/re2j/RE2;->prefixComplete:Z

    iput-boolean v1, p0, Lcom/google/re2j/RE2;->prefixComplete:Z

    .line 137
    iget v1, v0, Lcom/google/re2j/RE2;->prefixRune:I

    iput v1, p0, Lcom/google/re2j/RE2;->prefixRune:I

    .line 138
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/re2j/Prog;IZ)V
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "prog"    # Lcom/google/re2j/Prog;
    .param p3, "numSubexp"    # I
    .param p4, "longest"    # Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    .line 141
    iput-object p1, p0, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    .line 143
    iput p3, p0, Lcom/google/re2j/RE2;->numSubexp:I

    .line 144
    invoke-virtual {p2}, Lcom/google/re2j/Prog;->startCond()I

    move-result v0

    iput v0, p0, Lcom/google/re2j/RE2;->cond:I

    .line 145
    iput-boolean p4, p0, Lcom/google/re2j/RE2;->longest:Z

    .line 146
    return-void
.end method

.method private allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V
    .locals 9
    .param p1, "input"    # Lcom/google/re2j/MachineInput;
    .param p2, "n"    # I
    .param p3, "deliver"    # Lcom/google/re2j/RE2$DeliverFunc;

    .line 477
    invoke-virtual {p1}, Lcom/google/re2j/MachineInput;->endPos()I

    move-result v0

    .line 478
    .local v0, "end":I
    if-gez p2, :cond_0

    .line 479
    add-int/lit8 p2, v0, 0x1

    .line 481
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, -0x1

    .local v3, "prevMatchEnd":I
    :goto_0
    if-ge v2, p2, :cond_6

    if-gt v1, v0, :cond_6

    .line 482
    iget-object v4, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v4, v4, Lcom/google/re2j/Prog;->numCap:I

    const/4 v5, 0x0

    invoke-direct {p0, p1, v1, v5, v4}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v4

    .line 483
    .local v4, "matches":[I
    if-eqz v4, :cond_6

    array-length v6, v4

    if-nez v6, :cond_1

    .line 484
    goto :goto_3

    .line 487
    :cond_1
    const/4 v6, 0x1

    .line 488
    .local v6, "accept":Z
    const/4 v7, 0x1

    aget v8, v4, v7

    if-ne v8, v1, :cond_4

    .line 490
    aget v5, v4, v5

    if-ne v5, v3, :cond_2

    .line 493
    const/4 v6, 0x0

    .line 495
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v5

    .line 496
    .local v5, "r":I
    if-gez v5, :cond_3

    .line 497
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 499
    :cond_3
    and-int/lit8 v8, v5, 0x7

    add-int/2addr v1, v8

    .line 501
    .end local v5    # "r":I
    :goto_1
    goto :goto_2

    .line 502
    :cond_4
    aget v1, v4, v7

    .line 504
    :goto_2
    aget v3, v4, v7

    .line 506
    if-eqz v6, :cond_5

    .line 507
    invoke-direct {p0, v4}, Lcom/google/re2j/RE2;->pad([I)[I

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/google/re2j/RE2$DeliverFunc;->deliver([I)V

    .line 508
    add-int/lit8 v2, v2, 0x1

    .line 510
    .end local v4    # "matches":[I
    .end local v6    # "accept":Z
    :cond_5
    goto :goto_0

    .line 511
    .end local v1    # "pos":I
    .end local v2    # "i":I
    .end local v3    # "prevMatchEnd":I
    :cond_6
    :goto_3
    return-void
.end method

.method static compile(Ljava/lang/String;)Lcom/google/re2j/RE2;
    .locals 2
    .param p0, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 160
    const/16 v0, 0xd4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/re2j/RE2;->compileImpl(Ljava/lang/String;IZ)Lcom/google/re2j/RE2;

    move-result-object v0

    return-object v0
.end method

.method static compileImpl(Ljava/lang/String;IZ)Lcom/google/re2j/RE2;
    .locals 8
    .param p0, "expr"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "longest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 187
    invoke-static {p0, p1}, Lcom/google/re2j/Parser;->parse(Ljava/lang/String;I)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 188
    .local v0, "re":Lcom/google/re2j/Regexp;
    invoke-virtual {v0}, Lcom/google/re2j/Regexp;->maxCap()I

    move-result v1

    .line 189
    .local v1, "maxCap":I
    invoke-static {v0}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/google/re2j/Compiler;->compileRegexp(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Prog;

    move-result-object v2

    .line 191
    .local v2, "prog":Lcom/google/re2j/Prog;
    new-instance v3, Lcom/google/re2j/RE2;

    invoke-direct {v3, p0, v2, v1, p2}, Lcom/google/re2j/RE2;-><init>(Ljava/lang/String;Lcom/google/re2j/Prog;IZ)V

    .line 192
    .local v3, "re2":Lcom/google/re2j/RE2;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v4, "prefixBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4}, Lcom/google/re2j/Prog;->prefix(Ljava/lang/StringBuilder;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/google/re2j/RE2;->prefixComplete:Z

    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    .line 196
    :try_start_0
    iget-object v5, v3, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v3, Lcom/google/re2j/RE2;->prefixUTF8:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    nop

    .line 200
    iget-object v5, v3, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 201
    iget-object v5, v3, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    iput v5, v3, Lcom/google/re2j/RE2;->prefixRune:I

    .line 203
    :cond_0
    iget-object v5, v0, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    iput-object v5, v3, Lcom/google/re2j/RE2;->namedGroups:Ljava/util/Map;

    .line 204
    return-object v3

    .line 197
    :catch_0
    move-exception v5

    .line 198
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "can\'t happen"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static compilePOSIX(Ljava/lang/String;)Lcom/google/re2j/RE2;
    .locals 2
    .param p0, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/re2j/RE2;->compileImpl(Ljava/lang/String;IZ)Lcom/google/re2j/RE2;

    move-result-object v0

    return-object v0
.end method

.method private doExecute(Lcom/google/re2j/MachineInput;III)[I
    .locals 2
    .param p1, "in"    # Lcom/google/re2j/MachineInput;
    .param p2, "pos"    # I
    .param p3, "anchor"    # I
    .param p4, "ncap"    # I

    .line 247
    invoke-virtual {p0}, Lcom/google/re2j/RE2;->get()Lcom/google/re2j/Machine;

    move-result-object v0

    .line 248
    .local v0, "m":Lcom/google/re2j/Machine;
    invoke-virtual {v0, p4}, Lcom/google/re2j/Machine;->init(I)V

    .line 249
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/re2j/Machine;->match(Lcom/google/re2j/MachineInput;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/re2j/Machine;->submatches()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 250
    .local v1, "cap":[I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/RE2;->put(Lcom/google/re2j/Machine;)V

    .line 251
    return-object v1
.end method

.method static match(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lcom/google/re2j/RE2;->compile(Ljava/lang/String;)Lcom/google/re2j/RE2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/re2j/RE2;->match(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private pad([I)[I
    .locals 4
    .param p1, "a"    # [I

    .line 456
    if-nez p1, :cond_0

    .line 457
    const/4 v0, 0x0

    return-object v0

    .line 459
    :cond_0
    iget v0, p0, Lcom/google/re2j/RE2;->numSubexp:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 460
    .local v0, "n":I
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 461
    new-array v1, v0, [I

    .line 462
    .local v1, "a2":[I
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    array-length v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 464
    move-object p1, v1

    .line 466
    .end local v1    # "a2":[I
    :cond_1
    return-object p1
.end method

.method static quoteMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 439
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 440
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 441
    .local v3, "c":C
    const-string v4, "\\.+*?()|[]{}^$"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 442
    const/16 v4, 0x5c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    .end local v3    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method find(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 592
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    .line 593
    .local v0, "a":[I
    if-nez v0, :cond_0

    .line 594
    const-string v1, ""

    return-object v1

    .line 596
    :cond_0
    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method findAll(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 751
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/re2j/RE2$5;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;Ljava/lang/String;)V

    .line 750
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 759
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x0

    return-object v1

    .line 762
    :cond_0
    return-object v0
.end method

.method findAllIndex(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[I>;"
    nop

    .line 777
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$6;

    invoke-direct {v2, p0, v0}, Lcom/google/re2j/RE2$6;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 776
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 785
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    const/4 v1, 0x0

    return-object v1

    .line 788
    :cond_0
    return-object v0
.end method

.method findAllSubmatch(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    nop

    .line 861
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/re2j/RE2$9;-><init>(Lcom/google/re2j/RE2;Ljava/lang/String;Ljava/util/List;)V

    .line 860
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 875
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    const/4 v1, 0x0

    return-object v1

    .line 878
    :cond_0
    return-object v0
.end method

.method findAllSubmatchIndex(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[I>;"
    nop

    .line 893
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$10;

    invoke-direct {v2, p0, v0}, Lcom/google/re2j/RE2$10;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 892
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 901
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    const/4 v1, 0x0

    return-object v1

    .line 904
    :cond_0
    return-object v0
.end method

.method findAllUTF8([BI)Ljava/util/List;
    .locals 3
    .param p1, "b"    # [B
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    nop

    .line 699
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/re2j/RE2$3;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;[B)V

    .line 698
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 707
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const/4 v1, 0x0

    return-object v1

    .line 710
    :cond_0
    return-object v0
.end method

.method findAllUTF8Index([BI)Ljava/util/List;
    .locals 3
    .param p1, "b"    # [B
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[I>;"
    nop

    .line 725
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$4;

    invoke-direct {v2, p0, v0}, Lcom/google/re2j/RE2$4;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 724
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 733
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    const/4 v1, 0x0

    return-object v1

    .line 736
    :cond_0
    return-object v0
.end method

.method findAllUTF8Submatch([BI)Ljava/util/List;
    .locals 3
    .param p1, "b"    # [B
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[[B>;"
        }
    .end annotation

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[[B>;"
    nop

    .line 803
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/re2j/RE2$7;-><init>(Lcom/google/re2j/RE2;[BLjava/util/List;)V

    .line 802
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 817
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    const/4 v1, 0x0

    return-object v1

    .line 820
    :cond_0
    return-object v0
.end method

.method findAllUTF8SubmatchIndex([BI)Ljava/util/List;
    .locals 3
    .param p1, "b"    # [B
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[I>;"
    nop

    .line 835
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$8;

    invoke-direct {v2, p0, v0}, Lcom/google/re2j/RE2$8;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 834
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 843
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    const/4 v1, 0x0

    return-object v1

    .line 846
    :cond_0
    return-object v0
.end method

.method findIndex(Ljava/lang/String;)[I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 609
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    return-object v0
.end method

.method findSubmatch(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 658
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->numCap:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    .line 659
    .local v0, "a":[I
    if-nez v0, :cond_0

    .line 660
    const/4 v1, 0x0

    return-object v1

    .line 662
    :cond_0
    iget v1, p0, Lcom/google/re2j/RE2;->numSubexp:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 663
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 664
    mul-int/lit8 v3, v2, 0x2

    array-length v4, v0

    if-ge v3, v4, :cond_1

    mul-int/lit8 v3, v2, 0x2

    aget v3, v0, v3

    if-ltz v3, :cond_1

    .line 665
    mul-int/lit8 v3, v2, 0x2

    aget v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, v0, v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 663
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method findSubmatchIndex(Ljava/lang/String;)[I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 681
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->numCap:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/RE2;->pad([I)[I

    move-result-object v0

    return-object v0
.end method

.method findUTF8([B)[B
    .locals 3
    .param p1, "b"    # [B

    .line 558
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    .line 559
    .local v0, "a":[I
    if-nez v0, :cond_0

    .line 560
    const/4 v1, 0x0

    return-object v1

    .line 562
    :cond_0
    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {p1, v1, v2}, Lcom/google/re2j/Utils;->subarray([BII)[B

    move-result-object v1

    return-object v1
.end method

.method findUTF8Index([B)[I
    .locals 3
    .param p1, "b"    # [B

    .line 574
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    .line 575
    .local v0, "a":[I
    if-nez v0, :cond_0

    .line 576
    const/4 v1, 0x0

    return-object v1

    .line 578
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/google/re2j/Utils;->subarray([III)[I

    move-result-object v1

    return-object v1
.end method

.method findUTF8Submatch([B)[[B
    .locals 5
    .param p1, "b"    # [B

    .line 622
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->numCap:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    .line 623
    .local v0, "a":[I
    if-nez v0, :cond_0

    .line 624
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [[B

    return-object v1

    .line 626
    :cond_0
    iget v1, p0, Lcom/google/re2j/RE2;->numSubexp:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[B

    .line 627
    .local v1, "ret":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 628
    mul-int/lit8 v3, v2, 0x2

    array-length v4, v0

    if-ge v3, v4, :cond_1

    mul-int/lit8 v3, v2, 0x2

    aget v3, v0, v3

    if-ltz v3, :cond_1

    .line 629
    mul-int/lit8 v3, v2, 0x2

    aget v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, v0, v4

    invoke-static {p1, v3, v4}, Lcom/google/re2j/Utils;->subarray([BII)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 627
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method findUTF8SubmatchIndex([B)[I
    .locals 3
    .param p1, "b"    # [B

    .line 645
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->numCap:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/RE2;->pad([I)[I

    move-result-object v0

    return-object v0
.end method

.method get()Lcom/google/re2j/Machine;
    .locals 1

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Machine;

    monitor-exit p0

    return-object v0

    .line 221
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    new-instance v0, Lcom/google/re2j/Machine;

    invoke-direct {v0, p0}, Lcom/google/re2j/Machine;-><init>(Lcom/google/re2j/RE2;)V

    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method match(Lcom/google/re2j/MatcherInput;III[II)Z
    .locals 4
    .param p1, "input"    # Lcom/google/re2j/MatcherInput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "anchor"    # I
    .param p5, "group"    # [I
    .param p6, "ngroup"    # I

    .line 280
    const/4 v0, 0x0

    if-le p2, p3, :cond_0

    .line 281
    return v0

    .line 290
    :cond_0
    nop

    .line 291
    invoke-virtual {p1}, Lcom/google/re2j/MatcherInput;->getEncoding()Lcom/google/re2j/MatcherInput$Encoding;

    move-result-object v1

    sget-object v2, Lcom/google/re2j/MatcherInput$Encoding;->UTF_16:Lcom/google/re2j/MatcherInput$Encoding;

    if-ne v1, v2, :cond_1

    .line 292
    invoke-virtual {p1}, Lcom/google/re2j/MatcherInput;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;II)Lcom/google/re2j/MachineInput;

    move-result-object v1

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p1}, Lcom/google/re2j/MatcherInput;->asBytes()[B

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/google/re2j/MachineInput;->fromUTF8([BII)Lcom/google/re2j/MachineInput;

    move-result-object v1

    :goto_0
    nop

    .line 294
    .local v1, "machineInput":Lcom/google/re2j/MachineInput;
    mul-int/lit8 v2, p6, 0x2

    invoke-direct {p0, v1, p2, p4, v2}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v2

    .line 296
    .local v2, "groupMatch":[I
    if-nez v2, :cond_2

    .line 297
    return v0

    .line 300
    :cond_2
    if-eqz p5, :cond_3

    .line 301
    array-length v3, v2

    invoke-static {v2, v0, p5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method match(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 258
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method match(Ljava/lang/CharSequence;III[II)Z
    .locals 7
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "anchor"    # I
    .param p5, "group"    # [I
    .param p6, "ngroup"    # I

    .line 262
    invoke-static {p1}, Lcom/google/re2j/MatcherInput;->utf16(Ljava/lang/CharSequence;)Lcom/google/re2j/MatcherInput;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "anchor":I
    .end local p5    # "group":[I
    .end local p6    # "ngroup":I
    .local v2, "start":I
    .local v3, "end":I
    .local v4, "anchor":I
    .local v5, "group":[I
    .local v6, "ngroup":I
    invoke-virtual/range {v0 .. v6}, Lcom/google/re2j/RE2;->match(Lcom/google/re2j/MatcherInput;III[II)Z

    move-result p2

    return p2
.end method

.method matchUTF8([B)Z
    .locals 2
    .param p1, "b"    # [B

    .line 311
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method numberOfCapturingGroups()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/re2j/RE2;->numSubexp:I

    return v0
.end method

.method declared-synchronized put(Lcom/google/re2j/Machine;)V
    .locals 1
    .param p1, "m"    # Lcom/google/re2j/Machine;

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 234
    .end local p0    # "this":Lcom/google/re2j/RE2;
    .end local p1    # "m":Lcom/google/re2j/Machine;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "repl"    # Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/google/re2j/RE2$1;

    invoke-direct {v0, p0, p2}, Lcom/google/re2j/RE2$1;-><init>(Lcom/google/re2j/RE2;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 337
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/re2j/RE2;->replaceAllFunc(Ljava/lang/String;Lcom/google/re2j/RE2$ReplaceFunc;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method replaceAllFunc(Ljava/lang/String;Lcom/google/re2j/RE2$ReplaceFunc;I)Ljava/lang/String;
    .locals 10
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "repl"    # Lcom/google/re2j/RE2$ReplaceFunc;
    .param p3, "maxReplaces"    # I

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "lastMatchEnd":I
    const/4 v1, 0x0

    .line 379
    .local v1, "searchPos":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v3

    .line 381
    .local v3, "input":Lcom/google/re2j/MachineInput;
    const/4 v4, 0x0

    .line 382
    .local v4, "numReplaces":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 383
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, v3, v1, v6, v5}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v5

    .line 384
    .local v5, "a":[I
    if-eqz v5, :cond_6

    array-length v7, v5

    if-nez v7, :cond_0

    .line 385
    goto :goto_2

    .line 389
    :cond_0
    aget v7, v5, v6

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const/4 v7, 0x1

    aget v8, v5, v7

    if-gt v8, v0, :cond_1

    aget v8, v5, v6

    if-nez v8, :cond_2

    .line 402
    :cond_1
    aget v6, v5, v6

    aget v8, v5, v7

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/google/re2j/RE2$ReplaceFunc;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    add-int/lit8 v4, v4, 0x1

    .line 406
    :cond_2
    aget v0, v5, v7

    .line 409
    invoke-virtual {v3, v1}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    .line 410
    .local v6, "width":I
    add-int v8, v1, v6

    aget v9, v5, v7

    if-le v8, v9, :cond_3

    .line 411
    add-int/2addr v1, v6

    goto :goto_1

    .line 412
    :cond_3
    add-int/lit8 v8, v1, 0x1

    aget v9, v5, v7

    if-le v8, v9, :cond_4

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_4
    aget v1, v5, v7

    .line 419
    :goto_1
    if-lt v4, p3, :cond_5

    .line 421
    goto :goto_2

    .line 423
    .end local v5    # "a":[I
    .end local v6    # "width":I
    :cond_5
    goto :goto_0

    .line 426
    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "repl"    # Ljava/lang/String;

    .line 358
    new-instance v0, Lcom/google/re2j/RE2$2;

    invoke-direct {v0, p0, p2}, Lcom/google/re2j/RE2$2;-><init>(Lcom/google/re2j/RE2;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/re2j/RE2;->replaceAllFunc(Ljava/lang/String;Lcom/google/re2j/RE2$ReplaceFunc;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 226
    .end local p0    # "this":Lcom/google/re2j/RE2;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    return-object v0
.end method
