package j$.time;

import java.io.Serializable;

/* JADX INFO: loaded from: classes19.dex */
public abstract class DesugarClock {
    static final long NANOS_PER_MILLI = 1000000;

    private DesugarClock() {
    }

    public static Clock tickMillis(ZoneId zone) {
        return new DesugarTickClock(Clock.system(zone), 1000000L);
    }

    static final class DesugarTickClock extends Clock implements Serializable {
        private static final long serialVersionUID = 6504659149906368850L;
        private final Clock baseClock;
        private final long tickNanos;

        DesugarTickClock(Clock baseClock, long tickNanos) {
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
            return new DesugarTickClock(this.baseClock.withZone(zone), this.tickNanos);
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
            if (!(obj instanceof DesugarTickClock)) {
                return false;
            }
            DesugarTickClock other = (DesugarTickClock) obj;
            return this.baseClock.equals(other.baseClock) && this.tickNanos == other.tickNanos;
        }

        @Override // j$.time.Clock
        public int hashCode() {
            return this.baseClock.hashCode() ^ ((int) (this.tickNanos ^ (this.tickNanos >>> 32)));
        }

        public String toString() {
            return "DesugarTickClock[" + this.baseClock + "," + Duration.ofNanos(this.tickNanos) + "]";
        }
    }
}
