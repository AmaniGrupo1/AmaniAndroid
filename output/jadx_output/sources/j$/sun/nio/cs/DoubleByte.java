package j$.sun.nio.cs;

import j$.sun.nio.cs.Surrogate;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Arrays;

/* JADX INFO: loaded from: classes19.dex */
public class DoubleByte {
    public static final char[] B2C_UNMAPPABLE = new char[256];

    static {
        Arrays.fill(B2C_UNMAPPABLE, (char) 65533);
    }

    public static class Decoder extends CharsetDecoder implements DelegatableDecoder, ArrayDecoder {
        final int b2Max;
        final int b2Min;
        final char[][] b2c;
        final char[] b2cSB;
        final boolean isASCIICompatible;

        protected CoderResult crMalformedOrUnderFlow(int b) {
            return CoderResult.UNDERFLOW;
        }

        protected CoderResult crMalformedOrUnmappable(int b1, int b2) {
            if (this.b2c[b1] == DoubleByte.B2C_UNMAPPABLE || this.b2c[b2] != DoubleByte.B2C_UNMAPPABLE || decodeSingle(b2) != 65533) {
                return CoderResult.malformedForLength(1);
            }
            return CoderResult.unmappableForLength(2);
        }

        public Decoder(Charset cs, float avgcpb, float maxcpb, char[][] b2c, char[] b2cSB, int b2Min, int b2Max, boolean isASCIICompatible) {
            super(cs, avgcpb, maxcpb);
            this.b2c = b2c;
            this.b2cSB = b2cSB;
            this.b2Min = b2Min;
            this.b2Max = b2Max;
            this.isASCIICompatible = isASCIICompatible;
        }

        public Decoder(Charset cs, char[][] b2c, char[] b2cSB, int b2Min, int b2Max, boolean isASCIICompatible) {
            this(cs, 0.5f, 1.0f, b2c, b2cSB, b2Min, b2Max, isASCIICompatible);
        }

        public Decoder(Charset cs, char[][] b2c, char[] b2cSB, int b2Min, int b2Max) {
            this(cs, 0.5f, 1.0f, b2c, b2cSB, b2Min, b2Max, false);
        }

