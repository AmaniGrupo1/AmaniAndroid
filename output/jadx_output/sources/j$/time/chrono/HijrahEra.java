package j$.time.chrono;

import j$.time.DateTimeException;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.TextStyle;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalField;
import j$.time.temporal.ValueRange;
import java.util.Locale;

/* JADX INFO: loaded from: classes19.dex */
public enum HijrahEra implements Era {
    AH;

    public static HijrahEra of(int hijrahEra) {
        if (hijrahEra == 1) {
            return AH;
        }
        throw new DateTimeException("Invalid era: " + hijrahEra);
    }

    @Override // j$.time.chrono.Era
    public int getValue() {
        return 1;
    }

    @Override // j$.time.chrono.Era, j$.time.temporal.TemporalAccessor
    public ValueRange range(TemporalField field) {
        if (field == ChronoField.ERA) {
            return ValueRange.of(1L, 1L);
        }
        return super.range(field);
    }

    @Override // j$.time.chrono.Era
    public String getDisplayName(TextStyle style, Locale locale) {
        return new DateTimeFormatterBuilder().appendText(ChronoField.ERA, style).toFormatter(locale).withChronology(HijrahChronology.INSTANCE).format(HijrahDate.now());
    }
}
