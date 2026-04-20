package j$.sun.nio.cs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* JADX INFO: loaded from: classes19.dex */
class UTF_32Coder {
    protected static final int BIG = 1;
    protected static final int BOM_BIG = 65279;
    protected static final int BOM_LITTLE = -131072;
    protected static final int LITTLE = 2;
    protected static final int NONE = 0;

    UTF_32Coder() {
    }

    protected static class Decoder extends CharsetDecoder {
        private int currentBO;
        private int expectedBO;

        protected Decoder(Charset cs, int bo) {
            super(cs, 0.25f, 1.0f);
            this.expectedBO = bo;
            this.currentBO = 0;
        }

        private int getCP(ByteBuffer src) {
            if (this.currentBO == 1) {
                return ((src.get() & 255) << 24) | ((src.get() & 255) << 16) | ((src.get() & 255) << 8) | (src.get() & 255);
            }
            return (src.get() & 255) | ((src.get() & 255) << 8) | ((src.get() & 255) << 16) | ((src.get() & 255) << 24);
        }

        @Override // java.nio.charset.CharsetDecoder
        protected CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
            if (src.remaining() < 4) {
                return CoderResult.UNDERFLOW;
            }
            int mark = src.position();
            try {
                if (this.currentBO == 0) {
                    int cp = ((src.get() & 255) << 24) | ((src.get() & 255) << 16) | ((src.get() & 255) << 8) | (src.get() & 255);
                    if (cp == UTF_32Coder.BOM_BIG && this.expectedBO != 2) {
                        this.currentBO = 1;
                        mark += 4;
                    } else if (cp != UTF_32Coder.BOM_LITTLE || this.expectedBO == 1) {
                        if (this.expectedBO == 0) {
                            this.currentBO = 1;
                        } else {
                            this.currentBO = this.expectedBO;
                        }
                    } else {
                        this.currentBO = 2;
                        mark += 4;
                    }
                }
                while (src.remaining() >= 4) {
                    int cp2 = getCP(src);
                    if (Character.isBmpCodePoint(cp2)) {
                        if (!dst.hasRemaining()) {
                            return CoderResult.OVERFLOW;
                        }
                        mark += 4;
                        dst.put((char) cp2);
                    } else {
                        if (!Character.isValidCodePoint(cp2)) {
                            return CoderResult.malformedForLength(4);
                        }
                        if (dst.remaining() < 2) {
                            return CoderResult.OVERFLOW;
                        }
                        mark += 4;
                        dst.put(Character.highSurrogate(cp2));
                        dst.put(Character.lowSurrogate(cp2));
                    }
                }
                return CoderResult.UNDERFLOW;
            } finally {
            }
        }

        @Override // java.nio.charset.CharsetDecoder
        protected void implReset() {
            this.currentBO = 0;
        }
    }

    protected static class Encoder extends CharsetEncoder {
        private int byteOrder;
        private boolean doBOM;
        private boolean doneBOM;

        protected void put(int cp, ByteBuffer dst) {
            if (this.byteOrder == 1) {
                dst.put((byte) (cp >> 24));
                dst.put((byte) (cp >> 16));
                dst.put((byte) (cp >> 8));
                dst.put((byte) cp);
                return;
            }
            dst.put((byte) cp);
            dst.put((byte) (cp >> 8));
            dst.put((byte) (cp >> 16));
            dst.put((byte) (cp >> 24));
        }

        protected Encoder(Charset cs, int byteOrder, boolean doBOM) {
            super(cs, 4.0f, doBOM ? 8.0f : 4.0f, byteOrder == 1 ? new byte[]{0, 0, -1, -3} : new byte[]{-3, -1, 0, 0});
            this.doBOM = false;
            this.doneBOM = true;
            this.byteOrder = byteOrder;
            this.doBOM = doBOM;
            this.doneBOM = !doBOM;
        }

        @Override // java.nio.charset.CharsetEncoder
        protected CoderResult encodeLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            if (!this.doneBOM && src.hasRemaining()) {
                if (dst.remaining() < 4) {
                    return CoderResult.OVERFLOW;
                }
                put(UTF_32Coder.BOM_BIG, dst);
                this.doneBOM = true;
            }
            while (src.hasRemaining()) {
                try {
                    char c = src.get();
                    if (Character.isSurrogate(c)) {
                        if (!Character.isHighSurrogate(c)) {
                            return CoderResult.malformedForLength(1);
                        }
                        if (!src.hasRemaining()) {
                            return CoderResult.UNDERFLOW;
                        }
                        char low = src.get();
                        if (!Character.isLowSurrogate(low)) {
                            return CoderResult.malformedForLength(1);
                        }
                        if (dst.remaining() < 4) {
                            return CoderResult.OVERFLOW;
                        }
                        mark += 2;
                        put(Character.toCodePoint(c, low), dst);
                    } else {
                        if (dst.remaining() < 4) {
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
            this.doneBOM = !this.doBOM;
        }
    }
}
