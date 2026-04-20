.class Lcom/google/re2j/Parser$StringIterator;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringIterator"
.end annotation


# instance fields
.field private pos:I

.field private final str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    .line 710
    iput-object p1, p0, Lcom/google/re2j/Parser$StringIterator;->str:Ljava/lang/String;

    .line 711
    return-void
.end method


# virtual methods
.method from(I)Ljava/lang/String;
    .locals 2
    .param p1, "beforePos"    # I

    .line 775
    iget-object v0, p0, Lcom/google/re2j/Parser$StringIterator;->str:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method lookingAt(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 759
    iget-object v0, p0, Lcom/google/re2j/Parser$StringIterator;->str:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method lookingAt(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 764
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method more()Z
    .locals 2

    .line 725
    iget v0, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    iget-object v1, p0, Lcom/google/re2j/Parser$StringIterator;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method peek()I
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/google/re2j/Parser$StringIterator;->str:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method pop()I
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/google/re2j/Parser$StringIterator;->str:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 752
    .local v0, "r":I
    iget v1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    .line 753
    return v0
.end method

.method pos()I
    .locals 1

    .line 715
    iget v0, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    return v0
.end method

.method rest()Ljava/lang/String;
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/google/re2j/Parser$StringIterator;->str:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rewindTo(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 720
    iput p1, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    .line 721
    return-void
.end method

.method skip(I)V
    .locals 1
    .param p1, "n"    # I

    .line 740
    iget v0, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    .line 741
    return-void
.end method

.method skipString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 745
    iget v0, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/re2j/Parser$StringIterator;->pos:I

    .line 746
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
