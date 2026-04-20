package androidx.media3.exoplayer;

import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
final class MediaPeriodInfo {
    public final long durationUs;
    public final long endPositionUs;
    public final MediaSource.MediaPeriodId id;
    public final boolean isFinal;
    public final boolean isFollowedByTransitionToSameStream;
    public final boolean isLastInTimelinePeriod;
    public final boolean isLastInTimelineWindow;
    public final boolean isPrecededByTransitionFromSameStream;
    public final long liveStreamStartPositionProjectionUs;
    public final long requestedContentPositionUs;
    public final long startPositionUs;

    MediaPeriodInfo(MediaSource.MediaPeriodId id, long startPositionUs, long liveStreamStartPositionProjectionUs, long requestedContentPositionUs, long endPositionUs, long durationUs, boolean isPrecededByTransitionFromSameStream, boolean isFollowedByTransitionToSameStream, boolean isLastInTimelinePeriod, boolean isLastInTimelineWindow, boolean isFinal) {
        boolean z = false;
        Preconditions.checkArgument(!isFinal || isLastInTimelinePeriod);
        Preconditions.checkArgument(!isLastInTimelineWindow || isLastInTimelinePeriod);
        if (!isFollowedByTransitionToSameStream || (!isLastInTimelinePeriod && !isLastInTimelineWindow && !isFinal)) {
            z = true;
        }
        Preconditions.checkArgument(z);
        this.id = id;
        this.startPositionUs = startPositionUs;
        this.liveStreamStartPositionProjectionUs = liveStreamStartPositionProjectionUs;
        this.requestedContentPositionUs = requestedContentPositionUs;
        this.endPositionUs = endPositionUs;
        this.durationUs = durationUs;
        this.isPrecededByTransitionFromSameStream = isPrecededByTransitionFromSameStream;
        this.isFollowedByTransitionToSameStream = isFollowedByTransitionToSameStream;
        this.isLastInTimelinePeriod = isLastInTimelinePeriod;
        this.isLastInTimelineWindow = isLastInTimelineWindow;
        this.isFinal = isFinal;
    }

    public MediaPeriodInfo copyWithStartPositionUs(long startPositionUs, long liveStreamStartPositionProjectionUs) {
        if (startPositionUs == this.startPositionUs && liveStreamStartPositionProjectionUs == this.liveStreamStartPositionProjectionUs) {
            return this;
        }
        return new MediaPeriodInfo(this.id, startPositionUs, liveStreamStartPositionProjectionUs, this.requestedContentPositionUs, this.endPositionUs, this.durationUs, this.isPrecededByTransitionFromSameStream, this.isFollowedByTransitionToSameStream, this.isLastInTimelinePeriod, this.isLastInTimelineWindow, this.isFinal);
    }

    public MediaPeriodInfo copyWithRequestedContentPositionUs(long requestedContentPositionUs) {
        if (requestedContentPositionUs == this.requestedContentPositionUs) {
            return this;
        }
        return new MediaPeriodInfo(this.id, this.startPositionUs, this.liveStreamStartPositionProjectionUs, requestedContentPositionUs, this.endPositionUs, this.durationUs, this.isPrecededByTransitionFromSameStream, this.isFollowedByTransitionToSameStream, this.isLastInTimelinePeriod, this.isLastInTimelineWindow, this.isFinal);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        MediaPeriodInfo that = (MediaPeriodInfo) o;
        if (this.startPositionUs == that.startPositionUs && this.requestedContentPositionUs == that.requestedContentPositionUs && this.endPositionUs == that.endPositionUs && this.durationUs == that.durationUs && this.isPrecededByTransitionFromSameStream == that.isPrecededByTransitionFromSameStream && this.isFollowedByTransitionToSameStream == that.isFollowedByTransitionToSameStream && this.isLastInTimelinePeriod == that.isLastInTimelinePeriod && this.isLastInTimelineWindow == that.isLastInTimelineWindow && this.isFinal == that.isFinal && Objects.equals(this.id, that.id)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((17 * 31) + this.id.hashCode()) * 31) + ((int) this.startPositionUs)) * 31) + ((int) this.requestedContentPositionUs)) * 31) + ((int) this.endPositionUs)) * 31) + ((int) this.durationUs)) * 31) + (this.isPrecededByTransitionFromSameStream ? 1 : 0)) * 31) + (this.isFollowedByTransitionToSameStream ? 1 : 0)) * 31) + (this.isLastInTimelinePeriod ? 1 : 0)) * 31) + (this.isLastInTimelineWindow ? 1 : 0)) * 31) + (this.isFinal ? 1 : 0);
    }
}
