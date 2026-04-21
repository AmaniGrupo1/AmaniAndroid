.class public final Landroidx/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/text/Cue$Builder;,
        Landroidx/media3/common/text/Cue$VerticalType;,
        Landroidx/media3/common/text/Cue$TextSizeType;,
        Landroidx/media3/common/text/Cue$LineType;,
        Landroidx/media3/common/text/Cue$AnchorType;
    }
.end annotation


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final DIMEN_UNSET:F = -3.4028235E38f

.field public static final EMPTY:Landroidx/media3/common/text/Cue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FIELD_BITMAP_BYTES:Ljava/lang/String;

.field private static final FIELD_BITMAP_HEIGHT:Ljava/lang/String;

.field private static final FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

.field private static final FIELD_CUSTOM_SPANS:Ljava/lang/String;

.field private static final FIELD_LINE:Ljava/lang/String;

.field private static final FIELD_LINE_ANCHOR:Ljava/lang/String;

.field private static final FIELD_LINE_TYPE:Ljava/lang/String;

.field private static final FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_POSITION:Ljava/lang/String;

.field private static final FIELD_POSITION_ANCHOR:Ljava/lang/String;

.field private static final FIELD_SHEAR_DEGREES:Ljava/lang/String;

.field private static final FIELD_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT:Ljava/lang/String;

.field private static final FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

.field private static final FIELD_VERTICAL_TYPE:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

.field private static final FIELD_Z_INDEX:Ljava/lang/String;

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TEXT_SIZE_TYPE_ABSOLUTE:I = 0x2

.field public static final TEXT_SIZE_TYPE_FRACTIONAL:I = 0x0

.field public static final TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000

.field public static final VERTICAL_TYPE_LR:I = 0x2

.field public static final VERTICAL_TYPE_RL:I = 0x1


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z

