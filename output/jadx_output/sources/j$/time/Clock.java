package j$.time;

import androidx.media3.common.C;
import j$.time.temporal.TemporalAmount;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes19.dex */
public abstract class Clock {

    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class VivifiedWrapper extends Clock {
        public final /* synthetic */ java.time.Clock wrappedValue;

        private /* synthetic */ VivifiedWrapper(java.time.Clock clock) {
            this.wrappedValue = clock;
        }

        public static /* synthetic */ Clock convert(java.time.Clock clock) {
            if (clock == null) {
                return null;
            }
            return clock instanceof Wrapper ? Clock.this : new VivifiedWrapper(clock);
        }

        @Override // j$.time.Clock
        public /* synthetic */ boolean equals(Object obj) {
            java.time.Clock clock = this.wrappedValue;
            if (obj instanceof VivifiedWrapper) {
                obj = ((VivifiedWrapper) obj).wrappedValue;
            }
            return clock.equals(obj);
        }

        @Override // j$.time.Clock
        public /* synthetic */ ZoneId getZone() {
            return TimeConversions.convert(this.wrappedValue.getZone());
        }

        @Override // j$.time.Clock
        public /* synthetic */ int hashCode() {
            return this.wrappedValue.hashCode();
        }

        @Override // j$.time.Clock
        public /* synthetic */ Instant instant() {
            return TimeConversions.convert(this.wrappedValue.instant());
        }

        @Override // j$.time.Clock
        public /* synthetic */ long millis() {
            return this.wrappedValue.millis();
        }

        @Override // j$.time.Clock
        public /* synthetic */ Clock withZone(ZoneId zoneId) {
            return convert(this.wrappedValue.withZone(TimeConversions.convert(zoneId)));
        }
    }

    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class Wrapper extends java.time.Clock {
        private /* synthetic */ Wrapper() {
        }

        public static /* synthetic */ java.time.Clock convert(Clock clock) {
            if (clock == null) {
                return null;
            }
            return clock instanceof VivifiedWrapper ? ((VivifiedWrapper) clock).wrappedValue : clock.new Wrapper();
        }

        @Override // java.time.Clock
        public /* synthetic */ boolean equals(Object obj) {
            Clock clock = Clock.this;
            if (obj instanceof Wrapper) {
                obj = Clock.this;
            }
            return clock.equals(obj);
        }

        @Override // java.time.Clock
        public /* synthetic */ java.time.ZoneId getZone() {
            return TimeConversions.convert(Clock.this.getZone());
        }

        @Override // java.time.Clock
        public /* synthetic */ int hashCode() {
            return Clock.this.hashCode();
        }

        @Override // java.time.Clock, java.time.InstantSource
        public /* synthetic */ java.time.Instant instant() {
            return TimeConversions.convert(Clock.this.instant());
        }

        @Override // java.time.Clock, java.time.InstantSource
        public /* synthetic */ long millis() {
            return Clock.this.millis();
        }

        @Override // java.time.Clock, java.time.InstantSource
        public /* synthetic */ java.time.Clock withZone(java.time.ZoneId zoneId) {
            return convert(Clock.this.withZone(TimeConversions.convert(zoneId)));
        }
    }

    public abstract ZoneId getZone();

    public abstract Instant instant();

    public abstract Clock withZone(ZoneId zoneId);

    public static Clock systemUTC() {
        return SystemClock.UTC;
    }

    public static Clock systemDefaultZone() {
        return new SystemClock(ZoneId.systemDefault());
    }

    public static Clock system(ZoneId zone) {
        Objects.requireNonNull(zone, "zone");
        if (zone == ZoneOffset.UTC) {
            return SystemClock.UTC;
        }
        return new SystemClock(zone);
    }

    public static Clock tickMillis(ZoneId zone) {
        return new TickClock(system(zone), 1000000L);
    }

