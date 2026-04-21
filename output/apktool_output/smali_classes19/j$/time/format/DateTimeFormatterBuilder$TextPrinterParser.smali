.class final Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TextPrinterParser"
.end annotation


# instance fields
.field private final field:Lj$/time/temporal/TemporalField;

.field private volatile numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Lj$/time/format/DateTimeTextProvider;

.field private final textStyle:Lj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Lj$/time/format/DateTimeTextProvider;)V
    .locals 0
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "textStyle"    # Lj$/time/format/TextStyle;
    .param p3, "provider"    # Lj$/time/format/DateTimeTextProvider;

    .line 3309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3311
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    .line 3312
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    .line 3313
    iput-object p3, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    .line 3314
    return-void
.end method

.method private numberPrinterParser()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 5

    .line 3380
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_0

    .line 3381
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    const/16 v2, 0x13

    sget-object v3, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 3383
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3318
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3319
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 3320
    const/4 v1, 0x0

    return v1

    .line 3323
    :cond_0
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lj$/time/chrono/Chronology;

    .line 3324
    .local v3, "chrono":Lj$/time/chrono/Chronology;
    if-eqz v3, :cond_2

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    if-ne v3, v1, :cond_1

    goto :goto_0

    .line 3327
    :cond_1
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lj$/time/format/DateTimeTextProvider;->getText(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalField;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    goto :goto_1

    .line 3325
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lj$/time/format/DateTimeTextProvider;->getText(Lj$/time/temporal/TemporalField;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3329
    .restart local v1    # "text":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_3

    .line 3330
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v2

    return v2

    .line 3332
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    const/4 v2, 0x1

    return v2
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 14
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "parseText"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3338
    move/from16 v4, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 3339
    .local v6, "length":I
    if-ltz v4, :cond_9

    if-gt v4, v6, :cond_9

    .line 3342
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 3343
    .local v7, "style":Lj$/time/format/TextStyle;
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->getEffectiveChronology()Lj$/time/chrono/Chronology;

    move-result-object v8

    .line 3345
    .local v8, "chrono":Lj$/time/chrono/Chronology;
    if-eqz v8, :cond_2

    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    if-ne v8, v0, :cond_1

    goto :goto_1

    .line 3348
    :cond_1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v7, v2}, Lj$/time/format/DateTimeTextProvider;->getTextIterator(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    goto :goto_2

    .line 3346
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    :goto_1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Lj$/time/format/DateTimeTextProvider;->getTextIterator(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    .line 3350
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_2
    if-eqz v9, :cond_8

    .line 3351
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3352
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    .line 3353
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3354
    .local v1, "itText":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    move-object v11, v1

    .end local v1    # "itText":Ljava/lang/String;
    .local v11, "itText":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3355
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3357
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "itText":Ljava/lang/String;
    :cond_3
    move/from16 v4, p3

    goto :goto_3

    .line 3358
    :cond_4
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3360
    invoke-interface {v8}, Lj$/time/chrono/Chronology;->eras()Ljava/util/List;

    move-result-object v10

    .line 3361
    .local v10, "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lj$/time/chrono/Era;

    .line 3362
    .local v12, "era":Lj$/time/chrono/Era;
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3363
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    move-object v13, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v13, "name":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 3364
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v12}, Lj$/time/chrono/Era;->getValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3363
    :cond_5
    move/from16 v4, p3

    .line 3366
    .end local v12    # "era":Lj$/time/chrono/Era;
    .end local v13    # "name":Ljava/lang/String;
    goto :goto_4

    .line 3361
    :cond_6
    move/from16 v4, p3

    goto :goto_5

    .line 3358
    .end local v10    # "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    :cond_7
    move/from16 v4, p3

    .line 3368
    :goto_5
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3369
    not-int v1, v4

    return v1

    .line 3372
    :cond_8
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v1, p1, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    return v1

    .line 3339
    .end local v7    # "style":Lj$/time/format/TextStyle;
    .end local v8    # "chrono":Lj$/time/chrono/Chronology;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_9
    move-object/from16 v3, p2

    .line 3340
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 3388
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v1, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    .line 3391
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    .line 3388
    const-string v3, ")"

    const-string v4, "Text("

    if-ne v0, v1, :cond_0

    .line 3389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3391
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
