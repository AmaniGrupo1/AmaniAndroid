package androidx.media3.extractor.mkv;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes21.dex */
final class Sniffer {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final ParsableByteArray scratch = new ParsableByteArray(8);

    public boolean sniff(ExtractorInput input) throws IOException {
        boolean z;
        ExtractorInput extractorInput = input;
        long inputLength = extractorInput.getLength();
        long j = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (inputLength != -1 && inputLength <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j = inputLength;
        }
        int bytesToSearch = (int) j;
        boolean z2 = false;
        extractorInput.peekFully(this.scratch.getData(), 0, 4);
        long tag = this.scratch.readUnsignedInt();
        this.peekLength = 4;
        while (tag != 440786851) {
            int i = this.peekLength + 1;
            this.peekLength = i;
            if (i == bytesToSearch) {
                return false;
            }
            extractorInput.peekFully(this.scratch.getData(), 0, 1);
            tag = ((tag << 8) & (-256)) | ((long) (this.scratch.getData()[0] & 255));
        }
        long headerSize = readUint(input);
        long headerStart = this.peekLength;
        if (headerSize == Long.MIN_VALUE) {
            return false;
        }
        if (inputLength != -1 && headerStart + headerSize >= inputLength) {
            return false;
        }
        while (this.peekLength < headerStart + headerSize) {
            long id = readUint(input);
            if (id == Long.MIN_VALUE) {
                return z2;
            }
            boolean z3 = z2;
            long size = readUint(input);
            if (size < 0) {
                return z3;
            }
            if (size > SieveCacheKt.NodeLinkMask) {
                return z3;
            }
            if (size == 0) {
                z = z3;
            } else {
                z = z3;
                int sizeInt = (int) size;
                extractorInput.advancePeekPosition(sizeInt);
                this.peekLength += sizeInt;
            }
            extractorInput = input;
            z2 = z;
        }
        boolean z4 = z2;
        if (this.peekLength == headerStart + headerSize) {
            return true;
        }
        return z4;
    }

    private long readUint(ExtractorInput input) throws IOException {
        input.peekFully(this.scratch.getData(), 0, 1);
        int value = this.scratch.getData()[0] & 255;
        if (value == 0) {
            return Long.MIN_VALUE;
        }
        int mask = 128;
        int length = 0;
        while ((value & mask) == 0) {
            mask >>= 1;
            length++;
        }
        int value2 = value & (~mask);
        input.peekFully(this.scratch.getData(), 1, length);
        for (int i = 0; i < length; i++) {
            value2 = (value2 << 8) + (this.scratch.getData()[i + 1] & 255);
        }
        int i2 = this.peekLength;
        this.peekLength = i2 + length + 1;
        return value2;
    }
}
