package j$.util;

import j$.time.Duration;
import j$.time.Instant;
import j$.time.ZonedDateTime;
import j$.time.temporal.ChronoField;
import java.util.Date;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes19.dex */
public final /* synthetic */ class DesugarGregorianCalendar {
    private DesugarGregorianCalendar() {
    }

    public static ZonedDateTime toZonedDateTime(GregorianCalendar gregorianCalendar) {
        return ZonedDateTime.ofInstant(Instant.ofEpochMilli(gregorianCalendar.getTimeInMillis()), TimeZoneRetargetClass.toZoneId(gregorianCalendar.getTimeZone()));
    }

    public static GregorianCalendar from(ZonedDateTime zdt) {
        GregorianCalendar cal = new GregorianCalendar(DesugarTimeZone.getTimeZone(zdt.getZone()));
        cal.setGregorianChange(new Date(Long.MIN_VALUE));
        cal.setFirstDayOfWeek(2);
        cal.setMinimalDaysInFirstWeek(4);
        try {
            cal.setTimeInMillis(Math.addExact(Duration.AnonymousClass0.m(zdt.toEpochSecond(), 1000), zdt.get(ChronoField.MILLI_OF_SECOND)));
            return cal;
        } catch (ArithmeticException ex) {
            throw new IllegalArgumentException(ex);
        }
    }
}
