package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
public final class Id3Peeker {
    private final ParsableByteArray scratch = new ParsableByteArray(10);

    @Deprecated
    public Metadata peekId3Data(ExtractorInput input, Id3Decoder.FramePredicate id3FramePredicate) throws IOException {
        return peekId3Data(input, id3FramePredicate, 0);
    }

    public Metadata peekId3Data(ExtractorInput input, Id3Decoder.FramePredicate id3FramePredicate, int maxTagPeekBytes) throws Throwable {
        int peekedId3Bytes = 0;
        Metadata metadata = null;
        while (peekId3HeaderIntoScratch(input, maxTagPeekBytes)) {
            int id3HeaderStartInScratch = this.scratch.getPosition();
            this.scratch.skipBytes(6);
            int framesLength = this.scratch.readSynchSafeInt();
            int tagLength = framesLength + 10;
            if (metadata == null) {
                byte[] id3Data = new byte[tagLength];
                System.arraycopy(this.scratch.getData(), id3HeaderStartInScratch, id3Data, 0, 10);
                input.peekFully(id3Data, 10, framesLength);
                metadata = new Id3Decoder(id3FramePredicate).decode(id3Data, tagLength);
            } else {
                input.advancePeekPosition(framesLength);
            }
            peekedId3Bytes += tagLength;
        }
        input.resetPeekPosition();
        input.advancePeekPosition(peekedId3Bytes);
        return metadata;
    }

    private boolean peekId3HeaderIntoScratch(ExtractorInput input, int maxTagPeekBytes) throws IOException {
        int tagSearchBytes = 0;
        do {
            int headerStartIndexInScratch = tagSearchBytes % 10;
            int headerEndIndexInScratch = headerStartIndexInScratch + 10;
            if (headerStartIndexInScratch == 0 && tagSearchBytes != 0) {
                System.arraycopy(this.scratch.getData(), 10, this.scratch.getData(), 0, 9);
            }
            int peekLength = tagSearchBytes != 0 ? 1 : 10;
            try {
                input.peekFully(this.scratch.getData(), headerEndIndexInScratch - peekLength, peekLength);
                this.scratch.setPosition(headerStartIndexInScratch);
                this.scratch.setLimit(headerEndIndexInScratch);
                if (this.scratch.peekUnsignedInt24() == 4801587) {
                    return true;
                }
                if (MpegAudioUtil.getFrameSize(this.scratch.peekInt()) != -1) {
                    return false;
                }
                if (tagSearchBytes == 0) {
                    this.scratch.ensureCapacity(20);
                }
                tagSearchBytes++;
            } catch (EOFException e) {
                return false;
            }
        } while (tagSearchBytes <= maxTagPeekBytes);
        return false;
    }
}