.field public final zIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    .line 862
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    .line 863
    const/16 v0, 0x11

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    .line 864
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    .line 865
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    .line 866
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

    .line 867
    const/16 v0, 0x12

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    .line 868
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    .line 869
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    .line 870
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    .line 871
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    .line 872
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    .line 873
    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    .line 874
    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    .line 875
    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    .line 876
    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    .line 877
    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    .line 878
    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    .line 879
    const/16 v0, 0xf

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    .line 880
    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    .line 881
    const/16 v0, 0x13

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_Z_INDEX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V
    .locals 16
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p3, "multiRowAlignment"    # Landroid/text/Layout$Alignment;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "line"    # F
    .param p6, "lineType"    # I
    .param p7, "lineAnchor"    # I
    .param p8, "position"    # F
    .param p9, "positionAnchor"    # I
    .param p10, "textSizeType"    # I
    .param p11, "textSize"    # F
    .param p12, "size"    # F
    .param p13, "bitmapHeight"    # F
    .param p14, "windowColorSet"    # Z
    .param p15, "windowColor"    # I
    .param p16, "verticalType"    # I
    .param p17, "shearDegrees"    # F
    .param p18, "zIndex"    # I

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 336
    if-nez v1, :cond_0

    .line 337
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 339
    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 341
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 342
    invoke-static {v1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    .line 343
    :cond_2
    if-eqz v1, :cond_3

    .line 344
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    .line 346
    :cond_3
    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 348
    :goto_2
    move-object/from16 v3, p2

    iput-object v3, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 349
    move-object/from16 v4, p3

    iput-object v4, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 350
    iput-object v2, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 351
    move/from16 v5, p5

    iput v5, v0, Landroidx/media3/common/text/Cue;->line:F

    .line 352
    move/from16 v6, p6

    iput v6, v0, Landroidx/media3/common/text/Cue;->lineType:I

    .line 353
    move/from16 v7, p7

    iput v7, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 354
    move/from16 v8, p8

    iput v8, v0, Landroidx/media3/common/text/Cue;->position:F

    .line 355
    move/from16 v9, p9

    iput v9, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 356
    move/from16 v10, p12

    iput v10, v0, Landroidx/media3/common/text/Cue;->size:F

    .line 357
    move/from16 v11, p13

    iput v11, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 358
    move/from16 v12, p14

    iput-boolean v12, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 359
    move/from16 v13, p15

    iput v13, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 360
    move/from16 v14, p10

    iput v14, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 361
    move/from16 v15, p11

    iput v15, v0, Landroidx/media3/common/text/Cue;->textSize:F

    .line 362
    move/from16 v1, p16

    iput v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 363
    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 364
    move/from16 v1, p18

    iput v1, v0, Landroidx/media3/common/text/Cue;->zIndex:I

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFILandroidx/media3/common/text/Cue$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/text/Layout$Alignment;
    .param p3, "x2"    # Landroid/text/Layout$Alignment;
    .param p4, "x3"    # Landroid/graphics/Bitmap;
    .param p5, "x4"    # F
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # F
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # F
    .param p12, "x11"    # F
    .param p13, "x12"    # F
    .param p14, "x13"    # Z
    .param p15, "x14"    # I
    .param p16, "x15"    # I
    .param p17, "x16"    # F
    .param p18, "x17"    # I
    .param p19, "x18"    # Landroidx/media3/common/text/Cue$1;

    .line 58
    invoke-direct/range {p0 .. p18}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 964
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 965
    .local v0, "builder":Landroidx/media3/common/text/Cue$Builder;
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 966
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 967
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    .line 969
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 970
    .local v2, "customSpanBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v2, :cond_1

    .line 971
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 972
    .local v3, "textWithCustomSpans":Landroid/text/SpannableString;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 973
    .local v5, "customSpanBundle":Landroid/os/Bundle;
    invoke-static {v5, v3}, Landroidx/media3/common/text/CustomSpanBundler;->unbundleAndApplyCustomSpan(Landroid/os/Bundle;Landroid/text/Spannable;)V

    .line 974
    .end local v5    # "customSpanBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {v0, v3}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    .line 978
    .end local v2    # "customSpanBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v3    # "textWithCustomSpans":Landroid/text/SpannableString;
    :cond_1
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    .line 979
    .local v2, "textAlignment":Landroid/text/Layout$Alignment;
    if-eqz v2, :cond_2

    .line 980
    invoke-virtual {v0, v2}, Landroidx/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    .line 983
    :cond_2
    sget-object v3, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Landroid/text/Layout$Alignment;

    .line 984
    .local v3, "multiRowAlignment":Landroid/text/Layout$Alignment;
    if-eqz v3, :cond_3

    .line 985
    invoke-virtual {v0, v3}, Landroidx/media3/common/text/Cue$Builder;->setMultiRowAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    .line 987
    :cond_3
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 988
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 989
    invoke-virtual {v0, v4}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    goto :goto_1

    .line 991
    :cond_4
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 992
    .local v6, "bitmapBytes":[B
    if-eqz v6, :cond_5

    .line 993
    array-length v7, v6

    .line 994
    invoke-static {v6, v5, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 993
    invoke-virtual {v0, v7}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    .line 997
    .end local v6    # "bitmapBytes":[B
    :cond_5
    :goto_1
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 998
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    sget-object v7, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 1000
    :cond_6
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1001
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 1003
    :cond_7
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1004
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 1006
    :cond_8
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1007
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 1009
    :cond_9
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1010
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    sget-object v7, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroidx/media3/common/text/Cue$Builder;->setTextSize(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 1012
    :cond_a
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1013
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    .line 1015
    :cond_b
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1016
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    .line 1018
    :cond_c
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1019
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/text/Cue$Builder;->setWindowColor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 1021
    :cond_d
    sget-object v6, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1022
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->clearWindowColor()Landroidx/media3/common/text/Cue$Builder;

    .line 1024
    :cond_e
    sget-object v5, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1025
    sget-object v5, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/text/Cue$Builder;->setVerticalType(I)Landroidx/media3/common/text/Cue$Builder;

    .line 1027
    :cond_f
    sget-object v5, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1028
    sget-object v5, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/text/Cue$Builder;->setShearDegrees(F)Landroidx/media3/common/text/Cue$Builder;

    .line 1030
    :cond_10
    sget-object v5, Landroidx/media3/common/text/Cue;->FIELD_Z_INDEX:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1031
    sget-object v5, Landroidx/media3/common/text/Cue;->FIELD_Z_INDEX:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/text/Cue$Builder;->setZIndex(I)Landroidx/media3/common/text/Cue$Builder;

    .line 1033
    :cond_11
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v5

    return-object v5
.end method

.method private toBundleWithoutBitmap()Landroid/os/Bundle;
    .locals 3

    .line 932
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 933
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 934
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 935
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 936
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Landroidx/media3/common/text/CustomSpanBundler;->bundleCustomSpans(Landroid/text/Spanned;)Ljava/util/ArrayList;

    move-result-object v1

    .line 937
    .local v1, "customSpanBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 938
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 942
    .end local v1    # "customSpanBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_0
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 943
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 944
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->line:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 945
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 947
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->position:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 948
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 949
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 950
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 951
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->size:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 952
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 953
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 955
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 956
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 957
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_Z_INDEX:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->zIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 958
    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/text/Cue$Builder;
    .locals 2

    .line 370
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/text/Cue$Builder;-><init>(Landroidx/media3/common/text/Cue;Landroidx/media3/common/text/Cue$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 375
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 376
    return v0

    .line 378
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 381
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/text/Cue;

    .line 382
    .local v2, "that":Landroidx/media3/common/text/Cue;
    iget-object v3, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v2, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v2, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v2, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 387
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iget v3, p0, Landroidx/media3/common/text/Cue;->line:F

    iget v4, v2, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->lineType:I

    iget v4, v2, Landroidx/media3/common/text/Cue;->lineType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iget v4, v2, Landroidx/media3/common/text/Cue;->lineAnchor:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->position:F

    iget v4, v2, Landroidx/media3/common/text/Cue;->position:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iget v4, v2, Landroidx/media3/common/text/Cue;->positionAnchor:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->size:F

    iget v4, v2, Landroidx/media3/common/text/Cue;->size:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iget v4, v2, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iget-boolean v4, v2, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    iget v4, v2, Landroidx/media3/common/text/Cue;->windowColor:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v4, v2, Landroidx/media3/common/text/Cue;->textSizeType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->textSize:F

    iget v4, v2, Landroidx/media3/common/text/Cue;->textSize:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    iget v4, v2, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iget v4, v2, Landroidx/media3/common/text/Cue;->shearDegrees:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/media3/common/text/Cue;->zIndex:I

    iget v4, v2, Landroidx/media3/common/text/Cue;->zIndex:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 382
    :goto_1
    return v0

    .line 379
    .end local v2    # "that":Landroidx/media3/common/text/Cue;
    :cond_4
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 20

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget v5, v0, Landroidx/media3/common/text/Cue;->line:F

    .line 411
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, v0, Landroidx/media3/common/text/Cue;->lineType:I

    .line 412
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 413
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Landroidx/media3/common/text/Cue;->position:F

    .line 414
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 415
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Landroidx/media3/common/text/Cue;->size:F

    .line 416
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v11, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 417
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-boolean v12, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 418
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v13, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 419
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 420
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Landroidx/media3/common/text/Cue;->textSize:F

    .line 421
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v1

    iget v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v17, v1

    iget v1, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 423
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v18, v1

    iget v1, v0, Landroidx/media3/common/text/Cue;->zIndex:I

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v19, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    filled-new-array/range {v1 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    .line 406
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toBinderBasedBundle()Landroid/os/Bundle;
    .locals 3

    .line 915
    invoke-direct {p0}, Landroidx/media3/common/text/Cue;->toBundleWithoutBitmap()Landroid/os/Bundle;

    move-result-object v0

    .line 916
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 917
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 919
    :cond_0
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    invoke-virtual {p0}, Landroidx/media3/common/text/Cue;->toBinderBasedBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toSerializableBundle()Landroid/os/Bundle;
    .locals 5

    .line 894
    invoke-direct {p0}, Landroidx/media3/common/text/Cue;->toBundleWithoutBitmap()Landroid/os/Bundle;

    move-result-object v0

    .line 895
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 896
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 898
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 899
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 901
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-object v0
.end method
