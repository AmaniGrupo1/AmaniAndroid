.class final Lcom/google/common/hash/FarmHashFingerprint64;
.super Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.source "FarmHashFingerprint64.java"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

.field private static final K0:J = -0x3c5a37a36834ced9L

.field private static final K1:J = -0x4b6d499041670d8dL

.field private static final K2:J = -0x651e95c4d06fbfb1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/google/common/hash/FarmHashFingerprint64;

    invoke-direct {v0}, Lcom/google/common/hash/FarmHashFingerprint64;-><init>()V

    sput-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;-><init>()V

    return-void
.end method

.method static fingerprint([BII)J
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 70
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 71
    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength0to16([BII)J

    move-result-wide v0

    return-wide v0

    .line 74
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength17to32([BII)J

    move-result-wide v0

    return-wide v0

    .line 76
    :cond_1
    const/16 v0, 0x40

    if-gt p2, v0, :cond_2

    .line 77
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength33To64([BII)J

    move-result-wide v0

    return-wide v0

    .line 79
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength65Plus([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hashLength0to16([BII)J
    .locals 13
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 119
    const-wide v0, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    const/16 v2, 0x8

    if-lt p2, v2, :cond_0

    .line 120
    int-to-long v3, p2

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    add-long v9, v3, v0

    .line 121
    .local v9, "mul":J
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v3

    add-long/2addr v3, v0

    .line 122
    .local v3, "a":J
    add-int v0, p1, p2

    sub-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    .line 123
    .local v0, "b":J
    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    mul-long/2addr v5, v9

    add-long/2addr v5, v3

    .line 124
    .local v5, "c":J
    const/16 v2, 0x19

    invoke-static {v3, v4, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v7

    add-long/2addr v7, v0

    mul-long/2addr v7, v9

    .line 125
    .local v7, "d":J
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v11

    return-wide v11

    .line 127
    .end local v0    # "b":J
    .end local v3    # "a":J
    .end local v5    # "c":J
    .end local v7    # "d":J
    .end local v9    # "mul":J
    :cond_0
    const/4 v3, 0x4

    if-lt p2, v3, :cond_1

    .line 128
    mul-int/lit8 v2, p2, 0x2

    int-to-long v4, v2

    add-long v10, v4, v0

    .line 129
    .local v10, "mul":J
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    .line 130
    .local v0, "a":J
    int-to-long v6, p2

    const/4 v2, 0x3

    shl-long v8, v0, v2

    add-long/2addr v6, v8

    add-int v2, p1, p2

    sub-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v2

    int-to-long v2, v2

    and-long v8, v2, v4

    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    return-wide v2

    .line 132
    .end local v0    # "a":J
    .end local v10    # "mul":J
    :cond_1
    if-lez p2, :cond_2

    .line 133
    aget-byte v3, p0, p1

    .line 134
    .local v3, "a":B
    shr-int/lit8 v4, p2, 0x1

    add-int/2addr v4, p1

    aget-byte v4, p0, v4

    .line 135
    .local v4, "b":B
    add-int/lit8 v5, p2, -0x1

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    .line 136
    .local v5, "c":B
    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v7, v4, 0xff

    shl-int/lit8 v2, v7, 0x8

    add-int/2addr v6, v2

    .line 137
    .local v6, "y":I
    and-int/lit16 v2, v5, 0xff

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    .line 138
    .local v2, "z":I
    int-to-long v7, v6

    mul-long/2addr v7, v0

    int-to-long v9, v2

    const-wide v11, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v9, v11

    xor-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v7

    mul-long/2addr v7, v0

    return-wide v7

    .line 140
    .end local v2    # "z":I
    .end local v3    # "a":B
    .end local v4    # "b":B
    .end local v5    # "c":B
    .end local v6    # "y":I
    :cond_2
    return-wide v0
.end method

.method private static hashLength16(JJJ)J
    .locals 7
    .param p0, "u"    # J
    .param p2, "v"    # J
    .param p4, "mul"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "mul"
        }
    .end annotation

    .line 88
    xor-long v0, p0, p2

    mul-long/2addr v0, p4

    .line 89
    .local v0, "a":J
    const/16 v2, 0x2f

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    .line 90
    xor-long v3, p2, v0

    mul-long/2addr v3, p4

    .line 91
    .local v3, "b":J
    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    .line 92
    .end local v3    # "b":J
    .local v2, "b":J
    mul-long/2addr v2, p4

    .line 93
    return-wide v2
.end method

.method private static hashLength17to32([BII)J
    .locals 18
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 144
    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-long v2, v1

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long v10, v2, v4

    .line 145
    .local v10, "mul":J
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    const-wide v6, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long/2addr v2, v6

    .line 146
    .local v2, "a":J
    add-int/lit8 v6, p1, 0x8

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v12

    .line 147
    .local v12, "b":J
    add-int v6, p1, v1

    add-int/lit8 v6, v6, -0x8

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    mul-long v14, v6, v10

    .line 148
    .local v14, "c":J
    add-int v6, p1, v1

    add-int/lit8 v6, v6, -0x10

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    mul-long v16, v6, v4

    .line 149
    .local v16, "d":J
    add-long v6, v2, v12

    .line 150
    const/16 v8, 0x2b

    invoke-static {v6, v7, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    const/16 v8, 0x1e

    invoke-static {v14, v15, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long v6, v6, v16

    add-long/2addr v4, v12

    const/16 v8, 0x12

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v2

    add-long v8, v4, v14

    .line 149
    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private static hashLength33To64([BII)J
    .locals 30
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-long v2, v1

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long v10, v2, v4

    .line 155
    .local v10, "mul":J
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 156
    .local v2, "a":J
    add-int/lit8 v6, p1, 0x8

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v12

    .line 157
    .local v12, "b":J
    add-int v6, p1, v1

    add-int/lit8 v6, v6, -0x8

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    mul-long v14, v6, v10

    .line 158
    .local v14, "c":J
    add-int v6, p1, v1

    add-int/lit8 v6, v6, -0x10

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    mul-long v16, v6, v4

    .line 159
    .local v16, "d":J
    add-long v6, v2, v12

    const/16 v8, 0x2b

    invoke-static {v6, v7, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    const/16 v9, 0x1e

    invoke-static {v14, v15, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v18

    add-long v6, v6, v18

    add-long v6, v6, v16

    .line 160
    .local v6, "y":J
    add-long/2addr v4, v12

    const/16 v1, 0x12

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v2

    add-long/2addr v4, v14

    move-wide/from16 v28, v4

    move v4, v8

    move v5, v9

    move-wide/from16 v8, v28

    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v18

    .line 161
    move-wide/from16 v20, v6

    .end local v6    # "y":J
    .local v18, "z":J
    .local v20, "y":J
    add-int/lit8 v6, p1, 0x10

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    mul-long v22, v6, v10

    .line 162
    .local v22, "e":J
    add-int/lit8 v6, p1, 0x18

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v24

    .line 163
    .local v24, "f":J
    add-int v6, p1, p2

    add-int/lit8 v6, v6, -0x20

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    add-long v6, v20, v6

    mul-long/2addr v6, v10

    .line 164
    .local v6, "g":J
    add-int v8, p1, p2

    add-int/lit8 v8, v8, -0x18

    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v8

    add-long v8, v18, v8

    mul-long v26, v8, v10

    .line 165
    .local v26, "h":J
    add-long v8, v22, v24

    .line 166
    invoke-static {v8, v9, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    invoke-static {v6, v7, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v8, v4

    add-long v8, v8, v26

    add-long v4, v24, v2

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long v4, v22, v4

    add-long/2addr v4, v6

    .line 165
    move-wide/from16 v28, v8

    move-wide v8, v4

    move-wide v4, v6

    move-wide/from16 v6, v28

    .end local v6    # "g":J
    .local v4, "g":J
    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v6

    return-wide v6
.end method

.method private static hashLength65Plus([BII)J
    .locals 31
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 173
    move-object/from16 v0, p0

    const/16 v7, 0x51

    .line 175
    .local v7, "seed":I
    int-to-long v1, v7

    .line 177
    .local v1, "x":J
    int-to-long v3, v7

    const-wide v8, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x71

    add-long/2addr v3, v5

    .line 178
    .local v3, "y":J
    const-wide v10, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v12, v3, v10

    add-long/2addr v12, v5

    invoke-static {v12, v13}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v5

    mul-long/2addr v5, v10

    .line 179
    .local v5, "z":J
    const/4 v12, 0x2

    move-wide v13, v5

    .end local v5    # "z":J
    .local v13, "z":J
    new-array v6, v12, [J

    .line 180
    .local v6, "v":[J
    new-array v12, v12, [J

    .line 181
    .local v12, "w":[J
    mul-long/2addr v10, v1

    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v15

    add-long/2addr v10, v15

    .line 184
    .end local v1    # "x":J
    .local v10, "x":J
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x40

    mul-int/lit8 v1, v1, 0x40

    add-int v15, p1, v1

    .line 185
    .local v15, "end":I
    add-int/lit8 v1, p2, -0x1

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v15

    add-int/lit8 v16, v1, -0x3f

    move/from16 v1, p1

    .line 187
    .end local p1    # "offset":I
    .local v1, "offset":I
    .local v16, "last64offset":I
    :goto_0
    add-long v17, v10, v3

    const/16 v19, 0x0

    aget-wide v20, v6, v19

    add-long v17, v17, v20

    add-int/lit8 v2, v1, 0x8

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v20

    move-wide/from16 v22, v8

    add-long v8, v17, v20

    const/16 v2, 0x25

    invoke-static {v8, v9, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    mul-long v8, v8, v22

    .line 188
    .end local v10    # "x":J
    .local v8, "x":J
    const/4 v10, 0x1

    aget-wide v17, v6, v10

    add-long v17, v3, v17

    add-int/lit8 v5, v1, 0x30

    invoke-static {v0, v5}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v20

    move-wide/from16 v24, v3

    .end local v3    # "y":J
    .local v24, "y":J
    add-long v2, v17, v20

    const/16 v11, 0x2a

    invoke-static {v2, v3, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v22

    .line 189
    .end local v24    # "y":J
    .local v2, "y":J
    aget-wide v4, v12, v10

    xor-long/2addr v8, v4

    .line 190
    aget-wide v4, v6, v19

    move/from16 v17, v10

    add-int/lit8 v10, v1, 0x28

    invoke-static {v0, v10}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v20

    add-long v4, v4, v20

    add-long v20, v2, v4

    .line 191
    .end local v2    # "y":J
    .local v20, "y":J
    aget-wide v2, v12, v19

    add-long/2addr v2, v13

    const/16 v10, 0x21

    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v13, v2, v22

    .line 192
    aget-wide v2, v6, v17

    mul-long v2, v2, v22

    aget-wide v4, v12, v19

    add-long/2addr v4, v8

    const/16 v10, 0x25

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 193
    move/from16 v25, v1

    move-object/from16 v24, v6

    .end local v1    # "offset":I
    .end local v6    # "v":[J
    .local v24, "v":[J
    .local v25, "offset":I
    add-int/lit8 v1, v25, 0x20

    aget-wide v2, v12, v17

    add-long/2addr v2, v13

    add-int/lit8 v4, v25, 0x10

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v4, v20, v4

    move-object v6, v12

    .end local v12    # "w":[J
    .local v6, "w":[J
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 194
    .end local v6    # "w":[J
    .restart local v12    # "w":[J
    move-wide v1, v8

    .line 195
    .local v1, "tmp":J
    move-wide v3, v13

    .line 196
    .end local v8    # "x":J
    .local v3, "x":J
    move-wide v13, v1

    .line 197
    nop

    .end local v1    # "tmp":J
    add-int/lit8 v1, v25, 0x40

    .line 198
    .end local v25    # "offset":I
    .local v1, "offset":I
    if-ne v1, v15, :cond_0

    .line 199
    const-wide/16 v5, 0xff

    and-long/2addr v5, v13

    shl-long v5, v5, v17

    add-long v29, v5, v22

    .line 201
    .local v29, "mul":J
    move/from16 v1, v16

    .line 202
    aget-wide v5, v12, v19

    add-int/lit8 v2, p2, -0x1

    and-int/lit8 v2, v2, 0x3f

    int-to-long v8, v2

    add-long/2addr v5, v8

    aput-wide v5, v12, v19

    .line 203
    aget-wide v5, v24, v19

    aget-wide v8, v12, v19

    add-long/2addr v5, v8

    aput-wide v5, v24, v19

    .line 204
    aget-wide v5, v12, v19

    aget-wide v8, v24, v19

    add-long/2addr v5, v8

    aput-wide v5, v12, v19

    .line 205
    add-long v5, v3, v20

    aget-wide v8, v24, v19

    add-long/2addr v5, v8

    add-int/lit8 v2, v1, 0x8

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v8

    add-long/2addr v5, v8

    invoke-static {v5, v6, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    mul-long v5, v5, v29

    .line 206
    .end local v3    # "x":J
    .local v5, "x":J
    aget-wide v2, v24, v17

    add-long v2, v20, v2

    add-int/lit8 v4, v1, 0x30

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v8

    add-long/2addr v2, v8

    invoke-static {v2, v3, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v29

    .line 207
    .end local v20    # "y":J
    .restart local v2    # "y":J
    aget-wide v8, v12, v17

    const-wide/16 v10, 0x9

    mul-long/2addr v8, v10

    xor-long/2addr v8, v5

    .line 208
    .end local v5    # "x":J
    .restart local v8    # "x":J
    aget-wide v4, v24, v19

    mul-long/2addr v4, v10

    add-int/lit8 v6, v1, 0x28

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v10

    add-long/2addr v4, v10

    add-long v10, v2, v4

    .line 209
    .end local v2    # "y":J
    .local v10, "y":J
    aget-wide v2, v12, v19

    add-long/2addr v2, v13

    const/16 v4, 0x21

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v13, v2, v29

    .line 210
    aget-wide v2, v24, v17

    mul-long v2, v2, v29

    aget-wide v4, v12, v19

    add-long/2addr v4, v8

    move-object/from16 v6, v24

    .end local v24    # "v":[J
    .local v6, "v":[J
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 211
    move/from16 v18, v1

    .end local v1    # "offset":I
    .end local v6    # "v":[J
    .local v18, "offset":I
    .restart local v24    # "v":[J
    add-int/lit8 v1, v18, 0x20

    aget-wide v2, v12, v17

    add-long/2addr v2, v13

    add-int/lit8 v4, v18, 0x10

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v4, v10

    move-object v6, v12

    .end local v12    # "w":[J
    .local v6, "w":[J
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 212
    aget-wide v25, v24, v19

    aget-wide v27, v6, v19

    .line 213
    invoke-static/range {v25 .. v30}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    invoke-static {v10, v11}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v2

    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v0, v8

    aget-wide v25, v24, v17

    aget-wide v27, v6, v17

    .line 214
    invoke-static/range {v25 .. v30}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    add-long v27, v2, v13

    .line 212
    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v30}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 198
    .end local v6    # "w":[J
    .end local v8    # "x":J
    .end local v10    # "y":J
    .end local v18    # "offset":I
    .end local v29    # "mul":J
    .restart local v1    # "offset":I
    .restart local v3    # "x":J
    .restart local v12    # "w":[J
    .restart local v20    # "y":J
    :cond_0
    move-object v6, v12

    .end local v12    # "w":[J
    .restart local v6    # "w":[J
    move-object/from16 v0, p0

    move-wide v10, v3

    move-wide/from16 v3, v20

    move-wide/from16 v8, v22

    move-object/from16 v6, v24

    goto/16 :goto_0
.end method

.method private static shiftMix(J)J
    .locals 2
    .param p0, "val"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 84
    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static weakHashLength32WithSeeds([BIJJ[J)V
    .locals 18
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "seedA"    # J
    .param p4, "seedB"    # J
    .param p6, "output"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "seedA",
            "seedB",
            "output"
        }
    .end annotation

    .line 103
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v1

    .line 104
    .local v1, "part1":J
    add-int/lit8 v3, p1, 0x8

    invoke-static {v0, v3}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v3

    .line 105
    .local v3, "part2":J
    add-int/lit8 v5, p1, 0x10

    invoke-static {v0, v5}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v5

    .line 106
    .local v5, "part3":J
    add-int/lit8 v7, p1, 0x18

    invoke-static {v0, v7}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v7

    .line 108
    .local v7, "part4":J
    add-long v9, p2, v1

    .line 109
    .end local p2    # "seedA":J
    .local v9, "seedA":J
    add-long v11, p4, v9

    add-long/2addr v11, v7

    const/16 v13, 0x15

    invoke-static {v11, v12, v13}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v11

    .line 110
    .end local p4    # "seedB":J
    .local v11, "seedB":J
    move-wide v13, v9

    .line 111
    .local v13, "c":J
    add-long/2addr v9, v3

    .line 112
    add-long/2addr v9, v5

    .line 113
    const/16 v15, 0x2c

    invoke-static {v9, v10, v15}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v15

    add-long/2addr v11, v15

    .line 114
    const/4 v15, 0x0

    add-long v16, v9, v7

    aput-wide v16, p6, v15

    .line 115
    const/4 v15, 0x1

    add-long v16, v11, v13

    aput-wide v16, p6, v15

    .line 116
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 58
    const/16 v0, 0x40

    return v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "off",
            "len"
        }
    .end annotation

    .line 52
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 53
    invoke-static {p1, p2, p3}, Lcom/google/common/hash/FarmHashFingerprint64;->fingerprint([BII)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "Hashing.farmHashFingerprint64()"

    return-object v0
.end method
