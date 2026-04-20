package androidx.media3.extractor.heif;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
final class HeifSniffer {
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0070, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean sniff(ExtractorInput input, boolean sniffMotionPhoto) throws IOException {
        ParsableByteArray buffer = new ParsableByteArray(16);
        boolean firstAtom = true;
        while (true) {
            int headerSize = 8;
            buffer.reset(8);
            if (!input.peekFully(buffer.getData(), 0, 8, true)) {
                return false;
            }
            long atomSize = buffer.readUnsignedInt();
            int atomType = buffer.readInt();
            if (atomSize == 1) {
                headerSize = 16;
                if (!input.peekFully(buffer.getData(), 8, 8, true)) {
                    return false;
                }
                atomSize = buffer.readUnsignedLongToLong();
            }
            if (atomSize < headerSize) {
                return false;
            }
            int atomDataSize = (int) (atomSize - ((long) headerSize));
            if (firstAtom) {
                if (atomType != 1718909296 || atomDataSize < 8) {
                    break;
                }
                buffer.reset(4);
                input.peekFully(buffer.getData(), 0, 4);
                if (buffer.readInt() != 1751476579) {
                    return false;
                }
                if (!sniffMotionPhoto) {
                    return true;
                }
                input.advancePeekPosition(atomDataSize - 4);
                firstAtom = false;
            } else {
                if (atomType == 1836086884) {
                    return true;
                }
                if (atomDataSize != 0) {
                    input.advancePeekPosition(atomDataSize);
                }
            }
        }
    }

    private HeifSniffer() {
    }
}
