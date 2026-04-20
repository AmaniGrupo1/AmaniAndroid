package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.MediaItem;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class PreloadException extends Exception {
    public final MediaItem mediaItem;

    public PreloadException(MediaItem mediaItem, String message, Throwable cause) {
        super(message, cause);
        this.mediaItem = mediaItem;
    }

    public boolean errorInfoEquals(PreloadException other) {
        if (this == other) {
            return true;
        }
        if (other == null || getClass() != other.getClass()) {
            return false;
        }
        Throwable thisCause = getCause();
        Throwable thatCause = other.getCause();
        if (thisCause != null && thatCause != null) {
            if (!Objects.equals(thisCause.getMessage(), thatCause.getMessage()) || !Objects.equals(thisCause.getClass(), thatCause.getClass())) {
                return false;
            }
        } else if (thisCause != null || thatCause != null) {
            return false;
        }
        if (Objects.equals(this.mediaItem, other.mediaItem) && Objects.equals(getMessage(), other.getMessage())) {
            return true;
        }
        return false;
    }
}
