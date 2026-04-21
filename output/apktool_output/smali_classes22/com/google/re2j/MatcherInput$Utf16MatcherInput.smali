.class Lcom/google/re2j/MatcherInput$Utf16MatcherInput;
.super Lcom/google/re2j/MatcherInput;
.source "MatcherInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/MatcherInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Utf16MatcherInput"
.end annotation


# instance fields
.field charSequence:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 81
    invoke-direct {p0}, Lcom/google/re2j/MatcherInput;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/re2j/MatcherInput$Utf16MatcherInput;->charSequence:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/re2j/MatcherInput$Utf16MatcherInput;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public asCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/re2j/MatcherInput$Utf16MatcherInput;->charSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEncoding()Lcom/google/re2j/MatcherInput$Encoding;
    .locals 1

    .line 87
    sget-object v0, Lcom/google/re2j/MatcherInput$Encoding;->UTF_16:Lcom/google/re2j/MatcherInput$Encoding;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/re2j/MatcherInput$Utf16MatcherInput;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method
