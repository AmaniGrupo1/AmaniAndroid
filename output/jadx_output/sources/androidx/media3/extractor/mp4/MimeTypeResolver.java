package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
final class MimeTypeResolver {
    public static String getContainerMimeType(Format format) {
        String sampleMimeType = format.sampleMimeType;
        if (MimeTypes.isVideo(sampleMimeType)) {
            return MimeTypes.VIDEO_MP4;
        }
        if (MimeTypes.isAudio(sampleMimeType)) {
            return MimeTypes.AUDIO_MP4;
        }
        if (MimeTypes.isImage(sampleMimeType)) {
            if (Objects.equals(sampleMimeType, "image/heic")) {
                return "image/heif";
            }
            if (Objects.equals(sampleMimeType, MimeTypes.IMAGE_AVIF)) {
                return MimeTypes.IMAGE_AVIF;
            }
            return MimeTypes.APPLICATION_MP4;
        }
        return MimeTypes.APPLICATION_MP4;
    }

    public static String getContainerMimeType(List<TrackSampleTable> trackSampleTables) {
        boolean hasAudio = false;
        String imageMimeType = null;
        for (TrackSampleTable trackSampleTable : trackSampleTables) {
            String sampleMimeType = trackSampleTable.track.format.sampleMimeType;
            if (MimeTypes.isVideo(sampleMimeType)) {
                return MimeTypes.VIDEO_MP4;
            }
            if (MimeTypes.isAudio(sampleMimeType)) {
                hasAudio = true;
            } else if (MimeTypes.isImage(sampleMimeType)) {
                if (Objects.equals(sampleMimeType, "image/heic")) {
                    imageMimeType = "image/heif";
                } else if (Objects.equals(sampleMimeType, MimeTypes.IMAGE_AVIF)) {
                    imageMimeType = MimeTypes.IMAGE_AVIF;
                }
            }
        }
        if (hasAudio) {
            return MimeTypes.AUDIO_MP4;
        }
        if (imageMimeType != null) {
            return imageMimeType;
        }
        return MimeTypes.APPLICATION_MP4;
    }

    private MimeTypeResolver() {
    }
}