    public static Clock tickSeconds(ZoneId zone) {
        return new TickClock(system(zone), C.NANOS_PER_SECOND);
    }

    public static Clock tickMinutes(ZoneId zone) {
        return new TickClock(system(zone), 60000000000L);
    }

    public static Clock tick(Clock baseClock, Duration tickDuration) {
        Objects.requireNonNull(baseClock, "baseClock");
        Objects.requireNonNull(tickDuration, "tickDuration");
        if (tickDuration.isNegative()) {
            throw new IllegalArgumentException("Tick duration must not be negative");
        }
        long tickNanos = tickDuration.toNanos();
        if (tickNanos % 1000000 != 0 && C.NANOS_PER_SECOND % tickNanos != 0) {
            throw new IllegalArgumentException("Invalid tick duration");
        }
        if (tickNanos <= 1) {
            return baseClock;
        }
        return new TickClock(baseClock, tickNanos);
    }

    public static Clock fixed(Instant fixedInstant, ZoneId zone) {
        Objects.requireNonNull(fixedInstant, "fixedInstant");
        Objects.requireNonNull(zone, "zone");
        return new FixedClock(fixedInstant, zone);
    }

    public static Clock offset(Clock baseClock, Duration offsetDuration) {
        Objects.requireNonNull(baseClock, "baseClock");
        Objects.requireNonNull(offsetDuration, "offsetDuration");
        if (offsetDuration.equals(Duration.ZERO)) {
            return baseClock;
        }
        return new OffsetClock(baseClock, offsetDuration);
    }

    protected Clock() {
    }

