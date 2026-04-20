.class Lcom/google/re2j/Parser$Stack;
.super Ljava/util/ArrayList;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/google/re2j/Regexp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/re2j/Parser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/re2j/Parser$1;

    .line 46
    invoke-direct {p0}, Lcom/google/re2j/Parser$Stack;-><init>()V

    return-void
.end method


# virtual methods
.method public removeRange(II)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 49
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 50
    return-void
.end method
