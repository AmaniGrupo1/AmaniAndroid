package androidx.media3.extractor.metadata;

import androidx.media3.common.Metadata;
import com.google.common.primitives.Longs;

/* JADX INFO: loaded from: classes21.dex */
public final class ThumbnailMetadata implements Metadata.Entry {
    public final long presentationTimeUs;

    public ThumbnailMetadata(long presentationTimeUs) {
        this.presentationTimeUs = presentationTimeUs;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ThumbnailMetadata that = (ThumbnailMetadata) o;
        if (this.presentationTimeUs == that.presentationTimeUs) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + Longs.hashCode(this.presentationTimeUs);
        return result;
    }

    public String toString() {
        return "ThumbnailMetadata: presentationTimeUs=" + this.presentationTimeUs;
    }
}
