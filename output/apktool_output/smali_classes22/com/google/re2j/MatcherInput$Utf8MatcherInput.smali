.class Lcom/google/re2j/MatcherInput$Utf8MatcherInput;
.super Lcom/google/re2j/MatcherInput;
.source "MatcherInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/MatcherInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Utf8MatcherInput"
.end annotation


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 53
    invoke-direct {p0}, Lcom/google/re2j/MatcherInput;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;->bytes:[B

    .line 55
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;->bytes:[B

    return-object v0
.end method

.method public asCharSequence()Ljava/lang/CharSequence;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;->bytes:[B

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getEncoding()Lcom/google/re2j/MatcherInput$Encoding;
    .locals 1

    .line 59
    sget-object v0, Lcom/google/re2j/MatcherInput$Encoding;->UTF_8:Lcom/google/re2j/MatcherInput$Encoding;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/re2j/MatcherInput$Utf8MatcherInput;->bytes:[B

    array-length v0, v0

    return v0
.end method
