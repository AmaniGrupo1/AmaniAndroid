.class final Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
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
    name = "ChronoPrinterParser"
.end annotation


# instance fields
.field private final textStyle:Lj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Lj$/time/format/TextStyle;)V
    .locals 0
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;

    .line 4692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4694
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    .line 4695
    return-void
.end method

.method private getChronologyName(Lj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 4755
    invoke-interface {p1}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4699
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 4700
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-nez v0, :cond_0

    .line 4701
    const/4 v1, 0x0

    return v1

    .line 4703
    :cond_0
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    if-nez v1, :cond_1

    .line 4704
    invoke-interface {v0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4706
    :cond_1
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Lj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4708
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 12
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4714
    if-ltz p3, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_5

    .line 4717
    invoke-static {}, Lj$/time/chrono/Chronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    .line 4718
    .local v0, "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    const/4 v1, 0x0

    .line 4719
    .local v1, "bestMatch":Lj$/time/chrono/Chronology;
    const/4 v2, -0x1

    .line 4720
    .local v2, "matchLen":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/chrono/Chronology;

    .line 4722
    .local v4, "chrono":Lj$/time/chrono/Chronology;
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    if-nez v5, :cond_0

    .line 4723
    invoke-interface {v4}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .local v5, "name":Ljava/lang/String;
    goto :goto_1

    .line 4725
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Lj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 4727
    .local v9, "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 4728
    .local v11, "nameLen":I
    if-le v11, v2, :cond_1

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .local v6, "context":Lj$/time/format/DateTimeParseContext;
    .local v7, "text":Ljava/lang/CharSequence;
    .local v8, "position":I
    invoke-virtual/range {v6 .. v11}, Lj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4729
    move-object p1, v4

    .line 4730
    .end local v1    # "bestMatch":Lj$/time/chrono/Chronology;
    .local p1, "bestMatch":Lj$/time/chrono/Chronology;
    move p2, v11

    move-object v1, p1

    move v2, p2

    .end local v2    # "matchLen":I
    .local p2, "matchLen":I
    goto :goto_2

    .line 4728
    .end local v6    # "context":Lj$/time/format/DateTimeParseContext;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v8    # "position":I
    .restart local v1    # "bestMatch":Lj$/time/chrono/Chronology;
    .restart local v2    # "matchLen":I
    .local p1, "context":Lj$/time/format/DateTimeParseContext;
    .local p2, "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_1
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 4732
    .end local v4    # "chrono":Lj$/time/chrono/Chronology;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "nameLen":I
    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v6    # "context":Lj$/time/format/DateTimeParseContext;
    .restart local v7    # "text":Ljava/lang/CharSequence;
    .restart local v8    # "position":I
    :cond_2
    :goto_2
    move-object p1, v6

    move-object p2, v7

    move p3, v8

    goto :goto_0

    .line 4733
    .end local v6    # "context":Lj$/time/format/DateTimeParseContext;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v8    # "position":I
    .restart local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_3
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v6    # "context":Lj$/time/format/DateTimeParseContext;
    .restart local v7    # "text":Ljava/lang/CharSequence;
    .restart local v8    # "position":I
    if-nez v1, :cond_4

    .line 4734
    not-int p1, v8

    return p1

    .line 4736
    :cond_4
    invoke-virtual {v6, v1}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/chrono/Chronology;)V

    .line 4737
    add-int p3, v8, v2

    return p3

    .line 4714
    .end local v0    # "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    .end local v1    # "bestMatch":Lj$/time/chrono/Chronology;
    .end local v2    # "matchLen":I
    .end local v6    # "context":Lj$/time/format/DateTimeParseContext;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v8    # "position":I
    .restart local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_5
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 4715
    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v6    # "context":Lj$/time/format/DateTimeParseContext;
    .restart local v7    # "text":Ljava/lang/CharSequence;
    .restart local v8    # "position":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
