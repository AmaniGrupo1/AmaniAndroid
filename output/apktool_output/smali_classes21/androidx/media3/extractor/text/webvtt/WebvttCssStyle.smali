.class public final Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Landroidx/media3/extractor/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private combineUpright:Z

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private italic:I

.field private linethrough:I

.field private rubyPosition:I

.field private targetClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field private targetTag:Ljava/lang/String;

.field private targetVoice:Ljava/lang/String;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, ""

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 114
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 117
    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 119
    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    .line 120
    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    .line 121
    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    .line 122
    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 123
    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    .line 124
    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    .line 125
    return-void
.end method

.method private static updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "currentScore"    # I
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;
    .param p3, "score"    # I

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int v0, p0, p3

    :cond_1
    return v0

    .line 320
    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 2

    .line 260
    iget-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_0

    .line 263
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->backgroundColor:I

    return v0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCombineUpright()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    return v0
.end method

.method public getFontColor()I
    .locals 2

    .line 242
    iget-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    .line 245
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontColor:I

    return v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 294
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    .line 290
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return v0
.end method

.method public getRubyPosition()I
    .locals 1

    .line 304
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    return v0
.end method

.method public getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "voice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 165
    .local p3, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 167
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "score":I
    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, p1, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 175
    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, p2, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 176
    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, p4, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 177
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {p3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 182
    return v0

    .line 178
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getStyle()I
    .locals 4

    .line 192
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v0, v1, :cond_0

    .line 193
    return v1

    .line 195
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return v0
.end method

.method public isLinethrough()Z
    .locals 2

    .line 199
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnderline()Z
    .locals 2

    .line 209
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackgroundColor(I)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "backgroundColor"    # I

    .line 268
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->backgroundColor:I

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 270
    return-object p0
.end method

.method public setBold(Z)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "bold"    # Z

    .line 220
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    .line 221
    return-object p0
.end method

.method public setCombineUpright(Z)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "enabled"    # Z

    .line 309
    iput-boolean p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    .line 310
    return-object p0
.end method

.method public setFontColor(I)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "color"    # I

    .line 250
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontColor:I

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 252
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 237
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setFontSize(F)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "fontSize"    # F

    .line 279
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSize:F

    .line 280
    return-object p0
.end method

.method public setFontSizeUnit(I)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "unit"    # I

    .line 285
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 286
    return-object p0
.end method

.method public setItalic(Z)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "italic"    # Z

    .line 226
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    .line 227
    return-object p0
.end method

.method public setLinethrough(Z)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "linethrough"    # Z

    .line 204
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 205
    return-object p0
.end method

.method public setRubyPosition(I)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "rubyPosition"    # I

    .line 299
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    .line 300
    return-object p0
.end method

.method public setTargetClasses([Ljava/lang/String;)V
    .locals 2
    .param p1, "targetClasses"    # [Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 137
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setTargetTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetTag"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTargetVoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetVoice"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setUnderline(Z)Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "underline"    # Z

    .line 214
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    .line 215
    return-object p0
.end method
