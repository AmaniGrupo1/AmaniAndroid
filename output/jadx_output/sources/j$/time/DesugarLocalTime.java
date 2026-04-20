package j$.time;

import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public final class DesugarLocalTime {
    static final long NANOS_PER_SECOND = 1000000000;
    static final int SECONDS_PER_DAY = 86400;

    /* JADX INFO: renamed from: j$.time.DesugarLocalTime$0, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass0 {
        public static /* synthetic */ int m(long j, int i) {
            return (int) Math.floorMod(j, i);
        }
    }

    private DesugarLocalTime() {
    }

    public static long toEpochSecond(LocalTime receiver, LocalDate date, ZoneOffset offset) {
        Objects.requireNonNull(date, "date");
        Objects.requireNonNull(offset, "offset");
        long epochDay = date.toEpochDay();
        long secs = (86400 * epochDay) + ((long) receiver.toSecondOfDay());
        return secs - ((long) offset.getTotalSeconds());
    }

    public static LocalTime ofInstant(Instant instant, ZoneId zone) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zone, "zone");
        ZoneOffset offset = zone.getRules().getOffset(instant);
        long localSecond = instant.getEpochSecond() + ((long) offset.getTotalSeconds());
        int secsOfDay = AnonymousClass0.m(localSecond, SECONDS_PER_DAY);
        return LocalTime.ofNanoOfDay((((long) secsOfDay) * 1000000000) + ((long) instant.getNano()));
    }
}
