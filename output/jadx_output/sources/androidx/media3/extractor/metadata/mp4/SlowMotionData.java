package androidx.media3.extractor.metadata.mp4;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.mp4.SlowMotionData;
import com.google.common.base.Preconditions;
import com.google.common.collect.ComparisonChain;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class SlowMotionData implements Metadata.Entry {
    public final List<Segment> segments;

    public static final class Segment {
        public static final Comparator<Segment> BY_START_THEN_END_THEN_DIVISOR = new Comparator() { // from class: androidx.media3.extractor.metadata.mp4.SlowMotionData$Segment$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                SlowMotionData.Segment segment = (SlowMotionData.Segment) obj;
                SlowMotionData.Segment segment2 = (SlowMotionData.Segment) obj2;
                return ComparisonChain.start().compare(segment.startTimeMs, segment2.startTimeMs).compare(segment.endTimeMs, segment2.endTimeMs).compare(segment.speedDivisor, segment2.speedDivisor).result();
            }
        };
        public final long endTimeMs;
        public final int speedDivisor;
        public final long startTimeMs;

        public Segment(long startTimeMs, long endTimeMs, int speedDivisor) {
            Preconditions.checkArgument(startTimeMs < endTimeMs);
            this.startTimeMs = startTimeMs;
            this.endTimeMs = endTimeMs;
            this.speedDivisor = speedDivisor;
        }

        public String toString() {
            return Util.formatInvariant("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            Segment segment = (Segment) o;
            if (this.startTimeMs == segment.startTimeMs && this.endTimeMs == segment.endTimeMs && this.speedDivisor == segment.speedDivisor) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }
    }

    public SlowMotionData(List<Segment> segments) {
        this.segments = segments;
        Preconditions.checkArgument(!doSegmentsOverlap(segments));
    }

    public String toString() {
        return "SlowMotion: segments=" + this.segments;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SlowMotionData that = (SlowMotionData) o;
        return this.segments.equals(that.segments);
    }

    public int hashCode() {
        return this.segments.hashCode();
    }

    private static boolean doSegmentsOverlap(List<Segment> segments) {
        if (segments.isEmpty()) {
            return false;
        }
        long previousEndTimeMs = segments.get(0).endTimeMs;
        for (int i = 1; i < segments.size(); i++) {
            if (segments.get(i).startTimeMs < previousEndTimeMs) {
                return true;
            }
            previousEndTimeMs = segments.get(i).endTimeMs;
        }
        return false;
    }
}
