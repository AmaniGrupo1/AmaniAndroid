.class Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberPrinterParser"
.end annotation


# static fields
.field static final EXCEED_POINTS:[J


# instance fields
.field final field:Lj$/time/temporal/TemporalField;

.field final maxWidth:I

.field final minWidth:I

.field private final signStyle:Lj$/time/format/SignStyle;

.field final subsequentWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetsignStyle(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/SignStyle;
    .locals 0

    iget-object p0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2638
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor <init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lj$/time/format/SignStyle;

    .line 2666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2668
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    .line 2669
    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2670
    iput p3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2671
    iput-object p4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    .line 2672
    const/4 v0, 0x0

    iput v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2673
    return-void
.end method

.method protected constructor <init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V
    .locals 0
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lj$/time/format/SignStyle;
    .param p5, "subsequentWidth"    # I

    .line 2685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2687
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    .line 2688
    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2689
    iput p3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2690
    iput-object p4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    .line 2691
    iput p5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2692
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 11
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2718
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 2719
    .local v0, "valueLong":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 2720
    const/4 v1, 0x0

    return v1

    .line 2722
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Lj$/time/format/DateTimePrintContext;J)J

    move-result-wide v1

    .line 2723
    .local v1, "value":J
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v3

    .line 2724
    .local v3, "decimalStyle":Lj$/time/format/DecimalStyle;
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    const-string v4, "9223372036854775808"

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 2725
    .local v4, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v7, " cannot be printed as the value "

    const-string v8, "Field "

    if-gt v5, v6, :cond_5

    .line 2730
    invoke-virtual {v3, v4}, Lj$/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2732
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3

    .line 2733
    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual {v6}, Lj$/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 2740
    :pswitch_0
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2735
    :pswitch_1
    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_2

    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    aget-wide v6, v5, v6

    cmp-long v5, v1, v6

    if-ltz v5, :cond_2

    .line 2736
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2741
    :cond_2
    :goto_1
    goto :goto_2

    .line 2744
    :cond_3
    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual {v6}, Lj$/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 2751
    :pswitch_2
    new-instance v5, Lj$/time/DateTimeException;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be negative according to the SignStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2748
    :pswitch_3
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getNegativeSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2749
    nop

    .line 2756
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    .line 2757
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2756
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2759
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    const/4 v5, 0x1

    return v5

    .line 2726
    :cond_5
    new-instance v5, Lj$/time/DateTimeException;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v9, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeds the maximum print width of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method getValue(Lj$/time/format/DateTimePrintContext;J)J
    .locals 0
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .line 2771
    return-wide p2
.end method

.method isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z
    .locals 2
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 2782
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v1, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 23
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2788
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2789
    .local v6, "length":I
    if-ne v1, v6, :cond_0

    .line 2790
    not-int v2, v1

    return v2

    .line 2792
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 2793
    .local v7, "sign":C
    const/4 v2, 0x0

    .line 2794
    .local v2, "negative":Z
    const/4 v3, 0x0

    .line 2795
    .local v3, "positive":Z
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-ne v7, v4, :cond_3

    .line 2796
    iget-object v4, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    move v10, v5

    :goto_0
    invoke-virtual {v4, v8, v9, v10}, Lj$/time/format/SignStyle;->parse(ZZZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2797
    not-int v4, v1

    return v4

    .line 2799
    :cond_2
    const/4 v3, 0x1

    .line 2800
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    move v9, v2

    move v10, v3

    .end local p3    # "position":I
    .local v1, "position":I
    goto :goto_2

    .line 2801
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/format/DecimalStyle;->getNegativeSign()C

    move-result v4

    .line 2808
    iget-object v9, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    .line 2801
    if-ne v7, v4, :cond_6

    .line 2802
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    iget v10, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_4

    move v10, v8

    goto :goto_1

    :cond_4
    move v10, v5

    :goto_1
    invoke-virtual {v9, v5, v4, v10}, Lj$/time/format/SignStyle;->parse(ZZZ)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2803
    not-int v4, v1

    return v4

    .line 2805
    :cond_5
    const/4 v2, 0x1

    .line 2806
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    move v9, v2

    move v10, v3

    .end local p3    # "position":I
    .restart local v1    # "position":I
    goto :goto_2

    .line 2808
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_6
    sget-object v4, Lj$/time/format/SignStyle;->ALWAYS:Lj$/time/format/SignStyle;

    if-ne v9, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2809
    not-int v4, v1

    return v4

    .line 2812
    :cond_7
    move v4, v1

    move v9, v2

    move v10, v3

    .end local v2    # "negative":Z
    .end local v3    # "positive":Z
    .end local p3    # "position":I
    .local v4, "position":I
    .local v9, "negative":Z
    .local v10, "positive":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget v8, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2813
    .local v8, "effMinWidth":I
    :cond_9
    add-int v11, v4, v8

    .line 2814
    .local v11, "minEndPos":I
    if-le v11, v6, :cond_a

    .line 2815
    not-int v1, v4

    return v1

    .line 2817
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    const/16 v1, 0x9

    goto :goto_4

    :cond_c
    :goto_3
    iget v1, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    :goto_4
    iget v2, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2818
    .local v1, "effMaxWidth":I
    const-wide/16 v2, 0x0

    .line 2819
    .local v2, "total":J
    const/4 v5, 0x0

    .line 2820
    .local v5, "totalBig":Ljava/math/BigInteger;
    move v12, v4

    .line 2821
    .local v12, "pos":I
    const/4 v13, 0x0

    move/from16 v21, v12

    move v12, v1

    move/from16 v1, v21

    .local v1, "pos":I
    .local v12, "effMaxWidth":I
    .local v13, "pass":I
    :goto_5
    const/4 v14, 0x2

    if-ge v13, v14, :cond_13

    .line 2822
    add-int v14, v1, v12

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2823
    .local v14, "maxEndPos":I
    :goto_6
    if-ge v1, v14, :cond_11

    .line 2824
    add-int/lit8 v15, v1, 0x1

    move/from16 v16, v6

    move-object/from16 v6, p2

    .end local v1    # "pos":I
    .end local v6    # "length":I
    .local v15, "pos":I
    .local v16, "length":I
    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2825
    .local v1, "ch":C
    move-wide/from16 v17, v2

    .end local v2    # "total":J
    .local v17, "total":J
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lj$/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v2

    .line 2826
    .local v2, "digit":I
    if-gez v2, :cond_e

    .line 2827
    add-int/lit8 v15, v15, -0x1

    .line 2828
    if-ge v15, v11, :cond_d

    .line 2829
    not-int v3, v4

    return v3

    .line 2828
    :cond_d
    move-object v3, v5

    move v1, v15

    goto :goto_8

    .line 2833
    :cond_e
    sub-int v3, v15, v4

    move/from16 p3, v1

    .end local v1    # "ch":C
    .local p3, "ch":C
    const/16 v1, 0x12

    if-le v3, v1, :cond_10

    .line 2834
    if-nez v5, :cond_f

    .line 2835
    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 2837
    :cond_f
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v3, v5

    .end local v5    # "totalBig":Ljava/math/BigInteger;
    .local v3, "totalBig":Ljava/math/BigInteger;
    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-wide/from16 v2, v17

    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .restart local v5    # "totalBig":Ljava/math/BigInteger;
    goto :goto_7

    .line 2839
    :cond_10
    const-wide/16 v19, 0xa

    mul-long v19, v19, v17

    move-object v3, v5

    .end local v5    # "totalBig":Ljava/math/BigInteger;
    .restart local v3    # "totalBig":Ljava/math/BigInteger;
    int-to-long v5, v2

    add-long v5, v19, v5

    move-wide/from16 v21, v5

    move-object v5, v3

    move-wide/from16 v2, v21

    .line 2841
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .end local v17    # "total":J
    .end local p3    # "ch":C
    .local v2, "total":J
    .restart local v5    # "totalBig":Ljava/math/BigInteger;
    :goto_7
    move v1, v15

    move/from16 v6, v16

    goto :goto_6

    .line 2823
    .end local v15    # "pos":I
    .end local v16    # "length":I
    .local v1, "pos":I
    .restart local v6    # "length":I
    :cond_11
    move-wide/from16 v17, v2

    move-object v3, v5

    move/from16 v16, v6

    .line 2842
    .end local v2    # "total":J
    .end local v5    # "totalBig":Ljava/math/BigInteger;
    .end local v6    # "length":I
    .restart local v3    # "totalBig":Ljava/math/BigInteger;
    .restart local v16    # "length":I
    .restart local v17    # "total":J
    :goto_8
    iget v2, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v2, :cond_12

    if-nez v13, :cond_12

    .line 2844
    sub-int v2, v1, v4

    .line 2845
    .local v2, "parseLen":I
    iget v5, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    sub-int v5, v2, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2846
    move v1, v4

    .line 2847
    const-wide/16 v5, 0x0

    .line 2848
    .end local v17    # "total":J
    .local v5, "total":J
    const/4 v2, 0x0

    .line 2821
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .end local v14    # "maxEndPos":I
    .local v2, "totalBig":Ljava/math/BigInteger;
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v21, v5

    move-object v5, v2

    move-wide/from16 v2, v21

    move/from16 v6, v16

    goto :goto_5

    .line 2853
    .end local v2    # "totalBig":Ljava/math/BigInteger;
    .end local v5    # "total":J
    .end local v13    # "pass":I
    .restart local v3    # "totalBig":Ljava/math/BigInteger;
    .restart local v17    # "total":J
    :cond_12
    move v5, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto :goto_9

    .line 2821
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .end local v16    # "length":I
    .end local v17    # "total":J
    .local v2, "total":J
    .local v5, "totalBig":Ljava/math/BigInteger;
    .restart local v6    # "length":I
    .restart local v13    # "pass":I
    :cond_13
    move/from16 v16, v6

    .end local v6    # "length":I
    .restart local v16    # "length":I
    move-object/from16 v21, v5

    move v5, v1

    move-object/from16 v1, v21

    .line 2853
    .end local v13    # "pass":I
    .local v1, "totalBig":Ljava/math/BigInteger;
    .local v5, "pos":I
    :goto_9
    if-eqz v9, :cond_17

    .line 2854
    if-eqz v1, :cond_15

    .line 2855
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2856
    add-int/lit8 v6, v4, -0x1

    not-int v6, v6

    return v6

    .line 2858
    :cond_14
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    move-object v6, v1

    move-wide v13, v2

    goto :goto_a

    .line 2860
    :cond_15
    const-wide/16 v13, 0x0

    cmp-long v6, v2, v13

    if-nez v6, :cond_16

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2861
    add-int/lit8 v6, v4, -0x1

    not-int v6, v6

    return v6

    .line 2863
    :cond_16
    neg-long v2, v2

    move-object v6, v1

    move-wide v13, v2

    goto :goto_a

    .line 2865
    :cond_17
    iget-object v6, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v13, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    if-ne v6, v13, :cond_19

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2866
    sub-int v6, v5, v4

    .line 2867
    .local v6, "parseLen":I
    nop

    .line 2872
    iget v13, v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2867
    if-eqz v10, :cond_18

    .line 2868
    if-gt v6, v13, :cond_19

    .line 2869
    add-int/lit8 v13, v4, -0x1

    not-int v13, v13

    return v13

    .line 2872
    :cond_18
    if-le v6, v13, :cond_19

    .line 2873
    not-int v13, v4

    return v13

    .line 2877
    .end local v6    # "parseLen":I
    :cond_19
    move-object v6, v1

    move-wide v13, v2

    .end local v1    # "totalBig":Ljava/math/BigInteger;
    .end local v2    # "total":J
    .local v6, "totalBig":Ljava/math/BigInteger;
    .local v13, "total":J
    :goto_a
    if-eqz v6, :cond_1b

    .line 2878
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_1a

    .line 2880
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 2881
    add-int/lit8 v5, v5, -0x1

    .line 2883
    :cond_1a
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Lj$/time/format/DateTimeParseContext;JII)I

    move-result v2

    return v2

    .line 2885
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    .end local v13    # "total":J
    .restart local v2    # "total":J
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Lj$/time/format/DateTimeParseContext;JII)I

    move-result v13

    return v13
.end method

.method setValue(Lj$/time/format/DateTimeParseContext;JII)I
    .locals 6
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 2898
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local p2    # "value":J
    .end local p4    # "errorPos":I
    .end local p5    # "successPos":I
    .local v0, "context":Lj$/time/format/DateTimeParseContext;
    .local v2, "value":J
    .local v4, "errorPos":I
    .local v5, "successPos":I
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 2903
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, "Value("

    if-ne v0, v1, :cond_0

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v1, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    if-ne v0, v1, :cond_0

    .line 2904
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2906
    :cond_0
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v4, ","

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v1, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    if-ne v0, v1, :cond_1

    .line 2907
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2909
    :cond_1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 8

    .line 2700
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2701
    return-object p0

    .line 2703
    :cond_0
    new-instance v2, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    return-object v2
.end method

.method withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 6
    .param p1, "subsequentWidth"    # I

    .line 2713
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    return-object v0
.end method
