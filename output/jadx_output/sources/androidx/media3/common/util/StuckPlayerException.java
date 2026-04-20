package androidx.media3.common.util;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes21.dex */
public final class StuckPlayerException extends IllegalStateException {
    public static final int STUCK_BUFFERING_NOT_LOADING = 0;
    public static final int STUCK_BUFFERING_NO_PROGRESS = 1;
    public static final int STUCK_PLAYING_NOT_ENDING = 3;
    public static final int STUCK_PLAYING_NO_PROGRESS = 2;
    public static final int STUCK_SUPPRESSED = 4;
    public final int stuckType;
    public final int timeoutMs;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StuckType {
    }

    public StuckPlayerException(int stuckType, int timeoutMs) {
        super(getMessage(stuckType, timeoutMs));
        this.stuckType = stuckType;
        this.timeoutMs = timeoutMs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StuckPlayerException other = (StuckPlayerException) obj;
        if (this.stuckType == other.stuckType && this.timeoutMs == other.timeoutMs) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (17 * 31) + this.stuckType;
        return (hashCode * 31) + this.timeoutMs;
    }

    private static String getMessage(int stuckType, int timeoutMs) {
        switch (stuckType) {
            case 0:
                return "Player stuck buffering and not loading for " + timeoutMs + " ms";
            case 1:
                return "Player stuck buffering with no progress for " + timeoutMs + " ms";
            case 2:
                return "Player stuck playing with no progress for " + timeoutMs + " ms";
            case 3:
                return "Player stuck playing without ending for " + timeoutMs + " ms";
            case 4:
                return "Player stuck suppressed for " + timeoutMs + " ms";
            default:
                throw new IllegalStateException();
        }
    }
}
