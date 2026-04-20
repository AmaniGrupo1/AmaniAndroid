package androidx.media3.container;

import androidx.media3.common.Metadata;
import com.google.common.primitives.Longs;

/* JADX INFO: loaded from: classes21.dex */
public final class Mp4TimestampData implements Metadata.Entry {
    public static final int TIMESCALE_UNSET = -1;
    private static final int UNIX_EPOCH_TO_MP4_TIME_DELTA_SECONDS = 2082844800;
    public final long creationTimestampSeconds;
    public final long modificationTimestampSeconds;
    public final long timescale;

    public Mp4TimestampData(long creationTimestampSeconds, long modificationTimestampSeconds) {
        this.creationTimestampSeconds = creationTimestampSeconds;
        this.modificationTimestampSeconds = modificationTimestampSeconds;
        this.timescale = -1L;
    }

    public Mp4TimestampData(long creationTimestampSeconds, long modificationTimestampSeconds, long timescale) {
        this.creationTimestampSeconds = creationTimestampSeconds;
        this.modificationTimestampSeconds = modificationTimestampSeconds;
        this.timescale = timescale;
    }

    public static long unixTimeToMp4TimeSeconds(long unixTimestampMs) {
        return (unixTimestampMs / 1000) + 2082844800;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Mp4TimestampData)) {
            return false;
        }
        Mp4TimestampData other = (Mp4TimestampData) obj;
        return this.creationTimestampSeconds == other.creationTimestampSeconds && this.modificationTimestampSeconds == other.modificationTimestampSeconds && this.timescale == other.timescale;
    }

    public int hashCode() {
        int result = (17 * 31) + Longs.hashCode(this.creationTimestampSeconds);
        return (((result * 31) + Longs.hashCode(this.modificationTimestampSeconds)) * 31) + Longs.hashCode(this.timescale);
    }

    public String toString() {
        return "Mp4Timestamp: creation time=" + this.creationTimestampSeconds + ", modification time=" + this.modificationTimestampSeconds + ", timescale=" + this.timescale;
    }
}