        protected CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) throws Throwable {
            byte[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            char[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            while (sp < sl && dp < dl) {
                int inSize = 1;
                try {
                    int b1 = sa[sp] & 255;
                    char c = this.b2cSB[b1];
                    if (c == 65533) {
                        if (sl - sp < 2) {
                            CoderResult coderResultCrMalformedOrUnderFlow = crMalformedOrUnderFlow(b1);
                            return coderResultCrMalformedOrUnderFlow;
                        }
                        int b2 = sa[sp + 1] & 255;
                        if (b2 >= this.b2Min && b2 <= this.b2Max) {
                            char c2 = this.b2c[b1][b2 - this.b2Min];
                            c = c2;
                            if (c2 != 65533) {
                                inSize = 1 + 1;
                            }
                        }
                        CoderResult coderResultCrMalformedOrUnmappable = crMalformedOrUnmappable(b1, b2);
                        return coderResultCrMalformedOrUnmappable;
                    }
                    int dp2 = dp + 1;
                    try {
                        da[dp] = c;
                        sp += inSize;
                        dp = dp2;
                    } catch (Throwable th) {
                        th = th;
                        dp = dp2;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult = sp >= sl ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
            return coderResult;
        }

        protected CoderResult decodeBufferLoop(ByteBuffer src, CharBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining() && dst.hasRemaining()) {
                try {
                    int b1 = src.get() & 255;
                    char c = this.b2cSB[b1];
                    int inSize = 1;
                    if (c == 65533) {
                        if (src.remaining() < 1) {
                            return crMalformedOrUnderFlow(b1);
                        }
                        int b2 = src.get() & 255;
                        if (b2 >= this.b2Min && b2 <= this.b2Max) {
                            char c2 = this.b2c[b1][b2 - this.b2Min];
                            c = c2;
                            if (c2 != 65533) {
                                inSize = 1 + 1;
                            }
                        }
                        return crMalformedOrUnmappable(b1, b2);
                    }
                    dst.put(c);
                    mark += inSize;
                } finally {
                }
            }
            return src.hasRemaining() ? CoderResult.OVERFLOW : CoderResult.UNDERFLOW;
        }

        @Override // java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return decodeArrayLoop(src, dst);
            }
            return decodeBufferLoop(src, dst);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003d A[PHI: r4
          0x003d: PHI (r4v5 'c' char) = (r4v1 'c' char), (r4v1 'c' char), (r4v6 'c' char) binds: [B:8:0x0027, B:10:0x002b, B:12:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // j$.sun.nio.cs.ArrayDecoder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int decode(byte[] src, int b1, int len, char[] dst) {
            int dp = 0;
            int sl = b1 + len;
            char repl = replacement().charAt(0);
            while (b1 < sl) {
                int b2 = b1 + 1;
                int b12 = src[b1] & 255;
                char c = this.b2cSB[b12];
                if (c == 65533) {
                    if (b2 < sl) {
                        int sp = b2 + 1;
                        int b22 = src[b2] & 255;
                        if (b22 >= this.b2Min && b22 <= this.b2Max) {
                            char c2 = this.b2c[b12][b22 - this.b2Min];
                            c = c2;
                            if (c2 != 65533) {
                                b2 = sp;
                            }
                        } else if (crMalformedOrUnmappable(b12, b22).length() != 1) {
                            b2 = sp;
                        } else {
                            b2 = sp - 1;
                        }
                    }
                    if (c == 65533) {
                        c = repl;
                    }
                }
                dst[dp] = c;
                b1 = b2;
                dp++;
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.ArrayDecoder
        public boolean isASCIICompatible() {
            return this.isASCIICompatible;
        }

        @Override // java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public void implReset() {
            super.implReset();
        }

        @Override // java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public CoderResult implFlush(CharBuffer out) {
            return super.implFlush(out);
        }

        public char decodeSingle(int b) {
            return this.b2cSB[b];
        }

        public char decodeDouble(int b1, int b2) {
            if (b1 < 0 || b1 > this.b2c.length || b2 < this.b2Min || b2 > this.b2Max) {
                return (char) 65533;
            }
            return this.b2c[b1][b2 - this.b2Min];
        }
    }

    public static class Decoder_EBCDIC extends Decoder {
        private static final int DBCS = 1;
        private static final int SBCS = 0;
        private static final int SI = 15;
        private static final int SO = 14;
        private int currentState;

        public Decoder_EBCDIC(Charset cs, char[][] b2c, char[] b2cSB, int b2Min, int b2Max, boolean isASCIICompatible) {
            super(cs, b2c, b2cSB, b2Min, b2Max, isASCIICompatible);
        }

        public Decoder_EBCDIC(Charset cs, char[][] b2c, char[] b2cSB, int b2Min, int b2Max) {
            super(cs, b2c, b2cSB, b2Min, b2Max, false);
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder, java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public void implReset() {
            this.currentState = 0;
        }

        private static boolean isDoubleByte(int b1, int b2) {
            return (65 <= b1 && b1 <= 254 && 65 <= b2 && b2 <= 254) || (b1 == 64 && b2 == 64);
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        protected CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) throws Throwable {
            char c;
            char c2;
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
                    int inSize = 1;
                    if (b1 != 14) {
                        int i = this.currentState;
                        if (b1 != 15) {
                            if (i == 0) {
                                c2 = this.b2cSB[b1];
                                if (c2 == 65533) {
                                    CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(1);
                                    return coderResultUnmappableForLength;
                                }
                            } else {
                                if (sl - dp3 < 2) {
                                    CoderResult coderResult = CoderResult.UNDERFLOW;
                                    return coderResult;
                                }
                                int b2 = sa[dp3 + 1] & 255;
                                if (b2 < this.b2Min || b2 > this.b2Max || (c = this.b2c[b1][b2 - this.b2Min]) == 65533) {
                                    if (isDoubleByte(b1, b2)) {
                                        CoderResult coderResultUnmappableForLength2 = CoderResult.unmappableForLength(2);
                                        return coderResultUnmappableForLength2;
                                    }
                                    CoderResult coderResultMalformedForLength = CoderResult.malformedForLength(2);
                                    return coderResultMalformedForLength;
                                }
                                inSize = 1 + 1;
                                c2 = c;
                            }
                            if (dl - dp2 < 1) {
                                CoderResult coderResult2 = CoderResult.OVERFLOW;
                                return coderResult2;
                            }
                            int dp4 = dp2 + 1;
                            try {
                                da[dp2] = c2;
                                dp2 = dp4;
                            } catch (Throwable th) {
                                th = th;
                                dp2 = dp4;
                                throw th;
                            }
                        } else {
                            if (i != 1) {
                                CoderResult coderResultMalformedForLength2 = CoderResult.malformedForLength(1);
                                return coderResultMalformedForLength2;
                            }
                            this.currentState = 0;
                        }
                    } else {
                        if (this.currentState != 0) {
                            CoderResult coderResultMalformedForLength3 = CoderResult.malformedForLength(1);
                            return coderResultMalformedForLength3;
                        }
                        this.currentState = 1;
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
            char c;
            char c2;
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    int b1 = src.get() & 255;
                    int inSize = 1;
                    if (b1 != 14) {
                        int i = this.currentState;
                        if (b1 != 15) {
                            if (i == 0) {
                                c2 = this.b2cSB[b1];
                                if (c2 == 65533) {
                                    return CoderResult.unmappableForLength(1);
                                }
                            } else {
                                if (src.remaining() < 1) {
                                    return CoderResult.UNDERFLOW;
                                }
                                int b2 = src.get() & 255;
                                if (b2 < this.b2Min || b2 > this.b2Max || (c = this.b2c[b1][b2 - this.b2Min]) == 65533) {
                                    return !isDoubleByte(b1, b2) ? CoderResult.malformedForLength(2) : CoderResult.unmappableForLength(2);
                                }
                                inSize = 1 + 1;
                                c2 = c;
                            }
                            if (dst.remaining() < 1) {
                                return CoderResult.OVERFLOW;
                            }
                            dst.put(c2);
                        } else {
                            if (i != 1) {
                                return CoderResult.malformedForLength(1);
                            }
                            this.currentState = 0;
                        }
                    } else {
                        if (this.currentState != 0) {
                            return CoderResult.malformedForLength(1);
                        }
                        this.currentState = 1;
                    }
                    mark += inSize;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder, j$.sun.nio.cs.ArrayDecoder
        public int decode(byte[] src, int b1, int len, char[] dst) {
            char c;
            char c2;
            int dp = 0;
            int sl = b1 + len;
            this.currentState = 0;
            char repl = replacement().charAt(0);
            while (b1 < sl) {
                int sp = b1 + 1;
                int b12 = src[b1] & 255;
                if (b12 == 14) {
                    if (this.currentState != 0) {
                        dst[dp] = repl;
                        b1 = sp;
                        dp++;
                    } else {
                        this.currentState = 1;
                        b1 = sp;
                    }
                } else {
                    int i = this.currentState;
                    if (b12 == 15) {
                        if (i != 1) {
                            dst[dp] = repl;
                            b1 = sp;
                            dp++;
                        } else {
                            this.currentState = 0;
                            b1 = sp;
                        }
                    } else {
                        if (i == 0) {
                            c = this.b2cSB[b12];
                            if (c == 65533) {
                                c = repl;
                            }
                        } else if (sl == sp) {
                            c = repl;
                        } else {
                            int sp2 = sp + 1;
                            int b2 = src[sp] & 255;
                            if (b2 < this.b2Min || b2 > this.b2Max || (c2 = this.b2c[b12][b2 - this.b2Min]) == 65533) {
                                sp = sp2;
                                c = repl;
                            } else {
                                sp = sp2;
                                c = c2;
                            }
                        }
                        dst[dp] = c;
                        b1 = sp;
                        dp++;
                    }
                }
            }
            return dp;
        }
    }

    public static class Decoder_DBCSONLY extends Decoder {
        static final char[] b2cSB_UNMAPPABLE = new char[256];

        static {
            Arrays.fill(b2cSB_UNMAPPABLE, (char) 65533);
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        protected CoderResult crMalformedOrUnmappable(int b1, int b2) {
            return CoderResult.unmappableForLength(2);
        }

        public Decoder_DBCSONLY(Charset cs, char[][] b2c, char[] b2cSB, int b2Min, int b2Max, boolean isASCIICompatible) {
            super(cs, 0.5f, 1.0f, b2c, b2cSB_UNMAPPABLE, b2Min, b2Max, isASCIICompatible);
        }

        public Decoder_DBCSONLY(Charset cs, char[][] b2c, char[] b2cSB, int b2Min, int b2Max) {
            super(cs, 0.5f, 1.0f, b2c, b2cSB_UNMAPPABLE, b2Min, b2Max, false);
        }
    }

    public static class Decoder_EUC_SIM extends Decoder {
        private final int SS2;
        private final int SS3;

        public Decoder_EUC_SIM(Charset cs, char[][] b2c, char[] b2cSB, int b2Min, int b2Max, boolean isASCIICompatible) {
            super(cs, b2c, b2cSB, b2Min, b2Max, isASCIICompatible);
            this.SS2 = 142;
            this.SS3 = 143;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        protected CoderResult crMalformedOrUnderFlow(int b) {
            if (b == 142 || b == 143) {
                return CoderResult.malformedForLength(1);
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Decoder
        protected CoderResult crMalformedOrUnmappable(int b1, int b2) {
            if (b1 == 142 || b1 == 143) {
                return CoderResult.malformedForLength(1);
            }
            return CoderResult.unmappableForLength(2);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
        @Override // j$.sun.nio.cs.DoubleByte.Decoder, j$.sun.nio.cs.ArrayDecoder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int decode(byte[] src, int b1, int len, char[] dst) {
            int dp = 0;
            int sl = b1 + len;
            char repl = replacement().charAt(0);
            while (b1 < sl) {
                int b2 = b1 + 1;
                int b12 = src[b1] & 255;
                char c = this.b2cSB[b12];
                if (c == 65533) {
                    if (b2 < sl) {
                        int sp = b2 + 1;
                        int b22 = src[b2] & 255;
                        if (b22 >= this.b2Min && b22 <= this.b2Max) {
                            char c2 = this.b2c[b12][b22 - this.b2Min];
                            c = c2;
                            if (c2 == 65533) {
                            }
                            b2 = sp;
                        } else {
                            if (b12 == 142 || b12 == 143) {
                                sp--;
                            }
                            c = repl;
                            b2 = sp;
                        }
                    } else {
                        c = repl;
                    }
                }
                dst[dp] = c;
                b1 = b2;
                dp++;
            }
            return dp;
        }
    }

    public static class Encoder extends CharsetEncoder implements ArrayEncoder {
        protected final int MAX_SINGLEBYTE;
        private final char[] c2b;
        private final char[] c2bIndex;
        final boolean isASCIICompatible;
        protected byte[] repl;
        protected Surrogate.Parser sgp;

        public Encoder(Charset cs, char[] c2b, char[] c2bIndex) {
            this(cs, c2b, c2bIndex, false);
        }

        public Encoder(Charset cs, char[] c2b, char[] c2bIndex, boolean isASCIICompatible) {
            super(cs, 2.0f, 2.0f);
            this.MAX_SINGLEBYTE = 255;
            this.repl = replacement();
            this.c2b = c2b;
            this.c2bIndex = c2bIndex;
            this.isASCIICompatible = isASCIICompatible;
        }

        public Encoder(Charset cs, float avg, float max, byte[] repl, char[] c2b, char[] c2bIndex, boolean isASCIICompatible) {
            super(cs, avg, max, repl);
            this.MAX_SINGLEBYTE = 255;
            this.repl = replacement();
            this.c2b = c2b;
            this.c2bIndex = c2bIndex;
            this.isASCIICompatible = isASCIICompatible;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return encodeChar(c) != 65533;
        }

        protected Surrogate.Parser sgp() {
            if (this.sgp == null) {
                this.sgp = new Surrogate.Parser();
            }
            return this.sgp;
        }

        protected CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) throws Throwable {
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            while (sp < sl) {
                try {
                    char c = sa[sp];
                    int bb = encodeChar(c);
                    if (bb == 65533) {
                        if (!Character.isSurrogate(c)) {
                            CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(1);
                            return coderResultUnmappableForLength;
                        }
                        int i = sgp().parse(c, sa, sp, sl);
                        Surrogate.Parser parser = this.sgp;
                        if (i < 0) {
                            CoderResult coderResultError = parser.error();
                            return coderResultError;
                        }
                        CoderResult coderResultUnmappableResult = parser.unmappableResult();
                        return coderResultUnmappableResult;
                    }
                    if (bb > 255) {
                        if (dl - dp < 2) {
                            CoderResult coderResult = CoderResult.OVERFLOW;
                            return coderResult;
                        }
                        int dp2 = dp + 1;
                        try {
                            da[dp] = (byte) (bb >> 8);
                            dp = dp2 + 1;
                            da[dp2] = (byte) bb;
                        } catch (Throwable th) {
                            th = th;
                            dp = dp2;
                            throw th;
                        }
                    } else {
                        if (dl - dp < 1) {
                            CoderResult coderResult2 = CoderResult.OVERFLOW;
                            return coderResult2;
                        }
                        int dp3 = dp + 1;
                        da[dp] = (byte) bb;
                        dp = dp3;
                    }
                    sp++;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult3 = CoderResult.UNDERFLOW;
            return coderResult3;
        }

        protected CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    char c = src.get();
                    int bb = encodeChar(c);
                    if (bb == 65533) {
                        if (!Character.isSurrogate(c)) {
                            return CoderResult.unmappableForLength(1);
                        }
                        int i = sgp().parse(c, src);
                        Surrogate.Parser parser = this.sgp;
                        return i < 0 ? parser.error() : parser.unmappableResult();
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

        @Override // java.nio.charset.CharsetEncoder
        protected void implReplaceWith(byte[] newReplacement) {
            this.repl = newReplacement;
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public int encode(char[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = sp + len;
            int length = dst.length;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = src[sp];
                int bb = encodeChar(c);
                if (bb == 65533) {
                    if (Character.isHighSurrogate(c) && sp2 < sl && Character.isLowSurrogate(src[sp2])) {
                        sp2++;
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
                } else {
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
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public int encodeFromLatin1(byte[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = sp + len;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = (char) (src[sp] & 255);
                int bb = encodeChar(c);
                if (bb == 65533) {
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
                } else {
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
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public int encodeFromUTF16(byte[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = sp + len;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = StringUTF16.getChar(src, sp);
                int bb = encodeChar(c);
                if (bb == 65533) {
                    if (Character.isHighSurrogate(c) && sp2 < sl && Character.isLowSurrogate(StringUTF16.getChar(src, sp2))) {
                        sp2++;
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
                } else {
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
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.ArrayEncoder
        public boolean isASCIICompatible() {
            return this.isASCIICompatible;
        }

        public int encodeChar(char ch) {
            return this.c2b[this.c2bIndex[ch >> '\b'] + (ch & 255)];
        }

        public static void initC2B(String[] strArr, String str, String str2, String str3, int i, int i2, char[] cArr, char[] cArr2) {
            Arrays.fill(cArr, (char) 65533);
            int i3 = 256;
            char[][] cArr3 = new char[strArr.length][];
            char[] charArray = null;
            if (str != null) {
                charArray = str.toCharArray();
            }
            for (int i4 = 0; i4 < strArr.length; i4++) {
                if (strArr[i4] != null) {
                    cArr3[i4] = strArr[i4].toCharArray();
                }
            }
            if (str2 != null) {
                int i5 = 0;
                while (i5 < str2.length()) {
                    int i6 = i5 + 1;
                    char cCharAt = str2.charAt(i5);
                    int i7 = i6 + 1;
                    char cCharAt2 = str2.charAt(i6);
                    if (cCharAt < 256 && charArray != null) {
                        if (charArray[cCharAt] == cCharAt2) {
                            charArray[cCharAt] = 65533;
                        }
                    } else if (cArr3[cCharAt >> '\b'][(cCharAt & 255) - i] == cCharAt2) {
                        cArr3[cCharAt >> '\b'][(cCharAt & 255) - i] = 65533;
                    }
                    i5 = i7;
                }
            }
            if (charArray != null) {
                for (int i8 = 0; i8 < charArray.length; i8++) {
                    char c = charArray[i8];
                    if (c != 65533) {
                        char c2 = cArr2[c >> '\b'];
                        int i9 = c2;
                        if (c2 == 0) {
                            int i10 = i3;
                            i3 += 256;
                            cArr2[c >> '\b'] = (char) i10;
                            i9 = i10;
                        }
                        cArr[(c & 255) + i9] = (char) i8;
                    }
                }
            }
            for (int i11 = 0; i11 < strArr.length; i11++) {
                char[] cArr4 = cArr3[i11];
                if (cArr4 != null) {
                    for (int i12 = i; i12 <= i2; i12++) {
                        char c3 = cArr4[i12 - i];
                        if (c3 != 65533) {
                            char c4 = cArr2[c3 >> '\b'];
                            int i13 = c4;
                            if (c4 == 0) {
                                int i14 = i3;
                                i3 += 256;
                                cArr2[c3 >> '\b'] = (char) i14;
                                i13 = i14;
                            }
                            cArr[(c3 & 255) + i13] = (char) ((i11 << 8) | i12);
                        }
                    }
                }
            }
            if (str3 != null) {
                for (int i15 = 0; i15 < str3.length(); i15 += 2) {
                    char cCharAt3 = str3.charAt(i15);
                    char cCharAt4 = str3.charAt(i15 + 1);
                    int i16 = cCharAt4 >> '\b';
                    if (cArr2[i16] == 0) {
                        cArr2[i16] = (char) i3;
                        i3 += 256;
                    }
                    cArr[cArr2[i16] + (cCharAt4 & 255)] = cCharAt3;
                }
            }
        }
    }

    public static class Encoder_DBCSONLY extends Encoder {
        public Encoder_DBCSONLY(Charset cs, byte[] repl, char[] c2b, char[] c2bIndex, boolean isASCIICompatible) {
            super(cs, 2.0f, 2.0f, repl, c2b, c2bIndex, isASCIICompatible);
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder
        public int encodeChar(char ch) {
            int bb = super.encodeChar(ch);
            if (bb <= 255) {
                return 65533;
            }
            return bb;
        }
    }

    public static class Encoder_EBCDIC extends Encoder {
        static final int DBCS = 1;
        static final int SBCS = 0;
        static final byte SI = 15;
        static final byte SO = 14;
        protected int currentState;

        public Encoder_EBCDIC(Charset cs, char[] c2b, char[] c2bIndex, boolean isASCIICompatible) {
            super(cs, 4.0f, 5.0f, new byte[]{111}, c2b, c2bIndex, isASCIICompatible);
            this.currentState = 0;
        }

        @Override // java.nio.charset.CharsetEncoder
        protected void implReset() {
            this.currentState = 0;
        }

        @Override // java.nio.charset.CharsetEncoder
        protected CoderResult implFlush(ByteBuffer out) {
            if (this.currentState == 1) {
                if (out.remaining() < 1) {
                    return CoderResult.OVERFLOW;
                }
                out.put((byte) 15);
            }
            implReset();
            return CoderResult.UNDERFLOW;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder
        protected CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) throws Throwable {
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            while (sp < sl) {
                try {
                    char c = sa[sp];
                    int bb = encodeChar(c);
                    if (bb == 65533) {
                        if (!Character.isSurrogate(c)) {
                            CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(1);
                            return coderResultUnmappableForLength;
                        }
                        if (sgp().parse(c, sa, sp, sl) < 0) {
                            CoderResult coderResultError = this.sgp.error();
                            return coderResultError;
                        }
                        CoderResult coderResultUnmappableResult = this.sgp.unmappableResult();
                        return coderResultUnmappableResult;
                    }
                    int i = this.currentState;
                    if (bb > 255) {
                        if (i == 0) {
                            if (dl - dp < 1) {
                                CoderResult coderResult = CoderResult.OVERFLOW;
                                return coderResult;
                            }
                            this.currentState = 1;
                            int dp2 = dp + 1;
                            try {
                                da[dp] = 14;
                                dp = dp2;
                            } catch (Throwable th) {
                                th = th;
                                dp = dp2;
                                throw th;
                            }
                        }
                        if (dl - dp < 2) {
                            CoderResult coderResult2 = CoderResult.OVERFLOW;
                            return coderResult2;
                        }
                        int dp3 = dp + 1;
                        da[dp] = (byte) (bb >> 8);
                        dp = dp3 + 1;
                        da[dp3] = (byte) bb;
                    } else {
                        if (i == 1) {
                            if (dl - dp < 1) {
                                CoderResult coderResult3 = CoderResult.OVERFLOW;
                                return coderResult3;
                            }
                            this.currentState = 0;
                            int dp4 = dp + 1;
                            da[dp] = 15;
                            dp = dp4;
                        }
                        if (dl - dp < 1) {
                            CoderResult coderResult4 = CoderResult.OVERFLOW;
                            return coderResult4;
                        }
                        int dp5 = dp + 1;
                        da[dp] = (byte) bb;
                        dp = dp5;
                    }
                    sp++;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult5 = CoderResult.UNDERFLOW;
            return coderResult5;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder
        protected CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    char c = src.get();
                    int bb = encodeChar(c);
                    if (bb == 65533) {
                        return Character.isSurrogate(c) ? sgp().parse(c, src) < 0 ? this.sgp.error() : this.sgp.unmappableResult() : CoderResult.unmappableForLength(1);
                    }
                    int i = this.currentState;
                    if (bb > 255) {
                        if (i == 0) {
                            if (dst.remaining() < 1) {
                                return CoderResult.OVERFLOW;
                            }
                            this.currentState = 1;
                            dst.put((byte) 14);
                        }
                        if (dst.remaining() < 2) {
                            return CoderResult.OVERFLOW;
                        }
                        dst.put((byte) (bb >> 8));
                        dst.put((byte) bb);
                    } else {
                        if (i == 1) {
                            if (dst.remaining() < 1) {
                                return CoderResult.OVERFLOW;
                            }
                            this.currentState = 0;
                            dst.put((byte) 15);
                        }
                        if (dst.remaining() < 1) {
                            return CoderResult.OVERFLOW;
                        }
                        dst.put((byte) bb);
                    }
                    mark++;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
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
                    if (Character.isHighSurrogate(c) && sp2 < sl && Character.isLowSurrogate(src[sp2])) {
                        sp2++;
                    }
                    int dp2 = dp + 1;
                    dst[dp] = this.repl[0];
                    if (this.repl.length <= 1) {
                        dp = dp2;
                        sp = sp2;
                    } else {
                        dp = dp2 + 1;
                        dst[dp2] = this.repl[1];
                        sp = sp2;
                    }
                } else {
                    int i = this.currentState;
                    if (bb > 255) {
                        if (i == 0) {
                            this.currentState = 1;
                            dst[dp] = 14;
                            dp++;
                        }
                        int dp3 = dp + 1;
                        dst[dp] = (byte) (bb >> 8);
                        dp = dp3 + 1;
                        dst[dp3] = (byte) bb;
                    } else {
                        if (i == 1) {
                            this.currentState = 0;
                            dst[dp] = 15;
                            dp++;
                        }
                        dst[dp] = (byte) bb;
                        dp++;
                    }
                    sp = sp2;
                }
            }
            if (this.currentState == 1) {
                this.currentState = 0;
                int dp4 = dp + 1;
                dst[dp] = 15;
                return dp4;
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder, j$.sun.nio.cs.ArrayEncoder
        public int encodeFromLatin1(byte[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = sp + len;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = (char) (src[sp] & 255);
                int bb = encodeChar(c);
                if (bb == 65533) {
                    int dp2 = dp + 1;
                    dst[dp] = this.repl[0];
                    if (this.repl.length <= 1) {
                        dp = dp2;
                        sp = sp2;
                    } else {
                        dp = dp2 + 1;
                        dst[dp2] = this.repl[1];
                        sp = sp2;
                    }
                } else {
                    int i = this.currentState;
                    if (bb > 255) {
                        if (i == 0) {
                            this.currentState = 1;
                            dst[dp] = 14;
                            dp++;
                        }
                        int dp3 = dp + 1;
                        dst[dp] = (byte) (bb >> 8);
                        dp = dp3 + 1;
                        dst[dp3] = (byte) bb;
                    } else {
                        if (i == 1) {
                            this.currentState = 0;
                            dst[dp] = 15;
                            dp++;
                        }
                        dst[dp] = (byte) bb;
                        dp++;
                    }
                    sp = sp2;
                }
            }
            if (this.currentState == 1) {
                this.currentState = 0;
                int dp4 = dp + 1;
                dst[dp] = 15;
                return dp4;
            }
            return dp;
        }

        @Override // j$.sun.nio.cs.DoubleByte.Encoder, j$.sun.nio.cs.ArrayEncoder
        public int encodeFromUTF16(byte[] src, int sp, int len, byte[] dst) {
            int dp = 0;
            int sl = sp + len;
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = StringUTF16.getChar(src, sp);
                int bb = encodeChar(c);
                if (bb == 65533) {
                    if (Character.isHighSurrogate(c) && sp2 < sl && Character.isLowSurrogate(StringUTF16.getChar(src, sp2))) {
                        sp2++;
                    }
                    int dp2 = dp + 1;
                    dst[dp] = this.repl[0];
                    if (this.repl.length <= 1) {
                        dp = dp2;
                        sp = sp2;
                    } else {
                        dp = dp2 + 1;
                        dst[dp2] = this.repl[1];
                        sp = sp2;
                    }
                } else {
                    int i = this.currentState;
                    if (bb > 255) {
                        if (i == 0) {
                            this.currentState = 1;
                            dst[dp] = 14;
                            dp++;
                        }
                        int dp3 = dp + 1;
                        dst[dp] = (byte) (bb >> 8);
                        dp = dp3 + 1;
                        dst[dp3] = (byte) bb;
                    } else {
                        if (i == 1) {
                            this.currentState = 0;
                            dst[dp] = 15;
                            dp++;
                        }
                        dst[dp] = (byte) bb;
                        dp++;
                    }
                    sp = sp2;
                }
            }
            if (this.currentState == 1) {
                this.currentState = 0;
                int dp4 = dp + 1;
                dst[dp] = 15;
                return dp4;
            }
            return dp;
        }
    }

    public static class Encoder_EUC_SIM extends Encoder {
        public Encoder_EUC_SIM(Charset cs, char[] c2b, char[] c2bIndex, boolean isASCIICompatible) {
            super(cs, c2b, c2bIndex, isASCIICompatible);
        }
    }
}
