package j$.sun.nio.cs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* JADX INFO: loaded from: classes19.dex */
abstract class UnicodeDecoder extends CharsetDecoder {
    protected static final int BIG = 1;
    protected static final char BYTE_ORDER_MARK = 65279;
    protected static final int LITTLE = 2;
    protected static final int NONE = 0;
    protected static final char REVERSED_MARK = 65534;
    private int currentByteOrder;
    private int defaultByteOrder;
    private final int expectedByteOrder;

    public UnicodeDecoder(Charset cs, int bo) {
        super(cs, 0.5f, 1.0f);
        this.defaultByteOrder = 1;
        this.currentByteOrder = bo;
        this.expectedByteOrder = bo;
    }

    public UnicodeDecoder(Charset cs, int bo, int defaultBO) {
        this(cs, bo);
        this.defaultByteOrder = defaultBO;
    }

    private char decode(int b1, int b2) {
        if (this.currentByteOrder == 1) {
            return (char) ((b1 << 8) | b2);
        }
        return (char) ((b2 << 8) | b1);
    }

    @Override // java.nio.charset.CharsetDecoder
    protected CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
        int mark = src.position();
        while (src.remaining() > 1) {
            try {
                int b1 = src.get() & 255;
                int b2 = src.get() & 255;
                if (this.currentByteOrder == 0) {
                    char c = (char) ((b1 << 8) | b2);
                    if (c == 65279) {
                        this.currentByteOrder = 1;
                        mark += 2;
                    } else if (c == 65534) {
                        this.currentByteOrder = 2;
                        mark += 2;
                    } else {
                        this.currentByteOrder = this.defaultByteOrder;
                    }
                }
                char c2 = decode(b1, b2);
                if (c2 == 65534) {
                    return CoderResult.malformedForLength(2);
                }
                if (Character.isSurrogate(c2)) {
                    if (!Character.isHighSurrogate(c2)) {
                        return CoderResult.malformedForLength(2);
                    }
                    if (src.remaining() < 2) {
                        return CoderResult.UNDERFLOW;
                    }
                    char c22 = decode(src.get() & 255, src.get() & 255);
                    if (!Character.isLowSurrogate(c22)) {
                        return CoderResult.malformedForLength(4);
                    }
                    if (dst.remaining() < 2) {
                        return CoderResult.OVERFLOW;
                    }
                    mark += 4;
                    dst.put(c2);
                    dst.put(c22);
                } else {
                    if (!dst.hasRemaining()) {
                        return CoderResult.OVERFLOW;
                    }
                    mark += 2;
                    dst.put(c2);
                }
            } finally {
            }
        }
        return CoderResult.UNDERFLOW;
    }

    @Override // java.nio.charset.CharsetDecoder
    protected void implReset() {
        this.currentByteOrder = this.expectedByteOrder;
    }
}
