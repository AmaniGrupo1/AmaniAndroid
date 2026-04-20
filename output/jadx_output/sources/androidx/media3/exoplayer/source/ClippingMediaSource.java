package androidx.media3.exoplayer.source;

import androidx.core.os.EnvironmentCompat;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes21.dex */
public final class ClippingMediaSource extends WrappingMediaSource {
    private final boolean allowDynamicClippingUpdates;
    private final boolean allowUnseekableMedia;
    private IllegalClippingException clippingError;
    private ClippingTimeline clippingTimeline;
    private final boolean enableClippingInMediaPeriod;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    private final ArrayList<ClippingMediaPeriod> mediaPeriods;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final Timeline.Window window;

    public static final class Builder {
        private boolean allowDynamicClippingUpdates;
        private boolean allowUnseekableMedia;
        private boolean buildCalled;
        private boolean enableClippingInMediaPeriod;
        private boolean enableInitialDiscontinuity = true;
        private long endPositionUs = Long.MIN_VALUE;
        private final MediaSource mediaSource;
        private boolean relativeToDefaultPosition;
        private long startPositionUs;

        public Builder(MediaSource mediaSource) {
            this.mediaSource = (MediaSource) Preconditions.checkNotNull(mediaSource);
        }

        public Builder setStartPositionMs(long startPositionMs) {
            return setStartPositionUs(Util.msToUs(startPositionMs));
        }

        public Builder setStartPositionUs(long startPositionUs) {
            Preconditions.checkArgument(startPositionUs >= 0);
            Preconditions.checkState(!this.buildCalled);
            this.startPositionUs = startPositionUs;
            return this;
        }

        public Builder setEndPositionMs(long endPositionMs) {
            return setEndPositionUs(Util.msToUs(endPositionMs));
        }

        public Builder setEndPositionUs(long endPositionUs) {
            Preconditions.checkState(!this.buildCalled);
            this.endPositionUs = endPositionUs;
            return this;
        }

        public Builder setEnableInitialDiscontinuity(boolean enableInitialDiscontinuity) {
            Preconditions.checkState(!this.buildCalled);
            this.enableInitialDiscontinuity = enableInitialDiscontinuity;
            return this;
        }

        public Builder setAllowDynamicClippingUpdates(boolean allowDynamicClippingUpdates) {
            Preconditions.checkState(!this.buildCalled);
            this.allowDynamicClippingUpdates = allowDynamicClippingUpdates;
            return this;
        }

        public Builder setRelativeToDefaultPosition(boolean relativeToDefaultPosition) {
            Preconditions.checkState(!this.buildCalled);
            this.relativeToDefaultPosition = relativeToDefaultPosition;
            return this;
        }

        public Builder setAllowUnseekableMedia(boolean allowUnseekableMedia) {
            Preconditions.checkState(!this.buildCalled);
            this.allowUnseekableMedia = allowUnseekableMedia;
            return this;
        }

        public Builder setEnableClippingInMediaPeriod(boolean enableClippingInMediaPeriod) {
            Preconditions.checkState(!this.buildCalled);
            this.enableClippingInMediaPeriod = enableClippingInMediaPeriod;
            return this;
        }

        public ClippingMediaSource build() {
            this.buildCalled = true;
            return new ClippingMediaSource(this);
        }
    }

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        public IllegalClippingException(int reason) {
            this(reason, C.TIME_UNSET, C.TIME_UNSET);
        }

        public IllegalClippingException(int reason, long startUs, long endUs) {
            super("Illegal clipping: " + getReasonDescription(reason, startUs, endUs));
            this.reason = reason;
        }

