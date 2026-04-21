package androidx.media3.extractor.mp4;

import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class TrackSampleTable {
    public final long durationUs;
    public final int[] flags;
    public final boolean hasOnlySyncSamples;
    public final int maximumSize;
    public final long[] offsets;
    public final int sampleCount;
    public final int[] sizes;
    public final int[] syncSampleIndices;
    public final long[] timestampsUs;
    public final Track track;

    public TrackSampleTable(Track track, long[] offsets, int[] sizes, int maximumSize, long[] timestampsUs, int[] flags, int[] syncSampleIndices, boolean hasOnlySyncSamples, long durationUs, int sampleCount) {
        Preconditions.checkArgument(sizes.length == timestampsUs.length);
        Preconditions.checkArgument(offsets.length == timestampsUs.length);
        Preconditions.checkArgument(flags.length == timestampsUs.length);
        this.track = track;
        this.offsets = offsets;
        this.sizes = sizes;
        this.maximumSize = maximumSize;
        this.timestampsUs = timestampsUs;
        this.flags = flags;
        this.syncSampleIndices = syncSampleIndices;
        this.hasOnlySyncSamples = hasOnlySyncSamples;
        this.durationUs = durationUs;
        this.sampleCount = sampleCount;
        if (flags.length > 0) {
            int length = flags.length - 1;
            flags[length] = flags[length] | C.BUFFER_FLAG_LAST_SAMPLE;
        }
    }

    public int getIndexOfEarlierOrEqualSynchronizationSample(long timeUs) {
        if (this.hasOnlySyncSamples) {
            return Util.binarySearchFloor(this.timestampsUs, timeUs, true, false);
        }
        int low = 0;
        int high = this.syncSampleIndices.length - 1;
        int index = -1;
        while (low <= high) {
            int mid = ((high - low) / 2) + low;
            long currentTimestamp = this.timestampsUs[this.syncSampleIndices[mid]];
            if (currentTimestamp <= timeUs) {
                index = mid;
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        if (index == -1) {
            return -1;
        }
        long targetTimestamp = this.timestampsUs[this.syncSampleIndices[index]];
        if (targetTimestamp == timeUs) {
            while (index > 0 && this.timestampsUs[this.syncSampleIndices[index - 1]] == targetTimestamp) {
                index--;
            }
        }
        return this.syncSampleIndices[index];
    }

    public int getIndexOfLaterOrEqualSynchronizationSample(long timeUs) {
        if (this.hasOnlySyncSamples) {
            return Util.binarySearchCeil(this.timestampsUs, timeUs, true, false);
        }
        int low = 0;
        int high = this.syncSampleIndices.length - 1;
        int index = -1;
        while (low <= high) {
            int mid = ((high - low) / 2) + low;
            long currentTimestamp = this.timestampsUs[this.syncSampleIndices[mid]];
            if (currentTimestamp >= timeUs) {
                index = mid;
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        }
        if (index == -1) {
            return -1;
        }
        long targetTimestamp = this.timestampsUs[this.syncSampleIndices[index]];
        if (targetTimestamp == timeUs) {
            while (index < this.syncSampleIndices.length - 1 && this.timestampsUs[this.syncSampleIndices[index + 1]] == targetTimestamp) {
                index++;
            }
        }
        return this.syncSampleIndices[index];
    }
}
