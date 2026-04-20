package j$.time.temporal;

import j$.time.Duration;
import j$.time.LocalTime;
import j$.time.chrono.ChronoLocalDate;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;

/* JADX INFO: loaded from: classes19.dex */
public interface TemporalUnit {
    <R extends Temporal> R addTo(R r, long j);

    long between(Temporal temporal, Temporal temporal2);

    Duration getDuration();

    boolean isDateBased();

    boolean isDurationEstimated();

    boolean isTimeBased();

    String toString();

    default boolean isSupportedBy(Temporal temporal) {
        if (temporal instanceof LocalTime) {
            return isTimeBased();
        }
        if (temporal instanceof ChronoLocalDate) {
            return isDateBased();
        }
        if ((temporal instanceof ChronoLocalDateTime) || (temporal instanceof ChronoZonedDateTime)) {
            return true;
        }
        try {
            temporal.plus(1L, this);
            return true;
        } catch (UnsupportedTemporalTypeException e) {
            return false;
        } catch (RuntimeException e2) {
            try {
                temporal.plus(-1L, this);
                return true;
            } catch (RuntimeException e3) {
                return false;
            }
        }
    }
}
