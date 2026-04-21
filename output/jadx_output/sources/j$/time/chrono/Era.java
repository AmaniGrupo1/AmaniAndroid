package j$.time.chrono;

import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.TextStyle;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQueries;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.UnsupportedTemporalTypeException;
import j$.time.temporal.ValueRange;
import java.util.Locale;

/* JADX INFO: loaded from: classes19.dex */
public interface Era extends TemporalAccessor, TemporalAdjuster {
    int getValue();

    @Override // j$.time.temporal.TemporalAccessor
    default boolean isSupported(TemporalField field) {
        return field instanceof ChronoField ? field == ChronoField.ERA : field != null && field.isSupportedBy(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    default ValueRange range(TemporalField field) {
        return super.range(field);
    }

    @Override // j$.time.temporal.TemporalAccessor
    default int get(TemporalField field) {
        if (field == ChronoField.ERA) {
            return getValue();
        }
        return super.get(field);
    }

    @Override // j$.time.temporal.TemporalAccessor
    default long getLong(TemporalField field) {
        if (field == ChronoField.ERA) {
            return getValue();
        }
        if (field instanceof ChronoField) {
            throw new UnsupportedTemporalTypeException("Unsupported field: " + field);
        }
        return field.getFrom(this);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.temporal.TemporalQuery != java.time.temporal.TemporalQuery<R> */
    @Override // j$.time.temporal.TemporalAccessor
    default <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.ERAS;
        }
        return (R) super.query(temporalQuery);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    default Temporal adjustInto(Temporal temporal) {
        return temporal.with(ChronoField.ERA, getValue());
    }

    default String getDisplayName(TextStyle style, Locale locale) {
        return new DateTimeFormatterBuilder().appendText(ChronoField.ERA, style).toFormatter(locale).format(this);
    }
}
