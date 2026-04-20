package com.google.re2j;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
abstract class Utils {
    static final int EMPTY_ALL = -1;
    static final int EMPTY_BEGIN_LINE = 1;
    static final int EMPTY_BEGIN_TEXT = 4;
    static final int EMPTY_END_LINE = 2;
    static final int EMPTY_END_TEXT = 8;
    static final int[] EMPTY_INTS = new int[0];
    static final int EMPTY_NO_WORD_BOUNDARY = 32;
    static final int EMPTY_WORD_BOUNDARY = 16;
    private static final String METACHARACTERS = "\\.+*?()|[]{}^$";

    static boolean isalnum(int c) {
        return (48 <= c && c <= 57) || (65 <= c && c <= 90) || (97 <= c && c <= 122);
    }

    static int unhex(int c) {
        if (48 <= c && c <= 57) {
            return c - 48;
        }
        if (97 <= c && c <= 102) {
            return (c - 97) + 10;
        }
        if (65 <= c && c <= 70) {
            return (c - 65) + 10;
        }
        return -1;
    }

    static void escapeRune(StringBuilder out, int rune) {
        if (Unicode.isPrint(rune)) {
            if (METACHARACTERS.indexOf((char) rune) >= 0) {
                out.append(AbstractJsonLexerKt.STRING_ESC);
            }
            out.appendCodePoint(rune);
        }
        switch (rune) {
            case 8:
                out.append("\\b");
                break;
            case 9:
                out.append("\\t");
                break;
            case 10:
                out.append("\\n");
                break;
            case 12:
                out.append("\\f");
                break;
            case 13:
                out.append("\\r");
                break;
            case 34:
                out.append("\\\"");
                break;
            case 92:
                out.append("\\\\");
                break;
            default:
                String s = Integer.toHexString(rune);
                if (rune < 256) {
                    out.append("\\x");
                    if (s.length() == 1) {
                        out.append('0');
                    }
                    out.append(s);
                } else {
                    out.append("\\x{").append(s).append(AbstractJsonLexerKt.END_OBJ);
                }
                break;
        }
    }

    static int[] stringToRunes(String str) {
        int charlen = str.length();
        int runelen = str.codePointCount(0, charlen);
        int[] runes = new int[runelen];
        int r = 0;
        int c = 0;
        while (c < charlen) {
            int rune = str.codePointAt(c);
            runes[r] = rune;
            c += Character.charCount(rune);
            r++;
        }
        return runes;
    }

    static String runeToString(int r) {
        char c = (char) r;
        return r == c ? String.valueOf(c) : new String(Character.toChars(c));
    }

    static int[] subarray(int[] array, int start, int end) {
        int[] r = new int[end - start];
        for (int i = start; i < end; i++) {
            r[i - start] = array[i];
        }
        return r;
    }

    static byte[] subarray(byte[] array, int start, int end) {
        byte[] r = new byte[end - start];
        for (int i = start; i < end; i++) {
            r[i - start] = array[i];
        }
        return r;
    }

    static int indexOf(byte[] source, byte[] target, int fromIndex) {
        if (fromIndex >= source.length) {
            if (target.length == 0) {
                return source.length;
            }
            return -1;
        }
        if (fromIndex < 0) {
            fromIndex = 0;
        }
        if (target.length == 0) {
            return fromIndex;
        }
        byte first = target[0];
        int i = fromIndex;
        int max = source.length - target.length;
        while (i <= max) {
            if (source[i] != first) {
                do {
                    i++;
                    if (i > max) {
                        break;
                    }
                } while (source[i] != first);
            }
            if (i <= max) {
                int j = i + 1;
                int end = (target.length + j) - 1;
                for (int k = 1; j < end && source[j] == target[k]; k++) {
                    j++;
                }
                if (j == end) {
                    return i;
                }
            }
            i++;
        }
        return -1;
    }

    static boolean isWordRune(int r) {
        return (65 <= r && r <= 90) || (97 <= r && r <= 122) || ((48 <= r && r <= 57) || r == 95);
    }

    static int emptyOpContext(int r1, int r2) {
        int op = 0;
        if (r1 < 0) {
            op = 0 | 5;
        }
        if (r1 == 10) {
            op |= 1;
        }
        if (r2 < 0) {
            op |= 10;
        }
        if (r2 == 10) {
            op |= 2;
        }
        if (isWordRune(r1) != isWordRune(r2)) {
            return op | 16;
        }
        return op | 32;
    }

    private Utils() {
    }
}
