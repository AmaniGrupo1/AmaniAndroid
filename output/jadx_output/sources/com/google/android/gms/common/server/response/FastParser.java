package com.google.android.gms.common.server.response;

import android.util.Log;
import androidx.compose.runtime.ComposerImplKt;
import androidx.core.location.LocationRequestCompat;
import androidx.media3.common.C;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okio.internal.Buffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaf = {AbstractJsonLexerKt.UNICODE_ESC, 'l', 'l'};
    private static final char[] zag = {'r', AbstractJsonLexerKt.UNICODE_ESC, 'e'};
    private static final char[] zah = {'r', AbstractJsonLexerKt.UNICODE_ESC, 'e', '\"'};
    private static final char[] zai = {'a', 'l', 's', 'e'};
    private static final char[] zaj = {'a', 'l', 's', 'e', '\"'};
    private static final char[] zak = {'\n'};
    private static final zai zam = new zaa();
    private static final zai zan = new zab();
    private static final zai zao = new zac();
    private static final zai zap = new zad();
    private static final zai zaq = new zae();
    private static final zai zar = new zaf();
    private static final zai zas = new zag();
    private static final zai zat = new zah();
    private final char[] zaa = new char[1];
    private final char[] zab = new char[32];
    private final char[] zac = new char[1024];
    private final StringBuilder zad = new StringBuilder(32);
    private final StringBuilder zae = new StringBuilder(1024);
    private final Stack zal = new Stack();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
    public static class ParseException extends Exception {
        public ParseException(String message) {
            super(message);
        }

        public ParseException(String message, Throwable cause) {
            super(message, cause);
        }

        public ParseException(Throwable cause) {
            super(cause);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        throw new com.google.android.gms.common.server.response.FastParser.ParseException("Unexpected control character while reading string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final String zaA(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z = false;
        boolean z2 = false;
        loop0: while (true) {
            int i = bufferedReader.read(cArr);
            if (i == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            int i2 = 0;
            while (i2 < i) {
                char c = cArr[i2];
                if (Character.isISOControl(c) && (cArr2 == null || cArr2[0] != c)) {
                    break loop0;
                }
                int i3 = i2 + 1;
                if (c != '\"') {
                    if (c == '\\') {
                        z = !z;
                        z2 = true;
                    }
                    i2 = i3;
                } else if (!z) {
                    sb.append(cArr, 0, i2);
                    bufferedReader.reset();
                    bufferedReader.skip(i3);
                    return z2 ? JsonUtils.unescapeString(sb.toString()) : sb.toString();
                }
                z = false;
                i2 = i3;
            }
            sb.append(cArr, 0, i);
            bufferedReader.mark(cArr.length);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zai(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        HashMap map;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String strZaj = zaj(bufferedReader);
        if (strZaj == null) {
            zaz(1);
            return false;
        }
        while (strZaj != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(strZaj);
            if (field == null) {
                strZaj = zak(bufferedReader);
            } else {
                Stack stack = this.zal;
                stack.push(4);
                switch (field.zaa) {
                    case 0:
                        if (!field.zab) {
                            fastJsonResponse.zaa(field, zab(bufferedReader));
                        } else {
                            fastJsonResponse.zab(field, zam(bufferedReader, zam));
                        }
                        break;
                    case 1:
                        if (!field.zab) {
                            fastJsonResponse.zac(field, zad(bufferedReader));
                        } else {
                            fastJsonResponse.zad(field, zam(bufferedReader, zas));
                        }
                        break;
                    case 2:
                        if (!field.zab) {
                            fastJsonResponse.zae(field, zac(bufferedReader));
                        } else {
                            fastJsonResponse.zaf(field, zam(bufferedReader, zan));
                        }
                        break;
                    case 3:
                        if (!field.zab) {
                            fastJsonResponse.zag(field, zaf(bufferedReader));
                        } else {
                            fastJsonResponse.zah(field, zam(bufferedReader, zao));
                        }
                        break;
                    case 4:
                        if (!field.zab) {
                            fastJsonResponse.zai(field, zag(bufferedReader));
                        } else {
                            fastJsonResponse.zaj(field, zam(bufferedReader, zap));
                        }
                        break;
                    case 5:
                        if (!field.zab) {
                            fastJsonResponse.zak(field, zah(bufferedReader));
                        } else {
                            fastJsonResponse.zal(field, zam(bufferedReader, zat));
                        }
                        break;
                    case 6:
                        if (!field.zab) {
                            fastJsonResponse.zam(field, zar(bufferedReader, false));
                        } else {
                            fastJsonResponse.zan(field, zam(bufferedReader, zaq));
                        }
                        break;
                    case 7:
                        if (!field.zab) {
                            fastJsonResponse.zao(field, zaa(bufferedReader));
                        } else {
                            fastJsonResponse.zap(field, zam(bufferedReader, zar));
                        }
                        break;
                    case 8:
                        fastJsonResponse.zaq(field, Base64Utils.decode(zan(bufferedReader, this.zac, this.zae, zak)));
                        break;
                    case 9:
                        fastJsonResponse.zaq(field, Base64Utils.decodeUrlSafe(zan(bufferedReader, this.zac, this.zae, zak)));
                        break;
                    case 10:
                        char cZaw = zaw(bufferedReader);
                        if (cZaw != 'n') {
                            if (cZaw != '{') {
                                throw new ParseException("Expected start of a map object");
                            }
                            stack.push(1);
                            map = new HashMap();
                            while (true) {
                                switch (zaw(bufferedReader)) {
                                    case 0:
                                        throw new ParseException("Unexpected EOF");
                                    case '\"':
                                        char[] cArr = this.zab;
                                        StringBuilder sb = this.zad;
                                        String strZaA = zaA(bufferedReader, cArr, sb, null);
                                        if (zaw(bufferedReader) != ':') {
                                            String.valueOf(strZaA);
                                            throw new ParseException("No map value found for key ".concat(String.valueOf(strZaA)));
                                        }
                                        if (zaw(bufferedReader) != '\"') {
                                            String.valueOf(strZaA);
                                            throw new ParseException("Expected String value for key ".concat(String.valueOf(strZaA)));
                                        }
                                        map.put(strZaA, zaA(bufferedReader, cArr, sb, null));
                                        char cZaw2 = zaw(bufferedReader);
                                        if (cZaw2 != ',') {
                                            if (cZaw2 != '}') {
                                                StringBuilder sb2 = new StringBuilder(String.valueOf(cZaw2).length() + 47);
                                                sb2.append("Unexpected character while parsing string map: ");
                                                sb2.append(cZaw2);
                                                throw new ParseException(sb2.toString());
                                            }
                                            zaz(1);
                                        }
                                        break;
                                        break;
                                    case ComposerImplKt.nodeKey /* 125 */:
                                        zaz(1);
                                        break;
                                }
                            }
                        } else {
                            zay(bufferedReader, zaf);
                            map = null;
                        }
                        fastJsonResponse.zar(field, map);
                        break;
                    case 11:
                        if (field.zab) {
                            char cZaw3 = zaw(bufferedReader);
                            if (cZaw3 == 'n') {
                                zay(bufferedReader, zaf);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                            } else {
                                stack.push(5);
                                if (cZaw3 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, zav(bufferedReader, field));
                            }
                        } else {
                            char cZaw4 = zaw(bufferedReader);
                            if (cZaw4 == 'n') {
                                zay(bufferedReader, zaf);
                                fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                            } else {
                                stack.push(1);
                                if (cZaw4 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    FastJsonResponse fastJsonResponseZaf = field.zaf();
                                    zai(bufferedReader, fastJsonResponseZaf);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, fastJsonResponseZaf);
                                } catch (IllegalAccessException e) {
                                    throw new ParseException("Error instantiating inner object", e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException("Error instantiating inner object", e2);
                                }
                            }
                        }
                        break;
                    default:
                        int i = field.zaa;
                        StringBuilder sb3 = new StringBuilder(String.valueOf(i).length() + 19);
                        sb3.append("Invalid field type ");
                        sb3.append(i);
                        throw new ParseException(sb3.toString());
                }
                zaz(4);
                zaz(2);
                char cZaw5 = zaw(bufferedReader);
                switch (cZaw5) {
                    case ',':
                        strZaj = zaj(bufferedReader);
                        break;
                    case ComposerImplKt.nodeKey /* 125 */:
                        strZaj = null;
                        break;
                    default:
                        StringBuilder sb4 = new StringBuilder(String.valueOf(cZaw5).length() + 54);
                        sb4.append("Expected end of object or field separator, but found: ");
                        sb4.append(cZaw5);
                        throw new ParseException(sb4.toString());
                }
            }
        }
        zaz(1);
        return true;
    }

    private final String zaj(BufferedReader bufferedReader) throws ParseException, IOException {
        Stack stack = this.zal;
        stack.push(2);
        char cZaw = zaw(bufferedReader);
        switch (cZaw) {
            case '\"':
                stack.push(3);
                String strZaA = zaA(bufferedReader, this.zab, this.zad, null);
                zaz(3);
                if (zaw(bufferedReader) == ':') {
                    return strZaA;
                }
                throw new ParseException("Expected key/value separator");
            case ']':
                zaz(2);
                zaz(1);
                zaz(5);
                return null;
            case ComposerImplKt.nodeKey /* 125 */:
                zaz(2);
                return null;
            default:
                StringBuilder sb = new StringBuilder(String.valueOf(cZaw).length() + 18);
                sb.append("Unexpected token: ");
                sb.append(cZaw);
                throw new ParseException(sb.toString());
        }
    }

    private final String zak(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        int i = 1;
        switch (zaw(bufferedReader)) {
            case '\"':
                char[] cArr = this.zaa;
                if (bufferedReader.read(cArr) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                char c = cArr[0];
                boolean z = false;
                do {
                    if (c == '\"') {
                        if (z) {
                            c = '\"';
                            z = true;
                        }
                    }
                    z = c == '\\' ? !z : false;
                    if (bufferedReader.read(cArr) == -1) {
                        throw new ParseException("Unexpected EOF while parsing string");
                    }
                    c = cArr[0];
                    break;
                } while (!Character.isISOControl(c));
                throw new ParseException("Unexpected control character while reading string");
            case ',':
                throw new ParseException("Missing value");
            case '[':
                this.zal.push(5);
                bufferedReader.mark(32);
                if (zaw(bufferedReader) != ']') {
                    bufferedReader.reset();
                    boolean z2 = false;
                    boolean z3 = false;
                    while (i > 0) {
                        char cZaw = zaw(bufferedReader);
                        if (cZaw == 0) {
                            throw new ParseException("Unexpected EOF while parsing array");
                        }
                        if (Character.isISOControl(cZaw)) {
                            throw new ParseException("Unexpected control character while reading array");
                        }
                        if (cZaw == '\"') {
                            if (!z3) {
                                z2 = !z2;
                            }
                            cZaw = '\"';
                        }
                        if (cZaw == '[') {
                            if (!z2) {
                                i++;
                            }
                            cZaw = '[';
                        }
                        if (cZaw == ']' && !z2) {
                            i--;
                        }
                        z3 = (cZaw == '\\' && z2) ? !z3 : false;
                    }
                    zaz(5);
                } else {
                    zaz(5);
                }
                break;
            case '{':
                this.zal.push(1);
                bufferedReader.mark(32);
                char cZaw2 = zaw(bufferedReader);
                if (cZaw2 == '}') {
                    zaz(1);
                } else {
                    if (cZaw2 != '\"') {
                        StringBuilder sb = new StringBuilder(String.valueOf(cZaw2).length() + 17);
                        sb.append("Unexpected token ");
                        sb.append(cZaw2);
                        throw new ParseException(sb.toString());
                    }
                    bufferedReader.reset();
                    zaj(bufferedReader);
                    while (zak(bufferedReader) != null) {
                    }
                    zaz(1);
                }
                break;
            default:
                bufferedReader.reset();
                zax(bufferedReader, this.zac);
                break;
        }
        char cZaw3 = zaw(bufferedReader);
        switch (cZaw3) {
            case ',':
                zaz(2);
                return zaj(bufferedReader);
            case ComposerImplKt.nodeKey /* 125 */:
                zaz(2);
                return null;
            default:
                StringBuilder sb2 = new StringBuilder(String.valueOf(cZaw3).length() + 17);
                sb2.append("Unexpected token ");
                sb2.append(cZaw3);
                throw new ParseException(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zal, reason: merged with bridge method [inline-methods] */
    public final String zaa(BufferedReader bufferedReader) throws ParseException, IOException {
        return zan(bufferedReader, this.zab, this.zad, null);
    }

    private final ArrayList zam(BufferedReader bufferedReader, zai zaiVar) throws ParseException, IOException {
        char cZaw = zaw(bufferedReader);
        if (cZaw == 'n') {
            zay(bufferedReader, zaf);
            return null;
        }
        if (cZaw != '[') {
            throw new ParseException("Expected start of array");
        }
        this.zal.push(5);
        ArrayList arrayList = new ArrayList();
        while (true) {
            bufferedReader.mark(1024);
            switch (zaw(bufferedReader)) {
                case 0:
                    throw new ParseException("Unexpected EOF");
                case ',':
                    break;
                case ']':
                    zaz(5);
                    return arrayList;
                default:
                    bufferedReader.reset();
                    arrayList.add(zaiVar.zaa(this, bufferedReader));
                    break;
            }
        }
    }

    private final String zan(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        switch (zaw(bufferedReader)) {
            case '\"':
                return zaA(bufferedReader, cArr, sb, cArr2);
            case 'n':
                zay(bufferedReader, zaf);
                return null;
            default:
                throw new ParseException("Expected string");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zao, reason: merged with bridge method [inline-methods] */
    public final int zab(BufferedReader bufferedReader) throws ParseException, IOException {
        int i;
        int i2;
        char[] cArr = this.zac;
        int iZax = zax(bufferedReader, cArr);
        if (iZax == 0) {
            return 0;
        }
        if (iZax <= 0) {
            throw new ParseException("No number to parse");
        }
        char c = cArr[0];
        int i3 = c == '-' ? Integer.MIN_VALUE : C.RATE_UNSET_INT;
        int i4 = c == '-' ? 1 : 0;
        if (i4 < iZax) {
            i2 = i4 + 1;
            int iDigit = Character.digit(cArr[i4], 10);
            if (iDigit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i = -iDigit;
        } else {
            i = 0;
            i2 = i4;
        }
        while (i2 < iZax) {
            int i5 = i2 + 1;
            int iDigit2 = Character.digit(cArr[i2], 10);
            if (iDigit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i < -214748364) {
                throw new ParseException("Number too large");
            }
            int i6 = i * 10;
            if (i6 < i3 + iDigit2) {
                throw new ParseException("Number too large");
            }
            i = i6 - iDigit2;
            i2 = i5;
        }
        if (i4 == 0) {
            return -i;
        }
        if (i2 > 1) {
            return i;
        }
        throw new ParseException("No digits to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zap, reason: merged with bridge method [inline-methods] */
    public final long zac(BufferedReader bufferedReader) throws ParseException, IOException {
        long j;
        int i;
        char[] cArr = this.zac;
        int iZax = zax(bufferedReader, cArr);
        if (iZax == 0) {
            return 0L;
        }
        if (iZax <= 0) {
            throw new ParseException("No number to parse");
        }
        char c = cArr[0];
        long j2 = c == '-' ? Long.MIN_VALUE : C.TIME_UNSET;
        int i2 = c == '-' ? 1 : 0;
        int i3 = 10;
        if (i2 < iZax) {
            i = i2 + 1;
            int iDigit = Character.digit(cArr[i2], 10);
            if (iDigit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            j = -iDigit;
        } else {
            j = 0;
            i = i2;
        }
        while (i < iZax) {
            int i4 = i + 1;
            int iDigit2 = Character.digit(cArr[i], i3);
            if (iDigit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (j < Buffer.OVERFLOW_ZONE) {
                throw new ParseException("Number too large");
            }
            long j3 = j * 10;
            long j4 = j2;
            long j5 = iDigit2;
            if (j3 < j4 + j5) {
                throw new ParseException("Number too large");
            }
            j = j3 - j5;
            i = i4;
            j2 = j4;
            i3 = 10;
        }
        if (i2 == 0) {
            return -j;
        }
        if (i > 1) {
            return j;
        }
        throw new ParseException("No digits to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zaq, reason: merged with bridge method [inline-methods] */
    public final BigInteger zad(BufferedReader bufferedReader) throws ParseException, IOException {
        char[] cArr = this.zac;
        int iZax = zax(bufferedReader, cArr);
        if (iZax == 0) {
            return null;
        }
        return new BigInteger(new String(cArr, 0, iZax));
    }

    private final boolean zar(BufferedReader bufferedReader, boolean z) throws ParseException, IOException {
        char cZaw = zaw(bufferedReader);
        switch (cZaw) {
            case '\"':
                if (z) {
                    throw new ParseException("No boolean value found in string");
                }
                return zar(bufferedReader, true);
            case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                zay(bufferedReader, z ? zaj : zai);
                return false;
            case 'n':
                zay(bufferedReader, zaf);
                return false;
            case AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID /* 116 */:
                zay(bufferedReader, z ? zah : zag);
                return true;
            default:
                StringBuilder sb = new StringBuilder(String.valueOf(cZaw).length() + 18);
                sb.append("Unexpected token: ");
                sb.append(cZaw);
                throw new ParseException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zas, reason: merged with bridge method [inline-methods] */
    public final float zaf(BufferedReader bufferedReader) throws ParseException, IOException {
        char[] cArr = this.zac;
        int iZax = zax(bufferedReader, cArr);
        if (iZax == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(cArr, 0, iZax));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zat, reason: merged with bridge method [inline-methods] */
    public final double zag(BufferedReader bufferedReader) throws ParseException, IOException {
        char[] cArr = this.zac;
        int iZax = zax(bufferedReader, cArr);
        if (iZax == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(cArr, 0, iZax));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zau, reason: merged with bridge method [inline-methods] */
    public final BigDecimal zah(BufferedReader bufferedReader) throws ParseException, IOException {
        char[] cArr = this.zac;
        int iZax = zax(bufferedReader, cArr);
        if (iZax == 0) {
            return null;
        }
        return new BigDecimal(new String(cArr, 0, iZax));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private final java.util.ArrayList zav(java.io.BufferedReader r9, com.google.android.gms.common.server.response.FastJsonResponse.Field r10) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            r8 = this;
            java.lang.String r0 = "Error instantiating inner object"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            char r2 = r8.zaw(r9)
            r3 = 5
            java.lang.String r4 = "Unexpected token: "
            switch(r2) {
                case 93: goto La4;
                case 110: goto L9a;
                case 123: goto L30;
                default: goto L11;
            }
        L11:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r10 = java.lang.String.valueOf(r2)
            int r10 = r10.length()
            int r10 = r10 + 18
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r10)
            r0.append(r4)
            r0.append(r2)
            java.lang.String r10 = r0.toString()
            r9.<init>(r10)
            throw r9
        L30:
            java.util.Stack r2 = r8.zal
            r5 = 1
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)
            r2.push(r6)
        L3a:
            com.google.android.gms.common.server.response.FastJsonResponse r6 = r10.zaf()     // Catch: java.lang.IllegalAccessException -> L8c java.lang.InstantiationException -> L93
            boolean r7 = r8.zai(r9, r6)     // Catch: java.lang.IllegalAccessException -> L8c java.lang.InstantiationException -> L93
            if (r7 == 0) goto L8b
            r1.add(r6)     // Catch: java.lang.IllegalAccessException -> L8c java.lang.InstantiationException -> L93
            char r6 = r8.zaw(r9)
            switch(r6) {
                case 44: goto L72;
                case 93: goto L6d;
                default: goto L4e;
            }
        L4e:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r10 = java.lang.String.valueOf(r6)
            int r10 = r10.length()
            int r10 = r10 + 18
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r10)
            r0.append(r4)
            r0.append(r6)
            java.lang.String r10 = r0.toString()
            r9.<init>(r10)
            throw r9
        L6d:
            r8.zaz(r3)
            return r1
        L72:
            char r6 = r8.zaw(r9)
            r7 = 123(0x7b, float:1.72E-43)
            if (r6 != r7) goto L83
        L7b:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)
            r2.push(r6)
            goto L3a
        L83:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r10 = "Expected start of next object in array"
            r9.<init>(r10)
            throw r9
        L8b:
            return r1
        L8c:
            r9 = move-exception
            com.google.android.gms.common.server.response.FastParser$ParseException r10 = new com.google.android.gms.common.server.response.FastParser$ParseException
            r10.<init>(r0, r9)
            throw r10
        L93:
            r9 = move-exception
            com.google.android.gms.common.server.response.FastParser$ParseException r10 = new com.google.android.gms.common.server.response.FastParser$ParseException
            r10.<init>(r0, r9)
            throw r10
        L9a:
            char[] r10 = com.google.android.gms.common.server.response.FastParser.zaf
            r8.zay(r9, r10)
            r8.zaz(r3)
            r9 = 0
            return r9
        La4:
            r8.zaz(r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.zav(java.io.BufferedReader, com.google.android.gms.common.server.response.FastJsonResponse$Field):java.util.ArrayList");
    }

    private final char zaw(BufferedReader bufferedReader) throws ParseException, IOException {
        char[] cArr = this.zaa;
        if (bufferedReader.read(cArr) != -1) {
            while (Character.isWhitespace(cArr[0])) {
                if (bufferedReader.read(cArr) == -1) {
                }
            }
            return cArr[0];
        }
        return (char) 0;
    }

    private final int zax(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i;
        char cZaw = zaw(bufferedReader);
        if (cZaw == 0) {
            throw new ParseException("Unexpected EOF");
        }
        if (cZaw == ',') {
            throw new ParseException("Missing value");
        }
        if (cZaw == 'n') {
            zay(bufferedReader, zaf);
            return 0;
        }
        bufferedReader.mark(1024);
        if (cZaw == '\"') {
            i = 0;
            boolean z = false;
            while (i < 1024 && bufferedReader.read(cArr, i, 1) != -1) {
                char c = cArr[i];
                if (Character.isISOControl(c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                int i2 = i + 1;
                if (c != '\"') {
                    z = c == '\\' ? !z : false;
                } else {
                    if (!z) {
                        bufferedReader.reset();
                        bufferedReader.skip(i2);
                        return i;
                    }
                    z = false;
                }
                i = i2;
            }
        } else {
            cArr[0] = cZaw;
            i = 1;
            while (i < 1024 && bufferedReader.read(cArr, i, 1) != -1) {
                char c2 = cArr[i];
                if (c2 == '}' || c2 == ',' || Character.isWhitespace(c2) || cArr[i] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i - 1);
                    cArr[i] = 0;
                    return i;
                }
                i++;
            }
        }
        if (i == 1024) {
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    private final void zay(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i = 0;
        while (true) {
            int length = cArr.length;
            if (i >= length) {
                return;
            }
            char[] cArr2 = this.zab;
            int i2 = bufferedReader.read(cArr2, 0, length - i);
            if (i2 == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i3 = 0; i3 < i2; i3++) {
                if (cArr[i3 + i] != cArr2[i3]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i += i2;
        }
    }

    private final void zaz(int i) throws ParseException {
        Stack stack = this.zal;
        if (stack.isEmpty()) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 35);
            sb.append("Expected state ");
            sb.append(i);
            sb.append(" but had empty stack");
            throw new ParseException(sb.toString());
        }
        int iIntValue = ((Integer) stack.pop()).intValue();
        if (iIntValue == i) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 24 + String.valueOf(iIntValue).length());
        sb2.append("Expected state ");
        sb2.append(i);
        sb2.append(" but had ");
        sb2.append(iIntValue);
        throw new ParseException(sb2.toString());
    }

    public void parse(InputStream is, T t) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is), 1024);
        try {
            try {
                Stack stack = this.zal;
                stack.push(0);
                char cZaw = zaw(bufferedReader);
                switch (cZaw) {
                    case 0:
                        throw new ParseException("No data to parse");
                    case '[':
                        stack.push(5);
                        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                        if (fieldMappings.size() != 1) {
                            throw new ParseException("Object array response class must have a single Field");
                        }
                        FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                        t.addConcreteTypeArrayInternal(value, value.zae, zav(bufferedReader, value));
                        break;
                        break;
                    case '{':
                        stack.push(1);
                        zai(bufferedReader, t);
                        break;
                    default:
                        StringBuilder sb = new StringBuilder(String.valueOf(cZaw).length() + 18);
                        sb.append("Unexpected token: ");
                        sb.append(cZaw);
                        throw new ParseException(sb.toString());
                }
                zaz(0);
            } catch (IOException e) {
                throw new ParseException(e);
            }
        } finally {
            try {
                bufferedReader.close();
            } catch (IOException e2) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
        }
    }

    final /* synthetic */ boolean zae(BufferedReader bufferedReader, boolean z) {
        return zar(bufferedReader, false);
    }
}
