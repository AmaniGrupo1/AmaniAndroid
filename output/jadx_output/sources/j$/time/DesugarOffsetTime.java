package j$.time;

import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public final class DesugarOffsetTime {
    private DesugarOffsetTime() {
    }

    public static long toEpochSecond(OffsetTime receiver, LocalDate date) {
        Objects.requireNonNull(date, "date");
        long epochDay = date.toEpochDay();
        LocalTime time = receiver.toLocalTime();
        long secs = (86400 * epochDay) + ((long) time.toSecondOfDay());
        ZoneOffset offset = receiver.getOffset();
        return secs - ((long) offset.getTotalSeconds());
    }
}
