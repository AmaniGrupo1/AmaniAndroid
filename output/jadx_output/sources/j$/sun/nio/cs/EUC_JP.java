package j$.sun.nio.cs;

import androidx.core.view.MotionEventCompat;
import androidx.work.WorkInfo;
import j$.sun.nio.cs.DoubleByte;
import j$.sun.nio.cs.SingleByte;
import j$.sun.nio.cs.Surrogate;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* JADX INFO: loaded from: classes19.dex */
public class EUC_JP extends Charset implements HistoricallyNamedCharset {
    public EUC_JP() {
        super("EUC-JP", StandardCharsets.aliases_EUC_JP());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "EUC_JP";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return cs.name().equals("US-ASCII") || (cs instanceof JIS_X_0201) || (cs instanceof JIS_X_0208) || (cs instanceof JIS_X_0212) || (cs instanceof EUC_JP);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    static class Decoder extends CharsetDecoder implements DelegatableDecoder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final SingleByte.Decoder DEC0201 = (SingleByte.Decoder) new JIS_X_0201().newDecoder();
        static final DoubleByte.Decoder DEC0208 = (DoubleByte.Decoder) new JIS_X_0208().newDecoder();
        static final DoubleByte.Decoder DEC0212 = (DoubleByte.Decoder) new JIS_X_0212().newDecoder();
        private final SingleByte.Decoder dec0201;
        private final DoubleByte.Decoder dec0208;
        private final DoubleByte.Decoder dec0212;

        protected Decoder(Charset cs) {
            this(cs, 0.5f, 1.0f, DEC0201, DEC0208, DEC0212);
        }

        protected Decoder(Charset cs, float avgCpb, float maxCpb, SingleByte.Decoder dec0201, DoubleByte.Decoder dec0208, DoubleByte.Decoder dec0212) {
            super(cs, avgCpb, maxCpb);
            this.dec0201 = dec0201;
            this.dec0208 = dec0208;
            this.dec0212 = dec0212;
        }

        protected char decodeDouble(int byte1, int byte2) {
            if (byte1 == 142) {
                if (byte2 < 128) {
                    return (char) 65533;
                }
                return this.dec0201.decode((byte) byte2);
            }
            return this.dec0208.decodeDouble(byte1 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT, byte2 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT);
        }

        private CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) throws Throwable {
            char outputChar;
            byte[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            int sp2 = sp <= sl ? sp : sl;
            char[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            int b2 = dp <= dl ? dp : dl;
            int dp2 = sp2;
            while (dp2 < sl) {
                try {
                    int b1 = sa[dp2] & 255;
                    int inputSize = 1;
                    if ((b1 & 128) == 0) {
                        outputChar = (char) b1;
                    } else if (b1 == 143) {
                        if (dp2 + 3 > sl) {
                            CoderResult coderResult = CoderResult.UNDERFLOW;
                            return coderResult;
                        }
                        int b12 = sa[dp2 + 1] & 255;
                        int b22 = sa[dp2 + 2] & 255;
                        inputSize = 1 + 2;
                        if (this.dec0212 == null) {
                            CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(inputSize);
                            return coderResultUnmappableForLength;
                        }
                        outputChar = this.dec0212.decodeDouble(b12 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT, b22 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT);
                    } else {
                        if (dp2 + 2 > sl) {
                            CoderResult coderResult2 = CoderResult.UNDERFLOW;
                            return coderResult2;
                        }
                        int b23 = sa[dp2 + 1] & 255;
                        inputSize = 1 + 1;
                        outputChar = decodeDouble(b1, b23);
                    }
                    if (outputChar == 65533) {
                        CoderResult coderResultUnmappableForLength2 = CoderResult.unmappableForLength(inputSize);
                        return coderResultUnmappableForLength2;
                    }
                    if (b2 + 1 > dl) {
                        CoderResult coderResult3 = CoderResult.OVERFLOW;
                        return coderResult3;
                    }
                    int dp3 = b2 + 1;
                    try {
                        da[b2] = outputChar;
                        dp2 += inputSize;
                        b2 = dp3;
                    } catch (Throwable th) {
                        th = th;
                        b2 = dp3;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult4 = CoderResult.UNDERFLOW;
            return coderResult4;
        }

        private CoderResult decodeBufferLoop(ByteBuffer src, CharBuffer dst) {
            char outputChar;
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    int b1 = src.get() & 255;
                    int inputSize = 1;
                    if ((b1 & 128) == 0) {
                        outputChar = (char) b1;
                    } else if (b1 == 143) {
                        if (src.remaining() < 2) {
                            return CoderResult.UNDERFLOW;
                        }
                        int b12 = src.get() & 255;
                        int b2 = src.get() & 255;
                        inputSize = 1 + 2;
                        if (this.dec0212 == null) {
                            return CoderResult.unmappableForLength(inputSize);
                        }
                        outputChar = this.dec0212.decodeDouble(b12 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT, b2 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT);
                    } else {
                        if (src.remaining() < 1) {
                            return CoderResult.UNDERFLOW;
                        }
                        int b22 = src.get() & 255;
                        inputSize = 1 + 1;
                        outputChar = decodeDouble(b1, b22);
                    }
                    if (outputChar == 65533) {
                        return CoderResult.unmappableForLength(inputSize);
                    }
                    if (dst.remaining() < 1) {
                        return CoderResult.OVERFLOW;
                    }
                    dst.put(outputChar);
                    mark += inputSize;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }

        @Override // java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
            if (src.hasArray() && dst.hasArray()) {
                return decodeArrayLoop(src, dst);
            }
            return decodeBufferLoop(src, dst);
        }

        @Override // java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public void implReset() {
            super.implReset();
        }

        @Override // java.nio.charset.CharsetDecoder, j$.sun.nio.cs.DelegatableDecoder
        public CoderResult implFlush(CharBuffer out) {
            return super.implFlush(out);
        }
    }

    static class Encoder extends CharsetEncoder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final SingleByte.Encoder ENC0201 = (SingleByte.Encoder) new JIS_X_0201().newEncoder();
        static final DoubleByte.Encoder ENC0208 = (DoubleByte.Encoder) new JIS_X_0208().newEncoder();
        static final DoubleByte.Encoder ENC0212 = (DoubleByte.Encoder) new JIS_X_0212().newEncoder();
        private final SingleByte.Encoder enc0201;
        private final DoubleByte.Encoder enc0208;
        private final DoubleByte.Encoder enc0212;
        private final Surrogate.Parser sgp;

        protected Encoder(Charset cs) {
            this(cs, 3.0f, 3.0f, ENC0201, ENC0208, ENC0212);
        }

        protected Encoder(Charset cs, float avgBpc, float maxBpc, SingleByte.Encoder enc0201, DoubleByte.Encoder enc0208, DoubleByte.Encoder enc0212) {
            super(cs, avgBpc, maxBpc);
            this.sgp = new Surrogate.Parser();
            this.enc0201 = enc0201;
            this.enc0208 = enc0208;
            this.enc0212 = enc0212;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            byte[] encodedBytes = new byte[3];
            return (encodeSingle(c, encodedBytes) == 0 && encodeDouble(c) == 65533) ? false : true;
        }

        protected int encodeSingle(char inputChar, byte[] outputByte) {
            int b = this.enc0201.encode(inputChar);
            if (b == 65533) {
                return 0;
            }
            if (b >= 0 && b < 128) {
                outputByte[0] = (byte) b;
                return 1;
            }
            outputByte[0] = -114;
            outputByte[1] = (byte) b;
            return 2;
        }

        protected int encodeDouble(char ch) {
            int b = this.enc0208.encodeChar(ch);
            if (b != 65533) {
                return 32896 + b;
            }
            if (this.enc0212 != null) {
                int b2 = this.enc0212.encodeChar(ch);
                if (b2 != 65533) {
                    return b2 + 9404544;
                }
                return b2;
            }
            return b;
        }

        private CoderResult encodeArrayLoop(CharBuffer src, ByteBuffer dst) throws Throwable {
            byte[] outputByte;
            char[] sa = src.array();
            int sp = src.arrayOffset() + src.position();
            int sl = src.arrayOffset() + src.limit();
            int sp2 = sp <= sl ? sp : sl;
            byte[] da = dst.array();
            int dp = dst.arrayOffset() + dst.position();
            int dl = dst.arrayOffset() + dst.limit();
            byte[] tmpBuf = new byte[3];
            int dp2 = dp <= dl ? dp : dl;
            int dp3 = sp2;
            while (dp3 < sl) {
                try {
                    char c = sa[dp3];
                    if (Character.isSurrogate(c)) {
                        int i = this.sgp.parse(c, sa, dp3, sl);
                        Surrogate.Parser parser = this.sgp;
                        if (i < 0) {
                            CoderResult coderResultError = parser.error();
                            return coderResultError;
                        }
                        CoderResult coderResultUnmappableResult = parser.unmappableResult();
                        return coderResultUnmappableResult;
                    }
                    int outputSize = encodeSingle(c, tmpBuf);
                    if (outputSize == 0) {
                        int ncode = encodeDouble(c);
                        if (ncode == 65533) {
                            CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(1);
                            return coderResultUnmappableForLength;
                        }
                        if ((16711680 & ncode) == 0) {
                            tmpBuf[0] = (byte) ((ncode & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                            tmpBuf[1] = (byte) (ncode & 255);
                            outputSize = 2;
                            outputByte = tmpBuf;
                        } else {
                            tmpBuf[0] = -113;
                            tmpBuf[1] = (byte) ((ncode & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                            tmpBuf[2] = (byte) (ncode & 255);
                            outputSize = 3;
                            outputByte = tmpBuf;
                        }
                    } else {
                        outputByte = tmpBuf;
                    }
                    if (dl - dp2 < outputSize) {
                        CoderResult coderResult = CoderResult.OVERFLOW;
                        return coderResult;
                    }
                    int i2 = 0;
                    while (i2 < outputSize) {
                        int dp4 = dp2 + 1;
                        try {
                            da[dp2] = outputByte[i2];
                            i2++;
                            dp2 = dp4;
                        } catch (Throwable th) {
                            th = th;
                            dp2 = dp4;
                            throw th;
                        }
                    }
                    dp3++;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            CoderResult coderResult2 = CoderResult.UNDERFLOW;
            return coderResult2;
        }

        private CoderResult encodeBufferLoop(CharBuffer src, ByteBuffer dst) {
            byte[] tmpBuf = new byte[3];
            int mark = src.position();
            while (src.hasRemaining()) {
                try {
                    char c = src.get();
                    if (Character.isSurrogate(c)) {
                        int i = this.sgp.parse(c, src);
                        Surrogate.Parser parser = this.sgp;
                        return i < 0 ? parser.error() : parser.unmappableResult();
                    }
                    int outputSize = encodeSingle(c, tmpBuf);
                    if (outputSize == 0) {
                        int ncode = encodeDouble(c);
                        if (ncode == 65533) {
                            return CoderResult.unmappableForLength(1);
                        }
                        if ((16711680 & ncode) == 0) {
                            tmpBuf[0] = (byte) ((ncode & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                            tmpBuf[1] = (byte) (ncode & 255);
                            outputSize = 2;
                        } else {
                            tmpBuf[0] = -113;
                            tmpBuf[1] = (byte) ((ncode & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                            tmpBuf[2] = (byte) (ncode & 255);
                            outputSize = 3;
                        }
                    }
                    if (dst.remaining() < outputSize) {
                        return CoderResult.OVERFLOW;
                    }
                    for (int i2 = 0; i2 < outputSize; i2++) {
                        dst.put(tmpBuf[i2]);
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
    }
}
