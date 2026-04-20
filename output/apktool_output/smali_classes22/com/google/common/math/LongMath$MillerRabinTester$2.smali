.class final enum Lcom/google/common/math/LongMath$MillerRabinTester$2;
.super Lcom/google/common/math/LongMath$MillerRabinTester;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$MillerRabinTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 1110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V

    return-void
.end method

.method private plusMod(JJJ)J
    .locals 2
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "m"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "m"
        }
    .end annotation

    .line 1113
    sub-long v0, p5, p3

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    add-long v0, p1, p3

    sub-long/2addr v0, p5

    goto :goto_0

    :cond_0
    add-long v0, p1, p3

    :goto_0
    return-wide v0
.end method

.method private times2ToThe32Mod(JJ)J
    .locals 4
    .param p1, "a"    # J
    .param p3, "m"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "m"
        }
    .end annotation

    .line 1118
    const/16 v0, 0x20

    .line 1120
    .local v0, "remainingPowersOf2":I
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1123
    .local v1, "shift":I
    shl-long v2, p1, v1

    invoke-static {v2, v3, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    .line 1124
    sub-int/2addr v0, v1

    .line 1125
    .end local v1    # "shift":I
    if-gtz v0, :cond_0

    .line 1126
    return-wide p1
.end method


# virtual methods
.method mulMod(JJJ)J
    .locals 15
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "m"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "m"
        }
    .end annotation

    .line 1131
    move-wide/from16 v5, p5

    const/16 v0, 0x20

    ushr-long v7, p1, v0

    .line 1132
    .local v7, "aHi":J
    ushr-long v9, p3, v0

    .line 1133
    .local v9, "bHi":J
    const-wide v0, 0xffffffffL

    and-long v11, p1, v0

    .line 1134
    .local v11, "aLo":J
    and-long v13, p3, v0

    .line 1144
    .local v13, "bLo":J
    mul-long v0, v7, v9

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v0

    .line 1145
    .local v0, "result":J
    mul-long v2, v7, v13

    add-long/2addr v0, v2

    .line 1146
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1147
    invoke-static {v0, v1, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    .line 1150
    :cond_0
    mul-long v2, v11, v9

    add-long/2addr v0, v2

    .line 1151
    invoke-direct {p0, v0, v1, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v1

    .line 1152
    .end local v0    # "result":J
    .local v1, "result":J
    mul-long v3, v11, v13

    invoke-static {v3, v4, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v3

    return-wide v3
.end method

.method squareMod(JJ)J
    .locals 13
    .param p1, "a"    # J
    .param p3, "m"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "m"
        }
    .end annotation

    .line 1157
    move-wide/from16 v5, p3

    const/16 v0, 0x20

    ushr-long v7, p1, v0

    .line 1158
    .local v7, "aHi":J
    const-wide v0, 0xffffffffL

    and-long v9, p1, v0

    .line 1167
    .local v9, "aLo":J
    mul-long v0, v7, v7

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v0

    .line 1168
    .local v0, "result":J
    mul-long v2, v7, v9

    const-wide/16 v11, 0x2

    mul-long/2addr v2, v11

    .line 1169
    .local v2, "hiLo":J
    const-wide/16 v11, 0x0

    cmp-long v4, v2, v11

    if-gez v4, :cond_0

    .line 1170
    invoke-static {v2, v3, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_0

    .line 1169
    :cond_0
    move-wide v11, v2

    .line 1173
    .end local v2    # "hiLo":J
    .local v11, "hiLo":J
    :goto_0
    add-long/2addr v0, v11

    .line 1174
    invoke-direct {p0, v0, v1, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v1

    .line 1175
    .end local v0    # "result":J
    .local v1, "result":J
    mul-long v3, v9, v9

    invoke-static {v3, v4, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v3

    return-wide v3
.end method
