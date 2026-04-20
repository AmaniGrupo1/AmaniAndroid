package com.google.re2j;

/* JADX INFO: loaded from: classes22.dex */
class Unicode {
    static final int MAX_ASCII = 127;
    static final int MAX_FOLD = 66639;
    static final int MAX_LATIN1 = 255;
    static final int MAX_RUNE = 1114111;
    static final int MIN_FOLD = 65;

    private static boolean is32(int[][] ranges, int r) {
        int lo = 0;
        int hi = ranges.length;
        while (lo < hi) {
            int m = ((hi - lo) / 2) + lo;
            int[] range = ranges[m];
            if (range[0] <= r && r <= range[1]) {
                return (r - range[0]) % range[2] == 0;
            }
            if (r < range[0]) {
                hi = m;
            } else {
                lo = m + 1;
            }
        }
        return false;
    }

    private static boolean is(int[][] ranges, int r) {
        if (r > 255) {
            return ranges.length > 0 && r >= ranges[0][0] && is32(ranges, r);
        }
        for (int[] range : ranges) {
            if (r <= range[1]) {
                return r >= range[0] && (r - range[0]) % range[2] == 0;
            }
        }
        return false;
    }

    static boolean isUpper(int r) {
        if (r <= 255) {
            return Character.isUpperCase((char) r);
        }
        return is(UnicodeTables.Upper, r);
    }

    static boolean isPrint(int r) {
        return r <= 255 ? (r >= 32 && r < 127) || (r >= 161 && r != 173) : is(UnicodeTables.L, r) || is(UnicodeTables.M, r) || is(UnicodeTables.N, r) || is(UnicodeTables.P, r) || is(UnicodeTables.S, r);
    }

    static int simpleFold(int r) {
        if (r < UnicodeTables.CASE_ORBIT.length && UnicodeTables.CASE_ORBIT[r] != 0) {
            return UnicodeTables.CASE_ORBIT[r];
        }
        int l = Characters.toLowerCase(r);
        if (l != r) {
            return l;
        }
        return Characters.toUpperCase(r);
    }

    private Unicode() {
    }
}
