package j$.time.chrono;

import j$.time.Duration;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalAmount;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalUnit;
import j$.time.temporal.UnsupportedTemporalTypeException;
import j$.time.temporal.ValueRange;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
abstract class ChronoLocalDateImpl<D extends ChronoLocalDate> implements ChronoLocalDate, Temporal, TemporalAdjuster, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    abstract D plusDays(long j);

    abstract D plusMonths(long j);

    abstract D plusYears(long j);

    static <D extends ChronoLocalDate> D ensureValid(Chronology chrono, Temporal temporal) {
        D d = (D) temporal;
        if (!chrono.equals(d.getChronology())) {
            throw new ClassCastException("Chronology mismatch, expected: " + chrono.getId() + ", actual: " + d.getChronology().getId());
        }
        return d;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    ChronoLocalDateImpl() {
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public D with(TemporalAdjuster temporalAdjuster) {
        return (D) super.with(temporalAdjuster);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public D with(TemporalField temporalField, long j) {
        return (D) super.with(temporalField, j);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public D plus(TemporalAmount temporalAmount) {
        return (D) super.plus(temporalAmount);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public D plus(long j, TemporalUnit temporalUnit) {
        if (temporalUnit instanceof ChronoUnit) {
            switch ((ChronoUnit) temporalUnit) {
                case DAYS:
                    return (D) plusDays(j);
                case WEEKS:
                    return (D) plusDays(Duration.AnonymousClass0.m(j, 7));
                case MONTHS:
                    return (D) plusMonths(j);
                case YEARS:
                    return (D) plusYears(j);
                case DECADES:
                    return (D) plusYears(Duration.AnonymousClass0.m(j, 10));
                case CENTURIES:
                    return (D) plusYears(Duration.AnonymousClass0.m(j, 100));
                case MILLENNIA:
                    return (D) plusYears(Duration.AnonymousClass0.m(j, 1000));
                case ERAS:
                    return (D) with((TemporalField) ChronoField.ERA, Math.addExact(getLong(ChronoField.ERA), j));
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
            }
        }
        return (D) super.plus(j, temporalUnit);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public D minus(TemporalAmount temporalAmount) {
        return (D) super.minus(temporalAmount);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public D minus(long j, TemporalUnit temporalUnit) {
        return (D) super.minus(j, temporalUnit);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    D plusWeeks(long j) {
        return (D) plusDays(Duration.AnonymousClass0.m(j, 7));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    D minusYears(long j) {
        return j == Long.MIN_VALUE ? (D) ((ChronoLocalDateImpl) plusYears(Long.MAX_VALUE)).plusYears(1L) : (D) plusYears(-j);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    D minusMonths(long j) {
        return j == Long.MIN_VALUE ? (D) ((ChronoLocalDateImpl) plusMonths(Long.MAX_VALUE)).plusMonths(1L) : (D) plusMonths(-j);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    D minusWeeks(long j) {
        return j == Long.MIN_VALUE ? (D) ((ChronoLocalDateImpl) plusWeeks(Long.MAX_VALUE)).plusWeeks(1L) : (D) plusWeeks(-j);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    D minusDays(long j) {
        return j == Long.MIN_VALUE ? (D) ((ChronoLocalDateImpl) plusDays(Long.MAX_VALUE)).plusDays(1L) : (D) plusDays(-j);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public long until(Temporal endExclusive, TemporalUnit unit) {
        Objects.requireNonNull(endExclusive, "endExclusive");
        ChronoLocalDate end = getChronology().date(endExclusive);
        if (unit instanceof ChronoUnit) {
            switch ((ChronoUnit) unit) {
                case DAYS:
                    return daysUntil(end);
                case WEEKS:
                    return daysUntil(end) / 7;
                case MONTHS:
                    return monthsUntil(end);
                case YEARS:
                    return monthsUntil(end) / 12;
                case DECADES:
                    return monthsUntil(end) / 120;
                case CENTURIES:
                    return monthsUntil(end) / 1200;
                case MILLENNIA:
                    return monthsUntil(end) / 12000;
                case ERAS:
                    return end.getLong(ChronoField.ERA) - getLong(ChronoField.ERA);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + unit);
            }
        }
        Objects.requireNonNull(unit, "unit");
        return unit.between(this, end);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    private long daysUntil(ChronoLocalDate end) {
        return end.toEpochDay() - toEpochDay();
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    private long monthsUntil(ChronoLocalDate end) {
        ValueRange range = getChronology().range(ChronoField.MONTH_OF_YEAR);
        if (range.getMaximum() != 12) {
            throw new IllegalStateException("ChronoLocalDateImpl only supports Chronologies with 12 months per year");
        }
        long packed1 = (getLong(ChronoField.PROLEPTIC_MONTH) * 32) + ((long) get(ChronoField.DAY_OF_MONTH));
        long packed2 = (end.getLong(ChronoField.PROLEPTIC_MONTH) * 32) + ((long) end.get(ChronoField.DAY_OF_MONTH));
        return (packed2 - packed1) / 32;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDate) && compareTo((ChronoLocalDate) obj) == 0;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate
    public int hashCode() {
        long epDay = toEpochDay();
        return getChronology().hashCode() ^ ((int) ((epDay >>> 32) ^ epDay));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateImpl != java.time.chrono.ChronoLocalDateImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoLocalDate
    public String toString() {
        long yoe = getLong(ChronoField.YEAR_OF_ERA);
        long moy = getLong(ChronoField.MONTH_OF_YEAR);
        long dom = getLong(ChronoField.DAY_OF_MONTH);
        StringBuilder buf = new StringBuilder(30);
        buf.append(getChronology().toString()).append(" ").append(getEra()).append(" ").append(yoe).append(moy < 10 ? "-0" : "-").append(moy).append(dom >= 10 ? "-" : "-0").append(dom);
        return buf.toString();
    }
}
