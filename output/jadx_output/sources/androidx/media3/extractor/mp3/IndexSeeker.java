package androidx.media3.extractor.mp3;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.SeekMap;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes21.dex */
final class IndexSeeker implements Seeker {
    static final long MIN_TIME_BETWEEN_POINTS_US = 100000;
    private final int averageBitrate;
    private final long dataEndPosition;
    private final long dataStartPosition;
    private final IndexSeekMap indexSeekMap;

    public IndexSeeker(long durationUs, long dataStartPosition, long dataEndPosition) {
        this.indexSeekMap = new IndexSeekMap(new long[]{dataStartPosition}, new long[]{0}, durationUs);
        this.dataStartPosition = dataStartPosition;
        this.dataEndPosition = dataEndPosition;
        int i = C.RATE_UNSET_INT;
        if (durationUs != C.TIME_UNSET) {
            long bitrate = Util.scaleLargeValue(dataStartPosition - dataEndPosition, 8L, durationUs, RoundingMode.HALF_UP);
            if (bitrate > 0 && bitrate <= SieveCacheKt.NodeLinkMask) {
                i = (int) bitrate;
            }
            this.averageBitrate = i;
            return;
        }
        this.averageBitrate = C.RATE_UNSET_INT;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long position) {
        return this.indexSeekMap.getTimeUs(position);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataStartPosition() {
        return this.dataStartPosition;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.indexSeekMap.isSeekable();
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.indexSeekMap.getDurationUs();
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long timeUs) {
        return this.indexSeekMap.getSeekPoints(timeUs);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.averageBitrate;
    }

    public void maybeAddSeekPoint(long timeUs, long position) {
        if (isTimeUsInIndex(timeUs)) {
            return;
        }
        this.indexSeekMap.addSeekPoint(timeUs, position);
    }

    public boolean isTimeUsInIndex(long timeUs) {
        return this.indexSeekMap.isTimeUsInIndex(timeUs, 100000L);
    }

    void setDurationUs(long durationUs) {
        this.indexSeekMap.setDurationUs(durationUs);
    }
}
