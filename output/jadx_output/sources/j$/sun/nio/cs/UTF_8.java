package j$.sun.nio.cs;

import androidx.media3.extractor.ts.PsExtractor;
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
public final class UTF_8 extends Unicode {
    public static final UTF_8 INSTANCE = new UTF_8();

    @Override // j$.sun.nio.cs.Unicode, java.nio.charset.Charset
    public /* bridge */ /* synthetic */ boolean contains(Charset charset) {
        return super.contains(charset);
    }

    public UTF_8() {
        super("UTF-8", StandardCharsets.aliases_UTF_8());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "UTF8";
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    static final void updatePositions(Buffer src, int sp, Buffer dst, int dp) {
        src.position(sp - src.arrayOffset());
        dst.position(dp - dst.arrayOffset());
    }

    private static class Decoder extends CharsetDecoder {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private Decoder(Charset cs) {
            super(cs, 1.0f, 1.0f);
        }

        private static boolean isNotContinuation(int b) {
            return (b & PsExtractor.AUDIO_STREAM) != 128;
        }

        private static boolean isMalformed3(int b1, int b2, int b3) {
            return ((b1 != -32 || (b2 & 224) != 128) && (b2 & PsExtractor.AUDIO_STREAM) == 128 && (b3 & PsExtractor.AUDIO_STREAM) == 128) ? false : true;
        }

        private static boolean isMalformed3_2(int b1, int b2) {
            return (b1 == -32 && (b2 & 224) == 128) || (b2 & PsExtractor.AUDIO_STREAM) != 128;
        }

        private static boolean isMalformed4(int b2, int b3, int b4) {
            return ((b2 & PsExtractor.AUDIO_STREAM) == 128 && (b3 & PsExtractor.AUDIO_STREAM) == 128 && (b4 & PsExtractor.AUDIO_STREAM) == 128) ? false : true;
        }

        private static boolean isMalformed4_2(int b1, int b2) {
            return (b1 == 240 && (b2 < 144 || b2 > 191)) || (b1 == 244 && (b2 & PsExtractor.VIDEO_STREAM_MASK) != 128) || (b2 & PsExtractor.AUDIO_STREAM) != 128;
        }

        private static boolean isMalformed4_3(int b3) {
            return (b3 & PsExtractor.AUDIO_STREAM) != 128;
        }

        private static CoderResult lookupN(ByteBuffer src, int n) {
            for (int i = 1; i < n; i++) {
                if (isNotContinuation(src.get())) {
                    return CoderResult.malformedForLength(i);
                }
            }
            return CoderResult.malformedForLength(n);
        }

        private static CoderResult malformedN(ByteBuffer src, int nb) {
            switch (nb) {
                case 1:
                case 2:
                    return CoderResult.malformedForLength(1);
                case 3:
                    int b1 = src.get();
                    int b2 = src.get();
                    return CoderResult.malformedForLength(((b1 == -32 && (b2 & 224) == 128) || isNotContinuation(b2)) ? 1 : 2);
                case 4:
                    int b12 = src.get() & 255;
                    int b22 = src.get() & 255;
                    if (b12 > 244 || ((b12 == 240 && (b22 < 144 || b22 > 191)) || ((b12 == 244 && (b22 & PsExtractor.VIDEO_STREAM_MASK) != 128) || isNotContinuation(b22)))) {
                        return CoderResult.malformedForLength(1);
                    }
                    if (isNotContinuation(src.get())) {
                        return CoderResult.malformedForLength(2);
                    }
                    return CoderResult.malformedForLength(3);
                default:
                    return null;
            }
        }

        private static CoderResult malformed(ByteBuffer src, int sp, CharBuffer dst, int dp, int nb) {
            CoderResult cr = malformedN(src, nb);
            UTF_8.updatePositions(src, sp, dst, dp);
            return cr;
        }

        private static CoderResult malformed(ByteBuffer src, int mark, int nb) {
            CoderResult cr = malformedN(src, nb);
            return cr;
        }

        private static CoderResult malformedForLength(ByteBuffer src, int sp, CharBuffer dst, int dp, int malformedNB) {
            UTF_8.updatePositions(src, sp, dst, dp);
            return CoderResult.malformedForLength(malformedNB);
        }

        private static CoderResult malformedForLength(ByteBuffer src, int mark, int malformedNB) {
            return CoderResult.malformedForLength(malformedNB);
        }

        private static CoderResult xflow(Buffer src, int sp, int sl, Buffer dst, int dp, int nb) {
            UTF_8.updatePositions(src, sp, dst, dp);
            return (nb == 0 || sl - sp < nb) ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
        }

        private static CoderResult xflow(Buffer src, int mark, int nb) {
            src.position(mark);
            return (nb == 0 || src.remaining() < nb) ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
        }

        private CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) {
            byte[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.limit() + src.arrayOffset();
            char[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int dlASCII = dp + Math.min(sl - sp, dl - dp);
            while (dp < dlASCII && sa[sp] >= 0) {
                da[dp] = (char) sa[sp];
                dp++;
                sp++;
            }
            int dp2 = dp;
            int dp3 = sp;
            while (dp3 < sl) {
                int b1 = sa[dp3];
                if (b1 >= 0) {
                    if (dp2 >= dl) {
                        return xflow(src, dp3, sl, dst, dp2, 1);
                    }
                    da[dp2] = (char) b1;
                    dp3++;
                    dp2++;
                } else if ((b1 >> 5) == -2 && (b1 & 30) != 0) {
                    if (sl - dp3 < 2 || dp2 >= dl) {
                        return xflow(src, dp3, sl, dst, dp2, 2);
                    }
                    int b2 = sa[dp3 + 1];
                    if (isNotContinuation(b2)) {
                        return malformedForLength(src, dp3, dst, dp2, 1);
                    }
                    da[dp2] = (char) (((b1 << 6) ^ b2) ^ Utf8.MASK_2BYTES);
                    dp3 += 2;
                    dp2++;
                } else if ((b1 >> 4) == -2) {
                    int srcRemaining = sl - dp3;
                    if (srcRemaining < 3 || dp2 >= dl) {
                        if (srcRemaining <= 1 || !isMalformed3_2(b1, sa[dp3 + 1])) {
                            return xflow(src, dp3, sl, dst, dp2, 3);
                        }
                        return malformedForLength(src, dp3, dst, dp2, 1);
                    }
                    int b22 = sa[dp3 + 1];
                    int b3 = sa[dp3 + 2];
                    if (isMalformed3(b1, b22, b3)) {
                        return malformed(src, dp3, dst, dp2, 3);
                    }
                    char c = (char) (((b1 << 12) ^ (b22 << 6)) ^ ((-123008) ^ b3));
                    if (Character.isSurrogate(c)) {
                        return malformedForLength(src, dp3, dst, dp2, 3);
                    }
                    da[dp2] = c;
                    dp3 += 3;
                    dp2++;
                } else if ((b1 >> 3) == -2) {
                    int srcRemaining2 = sl - dp3;
                    if (srcRemaining2 < 4 || dl - dp2 < 2) {
                        int b12 = b1 & 255;
                        if (b12 > 244 || (srcRemaining2 > 1 && isMalformed4_2(b12, sa[dp3 + 1] & 255))) {
                            return malformedForLength(src, dp3, dst, dp2, 1);
                        }
                        if (srcRemaining2 <= 2 || !isMalformed4_3(sa[dp3 + 2])) {
                            return xflow(src, dp3, sl, dst, dp2, 4);
                        }
                        return malformedForLength(src, dp3, dst, dp2, 2);
                    }
                    int b23 = sa[dp3 + 1];
                    int b32 = sa[dp3 + 2];
                    int b4 = sa[dp3 + 3];
                    int uc = (((b1 << 18) ^ (b23 << 12)) ^ (b32 << 6)) ^ (b4 ^ Utf8.MASK_4BYTES);
                    if (isMalformed4(b23, b32, b4) || !Character.isSupplementaryCodePoint(uc)) {
                        return malformed(src, dp3, dst, dp2, 4);
                    }
                    int dp4 = dp2 + 1;
                    da[dp2] = Character.highSurrogate(uc);
                    dp2 = dp4 + 1;
                    da[dp4] = Character.lowSurrogate(uc);
                    dp3 += 4;
                } else {
                    return malformed(src, dp3, dst, dp2, 1);
                }
            }
            return xflow(src, dp3, sl, dst, dp2, 0);
        }

        private CoderResult decodeBufferLoop(ByteBuffer src, CharBuffer dst) {
            int mark = src.position();
            int limit = src.limit();
            while (mark < limit) {
                int b1 = src.get();
                if (b1 >= 0) {
                    if (dst.remaining() < 1) {
                        return xflow(src, mark, 1);
                    }
                    dst.put((char) b1);
                    mark++;
                } else if ((b1 >> 5) == -2 && (b1 & 30) != 0) {
                    if (limit - mark < 2 || dst.remaining() < 1) {
                        return xflow(src, mark, 2);
                    }
                    int b2 = src.get();
                    if (isNotContinuation(b2)) {
                        return malformedForLength(src, mark, 1);
                    }
                    dst.put((char) (((b1 << 6) ^ b2) ^ Utf8.MASK_2BYTES));
                    mark += 2;
                } else if ((b1 >> 4) == -2) {
                    int srcRemaining = limit - mark;
                    if (srcRemaining < 3 || dst.remaining() < 1) {
                        if (srcRemaining > 1 && isMalformed3_2(b1, src.get())) {
                            return malformedForLength(src, mark, 1);
                        }
                        return xflow(src, mark, 3);
                    }
                    int b22 = src.get();
                    int b3 = src.get();
                    if (isMalformed3(b1, b22, b3)) {
                        return malformed(src, mark, 3);
                    }
                    char c = (char) (((b1 << 12) ^ (b22 << 6)) ^ ((-123008) ^ b3));
                    if (Character.isSurrogate(c)) {
                        return malformedForLength(src, mark, 3);
                    }
                    dst.put(c);
                    mark += 3;
                } else if ((b1 >> 3) == -2) {
                    int srcRemaining2 = limit - mark;
                    if (srcRemaining2 < 4 || dst.remaining() < 2) {
                        int b12 = b1 & 255;
                        if (b12 > 244 || (srcRemaining2 > 1 && isMalformed4_2(b12, src.get() & 255))) {
                            return malformedForLength(src, mark, 1);
                        }
                        if (srcRemaining2 > 2 && isMalformed4_3(src.get())) {
                            return malformedForLength(src, mark, 2);
                        }
                        return xflow(src, mark, 4);
                    }
                    int b23 = src.get();
                    int b32 = src.get();
                    int b4 = src.get();
                    int uc = (((b1 << 18) ^ (b23 << 12)) ^ (b32 << 6)) ^ (3678080 ^ b4);
                    if (isMalformed4(b23, b32, b4) || !Character.isSupplementaryCodePoint(uc)) {
                        return malformed(src, mark, 4);
                    }
                    dst.put(Character.highSurrogate(uc));
                    dst.put(Character.lowSurrogate(uc));
                    mark += 4;
                } else {
                    return malformed(src, mark, 1);
                }
            }
            return xflow(src, mark, 0);
        }

        @Override // java.nio.charset.CharsetDecoder
        protected CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return decodeArrayLoop(src, dst);
            }
            return decodeBufferLoop(src, dst);
        }

        private static ByteBuffer getByteBuffer(ByteBuffer bb, byte[] ba, int sp) {
            if (bb == null) {
                bb = ByteBuffer.wrap(ba);
            }
            return bb;
        }
    }

