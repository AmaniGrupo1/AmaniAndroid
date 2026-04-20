package j$.time.chrono;

import androidx.exifinterface.media.ExifInterface;
import j$.time.DateTimeException;
import j$.time.LocalDate;
import j$.time.Year;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.TextStyle;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalField;
import j$.time.temporal.ValueRange;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public final class JapaneseEra implements Era, Serializable {
    static final int ERA_OFFSET = 2;
    private static final long serialVersionUID = 1466499369062886794L;
    private final transient String abbreviation;
    private final transient int eraValue;
    private final transient String name;
    private final transient LocalDate since;
    public static final JapaneseEra MEIJI = new JapaneseEra(-1, LocalDate.of(1868, 1, 1), "Meiji", "M");
    public static final JapaneseEra TAISHO = new JapaneseEra(0, LocalDate.of(1912, 7, 30), "Taisho", ExifInterface.GPS_DIRECTION_TRUE);
    public static final JapaneseEra SHOWA = new JapaneseEra(1, LocalDate.of(1926, 12, 25), "Showa", ExifInterface.LATITUDE_SOUTH);
    public static final JapaneseEra HEISEI = new JapaneseEra(2, LocalDate.of(1989, 1, 8), "Heisei", "H");
    public static final JapaneseEra REIWA = new JapaneseEra(3, LocalDate.of(2019, 5, 1), "Reiwa", "R");
    private static final int N_ERA_CONSTANTS = REIWA.getValue() + 2;
    private static final JapaneseEra[] KNOWN_ERAS = new JapaneseEra[N_ERA_CONSTANTS];

    static {
        KNOWN_ERAS[0] = MEIJI;
        KNOWN_ERAS[1] = TAISHO;
        KNOWN_ERAS[2] = SHOWA;
        KNOWN_ERAS[3] = HEISEI;
        KNOWN_ERAS[4] = REIWA;
    }

    static JapaneseEra getCurrentEra() {
        return KNOWN_ERAS[KNOWN_ERAS.length - 1];
    }

    static long shortestYearsOfEra() {
        int min = (Year.MAX_VALUE - getCurrentEra().since.getYear()) + 1;
        int lastStartYear = KNOWN_ERAS[0].since.getYear();
        for (int i = 1; i < KNOWN_ERAS.length; i++) {
            JapaneseEra era = KNOWN_ERAS[i];
            int lastYearsOfEra = (era.since.getYear() - lastStartYear) + 1;
            min = Math.min(min, lastYearsOfEra);
            lastStartYear = era.since.getYear();
        }
        return min;
    }

    static long shortestDaysOfYear() {
        long min = ChronoField.DAY_OF_YEAR.range().getSmallestMaximum();
        for (JapaneseEra era : KNOWN_ERAS) {
            min = Math.min(min, (era.since.lengthOfYear() - era.since.getDayOfYear()) + 1);
            if (era.next() != null) {
                min = Math.min(min, era.next().since.getDayOfYear() - 1);
            }
        }
        return min;
    }

    private JapaneseEra(int eraValue, LocalDate since, String name, String abbreviation) {
        this.eraValue = eraValue;
        this.since = since;
        this.name = name;
        this.abbreviation = abbreviation;
    }

    LocalDate getSince() {
        return this.since;
    }

    public static JapaneseEra of(int japaneseEra) {
        int i = ordinal(japaneseEra);
        if (i < 0 || i >= KNOWN_ERAS.length) {
            throw new DateTimeException("Invalid era: " + japaneseEra);
        }
        return KNOWN_ERAS[i];
    }

    public static JapaneseEra valueOf(String japaneseEra) {
        Objects.requireNonNull(japaneseEra, "japaneseEra");
        for (JapaneseEra era : KNOWN_ERAS) {
            if (era.getName().equals(japaneseEra)) {
                return era;
            }
        }
        throw new IllegalArgumentException("japaneseEra is invalid");
    }

    public static JapaneseEra[] values() {
        return (JapaneseEra[]) Arrays.copyOf(KNOWN_ERAS, KNOWN_ERAS.length);
    }

    @Override // j$.time.chrono.Era
    public String getDisplayName(TextStyle style, Locale locale) {
        if (getValue() <= N_ERA_CONSTANTS - 2) {
            return new DateTimeFormatterBuilder().appendText(ChronoField.ERA, style).toFormatter(locale).withChronology(JapaneseChronology.INSTANCE).format(this == MEIJI ? JapaneseDate.MEIJI_6_ISODATE : this.since);
        }
        Objects.requireNonNull(locale, "locale");
        return style.asNormal() == TextStyle.NARROW ? getAbbreviation() : getName();
    }

    static JapaneseEra from(LocalDate date) {
        if (date.isBefore(JapaneseDate.MEIJI_6_ISODATE)) {
            throw new DateTimeException("JapaneseDate before Meiji 6 are not supported");
        }
        for (int i = KNOWN_ERAS.length - 1; i >= 0; i--) {
            JapaneseEra era = KNOWN_ERAS[i];
            if (date.compareTo((ChronoLocalDate) era.since) >= 0) {
                return era;
            }
        }
        return null;
    }

    private static int ordinal(int eraValue) {
        return (eraValue + 2) - 1;
    }

    @Override // j$.time.chrono.Era
    public int getValue() {
        return this.eraValue;
    }

    @Override // j$.time.chrono.Era, j$.time.temporal.TemporalAccessor
    public ValueRange range(TemporalField field) {
        if (field == ChronoField.ERA) {
            return JapaneseChronology.INSTANCE.range(ChronoField.ERA);
        }
        return super.range(field);
    }

    String getAbbreviation() {
        return this.abbreviation;
    }

    String getName() {
        return this.name;
    }

    JapaneseEra next() {
        if (this == getCurrentEra()) {
            return null;
        }
        return of(this.eraValue + 1);
    }

    public String toString() {
        return getName();
    }

    private void readObject(ObjectInputStream s) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new Ser((byte) 5, this);
    }

    void writeExternal(DataOutput out) throws IOException {
        out.writeByte(getValue());
    }

    static JapaneseEra readExternal(DataInput in) throws IOException {
        byte eraValue = in.readByte();
        return of(eraValue);
    }
}
