package j$.sun.nio.cs;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;

/* JADX INFO: loaded from: classes19.dex */
public class StreamDecoder extends Reader {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int DEFAULT_BYTE_BUFFER_SIZE = 8192;
    private static final int MIN_BYTE_BUFFER_SIZE = 32;
    private static volatile boolean channelsAvailable = true;
    private ByteBuffer bb;
    private ReadableByteChannel ch;
    private volatile boolean closed;
    private Charset cs;
    private CharsetDecoder decoder;
    private boolean haveLeftoverChar;
    private InputStream in;
    private char leftoverChar;

    private void ensureOpen() throws IOException {
        if (this.closed) {
            throw new IOException("Stream closed");
        }
    }

    public static StreamDecoder forInputStreamReader(InputStream in, Object lock, String charsetName) throws UnsupportedEncodingException {
        String csn = charsetName;
        if (csn == null) {
            csn = Charset.defaultCharset().name();
        }
        try {
            if (Charset.isSupported(csn)) {
                return new StreamDecoder(in, lock, Charset.forName(csn));
            }
        } catch (IllegalCharsetNameException e) {
        }
        throw new UnsupportedEncodingException(csn);
    }

    public static StreamDecoder forInputStreamReader(InputStream in, Object lock, Charset cs) {
        return new StreamDecoder(in, lock, cs);
    }

    public static StreamDecoder forInputStreamReader(InputStream in, Object lock, CharsetDecoder dec) {
        return new StreamDecoder(in, lock, dec);
    }

    public static StreamDecoder forDecoder(ReadableByteChannel ch, CharsetDecoder dec, int minBufferCap) {
        return new StreamDecoder(ch, dec, minBufferCap);
    }

    public String getEncoding() {
        if (isOpen()) {
            return encodingName();
        }
        return null;
    }

    @Override // java.io.Reader
    public int read() {
        return read0();
    }

    private int read0() {
        synchronized (this.lock) {
            if (this.haveLeftoverChar) {
                this.haveLeftoverChar = false;
                return this.leftoverChar;
            }
            char[] cb = new char[2];
            int n = read(cb, 0, 2);
            switch (n) {
                case -1:
                    return -1;
                case 0:
                default:
                    return -1;
                case 1:
                    break;
                case 2:
                    this.leftoverChar = cb[1];
                    this.haveLeftoverChar = true;
                    break;
            }
            return cb[0];
        }
    }

    @Override // java.io.Reader
    public int read(char[] cbuf, int offset, int length) {
        int off = offset;
        int len = length;
        synchronized (this.lock) {
            ensureOpen();
            if (off < 0 || off > cbuf.length || len < 0 || off + len > cbuf.length || off + len < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (len == 0) {
                return 0;
            }
            int n = 0;
            if (this.haveLeftoverChar) {
                cbuf[off] = this.leftoverChar;
                off++;
                len--;
                this.haveLeftoverChar = false;
                n = 1;
                if (len == 0 || !implReady()) {
                    return 1;
                }
            }
            if (len == 1) {
                int c = read0();
                int i = -1;
                if (c == -1) {
                    if (n != 0) {
                        i = n;
                    }
                    return i;
                }
                cbuf[off] = (char) c;
                return n + 1;
            }
            return implRead(cbuf, off, off + len) + n;
        }
    }

    @Override // java.io.Reader
    public boolean ready() {
        boolean z;
        synchronized (this.lock) {
            ensureOpen();
            z = this.haveLeftoverChar || implReady();
        }
        return z;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            implClose();
            this.closed = true;
        }
    }

    private boolean isOpen() {
        return !this.closed;
    }

    private static FileChannel getChannel(FileInputStream in) {
        if (!channelsAvailable) {
            return null;
        }
        try {
            return in.getChannel();
        } catch (UnsatisfiedLinkError e) {
            channelsAvailable = false;
            return null;
        }
    }

    StreamDecoder(InputStream in, Object lock, Charset cs) {
        this(in, lock, cs.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE));
    }

    StreamDecoder(InputStream in, Object lock, CharsetDecoder dec) {
        super(lock);
        this.haveLeftoverChar = false;
        this.cs = dec.charset();
        this.decoder = dec;
        if (this.ch == null) {
            this.in = in;
            this.ch = null;
            this.bb = ByteBuffer.allocate(8192);
        }
    }

    StreamDecoder(ReadableByteChannel ch, CharsetDecoder dec, int mbc) {
        int i;
        this.haveLeftoverChar = false;
        this.in = null;
        this.ch = ch;
        this.decoder = dec;
        this.cs = dec.charset();
        if (mbc < 0) {
            i = 8192;
        } else {
            i = 32;
            if (mbc >= 32) {
                i = mbc;
            }
        }
        this.bb = ByteBuffer.allocate(i);
    }

    private int readBytes() {
        this.bb.compact();
        try {
            if (this.ch != null) {
                int n = this.ch.read(this.bb);
                if (n < 0) {
                    return n;
                }
            } else {
                int lim = this.bb.limit();
                int pos = this.bb.position();
                int rem = pos <= lim ? lim - pos : 0;
                int n2 = this.in.read(this.bb.array(), this.bb.arrayOffset() + pos, rem);
                if (n2 < 0) {
                    return n2;
                }
                if (n2 == 0) {
                    throw new IOException("Underlying input stream returned zero bytes");
                }
            }
            int rem2 = this.bb.remaining();
            return rem2;
        } finally {
        }
    }

    int implRead(char[] cbuf, int off, int end) throws CharacterCodingException {
        CharBuffer cb = CharBuffer.wrap(cbuf, off, end - off);
        if (cb.position() != 0) {
            cb = cb.slice();
        }
        boolean eof = false;
        while (true) {
            CoderResult cr = this.decoder.decode(this.bb, cb, eof);
            if (cr.isUnderflow()) {
                if (eof || !cb.hasRemaining() || (cb.position() > 0 && !inReady())) {
                    break;
                }
                int n = readBytes();
                if (n < 0) {
                    eof = true;
                    if (cb.position() == 0 && !this.bb.hasRemaining()) {
                        break;
                    }
                    this.decoder.reset();
                } else {
                    continue;
                }
            } else {
                if (cr.isOverflow()) {
                    break;
                }
                cr.throwException();
            }
        }
        if (eof) {
            this.decoder.reset();
        }
        if (cb.position() == 0 && eof) {
            return -1;
        }
        return cb.position();
    }

    /* JADX WARN: Multi-variable type inference failed */
    String encodingName() {
        boolean z = this.cs instanceof HistoricallyNamedCharset;
        Charset charset = this.cs;
        if (z) {
            return ((HistoricallyNamedCharset) charset).historicalName();
        }
        return charset.name();
    }

    private boolean inReady() {
        try {
            if (this.in == null || this.in.available() <= 0) {
                if (!(this.ch instanceof FileChannel)) {
                    return false;
                }
            }
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    boolean implReady() {
        return this.bb.hasRemaining() || inReady();
    }

    void implClose() throws IOException {
        if (this.ch != null) {
            this.ch.close();
        } else {
            this.in.close();
        }
    }
}
