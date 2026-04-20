package j$.sun.nio.cs;

import j$.sun.nio.cs.Surrogate;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* JADX INFO: loaded from: classes19.dex */
public class US_ASCII extends Charset implements HistoricallyNamedCharset {
    public static final US_ASCII INSTANCE = new US_ASCII();

    public US_ASCII() {
        super("US-ASCII", StandardCharsets.aliases_US_ASCII());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "ASCII";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return cs instanceof US_ASCII;
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    private static class Decoder extends CharsetDecoder {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private Decoder(Charset cs) {
            super(cs, 1.0f, 1.0f);
        }

        private CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) throws Throwable {
            byte[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            int sp2 = sp <= sl ? sp : sl;
            char[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int dp2 = dp <= dl ? dp : dl;
            while (sp2 < sl) {
                try {
                    byte b = sa[sp2];
                    if (b < 0) {
                        CoderResult coderResultMalformedForLength = CoderResult.malformedForLength(1);
                        return coderResultMalformedForLength;
                    }
                    if (dp2 >= dl) {
                        CoderResult coderResult = CoderResult.OVERFLOW;
                        return coderResult;
                    }
                    int dp3 = dp2 + 1;
                    try {
                        da[dp2] = (char) b;
                        sp2++;
                        dp2 = dp3;
                    } catch (Throwable th) {
                        th = th;
                        dp2 = dp3;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult2 = CoderResult.UNDERFLOW;
            return coderResult2;
        }

        private CoderResult decodeBufferLoop(ByteBuffer src, CharBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    byte b = src.get();
                    if (b < 0) {
                        return CoderResult.malformedForLength(1);
                    }
                    if (!dst.hasRemaining()) {
                        return CoderResult.OVERFLOW;
                    }
                    dst.put((char) b);
                    mark++;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // java.nio.charset.CharsetDecoder
        protected CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return decodeArrayLoop(src, dst);
            }
            return decodeBufferLoop(src, dst);
        }
    }

    private static class Encoder extends CharsetEncoder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Surrogate.Parser sgp;

        private Encoder(Charset cs) {
            super(cs, 1.0f, 1.0f);
            this.sgp = new Surrogate.Parser();
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return c < 128;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean isLegalReplacement(byte[] repl) {
            return (repl.length == 1 && repl[0] >= 0) || super.isLegalReplacement(repl);
        }

        private CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) {
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            int sp2 = sp <= sl ? sp : sl;
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int dp2 = dp <= dl ? dp : dl;
            while (sp2 < sl) {
                try {
                    char c = sa[sp2];
                    if (c >= 128) {
                        int i = this.sgp.parse(c, sa, sp2, sl);
                        Surrogate.Parser parser = this.sgp;
                        return i < 0 ? parser.error() : parser.unmappableResult();
                    }
                    if (dp2 >= dl) {
                        return CoderResult.OVERFLOW;
                    }
                    da[dp2] = (byte) c;
                    sp2++;
                    dp2++;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }

        private CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    char c = src.get();
                    if (c >= 128) {
                        int i = this.sgp.parse(c, src);
                        Surrogate.Parser parser = this.sgp;
                        return i < 0 ? parser.error() : parser.unmappableResult();
                    }
                    if (!dst.hasRemaining()) {
                        return CoderResult.OVERFLOW;
                    }
                    dst.put((byte) c);
                    mark++;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // java.nio.charset.CharsetEncoder
        protected CoderResult encodeLoop(CharBuffer src, ByteBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return encodeArrayLoop(src, dst);
            }
            return encodeBufferLoop(src, dst);
        }
    }
}
