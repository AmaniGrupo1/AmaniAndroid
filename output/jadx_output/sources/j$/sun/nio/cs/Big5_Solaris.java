package j$.sun.nio.cs;

import j$.sun.nio.cs.DoubleByte;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes19.dex */
public class Big5_Solaris extends Charset implements HistoricallyNamedCharset {
    static char[][] b2c;
    static char[] b2cSB;
    static char[] c2b;
    static char[] c2bIndex;
    private static volatile boolean b2cInitialized = false;
    private static volatile boolean c2bInitialized = false;

    public Big5_Solaris() {
        super("x-Big5-Solaris", StandardCharsets.aliases_Big5_Solaris());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "Big5_Solaris";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return cs.name().equals("US-ASCII") || (cs instanceof Big5) || (cs instanceof Big5_Solaris);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        initb2c();
        return new DoubleByte.Decoder(this, b2c, b2cSB, 64, 254, true);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        initc2b();
        return new DoubleByte.Encoder(this, c2b, c2bIndex, true);
    }

    static void initb2c() {
        if (b2cInitialized) {
            return;
        }
        synchronized (Big5_Solaris.class) {
            if (b2cInitialized) {
                return;
            }
            Big5.initb2c();
            b2c = (char[][]) Big5.b2c.clone();
            int[] sol = {63958, 30849, 63959, 37561, 63960, 35023, 63961, 22715, 63962, 24658, 63963, 31911, 63964, 23290};
            if (b2c[249] == DoubleByte.B2C_UNMAPPABLE) {
                b2c[249] = new char[191];
                Arrays.fill(b2c[249], (char) 65533);
            }
            int i = 0;
            while (i < sol.length) {
                int i2 = i + 1;
                b2c[249][sol[i] & 191] = (char) sol[i2];
                i = i2 + 1;
            }
            b2cSB = Big5.b2cSB;
            b2cInitialized = true;
        }
    }

    static void initc2b() {
        if (c2bInitialized) {
            return;
        }
        synchronized (Big5_Solaris.class) {
            if (c2bInitialized) {
                return;
            }
            Big5.initc2b();
            c2b = (char[]) Big5.c2b.clone();
            c2bIndex = (char[]) Big5.c2bIndex.clone();
            int[] sol = {30849, 63958, 37561, 63959, 35023, 63960, 22715, 63961, 24658, 63962, 31911, 63963, 23290, 63964};
            int c = 0;
            while (c < sol.length) {
                int i = c + 1;
                int c2 = sol[c];
                c2b[c2bIndex[c2 >> 8] + (c2 & 255)] = (char) sol[i];
                c = i + 1;
            }
            c2bInitialized = true;
        }
    }
}
