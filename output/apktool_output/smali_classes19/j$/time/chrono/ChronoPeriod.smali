.class public interface abstract Lj$/time/chrono/ChronoPeriod;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Lj$/time/temporal/TemporalAmount;


# direct methods
.method public static between(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;
    .locals 1
    .param p0, "startDateInclusive"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "endDateExclusive"    # Lj$/time/chrono/ChronoLocalDate;

    .line 117
    const-string v0, "startDateInclusive"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "endDateExclusive"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDate;->until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Lj$/time/temporal/TemporalUnit;)J
.end method

.method public abstract getChronology()Lj$/time/chrono/Chronology;
.end method

.method public abstract getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public isNegative()Z
    .locals 6

    .line 187
    invoke-interface {p0}, Lj$/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/temporal/TemporalUnit;

    .line 188
    .local v1, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v1}, Lj$/time/chrono/ChronoPeriod;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    .end local v1    # "unit":Lj$/time/temporal/TemporalUnit;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .locals 6

    .line 173
    invoke-interface {p0}, Lj$/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/temporal/TemporalUnit;

    .line 174
    .local v1, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v1}, Lj$/time/chrono/ChronoPeriod;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 175
    const/4 v0, 0x0

    return v0

    .line 177
    .end local v1    # "unit":Lj$/time/temporal/TemporalUnit;
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract multipliedBy(I)Lj$/time/chrono/ChronoPeriod;
.end method

.method public negated()Lj$/time/chrono/ChronoPeriod;
    .locals 1

    .line 256
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lj$/time/chrono/ChronoPeriod;->multipliedBy(I)Lj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public abstract normalized()Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
