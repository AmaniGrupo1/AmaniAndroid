.class public final Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
.super Ljava/lang/Object;
.source "Mp3InfoReplayGain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GainField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField$Originator;,
        Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField$Name;
    }
.end annotation


# static fields
.field public static final NAME_AUDIOPHILE:I = 0x2

.field public static final NAME_RADIO:I = 0x1

.field public static final ORIGINATOR_ARTIST:I = 0x1

.field public static final ORIGINATOR_REPLAYGAIN:I = 0x3

.field public static final ORIGINATOR_SIMPLE_RMS:I = 0x4

.field public static final ORIGINATOR_UNSET:I = 0x0

.field public static final ORIGINATOR_USER:I = 0x2


# instance fields
.field public final gain:F

.field public final name:I

.field public final originator:I


# direct methods
.method private constructor <init>(IIF)V
    .locals 0
    .param p1, "name"    # I
    .param p2, "originator"    # I
    .param p3, "gain"    # F

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->name:I

    .line 133
    iput p2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->originator:I

    .line 134
    iput p3, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->gain:F

    .line 135
    return-void
.end method

.method static synthetic access$000(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    .locals 1
    .param p0, "x0"    # I

    .line 35
    invoke-static {p0}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->parse(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    move-result-object v0

    return-object v0
.end method

.method private static parse(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    .locals 4
    .param p0, "field"    # I

    .line 147
    shr-int/lit8 v0, p0, 0xd

    and-int/lit8 v0, v0, 0x7

    .line 148
    .local v0, "name":I
    if-nez v0, :cond_0

    .line 149
    const/4 v1, 0x0

    return-object v1

    .line 151
    :cond_0
    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x7

    .line 152
    .local v1, "originator":I
    and-int/lit16 v2, p0, 0x1ff

    and-int/lit16 v3, p0, 0x200

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 153
    .local v2, "gain":F
    new-instance v3, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;-><init>(IIF)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 163
    instance-of v0, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 166
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 167
    .local v0, "gainField":Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->name:I

    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->name:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->originator:I

    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->originator:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->gain:F

    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->gain:F

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 167
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 174
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->name:I

    .line 175
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->originator:I

    add-int/2addr v1, v2

    .line 176
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->gain:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 177
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GainField{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->name:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->originator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->gain:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
