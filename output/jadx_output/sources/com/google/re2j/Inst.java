package com.google.re2j;

/* JADX INFO: loaded from: classes22.dex */
final class Inst {
    public static final int ALT = 1;
    public static final int ALT_MATCH = 2;
    public static final int CAPTURE = 3;
    public static final int EMPTY_WIDTH = 4;
    public static final int FAIL = 5;
    public static final int MATCH = 6;
    public static final int NOP = 7;
    public static final int RUNE = 8;
    public static final int RUNE1 = 9;
    public static final int RUNE_ANY = 10;
    public static final int RUNE_ANY_NOT_NL = 11;
    int arg;
    int op;
    int out;
    int[] runes;

    Inst(int op) {
        this.op = op;
    }

    static boolean isRuneOp(int op) {
        return 8 <= op && op <= 11;
    }

    boolean matchRune(int r) {
        if (this.runes.length == 1) {
            int r0 = this.runes[0];
            if (r == r0) {
                return true;
            }
            if ((this.arg & 1) != 0) {
                for (int r1 = Unicode.simpleFold(r0); r1 != r0; r1 = Unicode.simpleFold(r1)) {
                    if (r == r1) {
                        return true;
                    }
                }
            }
            return false;
        }
        for (int j = 0; j < this.runes.length && j <= 8; j += 2) {
            if (r < this.runes[j]) {
                return false;
            }
            if (r <= this.runes[j + 1]) {
                return true;
            }
        }
        int lo = 0;
        int hi = this.runes.length / 2;
        while (lo < hi) {
            int m = ((hi - lo) / 2) + lo;
            int c = this.runes[m * 2];
            if (c <= r) {
                if (r <= this.runes[(m * 2) + 1]) {
                    return true;
                }
                lo = m + 1;
            } else {
                hi = m;
            }
        }
        return false;
    }

    public String toString() {
        switch (this.op) {
            case 1:
                return "alt -> " + this.out + ", " + this.arg;
            case 2:
                return "altmatch -> " + this.out + ", " + this.arg;
            case 3:
                return "cap " + this.arg + " -> " + this.out;
            case 4:
                return "empty " + this.arg + " -> " + this.out;
            case 5:
                return "fail";
            case 6:
                return "match";
            case 7:
                return "nop -> " + this.out;
            case 8:
                if (this.runes == null) {
                    return "rune <null>";
                }
                return "rune " + escapeRunes(this.runes) + ((this.arg & 1) != 0 ? "/i" : "") + " -> " + this.out;
            case 9:
                return "rune1 " + escapeRunes(this.runes) + " -> " + this.out;
            case 10:
                return "any -> " + this.out;
            case 11:
                return "anynotnl -> " + this.out;
            default:
                throw new IllegalStateException("unhandled case in Inst.toString");
        }
    }

    private static String escapeRunes(int[] runes) {
        StringBuilder out = new StringBuilder();
        out.append('\"');
        for (int rune : runes) {
            Utils.escapeRune(out, rune);
        }
        out.append('\"');
        return out.toString();
    }
}
