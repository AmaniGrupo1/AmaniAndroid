package j$.time.chrono;

import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAmount;
import j$.time.temporal.TemporalUnit;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public interface ChronoPeriod extends TemporalAmount {
    @Override // j$.time.temporal.TemporalAmount
    Temporal addTo(Temporal temporal);

    boolean equals(Object obj);

    @Override // j$.time.temporal.TemporalAmount
    long get(TemporalUnit temporalUnit);

    Chronology getChronology();

    @Override // j$.time.temporal.TemporalAmount
    List<TemporalUnit> getUnits();

    int hashCode();

    ChronoPeriod minus(TemporalAmount temporalAmount);

    ChronoPeriod multipliedBy(int i);

    ChronoPeriod normalized();

    ChronoPeriod plus(TemporalAmount temporalAmount);

    @Override // j$.time.temporal.TemporalAmount
    Temporal subtractFrom(Temporal temporal);

    String toString();

    static ChronoPeriod between(ChronoLocalDate startDateInclusive, ChronoLocalDate endDateExclusive) {
        Objects.requireNonNull(startDateInclusive, "startDateInclusive");
        Objects.requireNonNull(endDateExclusive, "endDateExclusive");
        return startDateInclusive.until(endDateExclusive);
    }

    default boolean isZero() {
        for (TemporalUnit unit : getUnits()) {
            if (get(unit) != 0) {
                return false;
            }
        }
        return true;
    }

    default boolean isNegative() {
        for (TemporalUnit unit : getUnits()) {
            if (get(unit) < 0) {
                return true;
            }
        }
        return false;
    }

    default ChronoPeriod negated() {
        return multipliedBy(-1);
    }
}
