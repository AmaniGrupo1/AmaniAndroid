package androidx.media3.extractor.mp3;

import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.MpegAudioUtil;

/* JADX INFO: loaded from: classes21.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Seeker {
    private final boolean allowSeeksIfLengthUnknown;
    private final int bitrate;
    private final long dataEndPosition;
    private final long firstFramePosition;
    private final int frameSize;

    public ConstantBitrateSeeker(long inputLength, long firstFramePosition, MpegAudioUtil.Header mpegAudioHeader, boolean allowSeeksIfLengthUnknown) {
        this(inputLength, firstFramePosition, mpegAudioHeader.bitrate, mpegAudioHeader.frameSize, allowSeeksIfLengthUnknown, true);
    }

    public ConstantBitrateSeeker(long inputLength, long firstFramePosition, int bitrate, int frameSize, boolean allowSeeksIfLengthUnknown) {
        this(inputLength, firstFramePosition, bitrate, frameSize, allowSeeksIfLengthUnknown, true);
    }

    private ConstantBitrateSeeker(long inputLength, long firstFramePosition, int bitrate, int frameSize, boolean allowSeeksIfLengthUnknown, boolean isEstimated) {
        super(inputLength, firstFramePosition, bitrate, frameSize, allowSeeksIfLengthUnknown, isEstimated);
        this.firstFramePosition = firstFramePosition;
        this.bitrate = bitrate;
        this.frameSize = frameSize;
        this.allowSeeksIfLengthUnknown = allowSeeksIfLengthUnknown;
        this.dataEndPosition = inputLength != -1 ? inputLength : -1L;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long position) {
        return getTimeUsAtPosition(position);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataStartPosition() {
        return this.firstFramePosition;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.bitrate;
    }

    public ConstantBitrateSeeker copyWithNewDataEndPosition(long dataEndPosition) {
        return new ConstantBitrateSeeker(dataEndPosition, this.firstFramePosition, this.bitrate, this.frameSize, this.allowSeeksIfLengthUnknown, false);
    }
}
