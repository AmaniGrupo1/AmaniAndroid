package j$.sun.nio.cs;

import j$.sun.nio.cs.EUC_JP;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: loaded from: classes19.dex */
public class EUC_JP_LINUX extends Charset implements HistoricallyNamedCharset {
    public EUC_JP_LINUX() {
        super("x-euc-jp-linux", StandardCharsets.aliases_EUC_JP_LINUX());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "EUC_JP_LINUX";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return (cs instanceof JIS_X_0201) || cs.name().equals("US-ASCII") || (cs instanceof EUC_JP_LINUX);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    private static class Decoder extends EUC_JP.Decoder {
        private Decoder(Charset cs) {
            super(cs, 1.0f, 1.0f, DEC0201, DEC0208, null);
        }
    }

    private static class Encoder extends EUC_JP.Encoder {
        private Encoder(Charset cs) {
            super(cs, 2.0f, 2.0f, ENC0201, ENC0208, null);
        }
    }
}
