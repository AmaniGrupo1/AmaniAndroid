package j$.time.chrono;

import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.format.DateTimeFormatter;
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
import java.io.Serializable;
import java.util.Comparator;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public interface ChronoZonedDateTime<D extends ChronoLocalDate> extends Temporal, Comparable<ChronoZonedDateTime<?>> {

    /* JADX INFO: renamed from: j$.time.chrono.ChronoZonedDateTime$0, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass0 implements Comparator, Serializable {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ChronoZonedDateTime.lambda$timeLineOrder$f56e6d02$1((ChronoZonedDateTime) obj, (ChronoZonedDateTime) obj2);
        }
    }

    boolean equals(Object obj);

    ZoneOffset getOffset();

    ZoneId getZone();

    int hashCode();

    @Override // j$.time.temporal.TemporalAccessor
    boolean isSupported(TemporalField temporalField);

    @Override // j$.time.temporal.Temporal
    ChronoZonedDateTime<D> plus(long j, TemporalUnit temporalUnit);

    ChronoLocalDateTime<D> toLocalDateTime();

    String toString();

    @Override // j$.time.temporal.Temporal
    ChronoZonedDateTime<D> with(TemporalField temporalField, long j);

    ChronoZonedDateTime<D> withEarlierOffsetAtOverlap();

    ChronoZonedDateTime<D> withLaterOffsetAtOverlap();

    ChronoZonedDateTime<D> withZoneSameInstant(ZoneId zoneId);

    ChronoZonedDateTime<D> withZoneSameLocal(ZoneId zoneId);

    static Comparator<ChronoZonedDateTime<?>> timeLineOrder() {
        return new AnonymousClass0();
    }

    static /* synthetic */ int lambda$timeLineOrder$f56e6d02$1(ChronoZonedDateTime dateTime1, ChronoZonedDateTime dateTime2) {
        int cmp = Long.compare(dateTime1.toEpochSecond(), dateTime2.toEpochSecond());
        if (cmp == 0) {
            return Long.compare(dateTime1.toLocalTime().getNano(), dateTime2.toLocalTime().getNano());
        }
        return cmp;
    }

    static ChronoZonedDateTime<?> from(TemporalAccessor temporal) {
        if (temporal instanceof ChronoZonedDateTime) {
            return (ChronoZonedDateTime) temporal;
        }
        Objects.requireNonNull(temporal, "temporal");
        Chronology chrono = (Chronology) temporal.query(TemporalQueries.chronology());
        if (chrono == null) {
            throw new DateTimeException("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + temporal.getClass());
        }
        return chrono.zonedDateTime(temporal);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.TemporalAccessor
    default ValueRange range(TemporalField field) {
        if (field instanceof ChronoField) {
            if (field == ChronoField.INSTANT_SECONDS || field == ChronoField.OFFSET_SECONDS) {
                return field.range();
            }
            return toLocalDateTime().range(field);
        }
        return field.rangeRefinedBy(this);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.TemporalAccessor
    default int get(TemporalField field) {
        if (field instanceof ChronoField) {
            switch ((ChronoField) field) {
                case INSTANT_SECONDS:
                    throw new UnsupportedTemporalTypeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
                case OFFSET_SECONDS:
                    return getOffset().getTotalSeconds();
                default:
                    return toLocalDateTime().get(field);
            }
        }
        return super.get(field);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.TemporalAccessor
    default long getLong(TemporalField field) {
        if (field instanceof ChronoField) {
            switch ((ChronoField) field) {
                case INSTANT_SECONDS:
                    return toEpochSecond();
                case OFFSET_SECONDS:
                    return getOffset().getTotalSeconds();
                default:
                    return toLocalDateTime().getLong(field);
            }
        }
        return field.getFrom(this);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default D toLocalDate() {
        return (D) toLocalDateTime().toLocalDate();
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default LocalTime toLocalTime() {
        return toLocalDateTime().toLocalTime();
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default Chronology getChronology() {
        return toLocalDate().getChronology();
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.Temporal
    default boolean isSupported(TemporalUnit unit) {
        return unit instanceof ChronoUnit ? unit != ChronoUnit.FOREVER : unit != null && unit.isSupportedBy(this);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.Temporal
    default ChronoZonedDateTime<D> with(TemporalAdjuster adjuster) {
        return ChronoZonedDateTimeImpl.ensureValid(getChronology(), super.with(adjuster));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.Temporal
    default ChronoZonedDateTime<D> plus(TemporalAmount amount) {
        return ChronoZonedDateTimeImpl.ensureValid(getChronology(), super.plus(amount));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.Temporal
    default ChronoZonedDateTime<D> minus(TemporalAmount amount) {
        return ChronoZonedDateTimeImpl.ensureValid(getChronology(), super.minus(amount));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.Temporal
    default ChronoZonedDateTime<D> minus(long amountToSubtract, TemporalUnit unit) {
        return ChronoZonedDateTimeImpl.ensureValid(getChronology(), super.minus(amountToSubtract, unit));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    /* JADX WARN: Generic types in debug info not equals: j$.time.temporal.TemporalQuery != java.time.temporal.TemporalQuery<R> */
    @Override // j$.time.temporal.TemporalAccessor
    default <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.zone() || temporalQuery == TemporalQueries.zoneId()) {
            return (R) getZone();
        }
        if (temporalQuery == TemporalQueries.offset()) {
            return (R) getOffset();
        }
        if (temporalQuery == TemporalQueries.localTime()) {
            return (R) toLocalTime();
        }
        if (temporalQuery == TemporalQueries.chronology()) {
            return (R) getChronology();
        }
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.NANOS;
        }
        return temporalQuery.queryFrom(this);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default String format(DateTimeFormatter formatter) {
        Objects.requireNonNull(formatter, "formatter");
        return formatter.format(this);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default Instant toInstant() {
        return Instant.ofEpochSecond(toEpochSecond(), toLocalTime().getNano());
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default long toEpochSecond() {
        long epochDay = toLocalDate().toEpochDay();
        long secs = (86400 * epochDay) + ((long) toLocalTime().toSecondOfDay());
        return secs - ((long) getOffset().getTotalSeconds());
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<?> */
    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // java.lang.Comparable
    default int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        int cmp = Long.compare(toEpochSecond(), chronoZonedDateTime.toEpochSecond());
        if (cmp == 0) {
            int cmp2 = toLocalTime().getNano() - chronoZonedDateTime.toLocalTime().getNano();
            if (cmp2 == 0) {
                int cmp3 = toLocalDateTime().compareTo(chronoZonedDateTime.toLocalDateTime());
                if (cmp3 == 0) {
                    int cmp4 = getZone().getId().compareTo(chronoZonedDateTime.getZone().getId());
                    if (cmp4 == 0) {
                        return getChronology().compareTo(chronoZonedDateTime.getChronology());
                    }
                    return cmp4;
                }
                return cmp3;
            }
            return cmp2;
        }
        return cmp;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<?> */
    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default boolean isBefore(ChronoZonedDateTime<?> chronoZonedDateTime) {
        long thisEpochSec = toEpochSecond();
        long otherEpochSec = chronoZonedDateTime.toEpochSecond();
        return thisEpochSec < otherEpochSec || (thisEpochSec == otherEpochSec && toLocalTime().getNano() < chronoZonedDateTime.toLocalTime().getNano());
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<?> */
    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default boolean isAfter(ChronoZonedDateTime<?> chronoZonedDateTime) {
        long thisEpochSec = toEpochSecond();
        long otherEpochSec = chronoZonedDateTime.toEpochSecond();
        return thisEpochSec > otherEpochSec || (thisEpochSec == otherEpochSec && toLocalTime().getNano() > chronoZonedDateTime.toLocalTime().getNano());
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<?> */
    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    default boolean isEqual(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return toEpochSecond() == chronoZonedDateTime.toEpochSecond() && toLocalTime().getNano() == chronoZonedDateTime.toLocalTime().getNano();
    }
}
