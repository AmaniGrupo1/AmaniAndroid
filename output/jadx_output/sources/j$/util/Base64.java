package j$.util;

import com.google.common.base.Ascii;
import j$.sun.nio.cs.ISO_8859_1;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes19.dex */
public class Base64 {
    private Base64() {
    }

    public static Encoder getEncoder() {
        return Encoder.RFC4648;
    }

    public static Encoder getUrlEncoder() {
        return Encoder.RFC4648_URLSAFE;
    }

    public static Encoder getMimeEncoder() {
        return Encoder.RFC2045;
    }

    public static Encoder getMimeEncoder(int lineLength, byte[] lineSeparator) {
        Objects.requireNonNull(lineSeparator);
        int[] base64 = Decoder.fromBase64;
        for (byte b : lineSeparator) {
            if (base64[b & 255] != -1) {
                throw new IllegalArgumentException("Illegal base64 line separator character 0x" + Integer.toString(b, 16));
            }
        }
        int lineLength2 = lineLength & (-4);
        if (lineLength2 <= 0) {
            return Encoder.RFC4648;
        }
        return new Encoder(false, lineSeparator, lineLength2, true);
    }

    public static Decoder getDecoder() {
        return Decoder.RFC4648;
    }

    public static Decoder getUrlDecoder() {
        return Decoder.RFC4648_URLSAFE;
    }

    public static Decoder getMimeDecoder() {
        return Decoder.RFC2045;
    }

    public static class Encoder {
        private final boolean doPadding;
        private final boolean isURL;
        private final int linemax;
        private final byte[] newline;
        private static final char[] toBase64 = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', AbstractJsonLexerKt.UNICODE_ESC, 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        private static final char[] toBase64URL = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', AbstractJsonLexerKt.UNICODE_ESC, 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
        private static final byte[] CRLF = {Ascii.CR, 10};
        static final Encoder RFC4648 = new Encoder(false, null, -1, true);
        static final Encoder RFC4648_URLSAFE = new Encoder(true, null, -1, true);
        private static final int MIMELINEMAX = 76;
        static final Encoder RFC2045 = new Encoder(false, CRLF, MIMELINEMAX, true);

        private Encoder(boolean isURL, byte[] newline, int linemax, boolean doPadding) {
            this.isURL = isURL;
            this.newline = newline;
            this.linemax = linemax;
            this.doPadding = doPadding;
        }

        private final int outLength(int srclen) {
            int n;
            if (this.doPadding) {
                n = ((srclen + 2) / 3) * 4;
            } else {
                int len = srclen % 3;
                n = ((srclen / 3) * 4) + (len == 0 ? 0 : len + 1);
            }
            if (this.linemax > 0) {
                return n + (((n - 1) / this.linemax) * this.newline.length);
            }
            return n;
        }

        public byte[] encode(byte[] src) {
            int len = outLength(src.length);
            byte[] dst = new byte[len];
            int ret = encode0(src, 0, src.length, dst);
            if (ret != dst.length) {
                return Arrays.copyOf(dst, ret);
            }
            return dst;
        }

        public int encode(byte[] src, byte[] dst) {
            int len = outLength(src.length);
            if (dst.length < len) {
                throw new IllegalArgumentException("Output byte array is too small for encoding all input bytes");
            }
            return encode0(src, 0, src.length, dst);
        }

        public String encodeToString(byte[] src) {
            byte[] encoded = encode(src);
            return new String(encoded, 0, 0, encoded.length);
        }

        public ByteBuffer encode(ByteBuffer buffer) {
            int ret;
            int len = outLength(buffer.remaining());
            byte[] dst = new byte[len];
            if (buffer.hasArray()) {
                ret = encode0(buffer.array(), buffer.arrayOffset() + buffer.position(), buffer.arrayOffset() + buffer.limit(), dst);
            } else {
                byte[] src = new byte[buffer.remaining()];
                buffer.get(src);
                ret = encode0(src, 0, src.length, dst);
            }
            if (ret != dst.length) {
                dst = Arrays.copyOf(dst, ret);
            }
            return ByteBuffer.wrap(dst);
        }

