package androidx.media3.extractor.avi;

import androidx.media3.common.DataReader;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
final class ChunkReader {
    private static final int CHUNK_TYPE_AUDIO = 1651965952;
    private static final int CHUNK_TYPE_VIDEO_COMPRESSED = 1667497984;
    private static final int CHUNK_TYPE_VIDEO_UNCOMPRESSED = 1650720768;
    private static final int INITIAL_INDEX_SIZE = 512;
    private final int alternativeChunkId;
    private int bytesRemainingInCurrentChunk;
    private int chunkCount;
    private final int chunkId;
    private int currentChunkIndex;
    private int currentChunkSize;
    private final long durationUs;
    private long firstIndexChunkOffset;
    private int indexChunkCount;
    private int indexSize;
    private int[] keyFrameIndices;
    private long[] keyFrameOffsets;
    private final AviStreamHeaderChunk streamHeaderChunk;
    private final TrackOutput trackOutput;

    public ChunkReader(int id, AviStreamHeaderChunk streamHeaderChunk, TrackOutput trackOutput) {
        this.streamHeaderChunk = streamHeaderChunk;
        int trackType = streamHeaderChunk.getTrackType();
        boolean z = true;
        if (trackType != 1 && trackType != 2) {
            z = false;
        }
        Preconditions.checkArgument(z);
        int chunkType = trackType == 2 ? CHUNK_TYPE_VIDEO_COMPRESSED : CHUNK_TYPE_AUDIO;
        this.chunkId = getChunkIdFourCc(id, chunkType);
        this.durationUs = streamHeaderChunk.getDurationUs();
        this.trackOutput = trackOutput;
        this.alternativeChunkId = trackType == 2 ? getChunkIdFourCc(id, CHUNK_TYPE_VIDEO_UNCOMPRESSED) : -1;
        this.firstIndexChunkOffset = -1L;
        this.keyFrameOffsets = new long[512];
        this.keyFrameIndices = new int[512];
        this.chunkCount = streamHeaderChunk.length;
    }

    public void appendIndexChunk(long offset, boolean isKeyFrame) {
        if (this.firstIndexChunkOffset == -1) {
            this.firstIndexChunkOffset = offset;
        }
        if (isKeyFrame) {
            if (this.indexSize == this.keyFrameIndices.length) {
                this.keyFrameOffsets = Arrays.copyOf(this.keyFrameOffsets, (this.keyFrameOffsets.length * 3) / 2);
                this.keyFrameIndices = Arrays.copyOf(this.keyFrameIndices, (this.keyFrameIndices.length * 3) / 2);
            }
            this.keyFrameOffsets[this.indexSize] = offset;
            this.keyFrameIndices[this.indexSize] = this.indexChunkCount;
            this.indexSize++;
        }
        this.indexChunkCount++;
    }

    public void advanceCurrentChunk() {
        this.currentChunkIndex++;
    }

    public long getCurrentChunkTimestampUs() {
        return getChunkTimestampUs(this.currentChunkIndex);
    }

    public long getFrameDurationUs() {
        return getChunkTimestampUs(1);
    }

    public void commitIndex() {
        this.keyFrameOffsets = Arrays.copyOf(this.keyFrameOffsets, this.indexSize);
        this.keyFrameIndices = Arrays.copyOf(this.keyFrameIndices, this.indexSize);
        if (isAudio() && this.streamHeaderChunk.sampleSize != 0 && this.indexSize > 0) {
            this.chunkCount = this.indexSize;
        }
    }

    public boolean handlesChunkId(int chunkId) {
        return this.chunkId == chunkId || this.alternativeChunkId == chunkId;
    }

    public boolean isCurrentFrameAKeyFrame() {
        return Arrays.binarySearch(this.keyFrameIndices, this.currentChunkIndex) >= 0;
    }

    public boolean isVideo() {
        return (this.chunkId & CHUNK_TYPE_VIDEO_COMPRESSED) == CHUNK_TYPE_VIDEO_COMPRESSED;
    }

    public boolean isAudio() {
        return (this.chunkId & CHUNK_TYPE_AUDIO) == CHUNK_TYPE_AUDIO;
    }

    public void onChunkStart(int size) {
        this.currentChunkSize = size;
        this.bytesRemainingInCurrentChunk = size;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean onChunkData(ExtractorInput extractorInput) throws IOException {
        this.bytesRemainingInCurrentChunk -= this.trackOutput.sampleData((DataReader) extractorInput, this.bytesRemainingInCurrentChunk, false);
        boolean z = this.bytesRemainingInCurrentChunk == 0;
        if (z) {
            if (this.currentChunkSize > 0) {
                this.trackOutput.sampleMetadata(getCurrentChunkTimestampUs(), isCurrentFrameAKeyFrame() ? 1 : 0, this.currentChunkSize, 0, null);
            }
            advanceCurrentChunk();
        }
        return z;
    }

    public void seekToPosition(long position) {
        if (this.indexSize == 0) {
            this.currentChunkIndex = 0;
        } else {
            int index = Util.binarySearchFloor(this.keyFrameOffsets, position, true, true);
            this.currentChunkIndex = this.keyFrameIndices[index];
        }
    }

    public SeekMap.SeekPoints getSeekPoints(long timeUs) {
        if (this.indexSize == 0) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.firstIndexChunkOffset));
        }
        int targetFrameIndex = (int) (timeUs / getFrameDurationUs());
        int keyFrameIndex = Util.binarySearchFloor(this.keyFrameIndices, targetFrameIndex, true, true);
        if (this.keyFrameIndices[keyFrameIndex] == targetFrameIndex) {
            return new SeekMap.SeekPoints(getSeekPoint(keyFrameIndex));
        }
        SeekPoint precedingKeyFrameSeekPoint = getSeekPoint(keyFrameIndex);
        if (keyFrameIndex + 1 < this.keyFrameOffsets.length) {
            return new SeekMap.SeekPoints(precedingKeyFrameSeekPoint, getSeekPoint(keyFrameIndex + 1));
        }
        return new SeekMap.SeekPoints(precedingKeyFrameSeekPoint);
    }

    private long getChunkTimestampUs(int chunkIndex) {
        return (this.durationUs * ((long) chunkIndex)) / ((long) this.chunkCount);
    }

    private SeekPoint getSeekPoint(int keyFrameIndex) {
        return new SeekPoint(((long) this.keyFrameIndices[keyFrameIndex]) * getFrameDurationUs(), this.keyFrameOffsets[keyFrameIndex]);
    }

    private static int getChunkIdFourCc(int streamId, int chunkType) {
        int tens = streamId / 10;
        int ones = streamId % 10;
        return ((ones + 48) << 8) | (tens + 48) | chunkType;
    }
}
