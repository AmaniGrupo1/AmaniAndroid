package j$.util;

import j$.time.ZonedDateTime;
import java.util.GregorianCalendar;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes19.dex */
public final /* synthetic */ class GregorianCalendarRetargetClass {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ZonedDateTime toZonedDateTime(GregorianCalendar gregorianCalendar) {
        return gregorianCalendar instanceof GregorianCalendarRetargetInterface ? ((GregorianCalendarRetargetInterface) gregorianCalendar).toZonedDateTime() : DesugarGregorianCalendar.toZonedDateTime(gregorianCalendar);
    }
}
