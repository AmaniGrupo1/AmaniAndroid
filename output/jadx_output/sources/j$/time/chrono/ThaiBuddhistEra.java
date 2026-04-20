package j$.time.chrono;

import j$.time.DateTimeException;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.TextStyle;
import j$.time.temporal.ChronoField;
import java.util.Locale;

/* JADX INFO: loaded from: classes19.dex */
public enum ThaiBuddhistEra implements Era {
    BEFORE_BE,
    BE;

    public static ThaiBuddhistEra of(int thaiBuddhistEra) {
        switch (thaiBuddhistEra) {
            case 0:
                return BEFORE_BE;
            case 1:
                return BE;
            default:
                throw new DateTimeException("Invalid era: " + thaiBuddhistEra);
        }
    }

    @Override // j$.time.chrono.Era
    public int getValue() {
        return ordinal();
    }

    @Override // j$.time.chrono.Era
    public String getDisplayName(TextStyle style, Locale locale) {
        return new DateTimeFormatterBuilder().appendText(ChronoField.ERA, style).toFormatter(locale).withChronology(ThaiBuddhistChronology.INSTANCE).format(this == BE ? ThaiBuddhistDate.of(1, 1, 1) : ThaiBuddhistDate.of(0, 1, 1));
    }
}
