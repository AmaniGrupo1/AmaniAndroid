.class Lcom/google/re2j/Machine$Queue;
.super Ljava/lang/Object;
.source "Machine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Machine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Queue"
.end annotation


# instance fields
.field final densePcs:[I

.field final denseThreads:[Lcom/google/re2j/Machine$Thread;

.field size:I

.field final sparse:[I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "n"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/re2j/Machine$Queue;->sparse:[I

    .line 41
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/re2j/Machine$Queue;->densePcs:[I

    .line 42
    new-array v0, p1, [Lcom/google/re2j/Machine$Thread;

    iput-object v0, p0, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    .line 43
    return-void
.end method


# virtual methods
.method add(I)I
    .locals 3
    .param p1, "pc"    # I

    .line 55
    iget v0, p0, Lcom/google/re2j/Machine$Queue;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/re2j/Machine$Queue;->size:I

    .line 56
    .local v0, "j":I
    iget-object v1, p0, Lcom/google/re2j/Machine$Queue;->sparse:[I

    aput v0, v1, p1

    .line 57
    iget-object v1, p0, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 58
    iget-object v1, p0, Lcom/google/re2j/Machine$Queue;->densePcs:[I

    aput p1, v1, v0

    .line 59
    return v0
.end method

.method clear()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/Machine$Queue;->size:I

    .line 64
    return-void
.end method

.method contains(I)Z
    .locals 2
    .param p1, "pc"    # I

    .line 46
    iget-object v0, p0, Lcom/google/re2j/Machine$Queue;->sparse:[I

    aget v0, v0, p1

    .line 47
    .local v0, "j":I
    iget v1, p0, Lcom/google/re2j/Machine$Queue;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/re2j/Machine$Queue;->densePcs:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isEmpty()Z
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/re2j/Machine$Queue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "out":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/re2j/Machine$Queue;->size:I

    if-ge v1, v2, :cond_1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/google/re2j/Machine$Queue;->densePcs:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
