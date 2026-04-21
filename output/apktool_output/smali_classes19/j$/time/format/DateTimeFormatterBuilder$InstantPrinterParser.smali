.class final Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
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
    name = "InstantPrinterParser"
.end annotation


# static fields
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "fractionalDigits"    # I

    .line 3407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3408
    iput p1, p0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    .line 3409
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 25
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3414
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v2

    .line 3415
    .local v2, "inSecs":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 3416
    .local v4, "inNanos":Ljava/lang/Long;
    invoke-virtual {v3}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3417
    invoke-virtual {v3}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3419
    :cond_0
    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 3420
    return v5

    .line 3422
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3423
    .local v6, "inSec":J
    sget-object v8, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_0

    :cond_2
    const-wide/16 v11, 0x0

    :goto_0
    invoke-virtual {v8, v11, v12}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v8

    .line 3425
    .local v8, "inNano":I
    const-wide v11, -0xe79747c00L

    cmp-long v11, v6, v11

    const-string v12, ":00"

    const-wide v15, 0xe79747c00L

    const-wide/16 v17, 0x0

    const-wide v9, 0x497968bd80L

    if-ltz v11, :cond_5

    .line 3427
    sub-long v19, v6, v9

    const-wide/16 v21, 0x1

    add-long v13, v19, v15

    .line 3428
    .local v13, "zeroSecs":J
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v19

    move-wide/from16 v23, v6

    .end local v6    # "inSec":J
    .local v23, "inSec":J
    add-long v5, v19, v21

    .line 3429
    .local v5, "hi":J
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v9

    .line 3430
    .local v9, "lo":J
    move-object v7, v12

    sub-long v11, v9, v15

    sget-object v15, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "inSecs":Ljava/lang/Long;
    .local v20, "inSecs":Ljava/lang/Long;
    invoke-static {v11, v12, v2, v15}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 3431
    .local v2, "ldt":Lj$/time/LocalDateTime;
    cmp-long v11, v5, v17

    if-lez v11, :cond_3

    .line 3432
    const/16 v11, 0x2b

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3434
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3435
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v11

    if-nez v11, :cond_4

    .line 3436
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    .end local v2    # "ldt":Lj$/time/LocalDateTime;
    .end local v5    # "hi":J
    .end local v9    # "lo":J
    .end local v13    # "zeroSecs":J
    :cond_4
    goto :goto_1

    .line 3440
    .end local v20    # "inSecs":Ljava/lang/Long;
    .end local v23    # "inSec":J
    .local v2, "inSecs":Ljava/lang/Long;
    .restart local v6    # "inSec":J
    :cond_5
    move-object/from16 v20, v2

    move-wide/from16 v23, v6

    move-object v7, v12

    const-wide/16 v21, 0x1

    .end local v2    # "inSecs":Ljava/lang/Long;
    .end local v6    # "inSec":J
    .restart local v20    # "inSecs":Ljava/lang/Long;
    .restart local v23    # "inSec":J
    add-long v5, v23, v15

    .line 3441
    .local v5, "zeroSecs":J
    div-long v12, v5, v9

    .line 3442
    .local v12, "hi":J
    rem-long v9, v5, v9

    .line 3443
    .restart local v9    # "lo":J
    sub-long v14, v9, v15

    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    const/4 v11, 0x0

    invoke-static {v14, v15, v11, v2}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 3444
    .local v2, "ldt":Lj$/time/LocalDateTime;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 3445
    .local v11, "pos":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3446
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v14

    if-nez v14, :cond_6

    .line 3447
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    :cond_6
    cmp-long v7, v12, v17

    if-gez v7, :cond_9

    .line 3450
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->getYear()I

    move-result v7

    const/16 v14, -0x2710

    if-ne v7, v14, :cond_7

    .line 3451
    add-int/lit8 v7, v11, 0x2

    sub-long v14, v12, v21

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v11, v7, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3452
    :cond_7
    cmp-long v7, v9, v17

    if-nez v7, :cond_8

    .line 3453
    invoke-virtual {v1, v11, v12, v13}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3455
    :cond_8
    add-int/lit8 v7, v11, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-virtual {v1, v7, v14, v15}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 3460
    .end local v2    # "ldt":Lj$/time/LocalDateTime;
    .end local v5    # "zeroSecs":J
    .end local v9    # "lo":J
    .end local v11    # "pos":I
    .end local v12    # "hi":J
    :cond_9
    :goto_1
    iget v2, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v2, :cond_a

    if-gtz v8, :cond_b

    :cond_a
    iget v2, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-lez v2, :cond_f

    .line 3461
    :cond_b
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3462
    const v2, 0x5f5e100

    .line 3463
    .local v2, "div":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v6, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    if-gtz v8, :cond_e

    :cond_c
    iget v6, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_d

    if-gtz v8, :cond_e

    rem-int/lit8 v6, v5, 0x3

    if-nez v6, :cond_e

    :cond_d
    iget v6, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-ge v5, v6, :cond_f

    .line 3466
    :cond_e
    div-int v6, v8, v2

    .line 3467
    .local v6, "digit":I
    add-int/lit8 v7, v6, 0x30

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3468
    mul-int v7, v6, v2

    sub-int/2addr v8, v7

    .line 3469
    div-int/lit8 v2, v2, 0xa

    .line 3465
    .end local v6    # "digit":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3472
    .end local v2    # "div":I
    .end local v5    # "i":I
    :cond_f
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3473
    const/4 v2, 0x1

    return v2
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 31
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3479
    move-object/from16 v1, p0

    move/from16 v6, p3

    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_0
    move v8, v0

    .line 3480
    .local v8, "minDigits":I
    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :cond_1
    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_1
    move v9, v0

    .line 3481
    .local v9, "maxDigits":I
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 3482
    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x54

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 3483
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v5, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    .line 3484
    invoke-virtual {v0, v5, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    .line 3485
    invoke-virtual {v0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 3486
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v8, v9, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendFraction(Lj$/time/temporal/TemporalField;IIZ)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3487
    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3488
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v10

    .line 3489
    .local v10, "parser":Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->copy()Lj$/time/format/DateTimeParseContext;

    move-result-object v11

    .line 3490
    .local v11, "newContext":Lj$/time/format/DateTimeParseContext;
    move-object/from16 v12, p2

    invoke-virtual {v10, v11, v12, v6}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v13

    .line 3491
    .local v13, "pos":I
    if-gez v13, :cond_2

    .line 3492
    return v13

    .line 3496
    :cond_2
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3497
    .local v14, "yearParsed":J
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v17

    .line 3498
    .local v17, "month":I
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v18

    .line 3499
    .local v18, "day":I
    sget-object v0, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 3500
    .local v0, "hour":I
    sget-object v3, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v11, v3}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 3501
    .local v3, "min":I
    sget-object v4, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    invoke-virtual {v11, v4}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v23

    .line 3502
    .local v23, "secVal":Ljava/lang/Long;
    sget-object v4, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-virtual {v11, v4}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v24

    .line 3503
    .local v24, "nanoVal":Ljava/lang/Long;
    if-eqz v23, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->intValue()I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v2

    .line 3504
    .local v4, "sec":I
    :goto_2
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 3505
    .local v2, "nano":I
    :cond_4
    const/4 v5, 0x0

    .line 3506
    .local v5, "days":I
    const/16 v7, 0x18

    if-ne v0, v7, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    .line 3507
    const/4 v0, 0x0

    .line 3508
    const/4 v5, 0x1

    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    goto :goto_3

    .line 3509
    :cond_5
    const/16 v7, 0x17

    if-ne v0, v7, :cond_6

    const/16 v7, 0x3b

    if-ne v3, v7, :cond_6

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_6

    .line 3510
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    .line 3511
    const/16 v4, 0x3b

    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    goto :goto_3

    .line 3513
    :cond_6
    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    .end local v0    # "hour":I
    .end local v5    # "days":I
    .local v4, "days":I
    .local v19, "hour":I
    .local v21, "sec":I
    :goto_3
    long-to-int v0, v14

    rem-int/lit16 v5, v0, 0x2710

    .line 3516
    .local v5, "year":I
    const/16 v22, 0x0

    move/from16 v20, v3

    move/from16 v16, v5

    .end local v3    # "min":I
    .end local v5    # "year":I
    .local v16, "year":I
    .local v20, "min":I
    :try_start_0
    invoke-static/range {v16 .. v22}, Lj$/time/LocalDateTime;->of(IIIIIII)Lj$/time/LocalDateTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v2

    .end local v2    # "nano":I
    .local v3, "nano":I
    int-to-long v1, v4

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 3517
    .local v0, "ldt":Lj$/time/LocalDateTime;
    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v1

    .line 3518
    .local v1, "instantSecs":J
    const-wide/16 v25, 0x2710

    move-object v5, v0

    move-wide/from16 v27, v1

    .end local v0    # "ldt":Lj$/time/LocalDateTime;
    .end local v1    # "instantSecs":J
    .local v5, "ldt":Lj$/time/LocalDateTime;
    .local v27, "instantSecs":J
    div-long v0, v14, v25
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v3

    .end local v3    # "nano":I
    .local v7, "nano":I
    const-wide v2, 0x497968bd80L

    :try_start_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    add-long v1, v27, v0

    .line 3521
    .end local v5    # "ldt":Lj$/time/LocalDateTime;
    .end local v27    # "instantSecs":J
    .restart local v1    # "instantSecs":J
    nop

    .line 3522
    move v3, v7

    .end local v7    # "nano":I
    .restart local v3    # "nano":I
    move v7, v13

    .line 3523
    .local v7, "successPos":I
    move v5, v3

    .end local v3    # "nano":I
    .local v5, "nano":I
    sget-object v3, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    move/from16 v22, v4

    move-wide/from16 v29, v1

    move-object/from16 v2, p1

    move v1, v5

    move-wide/from16 v4, v29

    .end local v5    # "nano":I
    .local v1, "nano":I
    .local v4, "instantSecs":J
    .local v22, "days":I
    invoke-virtual/range {v2 .. v7}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v7

    .line 3524
    move-wide/from16 v25, v4

    .end local v4    # "instantSecs":J
    .local v25, "instantSecs":J
    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v4, v1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    .line 3519
    .end local v1    # "nano":I
    .end local v22    # "days":I
    .end local v25    # "instantSecs":J
    .local v4, "days":I
    .local v7, "nano":I
    :catch_0
    move-exception v0

    move/from16 v22, v4

    move v1, v7

    .end local v4    # "days":I
    .end local v7    # "nano":I
    .restart local v1    # "nano":I
    .restart local v22    # "days":I
    goto :goto_4

    .end local v1    # "nano":I
    .end local v22    # "days":I
    .restart local v3    # "nano":I
    .restart local v4    # "days":I
    :catch_1
    move-exception v0

    move v1, v3

    move/from16 v22, v4

    .end local v3    # "nano":I
    .end local v4    # "days":I
    .restart local v1    # "nano":I
    .restart local v22    # "days":I
    goto :goto_4

    .end local v1    # "nano":I
    .end local v22    # "days":I
    .restart local v2    # "nano":I
    .restart local v4    # "days":I
    :catch_2
    move-exception v0

    move v1, v2

    move/from16 v22, v4

    .line 3520
    .end local v2    # "nano":I
    .end local v4    # "days":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "nano":I
    .restart local v22    # "days":I
    :goto_4
    not-int v2, v6

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3529
    const-string v0, "Instant()"

    return-object v0
.end method
