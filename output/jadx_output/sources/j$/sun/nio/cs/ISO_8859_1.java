package j$.sun.nio.cs;

import j$.sun.nio.cs.Surrogate;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
public class ISO_8859_1 extends Charset implements HistoricallyNamedCharset {
    public static final ISO_8859_1 INSTANCE = new ISO_8859_1();

    public ISO_8859_1() {
        super("ISO-8859-1", StandardCharsets.aliases_ISO_8859_1());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "ISO8859_1";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return (cs instanceof US_ASCII) || (cs instanceof ISO_8859_1);
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
                    if (dp2 >= dl) {
                        CoderResult coderResult = CoderResult.OVERFLOW;
                        return coderResult;
                    }
                    int dp3 = dp2 + 1;
                    try {
                        da[dp2] = (char) (b & 255);
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
                    if (!dst.hasRemaining()) {
                        return CoderResult.OVERFLOW;
                    }
                    dst.put((char) (b & 255));
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
            return c <= 255;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean isLegalReplacement(byte[] repl) {
            return true;
        }

        private static int encodeISOArray(char[] sa, int sp, byte[] da, int dp, int len) {
            if (len <= 0) {
                return 0;
            }
            encodeISOArrayCheck(sa, sp, da, dp, len);
            return implEncodeISOArray(sa, sp, da, dp, len);
        }

        private static int implEncodeISOArray(char[] sa, int sp, byte[] da, int dp, int len) {
            int i = 0;
            while (i < len) {
                int sp2 = sp + 1;
                char c = sa[sp];
                if (c > 255) {
                    break;
                }
                da[dp] = (byte) c;
                i++;
                sp = sp2;
                dp++;
            }
            return i;
        }

        private static void encodeISOArrayCheck(char[] sa, int sp, byte[] da, int dp, int len) {
            Objects.requireNonNull(sa);
            Objects.requireNonNull(da);
            if (sp < 0 || sp >= sa.length) {
                throw new ArrayIndexOutOfBoundsException(sp);
            }
            if (dp < 0 || dp >= da.length) {
                throw new ArrayIndexOutOfBoundsException(dp);
            }
            int endIndexSP = (sp + len) - 1;
            if (endIndexSP < 0 || endIndexSP >= sa.length) {
                throw new ArrayIndexOutOfBoundsException(endIndexSP);
            }
            int endIndexDP = (dp + len) - 1;
            if (endIndexDP < 0 || endIndexDP >= da.length) {
                throw new ArrayIndexOutOfBoundsException(endIndexDP);
            }
        }

        private CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) {
            char[] sa = src.array();
            int soff = src.arrayOffset();
            int sp = src.position() + soff;
            int sl = src.limit() + soff;
            int sp2 = sp <= sl ? sp : sl;
            byte[] da = dst.array();
            int doff = dst.arrayOffset();
            int dp = dst.position() + doff;
            int dl = dst.limit() + doff;
            int dp2 = dp <= dl ? dp : dl;
            int dlen = dl - dp2;
            int slen = sl - sp2;
            int len = dlen < slen ? dlen : slen;
            try {
                int ret = encodeISOArray(sa, sp2, da, dp2, len);
                sp2 += ret;
                dp2 += ret;
                if (ret == len) {
                    return len < slen ? CoderResult.OVERFLOW : CoderResult.UNDERFLOW;
                }
                int i = this.sgp.parse(sa[sp2], sa, sp2, sl);
                Surrogate.Parser parser = this.sgp;
                return i < 0 ? parser.error() : parser.unmappableResult();
            } finally {
            }
        }

        private CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    char c = src.get();
                    if (c > 255) {
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
