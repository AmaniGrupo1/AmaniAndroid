package j$.sun.nio.cs;

import com.google.common.base.Ascii;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Arrays;

/* JADX INFO: loaded from: classes19.dex */
public class EUC_TW extends Charset implements HistoricallyNamedCharset {
    private static final int SS2 = 142;

    public EUC_TW() {
        super("x-EUC-TW", StandardCharsets.aliases_EUC_TW());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "EUC_TW";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return cs.name().equals("US-ASCII") || (cs instanceof EUC_TW);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    public static class Decoder extends CharsetDecoder {
        static final int b1Max = 254;
        static final int b1Min = 161;
        static final int b2Max = 254;
        static final int b2Min = 161;
        static final byte[] b2cIsSupp;
        static final int dbSegSize = 94;
        char[] c1;
        char[] c2;
        static final String[] b2c = EUC_TWMapping.b2c;
        static final byte[] cnspToIndex = new byte[256];

        public Decoder(Charset cs) {
            super(cs, 2.0f, 2.0f);
            this.c1 = new char[1];
            this.c2 = new char[2];
        }

        public char[] toUnicode(int b1, int b2, int p) {
            return decode(b1, b2, p, this.c1, this.c2);
        }

        static {
            Arrays.fill(cnspToIndex, (byte) -1);
            cnspToIndex[162] = 1;
            cnspToIndex[163] = 2;
            cnspToIndex[164] = 3;
            cnspToIndex[165] = 4;
            cnspToIndex[166] = 5;
            cnspToIndex[167] = 6;
            cnspToIndex[175] = 7;
            String b2cIsSuppStr = EUC_TWMapping.b2cIsSuppStr;
            byte[] flag = new byte[b2cIsSuppStr.length() << 1];
            int off = 0;
            for (int i = 0; i < b2cIsSuppStr.length(); i++) {
                char c = b2cIsSuppStr.charAt(i);
                int off2 = off + 1;
                flag[off] = (byte) (c >> '\b');
                off = off2 + 1;
                flag[off2] = (byte) (c & 255);
            }
            b2cIsSupp = flag;
        }

        static boolean isLegalDB(int b) {
            return b >= 161 && b <= 254;
        }

        static char[] decode(int b1, int b2, int p, char[] c1, char[] c2) {
            int index;
            char c;
            if (b1 < 161 || b1 > 254 || b2 < 161 || b2 > 254 || (c = b2c[p].charAt((index = (((b1 - 161) * dbSegSize) + b2) - 161))) == 65533) {
                return null;
            }
            if ((b2cIsSupp[index] & (1 << p)) == 0) {
                c1[0] = c;
                return c1;
            }
            c2[0] = Character.highSurrogate(c + 0);
            c2[1] = Character.lowSurrogate(0 + c);
            return c2;
        }

        private CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) throws Throwable {
            int dp;
            byte[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            char[] da = dst.array();
            int dp2 = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int dp3 = dp2;
            int dp4 = sp;
            while (dp4 < sl) {
                try {
                    int byte1 = sa[dp4] & 255;
                    if (byte1 == EUC_TW.SS2) {
                        if (sl - dp4 < 4) {
                            CoderResult coderResult = CoderResult.UNDERFLOW;
                            return coderResult;
                        }
                        int cnsPlane = cnspToIndex[sa[dp4 + 1] & 255];
                        if (cnsPlane < 0) {
                            CoderResult coderResultMalformedForLength = CoderResult.malformedForLength(2);
                            return coderResultMalformedForLength;
                        }
                        int byte12 = sa[dp4 + 2] & 255;
                        int byte2 = sa[dp4 + 3] & 255;
                        char[] cc = toUnicode(byte12, byte2, cnsPlane);
                        if (cc == null) {
                            if (isLegalDB(byte12) && isLegalDB(byte2)) {
                                CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(4);
                                return coderResultUnmappableForLength;
                            }
                            CoderResult coderResultMalformedForLength2 = CoderResult.malformedForLength(4);
                            return coderResultMalformedForLength2;
                        }
                        if (dl - dp3 < cc.length) {
                            CoderResult coderResult2 = CoderResult.OVERFLOW;
                            return coderResult2;
                        }
                        if (cc.length == 1) {
                            dp = dp3 + 1;
                            try {
                                da[dp3] = cc[0];
                            } catch (Throwable th) {
                                th = th;
                                dp3 = dp;
                                throw th;
                            }
                        } else {
                            int dp5 = dp3 + 1;
                            da[dp3] = cc[0];
                            int dp6 = dp5 + 1;
                            da[dp5] = cc[1];
                            dp = dp6;
                        }
                        dp4 += 4;
                        dp3 = dp;
                    } else if (byte1 < 128) {
                        if (dl - dp3 < 1) {
                            CoderResult coderResult3 = CoderResult.OVERFLOW;
                            return coderResult3;
                        }
                        int dp7 = dp3 + 1;
                        try {
                            da[dp3] = (char) byte1;
                            dp4++;
                            dp3 = dp7;
                        } catch (Throwable th2) {
                            th = th2;
                            dp3 = dp7;
                            throw th;
                        }
                    } else {
                        if (sl - dp4 < 2) {
                            CoderResult coderResult4 = CoderResult.UNDERFLOW;
                            return coderResult4;
                        }
                        int byte22 = sa[dp4 + 1] & 255;
                        char[] cc2 = toUnicode(byte1, byte22, 0);
                        if (cc2 == null) {
                            if (isLegalDB(byte1) && isLegalDB(byte22)) {
                                CoderResult coderResultUnmappableForLength2 = CoderResult.unmappableForLength(2);
                                return coderResultUnmappableForLength2;
                            }
                            CoderResult coderResultMalformedForLength3 = CoderResult.malformedForLength(1);
                            return coderResultMalformedForLength3;
                        }
                        if (dl - dp3 < 1) {
                            CoderResult coderResult5 = CoderResult.OVERFLOW;
                            return coderResult5;
                        }
                        int dp8 = dp3 + 1;
                        da[dp3] = cc2[0];
                        dp4 += 2;
                        dp3 = dp8;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            CoderResult coderResult6 = CoderResult.UNDERFLOW;
            return coderResult6;
        }

        private CoderResult decodeBufferLoop(ByteBuffer src, CharBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    int byte1 = src.get() & 255;
                    if (byte1 == EUC_TW.SS2) {
                        if (src.remaining() < 3) {
                            return CoderResult.UNDERFLOW;
                        }
                        int cnsPlane = cnspToIndex[src.get() & 255];
                        if (cnsPlane < 0) {
                            return CoderResult.malformedForLength(2);
                        }
                        int byte12 = src.get() & 255;
                        int byte2 = src.get() & 255;
                        char[] cc = toUnicode(byte12, byte2, cnsPlane);
                        if (cc == null) {
                            if (isLegalDB(byte12) && isLegalDB(byte2)) {
                                return CoderResult.unmappableForLength(4);
                            }
                            return CoderResult.malformedForLength(4);
                        }
                        if (dst.remaining() < cc.length) {
                            return CoderResult.OVERFLOW;
                        }
                        if (cc.length == 1) {
                            dst.put(cc[0]);
                        } else {
                            dst.put(cc[0]);
                            dst.put(cc[1]);
                        }
                        mark += 4;
                    } else if (byte1 < 128) {
                        if (!dst.hasRemaining()) {
                            return CoderResult.OVERFLOW;
                        }
                        dst.put((char) byte1);
                        mark++;
                    } else {
                        if (!src.hasRemaining()) {
                            return CoderResult.UNDERFLOW;
                        }
                        int byte22 = src.get() & 255;
                        char[] cc2 = toUnicode(byte1, byte22, 0);
                        if (cc2 == null) {
                            if (isLegalDB(byte1) && isLegalDB(byte22)) {
                                return CoderResult.unmappableForLength(2);
                            }
                            return CoderResult.malformedForLength(1);
                        }
                        if (!dst.hasRemaining()) {
                            return CoderResult.OVERFLOW;
                        }
                        dst.put(cc2[0]);
                        mark += 2;
                    }
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

    public static class Encoder extends CharsetEncoder {
        static final char[] c2b;
        static final char[] c2bIndex;
        static final byte[] c2bPlane;
        static final char[] c2bSupp;
        static final char[] c2bSuppIndex;
        private byte[] bb;

        public Encoder(Charset cs) {
            super(cs, 4.0f, 4.0f);
            this.bb = new byte[4];
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return c <= 127 || toEUC(c, this.bb) != -1;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(CharSequence cs) {
            int i = 0;
            while (i < cs.length()) {
                int i2 = i + 1;
                char c = cs.charAt(i);
                if (Character.isHighSurrogate(c)) {
                    if (i2 == cs.length()) {
                        return false;
                    }
                    int i3 = i2 + 1;
                    char low = cs.charAt(i2);
                    if (!Character.isLowSurrogate(low) || toEUC(c, low, this.bb) == -1) {
                        return false;
                    }
                    i = i3;
                } else {
                    if (!canEncode(c)) {
                        return false;
                    }
                    i = i2;
                }
            }
            return true;
        }

        public int toEUC(char hi, char low, byte[] bb) {
            return encode(hi, low, bb);
        }

        public int toEUC(char c, byte[] bb) {
            return encode(c, bb);
        }

        private CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) throws Throwable {
            int outSize;
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            while (sp < sl) {
                try {
                    char c = sa[sp];
                    int inSize = 1;
                    byte[] bArr = this.bb;
                    if (c < 128) {
                        bArr[0] = (byte) c;
                        outSize = 1;
                    } else {
                        outSize = toEUC(c, bArr);
                        if (outSize == -1) {
                            if (Character.isHighSurrogate(c)) {
                                if (sp + 1 == sl) {
                                    CoderResult coderResult = CoderResult.UNDERFLOW;
                                    return coderResult;
                                }
                                if (!Character.isLowSurrogate(sa[sp + 1])) {
                                    CoderResult coderResultMalformedForLength = CoderResult.malformedForLength(1);
                                    return coderResultMalformedForLength;
                                }
                                outSize = toEUC(c, sa[sp + 1], this.bb);
                                inSize = 2;
                            } else if (Character.isLowSurrogate(c)) {
                                CoderResult coderResultMalformedForLength2 = CoderResult.malformedForLength(1);
                                return coderResultMalformedForLength2;
                            }
                        }
                    }
                    if (outSize == -1) {
                        CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(inSize);
                        return coderResultUnmappableForLength;
                    }
                    if (dl - dp < outSize) {
                        CoderResult coderResult2 = CoderResult.OVERFLOW;
                        return coderResult2;
                    }
                    int i = 0;
                    while (i < outSize) {
                        int dp2 = dp + 1;
                        try {
                            da[dp] = this.bb[i];
                            i++;
                            dp = dp2;
                        } catch (Throwable th) {
                            th = th;
                            dp = dp2;
                            throw th;
                        }
                    }
                    sp += inSize;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult3 = CoderResult.UNDERFLOW;
            return coderResult3;
        }

        private CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int outSize;
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    int inSize = 1;
                    char c = src.get();
                    byte[] bArr = this.bb;
                    if (c < 128) {
                        outSize = 1;
                        bArr[0] = (byte) c;
                    } else {
                        outSize = toEUC(c, bArr);
                        if (outSize == -1) {
                            if (Character.isHighSurrogate(c)) {
                                if (!src.hasRemaining()) {
                                    return CoderResult.UNDERFLOW;
                                }
                                char c2 = src.get();
                                if (!Character.isLowSurrogate(c2)) {
                                    return CoderResult.malformedForLength(1);
                                }
                                outSize = toEUC(c, c2, this.bb);
                                inSize = 2;
                            } else if (Character.isLowSurrogate(c)) {
                                return CoderResult.malformedForLength(1);
                            }
                        }
                    }
                    if (outSize == -1) {
                        return CoderResult.unmappableForLength(inSize);
                    }
                    if (dst.remaining() < outSize) {
                        return CoderResult.OVERFLOW;
                    }
                    for (int i = 0; i < outSize; i++) {
                        dst.put(this.bb[i]);
                    }
                    mark += inSize;
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

        static int encode(char hi, char low, byte[] bb) {
            int index;
            char c;
            int c2 = Character.toCodePoint(hi, low);
            if ((983040 & c2) != 131072) {
                return -1;
            }
            int c3 = c2 - 131072;
            char c4 = c2bSuppIndex[c3 >> 8];
            if (c4 == 65533 || (c = c2bSupp[(index = c4 + (c3 & 255))]) == 65533) {
                return -1;
            }
            int p = (c2bPlane[index] >> 4) & 15;
            bb[0] = -114;
            bb[1] = (byte) (p | 160);
            bb[2] = (byte) (c >> '\b');
            bb[3] = (byte) c;
            return 4;
        }

        static int encode(char c, byte[] bb) {
            int index;
            char c2;
            char c3 = c2bIndex[c >> '\b'];
            if (c3 == 65533 || (c2 = c2b[(index = c3 + (c & 255))]) == 65533) {
                return -1;
            }
            int p = c2bPlane[index] & Ascii.SI;
            if (p == 0) {
                bb[0] = (byte) (c2 >> '\b');
                bb[1] = (byte) c2;
                return 2;
            }
            bb[0] = -114;
            bb[1] = (byte) (p | 160);
            bb[2] = (byte) (c2 >> '\b');
            bb[3] = (byte) c2;
            return 4;
        }

        static {
            int b1Min = 161;
            int b1Max = 254;
            String[] b2c = Decoder.b2c;
            byte[] b2cIsSupp = Decoder.b2cIsSupp;
            c2bIndex = EUC_TWMapping.c2bIndex;
            c2bSuppIndex = EUC_TWMapping.c2bSuppIndex;
            char[] c2b0 = new char[31744];
            char[] c2bSupp0 = new char[43520];
            byte[] c2bPlane0 = new byte[Math.max(31744, 43520)];
            Arrays.fill(c2b0, (char) 65533);
            Arrays.fill(c2bSupp0, (char) 65533);
            for (int p = 0; p < b2c.length; p++) {
                String db = b2c[p];
                int plane = p;
                if (plane == 7) {
                    plane = 15;
                } else if (plane != 0) {
                    plane = p + 1;
                }
                int off = 0;
                for (int b1 = b1Min; b1 <= b1Max; b1++) {
                    int b2 = 161;
                    while (b2 <= 254) {
                        int b1Min2 = b1Min;
                        char c = db.charAt(off);
                        int b1Max2 = b1Max;
                        if (c != 65533) {
                            if ((b2cIsSupp[off] & (1 << p)) != 0) {
                                int index = c2bSuppIndex[c >> '\b'] + (c & 255);
                                c2bSupp0[index] = (char) ((b1 << 8) + b2);
                                c2bPlane0[index] = (byte) (c2bPlane0[index] | ((byte) (plane << 4)));
                            } else {
                                int index2 = c2bIndex[c >> '\b'] + (c & 255);
                                c2b0[index2] = (char) ((b1 << 8) + b2);
                                c2bPlane0[index2] = (byte) (c2bPlane0[index2] | ((byte) plane));
                            }
                        }
                        off++;
                        b2++;
                        b1Min = b1Min2;
                        b1Max = b1Max2;
                    }
                }
            }
            c2b = c2b0;
            c2bSupp = c2bSupp0;
            c2bPlane = c2bPlane0;
        }
    }
}
