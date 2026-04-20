package androidx.media3.extractor.metadata.mp4;

import androidx.media3.common.Metadata;
import com.google.common.primitives.Longs;

/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public class MotionPhotoMetadata implements Metadata.Entry {
    public final long photoPresentationTimestampUs;
    public final long photoSize;
    public final long photoStartPosition;
    public final long videoSize;
    public final long videoStartPosition;

    public MotionPhotoMetadata(long photoStartPosition, long photoSize, long photoPresentationTimestampUs, long videoStartPosition, long videoSize) {
        this.photoStartPosition = photoStartPosition;
        this.photoSize = photoSize;
        this.photoPresentationTimestampUs = photoPresentationTimestampUs;
        this.videoStartPosition = videoStartPosition;
        this.videoSize = videoSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MotionPhotoMetadata other = (MotionPhotoMetadata) obj;
        if (this.photoStartPosition == other.photoStartPosition && this.photoSize == other.photoSize && this.photoPresentationTimestampUs == other.photoPresentationTimestampUs && this.videoStartPosition == other.videoStartPosition && this.videoSize == other.videoSize) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + Longs.hashCode(this.photoStartPosition);
        return (((((((result * 31) + Longs.hashCode(this.photoSize)) * 31) + Longs.hashCode(this.photoPresentationTimestampUs)) * 31) + Longs.hashCode(this.videoStartPosition)) * 31) + Longs.hashCode(this.videoSize);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.photoStartPosition + ", photoSize=" + this.photoSize + ", photoPresentationTimestampUs=" + this.photoPresentationTimestampUs + ", videoStartPosition=" + this.videoStartPosition + ", videoSize=" + this.videoSize;
    }
}
