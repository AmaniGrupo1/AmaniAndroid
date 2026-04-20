.class public final Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
.super Ljava/lang/Object;
.source "Mp3InfoReplayGain.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    }
.end annotation


# instance fields
.field public field1:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

.field public field2:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

.field public final peak:F


# direct methods
.method private constructor <init>(FLandroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;)V
    .locals 0
    .param p1, "peak"    # F
    .param p2, "field1"    # Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    .param p3, "field2"    # Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->peak:F

    .line 207
    iput-object p2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field1:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 208
    iput-object p3, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field2:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 209
    return-void
.end method

.method public static parse(FII)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    .locals 3
    .param p0, "peak"    # F
    .param p1, "field1"    # I
    .param p2, "field2"    # I

    .line 218
    invoke-static {p1}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->access$000(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    move-result-object v0

    .line 219
    .local v0, "parsedField1":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    invoke-static {p2}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->access$000(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    move-result-object v1

    .line 220
    .local v1, "parsedField2":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    const/4 v2, 0x0

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 221
    const/4 v2, 0x0

    return-object v2

    .line 223
    :cond_0
    new-instance v2, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    invoke-direct {v2, p0, v0, v1}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;-><init>(FLandroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 239
    instance-of v0, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 240
    return v1

    .line 242
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    .line 243
    .local v0, "that":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->peak:F

    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->peak:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field1:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field1:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 244
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field2:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field2:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 245
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 243
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 250
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->peak:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    .line 251
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field1:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field1:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-virtual {v2}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 252
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field2:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field2:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-virtual {v2}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    .line 253
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplayGain Xing/Info: peak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->peak:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field 1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field1:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field 2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->field2:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
