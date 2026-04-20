package androidx.media3.extractor.heif;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.StartOffsetExtractorInput;
import androidx.media3.extractor.StartOffsetExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
final class HeicMotionPhotoExtractor implements Extractor {
    private static final int STATE_ENDED = 4;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_MOTION_PHOTO_VIDEO = 3;
    private static final int STATE_SNIFFING_MOTION_PHOTO_VIDEO = 2;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private ExtractorOutput extractorOutput;
    private ExtractorInput lastExtractorInput;
    private MotionPhotoMetadata motionPhotoMetadata;
    private Mp4Extractor mp4Extractor;
    private StartOffsetExtractorInput mp4ExtractorStartOffsetExtractorInput;
    private final ParsableByteArray scratch = new ParsableByteArray(16);
    private long mp4StartPosition = -1;
    private int state = 0;

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws IOException {
        return HeifSniffer.sniff(input, true);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.extractorOutput = output;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        while (true) {
            switch (this.state) {
                case 0:
                    if (!readAtomHeader(input)) {
                        endReading();
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    readAtomPayload(input);
                    break;
                case 2:
                    sniffMotionPhotoVideo(input);
                    break;
                case 3:
                    return readMotionPhotoVideo(input, seekPosition);
                case 4:
                    return -1;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        if (position == 0) {
            this.state = 0;
            this.atomHeaderBytesRead = 0;
            this.mp4StartPosition = -1L;
            if (this.mp4Extractor != null) {
                this.mp4Extractor.release();
                this.mp4Extractor = null;
                return;
            }
            return;
        }
        if (this.state == 3) {
            ((Mp4Extractor) Preconditions.checkNotNull(this.mp4Extractor)).seek(position, timeUs);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        if (this.mp4Extractor != null) {
            this.mp4Extractor.release();
            this.mp4Extractor = null;
        }
    }

    private boolean readAtomHeader(ExtractorInput input) throws IOException {
        if (this.atomHeaderBytesRead == 0) {
            if (!input.readFully(this.scratch.getData(), 0, 8, true)) {
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.scratch.setPosition(0);
            this.atomSize = this.scratch.readUnsignedInt();
            this.atomType = this.scratch.readInt();
        }
        if (this.atomSize == 1) {
            input.readFully(this.scratch.getData(), 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.scratch.readUnsignedLongToLong();
        }
        int headerBytesRemaining = this.atomType;
        if (headerBytesRemaining == 1836086884) {
            this.mp4StartPosition = input.getPosition();
            long boxStartPosition = this.mp4StartPosition - ((long) this.atomHeaderBytesRead);
            this.motionPhotoMetadata = new MotionPhotoMetadata(0L, boxStartPosition, C.TIME_UNSET, this.mp4StartPosition, this.atomSize - ((long) this.atomHeaderBytesRead));
            outputImageTrack(this.motionPhotoMetadata);
            this.state = 2;
        } else {
            this.state = 1;
        }
        return true;
    }

    private void readAtomPayload(ExtractorInput input) throws IOException {
        long atomPayloadSize = this.atomSize - ((long) this.atomHeaderBytesRead);
        input.skipFully((int) atomPayloadSize);
        this.atomHeaderBytesRead = 0;
        this.state = 0;
    }

    private void sniffMotionPhotoVideo(ExtractorInput input) throws IOException {
        if (this.mp4Extractor == null) {
            this.mp4Extractor = new Mp4Extractor(SubtitleParser.Factory.UNSUPPORTED, 8);
        }
        this.mp4ExtractorStartOffsetExtractorInput = new StartOffsetExtractorInput(input, this.mp4StartPosition);
        if (this.mp4Extractor.sniff(this.mp4ExtractorStartOffsetExtractorInput)) {
            this.mp4Extractor.init(new StartOffsetExtractorOutput(this.mp4StartPosition, (ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)));
            this.state = 3;
        } else {
            endReading();
        }
    }

    private int readMotionPhotoVideo(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        if (this.mp4ExtractorStartOffsetExtractorInput == null || input != this.lastExtractorInput) {
            this.lastExtractorInput = input;
            this.mp4ExtractorStartOffsetExtractorInput = new StartOffsetExtractorInput(input, this.mp4StartPosition);
        }
        int readResult = ((Mp4Extractor) Preconditions.checkNotNull(this.mp4Extractor)).read(this.mp4ExtractorStartOffsetExtractorInput, seekPosition);
        if (readResult == 1) {
            seekPosition.position += this.mp4StartPosition;
        }
        return readResult;
    }

    private void outputImageTrack(MotionPhotoMetadata motionPhotoMetadata) {
        TrackOutput imageTrackOutput = ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).track(1024, 4);
        imageTrackOutput.format(new Format.Builder().setContainerMimeType("image/heic").setMetadata(new Metadata(motionPhotoMetadata)).build());
    }

    private void endReading() {
        ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).endTracks();
        this.extractorOutput.seekMap(new SeekMap.Unseekable(C.TIME_UNSET));
        this.state = 4;
    }
}
