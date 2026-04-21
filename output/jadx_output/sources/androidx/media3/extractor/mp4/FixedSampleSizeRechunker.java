package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes21.dex */
final class FixedSampleSizeRechunker {
    private static final int MAX_SAMPLE_SIZE = 8192;

    public static final class Results {
        public final long duration;
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;
        public final long totalSize;

        private Results(long[] offsets, int[] sizes, int maximumSize, long[] timestamps, int[] flags, long duration, long totalSize) {
            this.offsets = offsets;
            this.sizes = sizes;
            this.maximumSize = maximumSize;
            this.timestamps = timestamps;
            this.flags = flags;
            this.duration = duration;
            this.totalSize = totalSize;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0027 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Results rechunk(int fixedSampleSize, long[] chunkOffsets, int[] chunkSampleCounts, long timestampDeltaInTimeUnits) {
        int[] iArr = chunkSampleCounts;
        int maxSampleCount = 8192 / fixedSampleSize;
        int rechunkedSampleCount = 0;
        for (int chunkSampleCount : iArr) {
            rechunkedSampleCount += Util.ceilDivide(chunkSampleCount, maxSampleCount);
        }
        long[] offsets = new long[rechunkedSampleCount];
        int[] sizes = new int[rechunkedSampleCount];
        long[] timestamps = new long[rechunkedSampleCount];
        int[] flags = new int[rechunkedSampleCount];
        int totalSize = 0;
        int chunkIndex = 0;
        int newSampleIndex = 0;
        int maximumSize = 0;
        int originalSampleIndex = 0;
        while (chunkIndex < originalSampleIndex) {
            int chunkSamplesRemaining = iArr[chunkIndex];
            long sampleOffset = chunkOffsets[chunkIndex];
            while (chunkSamplesRemaining > 0) {
                int bufferSampleCount = Math.min(maxSampleCount, chunkSamplesRemaining);
                offsets[newSampleIndex] = sampleOffset;
                sizes[newSampleIndex] = fixedSampleSize * bufferSampleCount;
                totalSize += sizes[newSampleIndex];
                maximumSize = Math.max(maximumSize, sizes[newSampleIndex]);
                timestamps[newSampleIndex] = ((long) originalSampleIndex) * timestampDeltaInTimeUnits;
                flags[newSampleIndex] = 1;
                sampleOffset += (long) sizes[newSampleIndex];
                originalSampleIndex += bufferSampleCount;
                chunkSamplesRemaining -= bufferSampleCount;
                newSampleIndex++;
                maxSampleCount = maxSampleCount;
            }
            chunkIndex++;
            iArr = chunkSampleCounts;
        }
        long duration = timestampDeltaInTimeUnits * ((long) originalSampleIndex);
        return new Results(offsets, sizes, maximumSize, timestamps, flags, duration, totalSize);
    }

    private FixedSampleSizeRechunker() {
    }
}
