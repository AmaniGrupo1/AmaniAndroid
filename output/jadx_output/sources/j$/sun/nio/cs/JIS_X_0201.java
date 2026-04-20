package j$.sun.nio.cs;

import com.google.firebase.database.core.ValidationPath;
import j$.sun.nio.cs.SingleByte;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes19.dex */
public class JIS_X_0201 extends Charset implements HistoricallyNamedCharset {
    private static final String b2cTable = "���������������������������������｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝﾞﾟ��������������������������������\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f";
    private static final char[] b2c = b2cTable.toCharArray();
    private static final char[] c2b = new char[ValidationPath.MAX_PATH_LENGTH_BYTES];
    private static final char[] c2bIndex = new char[256];

    public JIS_X_0201() {
        super("JIS_X0201", StandardCharsets.aliases_JIS_X_0201());
    }

    @Override // j$.sun.nio.cs.HistoricallyNamedCharset
    public String historicalName() {
        return "JIS_X0201";
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        return cs.name().equals("US-ASCII") || (cs instanceof JIS_X_0201);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        return new SingleByte.Decoder(this, b2c, true);
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        return new SingleByte.Encoder(this, c2b, c2bIndex, true);
    }

    static {
        char[] b2cMap = b2c;
        char[] c2bNR = {'~', 8254, AbstractJsonLexerKt.STRING_ESC, 165};
        SingleByte.initC2B(b2cMap, c2bNR, c2b, c2bIndex);
    }
}
