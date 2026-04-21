package androidx.media3.extractor;

import androidx.media3.common.C;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class IndexSeekMap implements SeekMap {
    private long durationUs;
    private final LongArray positions;
    private final LongArray timesUs;

    public IndexSeekMap(long[] positions, long[] timesUs, long durationUs) {
        Preconditions.checkArgument(positions.length == timesUs.length);
        int length = timesUs.length;
        if (length > 0 && timesUs[0] > 0) {
            this.positions = new LongArray(length + 1);
            this.timesUs = new LongArray(length + 1);
            this.positions.add(0L);
            this.timesUs.add(0L);
        } else {
            this.positions = new LongArray(length);
            this.timesUs = new LongArray(length);
        }
        this.positions.addAll(positions);
        this.timesUs.addAll(timesUs);
        this.durationUs = durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.timesUs.size() > 0;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long timeUs) {
        if (this.timesUs.size() == 0) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int targetIndex = Util.binarySearchFloor(this.timesUs, timeUs, true, true);
        SeekPoint leftSeekPoint = new SeekPoint(this.timesUs.get(targetIndex), this.positions.get(targetIndex));
        if (leftSeekPoint.timeUs == timeUs || targetIndex == this.timesUs.size() - 1) {
            return new SeekMap.SeekPoints(leftSeekPoint);
        }
        SeekPoint rightSeekPoint = new SeekPoint(this.timesUs.get(targetIndex + 1), this.positions.get(targetIndex + 1));
        return new SeekMap.SeekPoints(leftSeekPoint, rightSeekPoint);
    }

    public void addSeekPoint(long timeUs, long position) {
        if (this.timesUs.size() == 0 && timeUs > 0) {
            this.positions.add(0L);
            this.timesUs.add(0L);
        }
        this.positions.add(position);
        this.timesUs.add(timeUs);
    }

    public long getTimeUs(long position) {
        if (this.timesUs.size() == 0) {
            return C.TIME_UNSET;
        }
        int targetIndex = Util.binarySearchFloor(this.positions, position, true, true);
        return this.timesUs.get(targetIndex);
    }

    public boolean isTimeUsInIndex(long timeUs, long minTimeBetweenPointsUs) {
        return this.timesUs.size() != 0 && timeUs - this.timesUs.get(this.timesUs.size() - 1) < minTimeBetweenPointsUs;
    }

    public void setDurationUs(long durationUs) {
        this.durationUs = durationUs;
    }
}
