.class Lcom/google/re2j/Parser$Pair;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .line 1710
    .local p0, "this":Lcom/google/re2j/Parser$Pair;, "Lcom/google/re2j/Parser$Pair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p1, p0, Lcom/google/re2j/Parser$Pair;->first:Ljava/lang/Object;

    .line 1712
    iput-object p2, p0, Lcom/google/re2j/Parser$Pair;->second:Ljava/lang/Object;

    .line 1713
    return-void
.end method

.method static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/Parser$Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TF;TS;)",
            "Lcom/google/re2j/Parser$Pair<",
            "TF;TS;>;"
        }
    .end annotation

    .line 1716
    .local p0, "first":Ljava/lang/Object;, "TF;"
    .local p1, "second":Ljava/lang/Object;, "TS;"
    new-instance v0, Lcom/google/re2j/Parser$Pair;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/Parser$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
