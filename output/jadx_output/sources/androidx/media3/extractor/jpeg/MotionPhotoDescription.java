package androidx.media3.extractor.jpeg;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
final class MotionPhotoDescription {
    public final List<ContainerItem> items;
    public final long photoPresentationTimestampUs;

    public static final class ContainerItem {
        public final long length;
        public final String mime;
        public final long padding;
        public final String semantic;

        public ContainerItem(String mime, String semantic, long length, long padding) {
            this.mime = mime;
            this.semantic = semantic;
            this.length = length;
            this.padding = padding;
        }
    }

    public MotionPhotoDescription(long photoPresentationTimestampUs, List<ContainerItem> items) {
        this.photoPresentationTimestampUs = photoPresentationTimestampUs;
        this.items = items;
    }

    public MotionPhotoMetadata getMotionPhotoMetadata(long motionPhotoLength) {
        long itemEndPosition;
        if (this.items.size() < 2) {
            return null;
        }
        long itemStartPosition = motionPhotoLength;
        long photoStartPosition = -1;
        long photoLength = -1;
        long videoStartPosition = -1;
        long videoLength = -1;
        for (int i = this.items.size() - 1; i >= 0; i--) {
            ContainerItem item = this.items.get(i);
            boolean itemContainsBmffVideo = item.mime.equals(MimeTypes.VIDEO_MP4) || item.mime.equals(MimeTypes.VIDEO_QUICK_TIME);
            long itemEndPosition2 = itemStartPosition;
            if (i == 0) {
                itemStartPosition = 0;
                itemEndPosition = itemEndPosition2 - item.padding;
            } else {
                long itemStartPosition2 = item.length;
                itemStartPosition -= itemStartPosition2;
                itemEndPosition = itemEndPosition2;
            }
            if (itemContainsBmffVideo && itemStartPosition != itemEndPosition) {
                long videoStartPosition2 = itemStartPosition;
                long videoLength2 = itemEndPosition - itemStartPosition;
                videoStartPosition = videoStartPosition2;
                videoLength = videoLength2;
            }
            if (i == 0) {
                long photoStartPosition2 = itemStartPosition;
                photoStartPosition = photoStartPosition2;
                photoLength = itemEndPosition;
            }
        }
        if (videoStartPosition == -1 || videoLength == -1 || photoStartPosition == -1 || photoLength == -1) {
            return null;
        }
        return new MotionPhotoMetadata(photoStartPosition, photoLength, this.photoPresentationTimestampUs, videoStartPosition, videoLength);
    }
}
