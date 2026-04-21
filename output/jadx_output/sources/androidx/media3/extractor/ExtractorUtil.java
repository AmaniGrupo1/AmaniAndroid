package androidx.media3.extractor;

import androidx.media3.common.C;
import androidx.media3.common.ParserException;
import androidx.media3.container.OpusUtil;
import java.io.EOFException;
import java.io.IOException;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes21.dex */
public final class ExtractorUtil {
    @Pure
    public static void checkContainerInput(boolean expression, String message) throws ParserException {
        if (!expression) {
            throw ParserException.createForMalformedContainer(message, null);
        }
    }

    public static int peekToLength(ExtractorInput input, byte[] target, int offset, int length) throws IOException {
        int totalBytesPeeked = 0;
        while (totalBytesPeeked < length) {
            int bytesPeeked = input.peek(target, offset + totalBytesPeeked, length - totalBytesPeeked);
            if (bytesPeeked == -1) {
                break;
            }
            totalBytesPeeked += bytesPeeked;
        }
        return totalBytesPeeked;
    }

    public static boolean readFullyQuietly(ExtractorInput input, byte[] output, int offset, int length) throws IOException {
        try {
            input.readFully(output, offset, length);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    public static boolean skipFullyQuietly(ExtractorInput input, int length) throws IOException {
        try {
            input.skipFully(length);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    public static boolean peekFullyQuietly(ExtractorInput input, byte[] output, int offset, int length, boolean allowEndOfInput) throws IOException {
        try {
            return input.peekFully(output, offset, length, allowEndOfInput);
        } catch (EOFException e) {
            if (allowEndOfInput) {
                return false;
            }
            throw e;
        }
    }

    public static int getMaximumEncodedRateBytesPerSecond(int encoding) {
        switch (encoding) {
            case 5:
                return Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
            case 6:
            case 18:
                return 768000;
            case 7:
                return DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
            case 8:
            case 30:
                return DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
            case 9:
                return MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
            case 10:
                return 100000;
            case 11:
                return AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
            case 12:
                return 7000;
            case 13:
            case 19:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            default:
                return C.RATE_UNSET_INT;
            case 14:
                return Ac3Util.TRUEHD_MAX_RATE_BYTES_PER_SECOND;
            case 15:
                return 8000;
            case 16:
                return AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND;
            case 17:
                return Ac4Util.MAX_RATE_BYTES_PER_SECOND;
            case 20:
                return OpusUtil.MAX_BYTES_PER_SECOND;
        }
    }

    private ExtractorUtil() {
    }
}
