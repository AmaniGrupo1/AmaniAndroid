.class Lcom/google/re2j/Compiler$Frag;
.super Ljava/lang/Object;
.source "Compiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Compiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frag"
.end annotation


# instance fields
.field final i:I

.field out:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/re2j/Compiler$Frag;-><init>(II)V

    .line 30
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "i"    # I

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Compiler$Frag;-><init>(II)V

    .line 34
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "out"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/re2j/Compiler$Frag;->i:I

    .line 38
    iput p2, p0, Lcom/google/re2j/Compiler$Frag;->out:I

    .line 39
    return-void
.end method
