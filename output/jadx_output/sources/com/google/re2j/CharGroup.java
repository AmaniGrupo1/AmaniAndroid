package com.google.re2j;

import androidx.core.location.LocationRequestCompat;
import java.util.HashMap;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes22.dex */
class CharGroup {
    static final HashMap<String, CharGroup> POSIX_GROUPS;
    private static final int[] code10;
    private static final int[] code11;
    private static final int[] code12;
    private static final int[] code13;
    private static final int[] code14;
    private static final int[] code15;
    private static final int[] code16;
    private static final int[] code17;
    private static final int[] code4;
    private static final int[] code5;
    private static final int[] code6;
    private static final int[] code7;
    private static final int[] code8;
    private static final int[] code9;
    final int[] cls;
    final int sign;
    private static final int[] code1 = {48, 57};
    private static final int[] code2 = {9, 10, 12, 13, 32, 32};
    private static final int[] code3 = {48, 57, 65, 90, 95, 95, 97, 122};
    static final HashMap<String, CharGroup> PERL_GROUPS = new HashMap<>();

    private CharGroup(int sign, int[] cls) {
        this.sign = sign;
        this.cls = cls;
    }

    static {
        PERL_GROUPS.put("\\d", new CharGroup(1, code1));
        PERL_GROUPS.put("\\D", new CharGroup(-1, code1));
        PERL_GROUPS.put("\\s", new CharGroup(1, code2));
        PERL_GROUPS.put("\\S", new CharGroup(-1, code2));
        PERL_GROUPS.put("\\w", new CharGroup(1, code3));
        PERL_GROUPS.put("\\W", new CharGroup(-1, code3));
        code4 = new int[]{48, 57, 65, 90, 97, 122};
        code5 = new int[]{65, 90, 97, 122};
        code6 = new int[]{0, 127};
        code7 = new int[]{9, 9, 32, 32};
        code8 = new int[]{0, 31, 127, 127};
        code9 = new int[]{48, 57};
        code10 = new int[]{33, WebSocketProtocol.PAYLOAD_SHORT};
        code11 = new int[]{97, 122};
        code12 = new int[]{32, WebSocketProtocol.PAYLOAD_SHORT};
        code13 = new int[]{33, 47, 58, 64, 91, 96, 123, WebSocketProtocol.PAYLOAD_SHORT};
        code14 = new int[]{9, 13, 32, 32};
        code15 = new int[]{65, 90};
        code16 = new int[]{48, 57, 65, 90, 95, 95, 97, 122};
        code17 = new int[]{48, 57, 65, 70, 97, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY};
        POSIX_GROUPS = new HashMap<>();
        POSIX_GROUPS.put("[:alnum:]", new CharGroup(1, code4));
        POSIX_GROUPS.put("[:^alnum:]", new CharGroup(-1, code4));
        POSIX_GROUPS.put("[:alpha:]", new CharGroup(1, code5));
        POSIX_GROUPS.put("[:^alpha:]", new CharGroup(-1, code5));
        POSIX_GROUPS.put("[:ascii:]", new CharGroup(1, code6));
        POSIX_GROUPS.put("[:^ascii:]", new CharGroup(-1, code6));
        POSIX_GROUPS.put("[:blank:]", new CharGroup(1, code7));
        POSIX_GROUPS.put("[:^blank:]", new CharGroup(-1, code7));
        POSIX_GROUPS.put("[:cntrl:]", new CharGroup(1, code8));
        POSIX_GROUPS.put("[:^cntrl:]", new CharGroup(-1, code8));
        POSIX_GROUPS.put("[:digit:]", new CharGroup(1, code9));
        POSIX_GROUPS.put("[:^digit:]", new CharGroup(-1, code9));
        POSIX_GROUPS.put("[:graph:]", new CharGroup(1, code10));
        POSIX_GROUPS.put("[:^graph:]", new CharGroup(-1, code10));
        POSIX_GROUPS.put("[:lower:]", new CharGroup(1, code11));
        POSIX_GROUPS.put("[:^lower:]", new CharGroup(-1, code11));
        POSIX_GROUPS.put("[:print:]", new CharGroup(1, code12));
        POSIX_GROUPS.put("[:^print:]", new CharGroup(-1, code12));
        POSIX_GROUPS.put("[:punct:]", new CharGroup(1, code13));
        POSIX_GROUPS.put("[:^punct:]", new CharGroup(-1, code13));
        POSIX_GROUPS.put("[:space:]", new CharGroup(1, code14));
        POSIX_GROUPS.put("[:^space:]", new CharGroup(-1, code14));
        POSIX_GROUPS.put("[:upper:]", new CharGroup(1, code15));
        POSIX_GROUPS.put("[:^upper:]", new CharGroup(-1, code15));
        POSIX_GROUPS.put("[:word:]", new CharGroup(1, code16));
        POSIX_GROUPS.put("[:^word:]", new CharGroup(-1, code16));
        POSIX_GROUPS.put("[:xdigit:]", new CharGroup(1, code17));
        POSIX_GROUPS.put("[:^xdigit:]", new CharGroup(-1, code17));
    }
}
