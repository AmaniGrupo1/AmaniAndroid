.class final Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
.super Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReducedPrinterParser"
.end annotation


# static fields
.field static final BASE_DATE:Lj$/time/LocalDate;


# instance fields
.field private final baseDate:Lj$/time/chrono/ChronoLocalDate;

.field private final baseValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2921
    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Lj$/time/LocalDate;

    return-void
.end method

.method constructor <init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;)V
    .locals 7
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Lj$/time/chrono/ChronoLocalDate;

    .line 2937
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "field":Lj$/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p4    # "baseValue":I
    .end local p5    # "baseDate":Lj$/time/chrono/ChronoLocalDate;
    .local v1, "field":Lj$/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v4, "baseValue":I
    .local v5, "baseDate":Lj$/time/chrono/ChronoLocalDate;
    invoke-direct/range {v0 .. v6}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;I)V

    .line 2938
    const/4 p1, 0x1

    if-lt v2, p1, :cond_5

    const/16 p2, 0xa

    if-gt v2, p2, :cond_5

    .line 2941
    if-lt v3, p1, :cond_4

    if-gt v3, p2, :cond_4

    .line 2944
    if-lt v3, v2, :cond_3

    .line 2948
    if-nez v5, :cond_2

    .line 2949
    invoke-interface {v1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object p1

    int-to-long p2, v4

    invoke-virtual {p1, p2, p3}, Lj$/time/temporal/ValueRange;->isValidValue(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2952
    int-to-long p1, v4

    sget-object p3, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    aget-wide p4, p3, v3

    add-long/2addr p1, p4

    const-wide/32 p3, 0x7fffffff

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 2953
    :cond_0
    new-instance p1, Lj$/time/DateTimeException;

    const-string p2, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {p1, p2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2950
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The base value must be within the range of the field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2956
    :cond_2
    :goto_0
    return-void

    .line 2945
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2942
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2939
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The minWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;I)V
    .locals 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Lj$/time/chrono/ChronoLocalDate;
    .param p6, "subsequentWidth"    # I

    .line 2971
    sget-object v4, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    .end local p1    # "field":Lj$/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p6    # "subsequentWidth":I
    .local v1, "field":Lj$/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v5, "subsequentWidth":I
    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    .line 2972
    iput p4, v0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2973
    iput-object p5, v0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    .line 2974
    return-void
.end method

.method synthetic constructor <init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;ILj$/time/format/DateTimeFormatterBuilder-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;I)V

    return-void
.end method


# virtual methods
.method getValue(Lj$/time/format/DateTimePrintContext;J)J
    .locals 8
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .line 2978
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2979
    .local v0, "absValue":J
    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2980
    .local v2, "baseValue":I
    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v3, :cond_0

    .line 2981
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    invoke-static {v3}, Lj$/time/chrono/Chronology;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v3

    .line 2982
    .local v3, "chrono":Lj$/time/chrono/Chronology;
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v3, v4}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v4, v5}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v2

    .line 2984
    .end local v3    # "chrono":Lj$/time/chrono/Chronology;
    :cond_0
    int-to-long v3, v2

    cmp-long v3, p2, v3

    if-ltz v3, :cond_1

    int-to-long v3, v2

    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v6, v5, v6

    add-long/2addr v3, v6

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    .line 2986
    sget-object v3, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v4, v3, v4

    rem-long v3, v0, v4

    return-wide v3

    .line 2989
    :cond_1
    sget-object v3, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget-wide v4, v3, v4

    rem-long v3, v0, v4

    return-wide v3
.end method

.method isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z
    .locals 1
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 3061
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3062
    const/4 v0, 0x0

    return v0

    .line 3064
    :cond_0
    invoke-super {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$setValue$0$java-time-format-DateTimeFormatterBuilder$ReducedPrinterParser(Lj$/time/format/DateTimeParseContext;JIILj$/time/chrono/Chronology;)V
    .locals 0
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "initialValue"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I
    .param p6, "_unused"    # Lj$/time/chrono/Chronology;

    .line 3007
    invoke-virtual/range {p0 .. p5}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Lj$/time/format/DateTimeParseContext;JII)I

    .line 3008
    return-void
.end method

.method setValue(Lj$/time/format/DateTimeParseContext;JII)I
    .locals 15
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 2994
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2995
    .local v0, "baseValue":I
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_0

    .line 2996
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getEffectiveChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    .line 2997
    .local v1, "chrono":Lj$/time/chrono/Chronology;
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, v2}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v2, v3}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    .line 3000
    move-wide/from16 v5, p2

    .line 3001
    .local v5, "initialValue":J
    new-instance v2, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$0;

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$0;-><init>(Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;Lj$/time/format/DateTimeParseContext;JII)V

    invoke-virtual {v4, v2}, Lj$/time/format/DateTimeParseContext;->addChronoChangedListener(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 2995
    .end local v1    # "chrono":Lj$/time/chrono/Chronology;
    .end local v5    # "initialValue":J
    :cond_0
    move-object/from16 v4, p1

    .line 3010
    :goto_0
    sub-int v1, p5, p4

    .line 3011
    .local v1, "parseLen":I
    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    if-ne v1, v2, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_3

    .line 3012
    sget-object v2, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v5, v2, v5

    .line 3013
    .local v5, "range":J
    int-to-long v7, v0

    rem-long/2addr v7, v5

    .line 3014
    .local v7, "lastPart":J
    int-to-long v9, v0

    sub-long/2addr v9, v7

    .line 3015
    .local v9, "basePart":J
    if-lez v0, :cond_1

    .line 3016
    add-long v11, v9, p2

    .end local p2    # "value":J
    .local v11, "value":J
    goto :goto_1

    .line 3018
    .end local v11    # "value":J
    .restart local p2    # "value":J
    :cond_1
    sub-long v11, v9, p2

    .line 3020
    .end local p2    # "value":J
    .restart local v11    # "value":J
    :goto_1
    int-to-long v13, v0

    cmp-long v2, v11, v13

    if-gez v2, :cond_2

    .line 3021
    add-long/2addr v11, v5

    move-wide v6, v11

    goto :goto_2

    .line 3020
    :cond_2
    move-wide v6, v11

    goto :goto_2

    .line 3024
    .end local v5    # "range":J
    .end local v7    # "lastPart":J
    .end local v9    # "basePart":J
    .end local v11    # "value":J
    .restart local p2    # "value":J
    :cond_3
    move-wide/from16 v6, p2

    .end local p2    # "value":J
    .local v6, "value":J
    :goto_2
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lj$/time/temporal/TemporalField;

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 3069
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 3070
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lj$/time/ZoneId$3;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReducedValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3069
    return-object v0
.end method

.method bridge synthetic withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 1

    .line 2917
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .locals 9

    .line 3034
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3035
    return-object p0

    .line 3037
    :cond_0
    new-instance v2, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v7, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    const/4 v8, -0x1

    invoke-direct/range {v2 .. v8}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;I)V

    return-object v2
.end method

.method bridge synthetic withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 0

    .line 2917
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object p1

    return-object p1
.end method

.method withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .locals 7
    .param p1, "subsequentWidth"    # I

    .line 3048
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lj$/time/chrono/ChronoLocalDate;

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    add-int/2addr v6, p1

    invoke-direct/range {v0 .. v6}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method
