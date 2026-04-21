package j$.time.temporal;

import j$.time.format.ResolverStyle;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public interface TemporalField {
    <R extends Temporal> R adjustInto(R r, long j);

    TemporalUnit getBaseUnit();

    long getFrom(TemporalAccessor temporalAccessor);

    TemporalUnit getRangeUnit();

    boolean isDateBased();

    boolean isSupportedBy(TemporalAccessor temporalAccessor);

    boolean isTimeBased();

    ValueRange range();

    ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor);

    String toString();

    default String getDisplayName(Locale locale) {
        Objects.requireNonNull(locale, "locale");
        return toString();
    }

    default TemporalAccessor resolve(Map<TemporalField, Long> map, TemporalAccessor partialTemporal, ResolverStyle resolverStyle) {
        return null;
    }
}
