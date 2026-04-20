.class abstract Lcom/google/re2j/MatcherInput;
.super Ljava/lang/Object;
.source "MatcherInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/MatcherInput$Utf16MatcherInput;,
        Lcom/google/re2j/MatcherInput$Utf8MatcherInput;,
        Lcom/google/re2j/MatcherInput$Encoding;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static utf16(Ljava/lang/CharSequence;)Lcom/google/re2j/MatcherInput;
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 25
    new-instance v0, Lcom/google/re2j/MatcherInput$Utf16MatcherInput;

    invoke-direct {v0, p0}, Lcom/google/re2j/MatcherInput$Utf16MatcherInput;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static utf8(Ljava/lang/String;)Lcom/google/re2j/MatcherInput;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;-><init>([B)V

    return-object v0
.end method

.method static utf8([B)Lcom/google/re2j/MatcherInput;
    .locals 1
    .param p0, "bytes"    # [B

    .line 32
    new-instance v0, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;

    invoke-direct {v0, p0}, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method abstract asBytes()[B
.end method

.method abstract asCharSequence()Ljava/lang/CharSequence;
.end method

.method abstract getEncoding()Lcom/google/re2j/MatcherInput$Encoding;
.end method

.method abstract length()I
.end method
