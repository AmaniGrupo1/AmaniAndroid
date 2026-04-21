package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes21.dex */
final class VbriSeeker implements Seeker {
    private static final String TAG = "VbriSeeker";
    private final int bitrate;
    private final long dataEndPosition;
    private final long dataStartPosition;
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    public static VbriSeeker create(long inputLength, long position, MpegAudioUtil.Header mpegAudioHeader, ParsableByteArray frame) {
        long durationUs;
        int segmentSize;
        frame.skipBytes(6);
        int bytes = frame.readInt();
        long startOfMp3Data = position + ((long) mpegAudioHeader.frameSize);
        long endOfMp3Data = ((long) bytes) + startOfMp3Data;
        int numFrames = frame.readInt();
        if (numFrames <= 0) {
            return null;
        }
        int sampleRate = mpegAudioHeader.sampleRate;
        long durationUs2 = Util.sampleCountToDurationUs((((long) numFrames) * ((long) mpegAudioHeader.samplesPerFrame)) - 1, sampleRate);
        int entryCount = frame.readUnsignedShort();
        int scale = frame.readUnsignedShort();
        int entrySize = frame.readUnsignedShort();
        frame.skipBytes(2);
        long position2 = position + ((long) mpegAudioHeader.frameSize);
        long[] timesUs = new long[entryCount];
        long[] positions = new long[entryCount];
        int numFrames2 = 0;
        while (numFrames2 < entryCount) {
            long[] timesUs2 = timesUs;
            long[] positions2 = positions;
            int index = numFrames2;
            timesUs2[index] = (((long) numFrames2) * durationUs2) / ((long) entryCount);
            positions2[index] = position2;
            switch (entrySize) {
                case 1:
                    segmentSize = frame.readUnsignedByte();
                    break;
                case 2:
                    segmentSize = frame.readUnsignedShort();
                    break;
                case 3:
                    segmentSize = frame.readUnsignedInt24();
                    break;
                case 4:
                    segmentSize = frame.readUnsignedIntToInt();
                    break;
                default:
                    return null;
            }
            position2 += ((long) segmentSize) * ((long) scale);
            numFrames2 = index + 1;
            timesUs = timesUs2;
            positions = positions2;
        }
        long[] timesUs3 = timesUs;
        long[] positions3 = positions;
        if (inputLength != -1 && inputLength != endOfMp3Data) {
            durationUs = durationUs2;
            Log.w(TAG, "VBRI data size mismatch: " + inputLength + ", " + endOfMp3Data);
        } else {
            durationUs = durationUs2;
        }
        if (endOfMp3Data != position2) {
            Log.w(TAG, "VBRI bytes and ToC mismatch (using max): " + endOfMp3Data + ", " + position2 + "\nSeeking will be inaccurate.");
            endOfMp3Data = Math.max(endOfMp3Data, position2);
        }
        return new VbriSeeker(timesUs3, positions3, durationUs, startOfMp3Data, endOfMp3Data, mpegAudioHeader.bitrate);
    }

    private VbriSeeker(long[] timesUs, long[] positions, long durationUs, long dataStartPosition, long dataEndPosition, int bitrate) {
        this.timesUs = timesUs;
        this.positions = positions;
        this.durationUs = durationUs;
        this.dataStartPosition = dataStartPosition;
        this.dataEndPosition = dataEndPosition;
        this.bitrate = bitrate;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long timeUs) {
        int tableIndex = Util.binarySearchFloor(this.timesUs, timeUs, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[tableIndex], this.positions[tableIndex]);
        if (seekPoint.timeUs >= timeUs || tableIndex == this.timesUs.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        SeekPoint nextSeekPoint = new SeekPoint(this.timesUs[tableIndex + 1], this.positions[tableIndex + 1]);
        return new SeekMap.SeekPoints(seekPoint, nextSeekPoint);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long position) {
        return this.timesUs[Util.binarySearchFloor(this.positions, position, true, true)];
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataStartPosition() {
        return this.dataStartPosition;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.bitrate;
    }
}