        public OutputStream wrap(OutputStream os) {
            Objects.requireNonNull(os);
            return new EncOutputStream(os, this.isURL ? toBase64URL : toBase64, this.newline, this.linemax, this.doPadding);
        }

        public Encoder withoutPadding() {
            if (!this.doPadding) {
                return this;
            }
            return new Encoder(this.isURL, this.newline, this.linemax, false);
        }

        private void encodeBlock(byte[] src, int sp, int sl, byte[] dst, int dp, boolean isURL) {
            char[] base64 = isURL ? toBase64URL : toBase64;
            int bits = sp;
            int dp0 = dp;
            while (bits < sl) {
                int sp0 = bits + 1;
                int sp02 = sp0 + 1;
                int i = ((src[bits] & 255) << 16) | ((src[sp0] & 255) << 8);
                int sp03 = sp02 + 1;
                int bits2 = i | (src[sp02] & 255);
                int dp02 = dp0 + 1;
                dst[dp0] = (byte) base64[(bits2 >>> 18) & 63];
                int dp03 = dp02 + 1;
                dst[dp02] = (byte) base64[(bits2 >>> 12) & 63];
                int dp04 = dp03 + 1;
                dst[dp03] = (byte) base64[(bits2 >>> 6) & 63];
                dp0 = dp04 + 1;
                dst[dp04] = (byte) base64[bits2 & 63];
                bits = sp03;
            }
        }

        private int encode0(byte[] src, int off, int end, byte[] dst) {
            char[] base64 = this.isURL ? toBase64URL : toBase64;
            int slen = ((end - off) / 3) * 3;
            int sl = off + slen;
            if (this.linemax > 0 && slen > (this.linemax / 4) * 3) {
                slen = (this.linemax / 4) * 3;
            }
            int sp = off;
            int dp = 0;
            while (sp < sl) {
                int sl0 = Math.min(sp + slen, sl);
                encodeBlock(src, sp, sl0, dst, dp, this.isURL);
                int dlen = ((sl0 - sp) / 3) * 4;
                dp += dlen;
                sp = sl0;
                if (dlen == this.linemax && sp < end) {
                    byte[] bArr = this.newline;
                    int length = bArr.length;
                    int i = 0;
                    while (i < length) {
                        byte b = bArr[i];
                        dst[dp] = b;
                        i++;
                        dp++;
                    }
                }
            }
            if (sp < end) {
                int sp2 = sp + 1;
                int b0 = src[sp] & 255;
                int dp2 = dp + 1;
                dst[dp] = (byte) base64[b0 >> 2];
                if (sp2 == end) {
                    int dp3 = dp2 + 1;
                    dst[dp2] = (byte) base64[(b0 << 4) & 63];
                    if (this.doPadding) {
                        int dp4 = dp3 + 1;
                        dst[dp3] = kotlin.io.encoding.Base64.padSymbol;
                        int dp5 = dp4 + 1;
                        dst[dp4] = kotlin.io.encoding.Base64.padSymbol;
                        return dp5;
                    }
                    return dp3;
                }
                int i2 = sp2 + 1;
                int b1 = src[sp2] & 255;
                int dp6 = dp2 + 1;
                dst[dp2] = (byte) base64[((b0 << 4) & 63) | (b1 >> 4)];
                int dp7 = dp6 + 1;
                dst[dp6] = (byte) base64[(b1 << 2) & 63];
                if (this.doPadding) {
                    int dp8 = dp7 + 1;
                    dst[dp7] = kotlin.io.encoding.Base64.padSymbol;
                    return dp8;
                }
                return dp7;
            }
            return dp;
        }
    }

    public static class Decoder {
        static final Decoder RFC2045;
        static final Decoder RFC4648;
        static final Decoder RFC4648_URLSAFE;
        private static final int[] fromBase64 = new int[256];
        private static final int[] fromBase64URL;
        private final boolean isMIME;
        private final boolean isURL;

        private Decoder(boolean isURL, boolean isMIME) {
            this.isURL = isURL;
            this.isMIME = isMIME;
        }

