package j$.sun.nio.cs;

import androidx.work.WorkInfo;
import j$.sun.nio.cs.DoubleByte;
import j$.sun.nio.cs.EUC_JP;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: loaded from: classes19.dex */
public class EUC_JP_Open extends Charset implements HistoricallyNamedCharset {
    public EUC_JP_Open() {
        super("x-eucJP-Open", StandardCharsets.aliases_EUC_JP_Open());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "EUC_JP_Solaris";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return cs.name().equals("US-ASCII") || (cs instanceof JIS_X_0201) || (cs instanceof EUC_JP);
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
        private static DoubleByte.Decoder DEC0208_Solaris = (DoubleByte.Decoder) new JIS_X_0208_Solaris().newDecoder();
        private static DoubleByte.Decoder DEC0212_Solaris = (DoubleByte.Decoder) new JIS_X_0212_Solaris().newDecoder();

        private Decoder(Charset cs) {
            super(cs, 0.5f, 1.0f, DEC0201, DEC0208, DEC0212_Solaris);
        }

        @Override // j$.sun.nio.cs.EUC_JP.Decoder
        protected char decodeDouble(int byte1, int byte2) {
            char c = super.decodeDouble(byte1, byte2);
            if (c == 65533) {
                return DEC0208_Solaris.decodeDouble(byte1 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT, byte2 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT);
            }
            return c;
        }
    }

    private static class Encoder extends EUC_JP.Encoder {
        private static DoubleByte.Encoder ENC0208_Solaris = (DoubleByte.Encoder) new JIS_X_0208_Solaris().newEncoder();
        private static DoubleByte.Encoder ENC0212_Solaris = (DoubleByte.Encoder) new JIS_X_0212_Solaris().newEncoder();

        private Encoder(Charset cs) {
            super(cs);
        }

        @Override // j$.sun.nio.cs.EUC_JP.Encoder
        protected int encodeDouble(char ch) {
            int b = super.encodeDouble(ch);
            if (b != 65533) {
                return b;
            }
            int b2 = ENC0208_Solaris.encodeChar(ch);
            if (b2 == 65533 || b2 <= 29952) {
                return b2 == 65533 ? b2 : 32896 + b2;
            }
            return ENC0212_Solaris.encodeChar(ch) + 9404544;
        }
    }
}
