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
import java.nio.charset.CodingErrorAction;
import okio.Utf8;

/* JADX INFO: loaded from: classes19.dex */
class CESU_8 extends Unicode {
    public CESU_8() {
        super("CESU-8", StandardCharsets.aliases_CESU_8());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "CESU8";
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updatePositions(Buffer src, int sp, Buffer dst, int dp) {
        src.position(sp - src.arrayOffset());
        dst.position(dp - dst.arrayOffset());
    }

    private static class Decoder extends CharsetDecoder implements ArrayDecoder {
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
            return (b1 == 240 && b2 == 144) || (b2 & PsExtractor.AUDIO_STREAM) != 128;
        }

        private static boolean isMalformed4_3(int b3) {
            return (b3 & PsExtractor.AUDIO_STREAM) != 128;
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
            CESU_8.updatePositions(src, sp, dst, dp);
            return cr;
        }

        private static CoderResult malformed(ByteBuffer src, int mark, int nb) {
            CoderResult cr = malformedN(src, nb);
            return cr;
        }

        private static CoderResult malformedForLength(ByteBuffer src, int sp, CharBuffer dst, int dp, int malformedNB) {
            CESU_8.updatePositions(src, sp, dst, dp);
            return CoderResult.malformedForLength(malformedNB);
        }

        private static CoderResult malformedForLength(ByteBuffer src, int mark, int malformedNB) {
            return CoderResult.malformedForLength(malformedNB);
        }

        private static CoderResult xflow(Buffer src, int sp, int sl, Buffer dst, int dp, int nb) {
            CESU_8.updatePositions(src, sp, dst, dp);
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
                    da[dp2] = (char) (((b1 << 12) ^ (b22 << 6)) ^ ((-123008) ^ b3));
                    dp3 += 3;
                    dp2++;
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
                    dst.put((char) (((b1 << 12) ^ (b22 << 6)) ^ ((-123008) ^ b3)));
                    mark += 3;
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

        @Override // j$.sun.nio.cs.ArrayDecoder
        public int decode(byte[] sa, int sp, int len, char[] da) {
            int dp;
            int sl = sp + len;
            int dp2 = 0;
            int dlASCII = Math.min(len, da.length);
            ByteBuffer bb = null;
            while (dp2 < dlASCII && sa[sp] >= 0) {
                da[dp2] = (char) sa[sp];
                dp2++;
                sp++;
            }
            while (sp < sl) {
                int sp2 = sp + 1;
                int b1 = sa[sp];
                if (b1 >= 0) {
                    dp = dp2 + 1;
                    da[dp2] = (char) b1;
                } else {
                    int dp3 = b1 >> 5;
                    if (dp3 == -2 && (b1 & 30) != 0) {
                        if (sp2 < sl) {
                            int sp3 = sp2 + 1;
                            int b2 = sa[sp2];
                            if (isNotContinuation(b2)) {
                                if (malformedInputAction() != CodingErrorAction.REPLACE) {
                                    return -1;
                                }
                                da[dp2] = replacement().charAt(0);
                                sp = sp3 - 1;
                                dp2++;
                            } else {
                                da[dp2] = (char) (((b1 << 6) ^ b2) ^ Utf8.MASK_2BYTES);
                                sp = sp3;
                                dp2++;
                            }
                        } else {
                            if (malformedInputAction() != CodingErrorAction.REPLACE) {
                                return -1;
                            }
                            int dp4 = dp2 + 1;
                            da[dp2] = replacement().charAt(0);
                            return dp4;
                        }
                    } else {
                        int dp5 = b1 >> 4;
                        if (dp5 == -2) {
                            if (sp2 + 1 < sl) {
                                int sp4 = sp2 + 1;
                                int b22 = sa[sp2];
                                int sp5 = sp4 + 1;
                                int b3 = sa[sp4];
                                if (isMalformed3(b1, b22, b3)) {
                                    if (malformedInputAction() != CodingErrorAction.REPLACE) {
                                        return -1;
                                    }
                                    da[dp2] = replacement().charAt(0);
                                    int sp6 = sp5 - 3;
                                    bb = getByteBuffer(bb, sa, sp6);
                                    sp = malformedN(bb, 3).length() + sp6;
                                    dp2++;
                                } else {
                                    da[dp2] = (char) (((b1 << 12) ^ (b22 << 6)) ^ ((-123008) ^ b3));
                                    sp = sp5;
                                    dp2++;
                                }
                            } else {
                                if (malformedInputAction() != CodingErrorAction.REPLACE) {
                                    return -1;
                                }
                                if (sp2 < sl && isMalformed3_2(b1, sa[sp2])) {
                                    da[dp2] = replacement().charAt(0);
                                    sp = sp2;
                                    dp2++;
                                } else {
                                    int dp6 = dp2 + 1;
                                    da[dp2] = replacement().charAt(0);
                                    return dp6;
                                }
                            }
                        } else {
                            if (malformedInputAction() != CodingErrorAction.REPLACE) {
                                return -1;
                            }
                            dp = dp2 + 1;
                            da[dp2] = replacement().charAt(0);
                        }
                    }
                }
                dp2 = dp;
                sp = sp2;
            }
            return dp2;
        }
    }

    private static class Encoder extends CharsetEncoder implements ArrayEncoder {
        private char[] c2;
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
            CESU_8.updatePositions(src, sp, dst, dp);
            return CoderResult.OVERFLOW;
        }

        private static CoderResult overflow(CharBuffer src, int mark) {
            return CoderResult.OVERFLOW;
        }

        private static void to3Bytes(byte[] da, int dp, char c) {
            da[dp] = (byte) ((c >> '\f') | 224);
            da[dp + 1] = (byte) (((c >> 6) & 63) | 128);
            da[dp + 2] = (byte) ((c & '?') | 128);
        }

        private static void to3Bytes(ByteBuffer dst, char c) {
            dst.put((byte) ((c >> '\f') | 224));
            dst.put((byte) (((c >> 6) & 63) | 128));
            dst.put((byte) ((c & '?') | 128));
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
                        CESU_8.updatePositions(src, sp, dst, dp);
                        return this.sgp.error();
                    }
                    if (dl - dp < 6) {
                        return overflow(src, sp, dst, dp);
                    }
                    to3Bytes(da, dp, Character.highSurrogate(uc));
                    int dp3 = dp + 3;
                    to3Bytes(da, dp3, Character.lowSurrogate(uc));
                    dp = dp3 + 3;
                    sp++;
                } else {
                    if (dl - dp < 3) {
                        return overflow(src, sp, dst, dp);
                    }
                    to3Bytes(da, dp, c);
                    dp += 3;
                }
                sp++;
            }
            CESU_8.updatePositions(src, sp, dst, dp);
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
                    if (dst.remaining() < 6) {
                        return overflow(src, mark);
                    }
                    to3Bytes(dst, Character.highSurrogate(uc));
                    to3Bytes(dst, Character.lowSurrogate(uc));
                    mark++;
                } else {
                    if (dst.remaining() < 3) {
                        return overflow(src, mark);
                    }
                    to3Bytes(dst, c);
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

        @Override // j$.sun.nio.cs.ArrayEncoder
        public int encode(char[] sa, int sp, int len, byte[] da) {
            int dp;
            int sl = sp + len;
            int dp2 = 0;
            int dlASCII = Math.min(len, da.length) + 0;
            while (dp2 < dlASCII && sa[sp] < 128) {
                da[dp2] = (byte) sa[sp];
                dp2++;
                sp++;
            }
            while (sp < sl) {
                int sp2 = sp + 1;
                char c = sa[sp];
                if (c < 128) {
                    da[dp2] = (byte) c;
                    sp = sp2;
                    dp2++;
                } else if (c < 2048) {
                    int dp3 = dp2 + 1;
                    da[dp2] = (byte) ((c >> 6) | PsExtractor.AUDIO_STREAM);
                    dp2 = dp3 + 1;
                    da[dp3] = (byte) ((c & '?') | 128);
                    sp = sp2;
                } else if (Character.isSurrogate(c)) {
                    if (this.sgp == null) {
                        this.sgp = new Surrogate.Parser();
                    }
                    int uc = this.sgp.parse(c, sa, sp2 - 1, sl);
                    if (uc < 0) {
                        if (malformedInputAction() != CodingErrorAction.REPLACE) {
                            return -1;
                        }
                        dp = dp2 + 1;
                        da[dp2] = replacement()[0];
                    } else {
                        to3Bytes(da, dp2, Character.highSurrogate(uc));
                        int dp4 = dp2 + 3;
                        to3Bytes(da, dp4, Character.lowSurrogate(uc));
                        dp = dp4 + 3;
                        sp2++;
                    }
                    sp = sp2;
                    dp2 = dp;
                } else {
                    to3Bytes(da, dp2, c);
                    dp2 += 3;
                    sp = sp2;
                }
            }
            return dp2;
        }
    }
}
