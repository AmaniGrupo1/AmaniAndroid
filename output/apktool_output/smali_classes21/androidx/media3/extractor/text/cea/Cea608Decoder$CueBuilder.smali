.class final Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# static fields
.field private static final BASE_ROW:I = 0xf

.field private static final SCREEN_CHARWIDTH:I = 0x20


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final cueStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private tabOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "captionMode"    # I
    .param p2, "captionRowCount"    # I

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 910
    iput p2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    .line 911
    return-void
.end method

.method static synthetic access$002(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 888
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    return p1
.end method

.method static synthetic access$100(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    .line 888
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    return v0
.end method

.method static synthetic access$102(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 888
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    return p1
.end method

.method static synthetic access$202(Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 888
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->indent:I

    return p1
.end method

.method private buildCurrentLine()Landroid/text/SpannableString;
    .locals 16

    .line 1057
    move-object/from16 v0, p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1058
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1060
    .local v2, "length":I
    const/4 v3, -0x1

    .line 1061
    .local v3, "underlineStartPosition":I
    const/4 v4, -0x1

    .line 1062
    .local v4, "italicStartPosition":I
    const/4 v5, 0x0

    .line 1063
    .local v5, "colorStartPosition":I
    const/4 v6, -0x1

    .line 1065
    .local v6, "color":I
    const/4 v7, 0x0

    .line 1066
    .local v7, "nextItalic":Z
    const/4 v8, -0x1

    .line 1068
    .local v8, "nextColor":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v10, v0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 1069
    iget-object v10, v0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 1070
    .local v10, "cueStyle":Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    iget-boolean v12, v10, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    .line 1071
    .local v12, "underline":Z
    iget v13, v10, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    .line 1072
    .local v13, "style":I
    const/16 v14, 0x8

    if-eq v13, v14, :cond_2

    .line 1074
    const/4 v14, 0x7

    if-ne v13, v14, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 1076
    .end local v7    # "nextItalic":Z
    .local v15, "nextItalic":Z
    :goto_1
    if-ne v13, v14, :cond_1

    move v7, v8

    goto :goto_2

    :cond_1
    invoke-static {}, Landroidx/media3/extractor/text/cea/Cea608Decoder;->access$300()[I

    move-result-object v7

    aget v7, v7, v13

    :goto_2
    move v8, v7

    move v7, v15

    .line 1079
    .end local v15    # "nextItalic":Z
    .restart local v7    # "nextItalic":Z
    :cond_2
    iget v14, v10, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 1080
    .local v14, "position":I
    add-int/lit8 v15, v9, 0x1

    iget-object v11, v0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_3

    iget-object v11, v0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    add-int/lit8 v15, v9, 0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v11, v11, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    goto :goto_3

    :cond_3
    move v11, v2

    .line 1081
    .local v11, "nextPosition":I
    :goto_3
    if-ne v14, v11, :cond_4

    .line 1083
    goto :goto_6

    .line 1087
    :cond_4
    const/4 v15, -0x1

    if-eq v3, v15, :cond_5

    if-nez v12, :cond_5

    .line 1088
    invoke-static {v1, v3, v14}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1089
    const/4 v3, -0x1

    goto :goto_4

    .line 1090
    :cond_5
    const/4 v15, -0x1

    if-ne v3, v15, :cond_6

    if-eqz v12, :cond_6

    .line 1091
    move v3, v14

    .line 1094
    :cond_6
    :goto_4
    const/4 v15, -0x1

    if-eq v4, v15, :cond_7

    if-nez v7, :cond_7

    .line 1095
    invoke-static {v1, v4, v14}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1096
    const/4 v4, -0x1

    goto :goto_5

    .line 1097
    :cond_7
    const/4 v15, -0x1

    if-ne v4, v15, :cond_8

    if-eqz v7, :cond_8

    .line 1098
    move v4, v14

    .line 1101
    :cond_8
    :goto_5
    if-eq v8, v6, :cond_9

    .line 1102
    invoke-static {v1, v5, v14, v6}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    .line 1103
    move v6, v8

    .line 1104
    move v5, v14

    .line 1068
    .end local v10    # "cueStyle":Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    .end local v11    # "nextPosition":I
    .end local v12    # "underline":Z
    .end local v13    # "style":I
    .end local v14    # "position":I
    :cond_9
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1109
    .end local v9    # "i":I
    :cond_a
    const/4 v15, -0x1

    if-eq v3, v15, :cond_b

    if-eq v3, v2, :cond_b

    .line 1110
    invoke-static {v1, v3, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1112
    :cond_b
    if-eq v4, v15, :cond_c

    if-eq v4, v2, :cond_c

    .line 1113
    invoke-static {v1, v4, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1115
    :cond_c
    if-eq v5, v2, :cond_d

    .line 1116
    invoke-static {v1, v5, v2, v6}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    .line 1119
    :cond_d
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v9
.end method

.method private static setColorSpan(Landroid/text/SpannableStringBuilder;III)V
    .locals 2
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "color"    # I

    .line 1132
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1134
    return-void

    .line 1136
    :cond_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1137
    return-void
.end method

.method private static setItalicSpan(Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1127
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1128
    return-void
.end method

.method private static setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1123
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1124
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 2
    .param p1, "text"    # C

    .line 960
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 961
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    :cond_0
    return-void
.end method

.method public backspace()V
    .locals 4

    .line 942
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 943
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 944
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 946
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 947
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 948
    .local v2, "style":Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    iget v3, v2, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    if-ne v3, v0, :cond_0

    .line 949
    iget v3, v2, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 946
    .end local v2    # "style":Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 956
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public build(I)Landroidx/media3/common/text/Cue;
    .locals 10
    .param p1, "forcedPositionAnchor"    # I

    .line 977
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 979
    .local v0, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 980
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 981
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 984
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 986
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 988
    const/4 v1, 0x0

    return-object v1

    .line 993
    :cond_1
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->indent:I

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    add-int/2addr v1, v2

    .line 995
    .local v1, "startPadding":I
    rsub-int/lit8 v2, v1, 0x20

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 996
    .local v2, "endPadding":I
    sub-int v3, v1, v2

    .line 997
    .local v3, "startEndPaddingDelta":I
    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_2

    .line 998
    move v4, p1

    .local v4, "positionAnchor":I
    goto :goto_1

    .line 999
    .end local v4    # "positionAnchor":I
    :cond_2
    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1000
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_3

    if-gez v2, :cond_4

    .line 1004
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "positionAnchor":I
    goto :goto_1

    .line 1005
    .end local v4    # "positionAnchor":I
    :cond_4
    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne v4, v5, :cond_5

    if-lez v3, :cond_5

    .line 1007
    const/4 v4, 0x2

    .restart local v4    # "positionAnchor":I
    goto :goto_1

    .line 1010
    .end local v4    # "positionAnchor":I
    :cond_5
    const/4 v4, 0x0

    .line 1014
    .restart local v4    # "positionAnchor":I
    :goto_1
    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x42000000    # 32.0f

    packed-switch v4, :pswitch_data_0

    .line 1025
    int-to-float v8, v1

    div-float/2addr v8, v7

    .line 1027
    .local v8, "position":F
    mul-float/2addr v6, v8

    add-float/2addr v6, v5

    .end local v8    # "position":F
    .local v6, "position":F
    goto :goto_2

    .line 1019
    .end local v6    # "position":F
    :pswitch_0
    rsub-int/lit8 v8, v2, 0x20

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 1021
    .restart local v8    # "position":F
    mul-float/2addr v6, v8

    add-float/2addr v6, v5

    .line 1022
    .end local v8    # "position":F
    .restart local v6    # "position":F
    goto :goto_2

    .line 1016
    .end local v6    # "position":F
    :pswitch_1
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1017
    .restart local v6    # "position":F
    nop

    .line 1033
    :goto_2
    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v7, 0x7

    const/4 v8, 0x1

    if-le v5, v7, :cond_6

    .line 1034
    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    add-int/lit8 v5, v5, -0xf

    .line 1037
    .local v5, "line":I
    add-int/lit8 v5, v5, -0x2

    goto :goto_3

    .line 1044
    .end local v5    # "line":I
    :cond_6
    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    iget v7, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    if-ne v5, v8, :cond_7

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    sub-int/2addr v5, v8

    sub-int/2addr v7, v5

    :cond_7
    move v5, v7

    .line 1047
    .restart local v5    # "line":I
    :goto_3
    new-instance v7, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v7}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 1048
    invoke-virtual {v7, v0}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v7

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1049
    invoke-virtual {v7, v9}, Landroidx/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v7

    int-to-float v9, v5

    .line 1050
    invoke-virtual {v7, v9, v8}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v7

    .line 1051
    invoke-virtual {v7, v6}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v7

    .line 1052
    invoke-virtual {v7, v4}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v7

    .line 1053
    invoke-virtual {v7}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v7

    .line 1047
    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .line 924
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 925
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 924
    :goto_0
    return v0
.end method

.method public reset(I)V
    .locals 2
    .param p1, "captionMode"    # I

    .line 914
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 915
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 916
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 917
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 918
    const/16 v0, 0xf

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 919
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 920
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    .line 921
    return-void
.end method

.method public rollUp()V
    .locals 3

    .line 966
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 968
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 969
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 970
    .local v0, "numRows":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 971
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 973
    :cond_0
    return-void
.end method

.method public setCaptionMode(I)V
    .locals 0
    .param p1, "captionMode"    # I

    .line 930
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 931
    return-void
.end method

.method public setCaptionRowCount(I)V
    .locals 0
    .param p1, "captionRowCount"    # I

    .line 934
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    .line 935
    return-void
.end method

.method public setStyle(IZ)V
    .locals 3
    .param p1, "style"    # I
    .param p2, "underline"    # Z

    .line 938
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    new-instance v1, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    return-void
.end method
