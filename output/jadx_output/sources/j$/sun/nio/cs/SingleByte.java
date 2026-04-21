package j$.sun.nio.cs;

import androidx.work.WorkInfo;
import j$.sun.nio.cs.Surrogate;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import okio.Utf8;

/* JADX INFO: loaded from: classes19.dex */
public class SingleByte {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CoderResult withResult(CoderResult cr, Buffer src, int sp, Buffer dst, int dp) {
        src.position(sp - src.arrayOffset());
        dst.position(dp - dst.arrayOffset());
        return cr;
    }

    public static final class Decoder extends CharsetDecoder implements ArrayDecoder {
        private final char[] b2c;
        private final boolean isASCIICompatible;
        private char repl;

        public Decoder(Charset cs, char[] b2c) {
            super(cs, 1.0f, 1.0f);
            this.repl = (char) 65533;
            this.b2c = b2c;
            this.isASCIICompatible = false;
        }

        public Decoder(Charset cs, char[] b2c, boolean isASCIICompatible) {
            super(cs, 1.0f, 1.0f);
            this.repl = (char) 65533;
            this.b2c = b2c;
            this.isASCIICompatible = isASCIICompatible;
        }

        private CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) {
            byte[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            char[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            CoderResult cr = CoderResult.UNDERFLOW;
            if (dl - dp < sl - sp) {
                sl = sp + (dl - dp);
                cr = CoderResult.OVERFLOW;
            }
            while (sp < sl) {
                char c = decode(sa[sp]);
                if (c == 65533) {
                    return SingleByte.withResult(CoderResult.unmappableForLength(1), src, sp, dst, dp);
                }
                da[dp] = c;
                sp++;
                dp++;
            }
            return SingleByte.withResult(cr, src, sp, dst, dp);
        }

        private CoderResult decodeBufferLoop(ByteBuffer src, CharBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    char c = decode(src.get());
                    if (c == 65533) {
                        return CoderResult.unmappableForLength(1);
                    }
                    if (!dst.hasRemaining()) {
                        return CoderResult.OVERFLOW;
                    }
                    dst.put(c);
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

        public final char decode(int b) {
            return this.b2c[b + 128];
        }

        @Override // java.nio.charset.CharsetDecoder
        protected void implReplaceWith(String newReplacement) {
            this.repl = newReplacement.charAt(0);
        }

        @Override // j$.sun.nio.cs.ArrayDecoder
        public int decode(byte[] src, int sp, int len, char[] dst) {
            if (len > dst.length) {
                len = dst.length;
            }
            int dp = 0;
            while (dp < len) {
                int sp2 = sp + 1;
                dst[dp] = decode(src[sp]);
                if (dst[dp] == 65533) {
                    dst[dp] = this.repl;
                }
                dp++;
                sp = sp2;
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.ArrayDecoder
        public boolean isASCIICompatible() {
            return this.isASCIICompatible;
        }
    }

    public static final class Encoder extends CharsetEncoder implements ArrayEncoder {
        private final char[] c2b;
        private final char[] c2bIndex;
        private final boolean isASCIICompatible;
        private byte repl;
        private Surrogate.Parser sgp;

        public Encoder(Charset cs, char[] c2b, char[] c2bIndex, boolean isASCIICompatible) {
            super(cs, 1.0f, 1.0f);
            this.repl = Utf8.REPLACEMENT_BYTE;
            this.c2b = c2b;
            this.c2bIndex = c2bIndex;
            this.isASCIICompatible = isASCIICompatible;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return encode(c) != 65533;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean isLegalReplacement(byte[] repl) {
            return (repl.length == 1 && repl[0] == 63) || super.isLegalReplacement(repl);
        }

        private CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) {
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int len = Math.min(dl - dp, sl - sp);
            while (true) {
                int len2 = len - 1;
                if (len <= 0) {
                    return SingleByte.withResult(sp < sl ? CoderResult.OVERFLOW : CoderResult.UNDERFLOW, src, sp, dst, dp);
                }
                char c = sa[sp];
                int b = encode(c);
                if (b == 65533) {
                    if (Character.isSurrogate(c)) {
                        if (this.sgp == null) {
                            this.sgp = new Surrogate.Parser();
                        }
                        int i = this.sgp.parse(c, sa, sp, sl);
                        Surrogate.Parser parser = this.sgp;
                        if (i < 0) {
                            return SingleByte.withResult(parser.error(), src, sp, dst, dp);
                        }
                        return SingleByte.withResult(parser.unmappableResult(), src, sp, dst, dp);
                    }
                    return SingleByte.withResult(CoderResult.unmappableForLength(1), src, sp, dst, dp);
                }
                da[dp] = (byte) b;
                sp++;
                len = len2;
                dp++;
            }
        }

        private CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    char c = src.get();
                    int b = encode(c);
                    if (b == 65533) {
                        if (!Character.isSurrogate(c)) {
                            return CoderResult.unmappableForLength(1);
                        }
                        if (this.sgp == null) {
                            this.sgp = new Surrogate.Parser();
                        }
                        int i = this.sgp.parse(c, src);
                        Surrogate.Parser parser = this.sgp;
                        return i < 0 ? parser.error() : parser.unmappableResult();
                    }
                    if (!dst.hasRemaining()) {
                        return CoderResult.OVERFLOW;
                    }
                    dst.put((byte) b);
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

        public final int encode(char ch) {
            char index = this.c2bIndex[ch >> '\b'];
            if (index == 65533) {
                return 65533;
            }
            return this.c2b[(ch & 255) + index];
        }

        @Override // java.nio.charset.CharsetEncoder
        protected void implReplaceWith(byte[] newReplacement) {
            this.repl = newReplacement[0];
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public int encode(char[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = Math.min(len, dst.length) + sp;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = src[sp];
                int b = encode(c);
                if (b != 65533) {
                    dst[dp] = (byte) b;
                    sp = sp2;
                    dp++;
                } else {
                    if (Character.isHighSurrogate(c) && sp2 < sl && Character.isLowSurrogate(src[sp2])) {
                        if (len > dst.length) {
                            sl++;
                            len--;
                        }
                        sp2++;
                    }
                    dst[dp] = this.repl;
                    sp = sp2;
                    dp++;
                }
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public int encodeFromLatin1(byte[] src, int sp, int len, byte[] dst) {
            int dp;
            int dp2 = 0;
            int sl = Math.min(len, dst.length) + sp;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = (char) (src[sp] & 255);
                int b = encode(c);
                if (b == 65533) {
                    dp = dp2 + 1;
                    dst[dp2] = this.repl;
                } else {
                    dp = dp2 + 1;
                    dst[dp2] = (byte) b;
                }
                dp2 = dp;
                sp = sp2;
            }
            return dp2;
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public int encodeFromUTF16(byte[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = Math.min(len, dst.length) + sp;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = StringUTF16.getChar(src, sp);
                int b = encode(c);
                if (b != 65533) {
                    dst[dp] = (byte) b;
                    sp = sp2;
                    dp++;
                } else {
                    if (Character.isHighSurrogate(c) && sp2 < sl && Character.isLowSurrogate(StringUTF16.getChar(src, sp2))) {
                        if (len > dst.length) {
                            sl++;
                            len--;
                        }
                        sp2++;
                    }
                    dst[dp] = this.repl;
                    sp = sp2;
                    dp++;
                }
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public boolean isASCIICompatible() {
            return this.isASCIICompatible;
        }
    }

    public static void initC2B(char[] b2c, char[] c2bNR, char[] c2b, char[] c2bIndex) {
        for (int i = 0; i < c2bIndex.length; i++) {
            c2bIndex[i] = 65533;
        }
        for (int i2 = 0; i2 < c2b.length; i2++) {
            c2b[i2] = 65533;
        }
        int off = 0;
        int i3 = 0;
        while (i3 < b2c.length) {
            char c = b2c[i3];
            if (c != 65533) {
                int index = c >> '\b';
                if (c2bIndex[index] == 65533) {
                    c2bIndex[index] = (char) off;
                    off += 256;
                }
                c2b[c2bIndex[index] + (c & 255)] = (char) (i3 >= 128 ? i3 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT : i3 + 128);
            }
            i3++;
        }
        if (c2bNR != null) {
            int i4 = 0;
            while (i4 < c2bNR.length) {
                int i5 = i4 + 1;
                char b = c2bNR[i4];
                int i6 = i5 + 1;
                char c2 = c2bNR[i5];
                int index2 = c2 >> '\b';
                if (c2bIndex[index2] == 65533) {
                    c2bIndex[index2] = (char) off;
                    off += 256;
                }
                c2b[c2bIndex[index2] + (c2 & 255)] = b;
                i4 = i6;
            }
        }
    }
}
