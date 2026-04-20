package j$.sun.nio.cs;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: loaded from: classes19.dex */
class UTF_16LE_BOM extends Unicode {
    public UTF_16LE_BOM() {
        super("x-UTF-16LE-BOM", StandardCharsets.aliases_UTF_16LE_BOM());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "UnicodeLittle";
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    private static class Decoder extends UnicodeDecoder {
        public Decoder(Charset cs) {
            super(cs, 0, 2);
        }
    }

    private static class Encoder extends UnicodeEncoder {
        public Encoder(Charset cs) {
            super(cs, 1, true);
        }
    }
}