        static {
            Arrays.fill(fromBase64, -1);
            for (int i = 0; i < Encoder.toBase64.length; i++) {
                fromBase64[Encoder.toBase64[i]] = i;
            }
            fromBase64[61] = -2;
            fromBase64URL = new int[256];
            Arrays.fill(fromBase64URL, -1);
            for (int i2 = 0; i2 < Encoder.toBase64URL.length; i2++) {
                fromBase64URL[Encoder.toBase64URL[i2]] = i2;
            }
            fromBase64URL[61] = -2;
            RFC4648 = new Decoder(false, false);
            RFC4648_URLSAFE = new Decoder(true, false);
            RFC2045 = new Decoder(false, true);
        }

        public byte[] decode(byte[] src) {
            byte[] dst = new byte[outLength(src, 0, src.length)];
            int ret = decode0(src, 0, src.length, dst);
            if (ret != dst.length) {
                return Arrays.copyOf(dst, ret);
            }
            return dst;
        }

        public byte[] decode(String src) {
            return decode(src.getBytes(ISO_8859_1.INSTANCE));
        }

        public int decode(byte[] src, byte[] dst) {
            int len = outLength(src, 0, src.length);
            if (dst.length < len) {
                throw new IllegalArgumentException("Output byte array is too small for decoding all input bytes");
            }
            return decode0(src, 0, src.length, dst);
        }

        public ByteBuffer decode(ByteBuffer buffer) {
            byte[] src;
            int sp;
            int sl;
            int pos0 = buffer.position();
            try {
                if (buffer.hasArray()) {
                    src = buffer.array();
                    sp = buffer.arrayOffset() + buffer.position();
                    sl = buffer.arrayOffset() + buffer.limit();
                } else {
                    src = new byte[buffer.remaining()];
                    buffer.get(src);
                    sp = 0;
                    sl = src.length;
                }
                byte[] dst = new byte[outLength(src, sp, sl)];
                return ByteBuffer.wrap(dst, 0, decode0(src, sp, sl, dst));
            } catch (IllegalArgumentException iae) {
                throw iae;
            }
        }

        public InputStream wrap(InputStream is) {
            Objects.requireNonNull(is);
            return new DecInputStream(is, this.isURL ? fromBase64URL : fromBase64, this.isMIME);
        }

