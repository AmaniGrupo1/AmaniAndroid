package j$.time;

import androidx.media3.common.C;
import com.google.common.base.Ascii;
import j$.time.Duration;
import j$.time.chrono.Chronology;
import j$.time.chrono.IsoChronology;
import j$.time.format.DateTimeFormatter;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.SignStyle;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalAmount;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQueries;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.time.temporal.UnsupportedTemporalTypeException;
import j$.time.temporal.ValueRange;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public final class Year implements Temporal, TemporalAdjuster, Comparable<Year>, Serializable {
    public static final int MAX_VALUE = 999999999;
    public static final int MIN_VALUE = -999999999;
    private static final DateTimeFormatter PARSER = new DateTimeFormatterBuilder().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).toFormatter();
    private static final long serialVersionUID = -23038383694477807L;
    private final int year;

    public static Year now() {
        return now(Clock.systemDefaultZone());
    }

    public static Year now(ZoneId zone) {
        return now(Clock.system(zone));
    }

    public static Year now(Clock clock) {
        LocalDate now = LocalDate.now(clock);
        return of(now.getYear());
    }

    public static Year of(int isoYear) {
        ChronoField.YEAR.checkValidValue(isoYear);
        return new Year(isoYear);
    }

    public static Year from(TemporalAccessor temporal) {
        if (temporal instanceof Year) {
            return (Year) temporal;
        }
        Objects.requireNonNull(temporal, "temporal");
        try {
            if (!IsoChronology.INSTANCE.equals(Chronology.from(temporal))) {
                temporal = LocalDate.from(temporal);
            }
            return of(temporal.get(ChronoField.YEAR));
        } catch (DateTimeException ex) {
            throw new DateTimeException("Unable to obtain Year from TemporalAccessor: " + temporal + " of type " + temporal.getClass().getName(), ex);
        }
    }

    public static Year parse(CharSequence text) {
        return parse(text, PARSER);
    }

    public static Year parse(CharSequence text, DateTimeFormatter formatter) {
        Objects.requireNonNull(formatter, "formatter");
        return (Year) formatter.parse(text, new TemporalQuery() { // from class: j$.time.Year.0
            @Override // j$.time.temporal.TemporalQuery
            public final Object queryFrom(TemporalAccessor temporalAccessor) {
                return Year.from(temporalAccessor);
            }
        });
    }

    public static boolean isLeap(long year) {
        return (3 & year) == 0 && (year % 100 != 0 || year % 400 == 0);
    }

    private Year(int year) {
        this.year = year;
    }

    public int getValue() {
        return this.year;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public boolean isSupported(TemporalField field) {
        return field instanceof ChronoField ? field == ChronoField.YEAR || field == ChronoField.YEAR_OF_ERA || field == ChronoField.ERA : field != null && field.isSupportedBy(this);
    }

    @Override // j$.time.temporal.Temporal
    public boolean isSupported(TemporalUnit unit) {
        return unit instanceof ChronoUnit ? unit == ChronoUnit.YEARS || unit == ChronoUnit.DECADES || unit == ChronoUnit.CENTURIES || unit == ChronoUnit.MILLENNIA || unit == ChronoUnit.ERAS : unit != null && unit.isSupportedBy(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public ValueRange range(TemporalField field) {
        if (field == ChronoField.YEAR_OF_ERA) {
            return ValueRange.of(1L, this.year <= 0 ? C.NANOS_PER_SECOND : 999999999L);
        }
        return super.range(field);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public int get(TemporalField field) {
        return range(field).checkValidIntValue(getLong(field), field);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public long getLong(TemporalField field) {
        if (field instanceof ChronoField) {
            switch ((ChronoField) field) {
                case YEAR_OF_ERA:
                    int i = this.year;
                    int i2 = this.year;
                    if (i < 1) {
                        i2 = 1 - i2;
                    }
                    return i2;
                case YEAR:
                    return this.year;
                case ERA:
                    return this.year < 1 ? 0 : 1;
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + field);
            }
        }
        return field.getFrom(this);
    }

    public boolean isLeap() {
        return isLeap(this.year);
    }

    public boolean isValidMonthDay(MonthDay monthDay) {
        return monthDay != null && monthDay.isValidYear(this.year);
    }

    public int length() {
        return isLeap() ? 366 : 365;
    }

    @Override // j$.time.temporal.Temporal
    public Year with(TemporalAdjuster adjuster) {
        return (Year) adjuster.adjustInto(this);
    }

    @Override // j$.time.temporal.Temporal
    public Year with(TemporalField field, long newValue) {
        if (field instanceof ChronoField) {
            ChronoField f = (ChronoField) field;
            f.checkValidValue(newValue);
            switch (f) {
                case YEAR_OF_ERA:
                    return of((int) (this.year < 1 ? 1 - newValue : newValue));
                case YEAR:
                    return of((int) newValue);
                case ERA:
                    return getLong(ChronoField.ERA) == newValue ? this : of(1 - this.year);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + field);
            }
        }
        return (Year) field.adjustInto(this, newValue);
    }

    @Override // j$.time.temporal.Temporal
    public Year plus(TemporalAmount amountToAdd) {
        return (Year) amountToAdd.addTo(this);
    }

    @Override // j$.time.temporal.Temporal
    public Year plus(long amountToAdd, TemporalUnit unit) {
        if (unit instanceof ChronoUnit) {
            switch ((ChronoUnit) unit) {
                case YEARS:
                    return plusYears(amountToAdd);
                case DECADES:
                    return plusYears(Duration.AnonymousClass0.m(amountToAdd, 10));
                case CENTURIES:
                    return plusYears(Duration.AnonymousClass0.m(amountToAdd, 100));
                case MILLENNIA:
                    return plusYears(Duration.AnonymousClass0.m(amountToAdd, 1000));
                case ERAS:
                    return with((TemporalField) ChronoField.ERA, Math.addExact(getLong(ChronoField.ERA), amountToAdd));
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + unit);
            }
        }
        return (Year) unit.addTo(this, amountToAdd);
    }

    public Year plusYears(long yearsToAdd) {
        if (yearsToAdd == 0) {
            return this;
        }
        return of(ChronoField.YEAR.checkValidIntValue(((long) this.year) + yearsToAdd));
    }

    @Override // j$.time.temporal.Temporal
    public Year minus(TemporalAmount amountToSubtract) {
        return (Year) amountToSubtract.subtractFrom(this);
    }

    @Override // j$.time.temporal.Temporal
    public Year minus(long amountToSubtract, TemporalUnit unit) {
        return amountToSubtract == Long.MIN_VALUE ? plus(Long.MAX_VALUE, unit).plus(1L, unit) : plus(-amountToSubtract, unit);
    }

    public Year minusYears(long yearsToSubtract) {
        return yearsToSubtract == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-yearsToSubtract);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.temporal.TemporalQuery != java.time.temporal.TemporalQuery<R> */
    @Override // j$.time.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.chronology()) {
            return (R) IsoChronology.INSTANCE;
        }
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.YEARS;
        }
        return (R) super.query(temporalQuery);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public Temporal adjustInto(Temporal temporal) {
        if (!Chronology.from(temporal).equals(IsoChronology.INSTANCE)) {
            throw new DateTimeException("Adjustment only supported on ISO date-time");
        }
        return temporal.with(ChronoField.YEAR, this.year);
    }

    @Override // j$.time.temporal.Temporal
    public long until(Temporal endExclusive, TemporalUnit unit) {
        Year end = from(endExclusive);
        if (unit instanceof ChronoUnit) {
            long yearsUntil = ((long) end.year) - ((long) this.year);
            switch ((ChronoUnit) unit) {
                case YEARS:
                    return yearsUntil;
                case DECADES:
                    return yearsUntil / 10;
                case CENTURIES:
                    return yearsUntil / 100;
                case MILLENNIA:
                    return yearsUntil / 1000;
                case ERAS:
                    return end.getLong(ChronoField.ERA) - getLong(ChronoField.ERA);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + unit);
            }
        }
        return unit.between(this, end);
    }

    public String format(DateTimeFormatter formatter) {
        Objects.requireNonNull(formatter, "formatter");
        return formatter.format(this);
    }

    public LocalDate atDay(int dayOfYear) {
        return LocalDate.ofYearDay(this.year, dayOfYear);
    }

    public YearMonth atMonth(Month month) {
        return YearMonth.of(this.year, month);
    }

    public YearMonth atMonth(int month) {
        return YearMonth.of(this.year, month);
    }

    public LocalDate atMonthDay(MonthDay monthDay) {
        return monthDay.atYear(this.year);
    }

    @Override // java.lang.Comparable
    public int compareTo(Year other) {
        return this.year - other.year;
    }

    public boolean isAfter(Year other) {
        return this.year > other.year;
    }

    public boolean isBefore(Year other) {
        return this.year < other.year;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Year) && this.year == ((Year) obj).year;
    }

    public int hashCode() {
        return this.year;
    }

    public String toString() {
        return Integer.toString(this.year);
    }

    private Object writeReplace() {
        return new Ser(Ascii.VT, this);
    }

    private void readObject(ObjectInputStream s) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    void writeExternal(DataOutput out) {
        out.writeInt(this.year);
    }

    static Year readExternal(DataInput in) {
        return of(in.readInt());
    }
}
