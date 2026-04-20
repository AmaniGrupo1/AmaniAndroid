.class final Lcom/google/re2j/Characters;
.super Ljava/lang/Object;
.source "Characters.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toLowerCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    .line 14
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    return v0
.end method

.method static toUpperCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    .line 18
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    return v0
.end method
