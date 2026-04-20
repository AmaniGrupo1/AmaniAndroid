.class public final Landroidx/media3/container/DolbyVisionConfig;
.super Ljava/lang/Object;
.source "DolbyVisionConfig.java"


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final level:I

.field public final profile:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "profile"    # I
    .param p2, "level"    # I
    .param p3, "codecs"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Landroidx/media3/container/DolbyVisionConfig;->profile:I

    .line 70
    iput p2, p0, Landroidx/media3/container/DolbyVisionConfig;->level:I

    .line 71
    iput-object p3, p0, Landroidx/media3/container/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/DolbyVisionConfig;
    .locals 9
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 36
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 38
    .local v0, "profileData":I
    shr-int/lit8 v1, v0, 0x1

    .line 39
    .local v1, "dvProfile":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    shl-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1f

    or-int/2addr v2, v4

    .line 41
    .local v2, "dvLevel":I
    const/4 v4, 0x4

    const/16 v5, 0xa

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    .line 44
    const-string v3, "dvav"

    .local v3, "codecsPrefix":Ljava/lang/String;
    goto :goto_1

    .line 45
    .end local v3    # "codecsPrefix":Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    .line 46
    const-string v3, "dav1"

    .restart local v3    # "codecsPrefix":Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v3    # "codecsPrefix":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    return-object v3

    .line 42
    :cond_3
    :goto_0
    const-string v3, "dvhe"

    .line 50
    .restart local v3    # "codecsPrefix":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    const-string v6, ".0"

    const-string v7, "."

    if-ge v1, v5, :cond_4

    move-object v8, v6

    goto :goto_2

    :cond_4
    move-object v8, v7

    :goto_2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 54
    if-ge v2, v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v7

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "codecs":Ljava/lang/String;
    new-instance v5, Landroidx/media3/container/DolbyVisionConfig;

    invoke-direct {v5, v1, v2, v4}, Landroidx/media3/container/DolbyVisionConfig;-><init>(IILjava/lang/String;)V

    return-object v5
.end method
