.class public interface abstract Lj$/sun/nio/cs/ArrayEncoder;
.super Ljava/lang/Object;
.source "ArrayEncoder.java"


# virtual methods
.method public abstract encode([CII[B)I
.end method

.method public encodeFromLatin1([BII[B)I
    .locals 1
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .locals 1
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 43
    const/4 v0, -0x1

    return v0
.end method

.method public isASCIICompatible()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method
