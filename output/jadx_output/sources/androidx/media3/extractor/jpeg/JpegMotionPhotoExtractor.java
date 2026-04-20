package androidx.media3.extractor.jpeg;

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
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
final class JpegMotionPhotoExtractor implements Extractor {
    private static final String HEADER_XMP_APP1 = "http://ns.adobe.com/xap/1.0/";
    private static final int MARKER_APP1 = 65505;
    private static final int MARKER_SIZE = 2;
    private static final int MARKER_SOI = 65496;
    private static final int MARKER_SOS = 65498;
    private static final int SEGMENT_LENGTH_SIZE = 2;
    private static final int STATE_ENDED = 6;
    private static final int STATE_READING_MARKER = 0;
    private static final int STATE_READING_MOTION_PHOTO_VIDEO = 5;
    private static final int STATE_READING_SEGMENT = 2;
    private static final int STATE_READING_SEGMENT_LENGTH = 1;
    private static final int STATE_SNIFFING_MOTION_PHOTO_VIDEO = 4;
    private ExtractorOutput extractorOutput;
    private ExtractorInput lastExtractorInput;
    private int marker;
    private MotionPhotoMetadata motionPhotoMetadata;
    private Mp4Extractor mp4Extractor;
    private StartOffsetExtractorInput mp4ExtractorStartOffsetExtractorInput;
    private int segmentLength;
    private int state;
    private final ParsableByteArray scratch = new ParsableByteArray(2);
    private long mp4StartPosition = -1;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        return false;
     */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean sniff(ExtractorInput input) throws IOException {
        int payloadLength;
        if (peekMarker(input) == MARKER_SOI) {
            while (true) {
                this.marker = peekMarker(input);
                if (this.marker == MARKER_SOS || (payloadLength = peekSegmentLength(input)) < 0) {
                    break;
                }
                if (this.marker != MARKER_APP1) {
                    input.advancePeekPosition(payloadLength);
                } else {
                    this.scratch.reset(payloadLength);
                    input.peekFully(this.scratch.getData(), 0, payloadLength);
                    if (isMotionPhotoXmp(this.scratch)) {
                        return true;
                    }
                }
            }
        } else {
            return false;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.extractorOutput = output;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        switch (this.state) {
            case 0:
                readMarker(input);
                return 0;
            case 1:
                readSegmentLength(input);
                return 0;
            case 2:
                readSegment(input);
                return 0;
            case 3:
            default:
                throw new IllegalStateException();
            case 4:
                if (input.getPosition() != this.mp4StartPosition) {
                    seekPosition.position = this.mp4StartPosition;
                    return 1;
                }
                sniffMotionPhotoVideo(input);
                return 0;
            case 5:
                if (this.mp4ExtractorStartOffsetExtractorInput == null || input != this.lastExtractorInput) {
                    this.lastExtractorInput = input;
                    this.mp4ExtractorStartOffsetExtractorInput = new StartOffsetExtractorInput(input, this.mp4StartPosition);
                }
                int readResult = ((Mp4Extractor) Preconditions.checkNotNull(this.mp4Extractor)).read(this.mp4ExtractorStartOffsetExtractorInput, seekPosition);
                if (readResult == 1) {
                    seekPosition.position += this.mp4StartPosition;
                }
                return readResult;
            case 6:
                return -1;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        if (position == 0) {
            this.state = 0;
            this.mp4Extractor = null;
        } else if (this.state == 5) {
            ((Mp4Extractor) Preconditions.checkNotNull(this.mp4Extractor)).seek(position, timeUs);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        if (this.mp4Extractor != null) {
            this.mp4Extractor.release();
        }
    }

    private int peekMarker(ExtractorInput input) throws IOException {
        this.scratch.reset(2);
        input.peekFully(this.scratch.getData(), 0, 2);
        return this.scratch.readUnsignedShort();
    }

    private boolean isMotionPhotoXmp(ParsableByteArray payload) {
        if (!Objects.equals(payload.readNullTerminatedString(), HEADER_XMP_APP1)) {
            return false;
        }
        return XmpMotionPhotoDescriptionParser.isMotionPhotoXmp(payload.readNullTerminatedString());
    }

    private void readMarker(ExtractorInput input) throws IOException {
        this.scratch.reset(2);
        input.readFully(this.scratch.getData(), 0, 2);
        this.marker = this.scratch.readUnsignedShort();
        if (this.marker == MARKER_SOS) {
            if (this.mp4StartPosition != -1) {
                this.state = 4;
                return;
            } else {
                endReading();
                return;
            }
        }
        if ((this.marker < 65488 || this.marker > 65497) && this.marker != 65281) {
            this.state = 1;
        }
    }

    private int peekSegmentLength(ExtractorInput input) throws IOException {
        this.scratch.reset(2);
        input.peekFully(this.scratch.getData(), 0, 2);
        return this.scratch.readUnsignedShort() - 2;
    }

    private void readSegmentLength(ExtractorInput input) throws IOException {
        this.segmentLength = peekSegmentLength(input);
        input.skipFully(2);
        this.state = 2;
    }

    private void readSegment(ExtractorInput input) throws IOException {
        String xmpString;
        if (this.marker == MARKER_APP1) {
            ParsableByteArray payload = new ParsableByteArray(this.segmentLength);
            input.readFully(payload.getData(), 0, this.segmentLength);
            if (this.motionPhotoMetadata == null && HEADER_XMP_APP1.equals(payload.readNullTerminatedString()) && (xmpString = payload.readNullTerminatedString()) != null) {
                this.motionPhotoMetadata = getMotionPhotoMetadata(xmpString, input.getLength());
                if (this.motionPhotoMetadata != null) {
                    this.mp4StartPosition = this.motionPhotoMetadata.videoStartPosition;
                }
            }
        } else {
            input.skipFully(this.segmentLength);
        }
        this.state = 0;
    }

    private void sniffMotionPhotoVideo(ExtractorInput input) throws IOException {
        boolean peekedData = input.peekFully(this.scratch.getData(), 0, 1, true);
        if (!peekedData) {
            endReading();
            return;
        }
        input.resetPeekPosition();
        if (this.mp4Extractor == null) {
            this.mp4Extractor = new Mp4Extractor(SubtitleParser.Factory.UNSUPPORTED, 8);
        }
        this.mp4ExtractorStartOffsetExtractorInput = new StartOffsetExtractorInput(input, this.mp4StartPosition);
        if (this.mp4Extractor.sniff(this.mp4ExtractorStartOffsetExtractorInput)) {
            this.mp4Extractor.init(new StartOffsetExtractorOutput(this.mp4StartPosition, (ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)));
            startReadingMotionPhoto();
        } else {
            endReading();
        }
    }

    private void startReadingMotionPhoto() {
        outputImageTrack((MotionPhotoMetadata) Preconditions.checkNotNull(this.motionPhotoMetadata));
        this.state = 5;
    }

    private void endReading() {
        ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).endTracks();
        this.extractorOutput.seekMap(new SeekMap.Unseekable(C.TIME_UNSET));
        this.state = 6;
    }

    private void outputImageTrack(MotionPhotoMetadata motionPhotoMetadata) {
        TrackOutput imageTrackOutput = ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).track(1024, 4);
        imageTrackOutput.format(new Format.Builder().setContainerMimeType("image/jpeg").setMetadata(new Metadata(motionPhotoMetadata)).build());
    }

    private static MotionPhotoMetadata getMotionPhotoMetadata(String xmpString, long inputLength) throws IOException {
        MotionPhotoDescription motionPhotoDescription;
        if (inputLength == -1 || (motionPhotoDescription = XmpMotionPhotoDescriptionParser.parse(xmpString)) == null) {
            return null;
        }
        return motionPhotoDescription.getMotionPhotoMetadata(inputLength);
    }
}