    private static final class Encoder extends CharsetEncoder {
        private Surrogate.Parser sgp;

        private Encoder(Charset cs) {
            super(cs, 1.1f, 3.0f);
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return !Character.isSurrogate(c);
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean isLegalReplacement(byte[] repl) {
            return (repl.length == 1 && repl[0] >= 0) || super.isLegalReplacement(repl);
        }

        private static CoderResult overflow(CharBuffer src, int sp, ByteBuffer dst, int dp) {
            UTF_8.updatePositions(src, sp, dst, dp);
            return CoderResult.OVERFLOW;
        }

        private static CoderResult overflow(CharBuffer src, int mark) {
            return CoderResult.OVERFLOW;
        }

        private CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) {
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int dlASCII = Math.min(sl - sp, dl - dp) + dp;
            while (dp < dlASCII && sa[sp] < 128) {
                da[dp] = (byte) sa[sp];
                dp++;
                sp++;
            }
            while (sp < sl) {
                char c = sa[sp];
                if (c < 128) {
                    if (dp >= dl) {
                        return overflow(src, sp, dst, dp);
                    }
                    da[dp] = (byte) c;
                    dp++;
                } else if (c < 2048) {
                    if (dl - dp < 2) {
                        return overflow(src, sp, dst, dp);
                    }
                    int dp2 = dp + 1;
                    da[dp] = (byte) ((c >> 6) | PsExtractor.AUDIO_STREAM);
                    dp = dp2 + 1;
                    da[dp2] = (byte) ((c & '?') | 128);
                } else if (Character.isSurrogate(c)) {
                    if (this.sgp == null) {
                        this.sgp = new Surrogate.Parser();
                    }
                    int uc = this.sgp.parse(c, sa, sp, sl);
                    if (uc < 0) {
                        UTF_8.updatePositions(src, sp, dst, dp);
                        return this.sgp.error();
                    }
                    if (dl - dp < 4) {
                        return overflow(src, sp, dst, dp);
                    }
                    int dp3 = dp + 1;
                    da[dp] = (byte) ((uc >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                    int dp4 = dp3 + 1;
                    da[dp3] = (byte) (((uc >> 12) & 63) | 128);
                    int dp5 = dp4 + 1;
                    da[dp4] = (byte) (((uc >> 6) & 63) | 128);
                    dp = dp5 + 1;
                    da[dp5] = (byte) ((uc & 63) | 128);
                    sp++;
                } else {
                    if (dl - dp < 3) {
                        return overflow(src, sp, dst, dp);
                    }
                    int dp6 = dp + 1;
                    da[dp] = (byte) ((c >> '\f') | 224);
                    int dp7 = dp6 + 1;
                    da[dp6] = (byte) (((c >> 6) & 63) | 128);
                    da[dp7] = (byte) ((c & '?') | 128);
                    dp = dp7 + 1;
                }
                sp++;
            }
            UTF_8.updatePositions(src, sp, dst, dp);
            return CoderResult.UNDERFLOW;
        }

        private CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            int mark = src.position();
            while (src.hasRemaining()) {
                char c = src.get();
                if (c < 128) {
                    if (!dst.hasRemaining()) {
                        return overflow(src, mark);
                    }
                    dst.put((byte) c);
                } else if (c < 2048) {
                    if (dst.remaining() < 2) {
                        return overflow(src, mark);
                    }
                    dst.put((byte) ((c >> 6) | PsExtractor.AUDIO_STREAM));
                    dst.put((byte) (128 | (c & '?')));
                } else if (Character.isSurrogate(c)) {
                    if (this.sgp == null) {
                        this.sgp = new Surrogate.Parser();
                    }
                    int uc = this.sgp.parse(c, src);
                    if (uc < 0) {
                        return this.sgp.error();
                    }
                    if (dst.remaining() < 4) {
                        return overflow(src, mark);
                    }
                    dst.put((byte) ((uc >> 18) | PsExtractor.VIDEO_STREAM_MASK));
                    dst.put((byte) (((uc >> 12) & 63) | 128));
                    dst.put((byte) (((uc >> 6) & 63) | 128));
                    dst.put((byte) (128 | (uc & 63)));
                    mark++;
                } else {
                    if (dst.remaining() < 3) {
                        return overflow(src, mark);
                    }
                    dst.put((byte) ((c >> '\f') | 224));
                    dst.put((byte) (((c >> 6) & 63) | 128));
                    dst.put((byte) (128 | (c & '?')));
                }
                mark++;
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // java.nio.charset.CharsetEncoder
        protected final CoderResult encodeLoop(CharBuffer src, ByteBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return encodeArrayLoop(src, dst);
            }
            return encodeBufferLoop(src, dst);
        }
    }
}