        private static String getReasonDescription(int reason, long startUs, long endUs) {
            switch (reason) {
                case 0:
                    return "invalid period count";
                case 1:
                    return "not seekable to start";
                case 2:
                    Preconditions.checkState((startUs == C.TIME_UNSET || endUs == C.TIME_UNSET) ? false : true);
                    return "start exceeds end. Start time: " + startUs + ", End time: " + endUs;
                default:
                    return EnvironmentCompat.MEDIA_UNKNOWN;
            }
        }
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long startPositionUs, long endPositionUs) {
        this(new Builder(mediaSource).setStartPositionUs(startPositionUs).setEndPositionUs(endPositionUs));
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long durationUs) {
        this(new Builder(mediaSource).setEndPositionUs(durationUs).setRelativeToDefaultPosition(true));
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long startPositionUs, long endPositionUs, boolean enableInitialDiscontinuity, boolean allowDynamicClippingUpdates, boolean relativeToDefaultPosition) {
        this(new Builder(mediaSource).setStartPositionUs(startPositionUs).setEndPositionUs(endPositionUs).setEnableInitialDiscontinuity(enableInitialDiscontinuity).setAllowDynamicClippingUpdates(allowDynamicClippingUpdates).setRelativeToDefaultPosition(relativeToDefaultPosition));
    }

    private ClippingMediaSource(Builder builder) {
        super(builder.mediaSource);
        this.startUs = builder.startPositionUs;
        this.endUs = builder.endPositionUs;
        this.enableInitialDiscontinuity = builder.enableInitialDiscontinuity;
        this.allowDynamicClippingUpdates = builder.allowDynamicClippingUpdates;
        this.relativeToDefaultPosition = builder.relativeToDefaultPosition;
        this.allowUnseekableMedia = builder.allowUnseekableMedia;
        this.enableClippingInMediaPeriod = builder.enableClippingInMediaPeriod;
        this.mediaPeriods = new ArrayList<>();
        this.window = new Timeline.Window();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return getMediaItem().clippingConfiguration.equals(mediaItem.clippingConfiguration) && this.mediaSource.canUpdateMediaItem(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        if (this.clippingError != null) {
            throw this.clippingError;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId id, Allocator allocator, long startPositionUs) {
        ClippingMediaPeriod mediaPeriod = new ClippingMediaPeriod(this.mediaSource.createPeriod(id, allocator, startPositionUs), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs, this.enableClippingInMediaPeriod);
        this.mediaPeriods.add(mediaPeriod);
        return mediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        Preconditions.checkState(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (this.mediaPeriods.isEmpty() && !this.allowDynamicClippingUpdates) {
            refreshClippedTimeline(((ClippingTimeline) Preconditions.checkNotNull(this.clippingTimeline)).timeline);
        }
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.clippingError = null;
        this.clippingTimeline = null;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected void onChildSourceInfoRefreshed(Timeline newTimeline) {
        if (this.clippingError != null) {
            return;
        }
        refreshClippedTimeline(newTimeline);
    }

    private void refreshClippedTimeline(Timeline timeline) {
        long windowStartUs;
        long windowEndUs;
        timeline.getWindow(0, this.window);
        long windowPositionInPeriodUs = this.window.getPositionInFirstPeriodUs();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            windowStartUs = this.startUs;
            windowEndUs = this.endUs;
            if (this.relativeToDefaultPosition) {
                long windowDefaultPositionUs = this.window.getDefaultPositionUs();
                windowStartUs += windowDefaultPositionUs;
                windowEndUs += windowDefaultPositionUs;
            }
            this.periodStartUs = windowPositionInPeriodUs + windowStartUs;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? windowPositionInPeriodUs + windowEndUs : Long.MIN_VALUE;
            int count = this.mediaPeriods.size();
            for (int i = 0; i < count; i++) {
                this.mediaPeriods.get(i).updateClipping(this.periodStartUs, this.periodEndUs);
            }
        } else {
            windowStartUs = this.periodStartUs - windowPositionInPeriodUs;
            windowEndUs = this.endUs != Long.MIN_VALUE ? this.periodEndUs - windowPositionInPeriodUs : Long.MIN_VALUE;
        }
        try {
            this.clippingTimeline = new ClippingTimeline(timeline, windowStartUs, windowEndUs, this.allowUnseekableMedia);
            refreshSourceInfo(this.clippingTimeline);
        } catch (IllegalClippingException e) {
            this.clippingError = e;
            for (int i2 = 0; i2 < this.mediaPeriods.size(); i2++) {
                this.mediaPeriods.get(i2).setClippingError(this.clippingError);
            }
        }
    }

    private static final class ClippingTimeline extends ForwardingTimeline {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        public ClippingTimeline(Timeline timeline, long startUs, long endUs, boolean allowUnseekableMedia) throws IllegalClippingException {
            super(timeline);
            if (endUs != Long.MIN_VALUE && endUs < startUs) {
                throw new IllegalClippingException(2, startUs, endUs);
            }
            long startUs2 = startUs;
            long endUs2 = endUs;
            boolean z = false;
            if (timeline.getPeriodCount() != 1) {
                throw new IllegalClippingException(0);
            }
            Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
            long startUs3 = Math.max(0L, startUs2);
            if (allowUnseekableMedia || window.isPlaceholder || startUs3 == 0 || window.isSeekable) {
                long endUs3 = endUs2 == Long.MIN_VALUE ? window.durationUs : Math.max(0L, endUs2);
                if (window.durationUs != C.TIME_UNSET) {
                    endUs3 = endUs3 > window.durationUs ? window.durationUs : endUs3;
                    if (startUs3 > endUs3) {
                        startUs3 = endUs3;
                    }
                }
                this.startUs = startUs3;
                this.endUs = endUs3;
                this.durationUs = endUs3 == C.TIME_UNSET ? -9223372036854775807L : endUs3 - startUs3;
                if (window.isDynamic && (endUs3 == C.TIME_UNSET || (window.durationUs != C.TIME_UNSET && endUs3 == window.durationUs))) {
                    z = true;
                }
                this.isDynamic = z;
                return;
            }
            throw new IllegalClippingException(1);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window getWindow(int windowIndex, Timeline.Window window, long defaultPositionProjectionUs) {
            this.timeline.getWindow(0, window, 0L);
            window.positionInFirstPeriodUs += this.startUs;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            if (window.defaultPositionUs != C.TIME_UNSET) {
                window.defaultPositionUs = Math.max(window.defaultPositionUs, this.startUs);
                window.defaultPositionUs = this.endUs == C.TIME_UNSET ? window.defaultPositionUs : Math.min(window.defaultPositionUs, this.endUs);
                window.defaultPositionUs -= this.startUs;
            }
            long startMs = Util.usToMs(this.startUs);
            if (window.presentationStartTimeMs != C.TIME_UNSET) {
                window.presentationStartTimeMs += startMs;
            }
            if (window.windowStartTimeMs != C.TIME_UNSET) {
                window.windowStartTimeMs += startMs;
            }
            return window;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int periodIndex, Timeline.Period period, boolean setIds) {
            this.timeline.getPeriod(0, period, setIds);
            long positionInClippedWindowUs = period.getPositionInWindowUs() - this.startUs;
            long j = this.durationUs;
            long j2 = C.TIME_UNSET;
            if (j != C.TIME_UNSET) {
                j2 = this.durationUs - positionInClippedWindowUs;
            }
            long periodDurationUs = j2;
            return period.set(period.id, period.uid, 0, periodDurationUs, positionInClippedWindowUs);
        }
    }
}