        private int outLength(byte[] src, int b, int sl) {
            int[] base64 = this.isURL ? fromBase64URL : fromBase64;
            int paddings = 0;
            int len = sl - b;
            if (len == 0) {
                return 0;
            }
            boolean z = this.isMIME;
            if (len < 2) {
                if (z && base64[0] == -1) {
                    return 0;
                }
                throw new IllegalArgumentException("Input byte[] should at least have 2 bytes for base64 bytes");
            }
            if (!z) {
                if (src[sl - 1] == 61) {
                    paddings = 0 + 1;
                    if (src[sl - 2] == 61) {
                        paddings++;
                    }
                }
            } else {
                int n = 0;
                while (true) {
                    if (b >= sl) {
                        break;
                    }
                    int sp = b + 1;
                    int b2 = src[b] & 255;
                    if (b2 != 61) {
                        if (base64[b2] == -1) {
                            n++;
                        }
                        b = sp;
                    } else {
                        len -= (sl - sp) + 1;
                        break;
                    }
                }
                len -= n;
            }
            if (paddings == 0 && (len & 3) != 0) {
                paddings = 4 - (len & 3);
            }
            return (((len + 3) / 4) * 3) - paddings;
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ef, code lost:
        
            if (r6 != 6) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00f1, code lost:
        
            r20[r4] = (byte) (r5 >> 16);
            r4 = r4 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00fa, code lost:
        
            if (r6 != 0) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00fc, code lost:
        
            r7 = r4 + 1;
            r20[r4] = (byte) (r5 >> 16);
            r4 = r7 + 1;
            r20[r7] = (byte) (r5 >> 8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x010d, code lost:
        
            if (r6 == 12) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x010f, code lost:
        
            if (r3 >= r19) goto L74;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0113, code lost:
        
            if (r16.isMIME == false) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0115, code lost:
        
            r7 = r3 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x011d, code lost:
        
            if (r2[r17[r3] & 255] >= 0) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x011f, code lost:
        
            r3 = r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0121, code lost:
        
            r3 = r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x013a, code lost:
        
            throw new java.lang.IllegalArgumentException("Input byte array has incorrect ending byte at " + r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x013b, code lost:
        
            return r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0143, code lost:
        
            throw new java.lang.IllegalArgumentException("Last unit does not have enough valid bits");
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0077 A[PHI: r3 r4
          0x0077: PHI (r3v11 'sp' int) = (r3v2 'sp' int), (r3v2 'sp' int), (r3v20 'sp' int) binds: [B:10:0x001b, B:12:0x001f, B:19:0x0073] A[DONT_GENERATE, DONT_INLINE]
          0x0077: PHI (r4v7 'dp' int) = (r4v2 'dp' int), (r4v2 'dp' int), (r4v13 'dp' int) binds: [B:10:0x001b, B:12:0x001f, B:19:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int decode0(byte[] src, int sp, int sl, byte[] dst) {
            int[] base64 = this.isURL ? fromBase64URL : fromBase64;
            int shiftto = 18;
            int bits = 0;
            int dp = 0;
            int sp2 = sp;
            while (true) {
                if (sp2 >= sl) {
                    break;
                }
                if (shiftto == 18 && sp2 + 4 < sl) {
                    int sl0 = ((sl - sp2) & (-4)) + sp2;
                    while (true) {
                        if (sp2 >= sl0) {
                            break;
                        }
                        int sp3 = sp2 + 1;
                        int b1 = base64[src[sp2] & 255];
                        int sp4 = sp3 + 1;
                        int b2 = base64[src[sp3] & 255];
                        int sp5 = sp4 + 1;
                        int b3 = base64[src[sp4] & 255];
                        int sp6 = sp5 + 1;
                        int b4 = base64[src[sp5] & 255];
                        if ((b1 | b2 | b3 | b4) < 0) {
                            sp2 = sp6 - 4;
                            break;
                        }
                        int bits0 = (b1 << 18) | (b2 << 12) | (b3 << 6) | b4;
                        int dp2 = dp + 1;
                        dst[dp] = (byte) (bits0 >> 16);
                        int dp3 = dp2 + 1;
                        dst[dp2] = (byte) (bits0 >> 8);
                        dst[dp3] = (byte) bits0;
                        dp = dp3 + 1;
                        sp2 = sp6;
                    }
                    if (sp2 >= sl) {
                        break;
                    }
                } else {
                    int sp7 = sp2 + 1;
                    int b = base64[src[sp2] & 255];
                    if (b < 0) {
                        if (b == -2) {
                            if (shiftto == 6) {
                                if (sp7 != sl) {
                                    int sp8 = sp7 + 1;
                                    if (src[sp7] == 61) {
                                        sp7 = sp8;
                                    }
                                }
                                throw new IllegalArgumentException("Input byte array has wrong 4-byte ending unit");
                            }
                            if (shiftto != 18) {
                                sp2 = sp7;
                            }
                            throw new IllegalArgumentException("Input byte array has wrong 4-byte ending unit");
                        }
                        if (this.isMIME) {
                            sp2 = sp7;
                        } else {
                            throw new IllegalArgumentException("Illegal base64 character " + Integer.toString(src[sp7 - 1], 16));
                        }
                    } else {
                        bits |= b << shiftto;
                        shiftto -= 6;
                        if (shiftto < 0) {
                            int dp4 = dp + 1;
                            dst[dp] = (byte) (bits >> 16);
                            int dp5 = dp4 + 1;
                            dst[dp4] = (byte) (bits >> 8);
                            dst[dp5] = (byte) bits;
                            bits = 0;
                            shiftto = 18;
                            dp = dp5 + 1;
                        }
                        sp2 = sp7;
                    }
                }
            }
        }
    }

    private static class EncOutputStream extends FilterOutputStream {
        private int b0;
        private int b1;
        private int b2;
        private final char[] base64;
        private byte[] buf;
        private boolean closed;
        private final boolean doPadding;
        private int leftover;
        private final int linemax;
        private int linepos;
        private final byte[] newline;

        EncOutputStream(OutputStream os, char[] base64, byte[] newline, int linemax, boolean doPadding) {
            super(os);
            this.leftover = 0;
            this.closed = false;
            this.linepos = 0;
            this.base64 = base64;
            this.newline = newline;
            this.linemax = linemax;
            this.doPadding = doPadding;
            this.buf = new byte[linemax <= 0 ? 8124 : linemax];
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int b) throws IOException {
            byte[] buf = {(byte) (b & 255)};
            write(buf, 0, 1);
        }

        private void checkNewline() throws IOException {
            if (this.linepos == this.linemax) {
                this.out.write(this.newline);
                this.linepos = 0;
            }
        }

        private void writeb4(char b1, char b2, char b3, char b4) throws IOException {
            this.buf[0] = (byte) b1;
            this.buf[1] = (byte) b2;
            this.buf[2] = (byte) b3;
            this.buf[3] = (byte) b4;
            this.out.write(this.buf, 0, 4);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] b, int off, int len) throws IOException {
            if (this.closed) {
                throw new IOException("Stream is closed");
            }
            if (off < 0 || len < 0 || len > b.length - off) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (len == 0) {
                return;
            }
            if (this.leftover != 0) {
                if (this.leftover == 1) {
                    int off2 = off + 1;
                    this.b1 = b[off] & 255;
                    len--;
                    if (len != 0) {
                        off = off2;
                    } else {
                        this.leftover++;
                        return;
                    }
                }
                this.b2 = b[off] & 255;
                len--;
                checkNewline();
                writeb4(this.base64[this.b0 >> 2], this.base64[((this.b0 << 4) & 63) | (this.b1 >> 4)], this.base64[((this.b1 << 2) & 63) | (this.b2 >> 6)], this.base64[this.b2 & 63]);
                this.linepos += 4;
                off++;
            }
            int nBits24 = len / 3;
            this.leftover = len - (nBits24 * 3);
            while (nBits24 > 0) {
                checkNewline();
                int i = this.linemax;
                byte[] bArr = this.buf;
                int dl = i <= 0 ? bArr.length : bArr.length - this.linepos;
                int sl = (Math.min(nBits24, dl / 4) * 3) + off;
                int dp = 0;
                int bits = off;
                while (bits < sl) {
                    int sp = bits + 1;
                    int sp2 = sp + 1;
                    int i2 = ((b[bits] & 255) << 16) | ((b[sp] & 255) << 8);
                    int sp3 = sp2 + 1;
                    int bits2 = i2 | (b[sp2] & 255);
                    int dp2 = dp + 1;
                    this.buf[dp] = (byte) this.base64[(bits2 >>> 18) & 63];
                    int dp3 = dp2 + 1;
                    this.buf[dp2] = (byte) this.base64[(bits2 >>> 12) & 63];
                    int dp4 = dp3 + 1;
                    this.buf[dp3] = (byte) this.base64[(bits2 >>> 6) & 63];
                    this.buf[dp4] = (byte) this.base64[bits2 & 63];
                    bits = sp3;
                    dp = dp4 + 1;
                }
                this.out.write(this.buf, 0, dp);
                off = sl;
                this.linepos += dp;
                nBits24 -= dp / 4;
            }
            if (this.leftover == 1) {
                int i3 = off + 1;
                this.b0 = b[off] & 255;
            } else if (this.leftover == 2) {
                int off3 = off + 1;
                this.b0 = b[off] & 255;
                int i4 = off3 + 1;
                this.b1 = b[off3] & 255;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                if (this.leftover == 1) {
                    checkNewline();
                    this.out.write(this.base64[this.b0 >> 2]);
                    this.out.write(this.base64[(this.b0 << 4) & 63]);
                    if (this.doPadding) {
                        this.out.write(61);
                        this.out.write(61);
                    }
                } else if (this.leftover == 2) {
                    checkNewline();
                    this.out.write(this.base64[this.b0 >> 2]);
                    this.out.write(this.base64[((this.b0 << 4) & 63) | (this.b1 >> 4)]);
                    this.out.write(this.base64[(this.b1 << 2) & 63]);
                    if (this.doPadding) {
                        this.out.write(61);
                    }
                }
                this.leftover = 0;
                this.out.close();
            }
        }
    }

    private static class DecInputStream extends InputStream {
        private final int[] base64;
        private final InputStream is;
        private final boolean isMIME;
        private int bits = 0;
        private int nextin = 18;
        private int nextout = -8;
        private boolean eof = false;
        private boolean closed = false;
        private byte[] sbBuf = new byte[1];

        DecInputStream(InputStream is, int[] base64, boolean isMIME) {
            this.is = is;
            this.base64 = base64;
            this.isMIME = isMIME;
        }

        @Override // java.io.InputStream
        public int read() {
            if (read(this.sbBuf, 0, 1) == -1) {
                return -1;
            }
            return this.sbBuf[0] & 255;
        }

        private int eof(byte[] b, int off, int len, int oldOff) throws IOException {
            this.eof = true;
            if (this.nextin != 18) {
                if (this.nextin == 12) {
                    throw new IOException("Base64 stream has one un-decoded dangling byte.");
                }
                int off2 = off + 1;
                b[off] = (byte) (this.bits >> 16);
                if (this.nextin == 0) {
                    int i = this.bits;
                    if (len == 1) {
                        this.bits = i >> 8;
                        this.nextout = 0;
                        off = off2;
                    } else {
                        b[off2] = (byte) (i >> 8);
                        off = off2 + 1;
                    }
                } else {
                    off = off2;
                }
            }
            if (off == oldOff) {
                return -1;
            }
            return off - oldOff;
        }

        private int padding(byte[] b, int off, int len, int oldOff) throws IOException {
            if (this.nextin == 18 || this.nextin == 12 || (this.nextin == 6 && this.is.read() != 61)) {
                throw new IOException("Illegal base64 ending sequence:" + this.nextin);
            }
            int off2 = off + 1;
            b[off] = (byte) (this.bits >> 16);
            if (this.nextin == 0) {
                int i = this.bits;
                if (len == 1) {
                    this.bits = i >> 8;
                    this.nextout = 0;
                } else {
                    b[off2] = (byte) (i >> 8);
                    off2++;
                }
            }
            this.eof = true;
            return off2 - oldOff;
        }

        @Override // java.io.InputStream
        public int read(byte[] b, int off, int len) throws IOException {
            if (this.closed) {
                throw new IOException("Stream is closed");
            }
            if (this.eof && this.nextout < 0) {
                return -1;
            }
            if (off < 0 || len < 0 || len > b.length - off) {
                throw new IndexOutOfBoundsException();
            }
            while (this.nextout >= 0) {
                if (len == 0) {
                    return off - off;
                }
                b[off] = (byte) (this.bits >> this.nextout);
                len--;
                this.nextout -= 8;
                off++;
            }
            this.bits = 0;
            while (true) {
                if (len <= 0) {
                    break;
                }
                int v = this.is.read();
                if (v == -1) {
                    return eof(b, off, len, off);
                }
                int v2 = this.base64[v];
                if (v2 < 0) {
                    if (v2 == -2) {
                        return padding(b, off, len, off);
                    }
                    if (v2 == -1) {
                        if (!this.isMIME) {
                            throw new IOException("Illegal base64 character " + Integer.toString(v2, 16));
                        }
                    }
                }
                this.bits |= v2 << this.nextin;
                if (this.nextin == 0) {
                    this.nextin = 18;
                    int off2 = off + 1;
                    b[off] = (byte) (this.bits >> 16);
                    if (len == 1) {
                        this.nextout = 8;
                        off = off2;
                        break;
                    }
                    off = off2 + 1;
                    b[off2] = (byte) (this.bits >> 8);
                    if (len == 2) {
                        this.nextout = 0;
                        break;
                    }
                    b[off] = (byte) this.bits;
                    len -= 3;
                    this.bits = 0;
                    off++;
                } else {
                    this.nextin -= 6;
                }
            }
            return off - off;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            if (this.closed) {
                throw new IOException("Stream is closed");
            }
            return this.is.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                this.is.close();
            }
        }
    }
}