    public long millis() {
        return instant().toEpochMilli();
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    static final class SystemClock extends Clock implements Serializable {
        private static final long OFFSET_SEED = (System.currentTimeMillis() / 1000) - RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        static final SystemClock UTC = new SystemClock(ZoneOffset.UTC);
        private static final long serialVersionUID = 6740630888130243051L;
        private final ZoneId zone;

        SystemClock(ZoneId zone) {
            this.zone = zone;
        }

        @Override // j$.time.Clock
        public ZoneId getZone() {
            return this.zone;
        }

        @Override // j$.time.Clock
        public Clock withZone(ZoneId zone) {
            if (zone.equals(this.zone)) {
                return this;
            }
            return new SystemClock(zone);
        }

        @Override // j$.time.Clock
        public long millis() {
            return System.currentTimeMillis();
        }

        @Override // j$.time.Clock
        public Instant instant() {
            return Instant.ofEpochMilli(millis());
        }

        @Override // j$.time.Clock
        public boolean equals(Object obj) {
            if (obj instanceof SystemClock) {
                return this.zone.equals(((SystemClock) obj).zone);
            }
            return false;
        }

        @Override // j$.time.Clock
        public int hashCode() {
            return this.zone.hashCode() + 1;
        }

        public String toString() {
            return "SystemClock[" + this.zone + "]";
        }

        private void readObject(ObjectInputStream is) throws ClassNotFoundException, IOException {
            is.defaultReadObject();
        }
    }

    static final class FixedClock extends Clock implements Serializable {
        private static final long serialVersionUID = 7430389292664866958L;
        private final Instant instant;
        private final ZoneId zone;

        FixedClock(Instant fixedInstant, ZoneId zone) {
            this.instant = fixedInstant;
            this.zone = zone;
        }

        @Override // j$.time.Clock
        public ZoneId getZone() {
            return this.zone;
        }

        @Override // j$.time.Clock
        public Clock withZone(ZoneId zone) {
            if (zone.equals(this.zone)) {
                return this;
            }
            return new FixedClock(this.instant, zone);
        }

        @Override // j$.time.Clock
        public long millis() {
            return this.instant.toEpochMilli();
        }

        @Override // j$.time.Clock
        public Instant instant() {
            return this.instant;
        }

        @Override // j$.time.Clock
        public boolean equals(Object obj) {
            if (!(obj instanceof FixedClock)) {
                return false;
            }
            FixedClock other = (FixedClock) obj;
            return this.instant.equals(other.instant) && this.zone.equals(other.zone);
        }

        @Override // j$.time.Clock
        public int hashCode() {
            return this.instant.hashCode() ^ this.zone.hashCode();
        }

        public String toString() {
            return "FixedClock[" + this.instant + "," + this.zone + "]";
        }
    }

    static final class OffsetClock extends Clock implements Serializable {
        private static final long serialVersionUID = 2007484719125426256L;
        private final Clock baseClock;
        private final Duration offset;

        OffsetClock(Clock baseClock, Duration offset) {
            this.baseClock = baseClock;
            this.offset = offset;
        }

        @Override // j$.time.Clock
        public ZoneId getZone() {
            return this.baseClock.getZone();
        }

        @Override // j$.time.Clock
        public Clock withZone(ZoneId zone) {
            if (zone.equals(this.baseClock.getZone())) {
                return this;
            }
            return new OffsetClock(this.baseClock.withZone(zone), this.offset);
        }

        @Override // j$.time.Clock
        public long millis() {
            return Math.addExact(this.baseClock.millis(), this.offset.toMillis());
        }

        @Override // j$.time.Clock
        public Instant instant() {
            return this.baseClock.instant().plus((TemporalAmount) this.offset);
        }

        @Override // j$.time.Clock
        public boolean equals(Object obj) {
            if (!(obj instanceof OffsetClock)) {
                return false;
            }
            OffsetClock other = (OffsetClock) obj;
            return this.baseClock.equals(other.baseClock) && this.offset.equals(other.offset);
        }

        @Override // j$.time.Clock
        public int hashCode() {
            return this.baseClock.hashCode() ^ this.offset.hashCode();
        }

        public String toString() {
            return "OffsetClock[" + this.baseClock + "," + this.offset + "]";
        }
    }

    static final class TickClock extends Clock implements Serializable {
        private static final long serialVersionUID = 6504659149906368850L;
        private final Clock baseClock;
        private final long tickNanos;

        TickClock(Clock baseClock, long tickNanos) {
            this.baseClock = baseClock;
            this.tickNanos = tickNanos;
        }

        @Override // j$.time.Clock
        public ZoneId getZone() {
            return this.baseClock.getZone();
        }

        @Override // j$.time.Clock
        public Clock withZone(ZoneId zone) {
            if (zone.equals(this.baseClock.getZone())) {
                return this;
            }
            return new TickClock(this.baseClock.withZone(zone), this.tickNanos);
        }

        @Override // j$.time.Clock
        public long millis() {
            long millis = this.baseClock.millis();
            return millis - Math.floorMod(millis, this.tickNanos / 1000000);
        }

        @Override // j$.time.Clock
        public Instant instant() {
            long j = this.tickNanos % 1000000;
            Clock clock = this.baseClock;
            if (j == 0) {
                long millis = clock.millis();
                return Instant.ofEpochMilli(millis - Math.floorMod(millis, this.tickNanos / 1000000));
            }
            Instant instant = clock.instant();
            long nanos = instant.getNano();
            long adjust = Math.floorMod(nanos, this.tickNanos);
            return instant.minusNanos(adjust);
        }

        @Override // j$.time.Clock
        public boolean equals(Object obj) {
            if (!(obj instanceof TickClock)) {
                return false;
            }
            TickClock other = (TickClock) obj;
            return this.baseClock.equals(other.baseClock) && this.tickNanos == other.tickNanos;
        }

        @Override // j$.time.Clock
        public int hashCode() {
            return this.baseClock.hashCode() ^ ((int) (this.tickNanos ^ (this.tickNanos >>> 32)));
        }

        public String toString() {
            return "TickClock[" + this.baseClock + "," + Duration.ofNanos(this.tickNanos) + "]";
        }
    }
}
