package j$.sun.nio.cs;

import j$.sun.nio.cs.Surrogate;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* JADX INFO: loaded from: classes19.dex */
public abstract class UnicodeEncoder extends CharsetEncoder {
    protected static final int BIG = 0;
    protected static final char BYTE_ORDER_MARK = 65279;
    protected static final int LITTLE = 1;
    protected static final char REVERSED_MARK = 65534;
    private int byteOrder;
    private boolean needsMark;
    private final Surrogate.Parser sgp;
    private boolean usesMark;

    /* JADX WARN: Illegal instructions before constructor call */
    protected UnicodeEncoder(Charset cs, int bo, boolean m) {
        byte[] bArr;
        float f = m ? 4.0f : 2.0f;
        if (bo == 0) {
            bArr = new byte[]{-1, -3};
        } else {
            bArr = new byte[]{-3, -1};
        }
        super(cs, 2.0f, f, bArr);
        this.sgp = new Surrogate.Parser();
        this.needsMark = m;
        this.usesMark = m;
        this.byteOrder = bo;
    }

    private void put(char c, ByteBuffer dst) {
        if (this.byteOrder == 0) {
            dst.put((byte) (c >> '\b'));
            dst.put((byte) (c & 255));
        } else {
            dst.put((byte) (c & 255));
            dst.put((byte) (c >> '\b'));
        }
    }

    @Override // java.nio.charset.CharsetEncoder
    protected CoderResult encodeLoop(CharBuffer src, ByteBuffer dst) {
        int mark = src.position();
        if (this.needsMark && src.hasRemaining()) {
            if (dst.remaining() < 2) {
                return CoderResult.OVERFLOW;
            }
            put(BYTE_ORDER_MARK, dst);
            this.needsMark = false;
        }
        while (src.hasRemaining()) {
            try {
                char c = src.get();
                if (Character.isSurrogate(c)) {
                    int d = this.sgp.parse(c, src);
                    if (d < 0) {
                        return this.sgp.error();
                    }
                    if (dst.remaining() < 4) {
                        return CoderResult.OVERFLOW;
                    }
                    mark += 2;
                    put(Character.highSurrogate(d), dst);
                    put(Character.lowSurrogate(d), dst);
                } else {
                    if (dst.remaining() < 2) {
                        return CoderResult.OVERFLOW;
                    }
                    mark++;
                    put(c, dst);
                }
            } finally {
            }
        }
        return CoderResult.UNDERFLOW;
    }

    @Override // java.nio.charset.CharsetEncoder
    protected void implReset() {
        this.needsMark = this.usesMark;
    }

    @Override // java.nio.charset.CharsetEncoder
    public boolean canEncode(char c) {
        return !Character.isSurrogate(c);
    }
}
