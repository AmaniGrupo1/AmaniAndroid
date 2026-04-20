package j$.sun.nio.cs;

import j$.sun.nio.cs.DoubleByte;
import j$.sun.nio.cs.HKSCS;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: loaded from: classes19.dex */
public class Big5_HKSCS extends Charset implements HistoricallyNamedCharset {
    public Big5_HKSCS() {
        super("Big5-HKSCS", StandardCharsets.aliases_Big5_HKSCS());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "Big5_HKSCS";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return cs.name().equals("US-ASCII") || (cs instanceof Big5) || (cs instanceof Big5_HKSCS);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new Decoder(this);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new Encoder(this);
    }

    static class Decoder extends HKSCS.Decoder {
        private static DoubleByte.Decoder big5 = (DoubleByte.Decoder) new Big5().newDecoder();
        private static char[][] b2cBmp = new char[256][];
        private static char[][] b2cSupp = new char[256][];

        static {
            initb2c(b2cBmp, HKSCSMapping.b2cBmpStr);
            initb2c(b2cSupp, HKSCSMapping.b2cSuppStr);
        }

        private Decoder(Charset cs) {
            super(cs, big5, b2cBmp, b2cSupp);
        }
    }

    static class Encoder extends HKSCS.Encoder {
        private static DoubleByte.Encoder big5 = (DoubleByte.Encoder) new Big5().newEncoder();
        static char[][] c2bBmp = new char[256][];
        static char[][] c2bSupp = new char[256][];

        static {
            initc2b(c2bBmp, HKSCSMapping.b2cBmpStr, HKSCSMapping.pua);
            initc2b(c2bSupp, HKSCSMapping.b2cSuppStr, null);
        }

        private Encoder(Charset cs) {
            super(cs, big5, c2bBmp, c2bSupp);
        }
    }
}
