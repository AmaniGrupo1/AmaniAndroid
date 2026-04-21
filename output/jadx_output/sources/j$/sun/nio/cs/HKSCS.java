package j$.sun.nio.cs;

import j$.sun.nio.cs.DoubleByte;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CoderResult;
import java.util.Arrays;

/* JADX INFO: loaded from: classes19.dex */
public class HKSCS {

    public static class Decoder extends DoubleByte.Decoder {
        private char[][] b2cBmp;
        private char[][] b2cSupp;
        private DoubleByte.Decoder big5Dec;
        static int b2Min = 64;
        static int b2Max = 254;

        protected Decoder(Charset cs, DoubleByte.Decoder big5Dec, char[][] b2cBmp, char[][] b2cSupp) {
            super(cs, 0.5f, 1.0f, null, null, 0, 0, true);
            this.big5Dec = big5Dec;
            this.b2cBmp = b2cBmp;
            this.b2cSupp = b2cSupp;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        public char decodeSingle(int b) {
            return this.big5Dec.decodeSingle(b);
        }

        public char decodeBig5(int b1, int b2) {
            return this.big5Dec.decodeDouble(b1, b2);
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        public char decodeDouble(int b1, int b2) {
            return this.b2cBmp[b1][b2 - b2Min];
        }

        public char decodeDoubleEx(int b1, int b2) {
            return this.b2cSupp[b1][b2 - b2Min];
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        protected CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) throws Throwable {
            int i;
            byte[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            char[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int dp2 = dp;
            int dp3 = sp;
            while (dp3 < sl) {
                try {
                    int b1 = sa[dp3] & 255;
                    char c = decodeSingle(b1);
                    int inSize = 1;
                    int outSize = 1;
                    if (c == 65533) {
                        if (sl - dp3 < 2) {
                            CoderResult coderResult = CoderResult.UNDERFLOW;
                            return coderResult;
                        }
                        int b2 = sa[dp3 + 1] & 255;
                        inSize = 1 + 1;
                        i = 2;
                        if (b2 >= b2Min && b2 <= b2Max) {
                            c = decodeDouble(b1, b2);
                            if (c == 65533) {
                                c = decodeDoubleEx(b1, b2);
                                if (c == 65533) {
                                    c = decodeBig5(b1, b2);
                                    if (c == 65533) {
                                        CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(2);
                                        return coderResultUnmappableForLength;
                                    }
                                } else {
                                    outSize = 2;
                                }
                            }
                        }
                        CoderResult coderResultUnmappableForLength2 = CoderResult.unmappableForLength(2);
                        return coderResultUnmappableForLength2;
                    }
                    i = 2;
                    if (dl - dp2 < outSize) {
                        CoderResult coderResult2 = CoderResult.OVERFLOW;
                        return coderResult2;
                    }
                    if (outSize == i) {
                        int dp4 = dp2 + 1;
                        try {
                            da[dp2] = Surrogate.high(c + 0);
                            dp2 = dp4 + 1;
                            da[dp4] = Surrogate.low(0 + c);
                        } catch (Throwable th) {
                            th = th;
                            dp2 = dp4;
                            throw th;
                        }
                    } else {
                        int dp5 = dp2 + 1;
                        da[dp2] = c;
                        dp2 = dp5;
                    }
                    dp3 += inSize;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult3 = CoderResult.UNDERFLOW;
            return coderResult3;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        protected CoderResult decodeBufferLoop(ByteBuffer src, CharBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    int b1 = src.get() & 255;
                    int inSize = 1;
                    int outSize = 1;
                    char c = decodeSingle(b1);
                    if (c == 65533) {
                        if (src.remaining() < 1) {
                            return CoderResult.UNDERFLOW;
                        }
                        int b2 = src.get() & 255;
                        inSize = 1 + 1;
                        if (b2 >= b2Min && b2 <= b2Max) {
                            c = decodeDouble(b1, b2);
                            if (c == 65533) {
                                c = decodeDoubleEx(b1, b2);
                                if (c == 65533) {
                                    c = decodeBig5(b1, b2);
                                    if (c == 65533) {
                                        return CoderResult.unmappableForLength(2);
                                    }
                                } else {
                                    outSize = 2;
                                }
                            }
                        }
                        return CoderResult.unmappableForLength(2);
                    }
                    if (dst.remaining() < outSize) {
                        return CoderResult.OVERFLOW;
                    }
                    if (outSize == 2) {
                        dst.put(Surrogate.high(c + 0));
                        dst.put(Surrogate.low(0 + c));
                    } else {
                        dst.put(c);
                    }
                    mark += inSize;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder, j$.sun.nio.cs.ArrayDecoder
        public int decode(byte[] src, int b1, int len, char[] dst) {
            int sp;
            int dp = 0;
            int sl = b1 + len;
            char repl = replacement().charAt(0);
            while (b1 < sl) {
                int sp2 = b1 + 1;
                int b12 = src[b1] & 255;
                char c = decodeSingle(b12);
                if (c != 65533) {
                    sp = sp2;
                } else if (sl == sp2) {
                    c = repl;
                    sp = sp2;
                } else {
                    sp = sp2 + 1;
                    int b2 = src[sp2] & 255;
                    if (b2 < b2Min || b2 > b2Max) {
                        c = repl;
                    } else {
                        char cDecodeDouble = decodeDouble(b12, b2);
                        c = cDecodeDouble;
                        if (cDecodeDouble == 65533) {
                            char c2 = decodeDoubleEx(b12, b2);
                            if (c2 == 65533) {
                                c = decodeBig5(b12, b2);
                                if (c == 65533) {
                                    c = repl;
                                }
                            } else {
                                int dp2 = dp + 1;
                                dst[dp] = Surrogate.high(c2 + 0);
                                dp = dp2 + 1;
                                dst[dp2] = Surrogate.low(0 + c2);
                                b1 = sp;
                            }
                        }
                    }
                }
                dst[dp] = c;
                dp++;
                b1 = sp;
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder, java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return decodeArrayLoop(src, dst);
            }
            return decodeBufferLoop(src, dst);
        }

        public static void initb2c(char[][] b2c, String[] b2cStr) {
            for (int i = 0; i < b2cStr.length; i++) {
                if (b2cStr[i] == null) {
                    b2c[i] = DoubleByte.B2C_UNMAPPABLE;
                } else {
                    b2c[i] = b2cStr[i].toCharArray();
                }
            }
        }
    }

    public static class Encoder extends DoubleByte.Encoder {
        static char[] C2B_UNMAPPABLE = new char[256];
        private DoubleByte.Encoder big5Enc;
        private char[][] c2bBmp;
        private char[][] c2bSupp;
        private byte[] repl;

        protected Encoder(Charset cs, DoubleByte.Encoder big5Enc, char[][] c2bBmp, char[][] c2bSupp) {
            super(cs, null, null, true);
            this.repl = replacement();
            this.big5Enc = big5Enc;
            this.c2bBmp = c2bBmp;
            this.c2bSupp = c2bSupp;
        }

        public int encodeBig5(char ch) {
            return this.big5Enc.encodeChar(ch);
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder
        public int encodeChar(char ch) {
            char c = this.c2bBmp[ch >> '\b'][ch & 255];
            if (c == 65533) {
                return encodeBig5(ch);
            }
            return c;
        }

        public int encodeSupp(int cp) {
            if ((983040 & cp) != 131072) {
                return 65533;
            }
            return this.c2bSupp[(cp >> 8) & 255][cp & 255];
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder, java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return encodeChar(c) != 65533;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder
        protected CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) throws Throwable {
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int dp2 = dp;
            int dp3 = sp;
            while (dp3 < sl) {
                try {
                    char c = sa[dp3];
                    int inSize = 1;
                    int bb = encodeChar(c);
                    if (bb == 65533) {
                        if (!Character.isSurrogate(c)) {
                            CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(1);
                            return coderResultUnmappableForLength;
                        }
                        int cp = sgp().parse(c, sa, dp3, sl);
                        if (cp < 0) {
                            CoderResult coderResultError = this.sgp.error();
                            return coderResultError;
                        }
                        bb = encodeSupp(cp);
                        if (bb == 65533) {
                            CoderResult coderResultUnmappableForLength2 = CoderResult.unmappableForLength(2);
                            return coderResultUnmappableForLength2;
                        }
                        inSize = 2;
                    }
                    if (bb > 255) {
                        if (dl - dp2 < 2) {
                            CoderResult coderResult = CoderResult.OVERFLOW;
                            return coderResult;
                        }
                        int dp4 = dp2 + 1;
                        try {
                            da[dp2] = (byte) (bb >> 8);
                            dp2 = dp4 + 1;
                            da[dp4] = (byte) bb;
                        } catch (Throwable th) {
                            th = th;
                            dp2 = dp4;
                            throw th;
                        }
                    } else {
                        if (dl - dp2 < 1) {
                            CoderResult coderResult2 = CoderResult.OVERFLOW;
                            return coderResult2;
                        }
                        int dp5 = dp2 + 1;
                        da[dp2] = (byte) bb;
                        dp2 = dp5;
                    }
                    dp3 += inSize;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult3 = CoderResult.UNDERFLOW;
            return coderResult3;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder
        protected CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    int inSize = 1;
                    char c = src.get();
                    int bb = encodeChar(c);
                    if (bb == 65533) {
                        if (!Character.isSurrogate(c)) {
                            return CoderResult.unmappableForLength(1);
                        }
                        int cp = sgp().parse(c, src);
                        if (cp < 0) {
                            return this.sgp.error();
                        }
                        bb = encodeSupp(cp);
                        if (bb == 65533) {
                            return CoderResult.unmappableForLength(2);
                        }
                        inSize = 2;
                    }
                    if (bb > 255) {
                        if (dst.remaining() < 2) {
                            return CoderResult.OVERFLOW;
                        }
                        dst.put((byte) (bb >> 8));
                        dst.put((byte) bb);
                    } else {
                        if (dst.remaining() < 1) {
                            return CoderResult.OVERFLOW;
                        }
                        dst.put((byte) bb);
                    }
                    mark += inSize;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder, java.nio.charset.CharsetEncoder
        protected CoderResult encodeLoop(CharBuffer src, ByteBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return encodeArrayLoop(src, dst);
            }
            return encodeBufferLoop(src, dst);
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder, java.nio.charset.CharsetEncoder
        protected void implReplaceWith(byte[] newReplacement) {
            this.repl = newReplacement;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder, j$.sun.nio.cs.ArrayEncoder
        public int encode(char[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = sp + len;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = src[sp];
                int bb = encodeChar(c);
                if (bb == 65533) {
                    if (Character.isHighSurrogate(c) && sp2 != sl && Character.isLowSurrogate(src[sp2])) {
                        int sp3 = sp2 + 1;
                        int iEncodeSupp = encodeSupp(Character.toCodePoint(c, src[sp2]));
                        bb = iEncodeSupp;
                        if (iEncodeSupp == 65533) {
                            sp2 = sp3;
                        } else {
                            sp2 = sp3;
                        }
                    }
                    int dp2 = dp + 1;
                    dst[dp] = this.repl[0];
                    if (this.repl.length <= 1) {
                        sp = sp2;
                        dp = dp2;
                    } else {
                        dp = dp2 + 1;
                        dst[dp2] = this.repl[1];
                        sp = sp2;
                    }
                }
                if (bb > 255) {
                    int dp3 = dp + 1;
                    dst[dp] = (byte) (bb >> 8);
                    dp = dp3 + 1;
                    dst[dp3] = (byte) bb;
                } else {
                    dst[dp] = (byte) bb;
                    dp++;
                }
                sp = sp2;
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder, j$.sun.nio.cs.ArrayEncoder
        public int encodeFromUTF16(byte[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = sp + len;
            int length = dst.length;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = StringUTF16.getChar(src, sp);
                int bb = encodeChar(c);
                if (bb == 65533) {
                    if (Character.isHighSurrogate(c) && sp2 != sl && Character.isLowSurrogate(StringUTF16.getChar(src, sp2))) {
                        int sp3 = sp2 + 1;
                        int iEncodeSupp = encodeSupp(Character.toCodePoint(c, StringUTF16.getChar(src, sp2)));
                        bb = iEncodeSupp;
                        if (iEncodeSupp == 65533) {
                            sp2 = sp3;
                        } else {
                            sp2 = sp3;
                        }
                    }
                    int dp2 = dp + 1;
                    dst[dp] = this.repl[0];
                    if (this.repl.length <= 1) {
                        sp = sp2;
                        dp = dp2;
                    } else {
                        dp = dp2 + 1;
                        dst[dp2] = this.repl[1];
                        sp = sp2;
                    }
                }
                if (bb > 255) {
                    int dp3 = dp + 1;
                    dst[dp] = (byte) (bb >> 8);
                    dp = dp3 + 1;
                    dst[dp3] = (byte) bb;
                } else {
                    dst[dp] = (byte) bb;
                    dp++;
                }
                sp = sp2;
            }
            return dp;
        }

        static {
            Arrays.fill(C2B_UNMAPPABLE, (char) 65533);
        }

        public static void initc2b(char[][] c2b, String[] b2cStr, String pua) {
            Arrays.fill(c2b, C2B_UNMAPPABLE);
            for (int b1 = 0; b1 < 256; b1++) {
                String s = b2cStr[b1];
                if (s != null) {
                    for (int i = 0; i < s.length(); i++) {
                        char c = s.charAt(i);
                        if (c != 65533) {
                            int hi = c >> '\b';
                            if (c2b[hi] == C2B_UNMAPPABLE) {
                                c2b[hi] = new char[256];
                                Arrays.fill(c2b[hi], (char) 65533);
                            }
                            c2b[hi][c & 255] = (char) ((b1 << 8) | (i + 64));
                        }
                    }
                }
            }
            if (pua != null) {
                char c2 = 57344;
                for (int i2 = 0; i2 < pua.length(); i2++) {
                    char bb = pua.charAt(i2);
                    if (bb != 65533) {
                        int hi2 = c2 >> '\b';
                        if (c2b[hi2] == C2B_UNMAPPABLE) {
                            c2b[hi2] = new char[256];
                            Arrays.fill(c2b[hi2], (char) 65533);
                        }
                        c2b[hi2][c2 & 255] = bb;
                    }
                    c2 = (char) (c2 + 1);
                }
            }
        }
    }
}
