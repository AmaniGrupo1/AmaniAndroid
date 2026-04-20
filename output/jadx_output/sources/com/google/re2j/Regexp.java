package com.google.re2j;

import java.util.Arrays;
import java.util.Map;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
class Regexp {
    static final Regexp[] EMPTY_SUBS = new Regexp[0];
    int cap;
    int flags;
    int max;
    int min;
    String name;
    Map<String, Integer> namedGroups;
    Op op;
    int[] runes;
    Regexp[] subs;

    enum Op {
        NO_MATCH,
        EMPTY_MATCH,
        LITERAL,
        CHAR_CLASS,
        ANY_CHAR_NOT_NL,
        ANY_CHAR,
        BEGIN_LINE,
        END_LINE,
        BEGIN_TEXT,
        END_TEXT,
        WORD_BOUNDARY,
        NO_WORD_BOUNDARY,
        CAPTURE,
        STAR,
        PLUS,
        QUEST,
        REPEAT,
        CONCAT,
        ALTERNATE,
        LEFT_PAREN,
        VERTICAL_BAR;

        boolean isPseudo() {
            return ordinal() >= LEFT_PAREN.ordinal();
        }
    }

    Regexp(Op op) {
        this.op = op;
    }

    Regexp(Regexp that) {
        this.op = that.op;
        this.flags = that.flags;
        this.subs = that.subs;
        this.runes = that.runes;
        this.min = that.min;
        this.max = that.max;
        this.cap = that.cap;
        this.name = that.name;
        this.namedGroups = that.namedGroups;
    }

    void reinit() {
        this.flags = 0;
        this.subs = EMPTY_SUBS;
        this.runes = null;
        this.max = 0;
        this.min = 0;
        this.cap = 0;
        this.name = null;
    }

    public String toString() {
        StringBuilder out = new StringBuilder();
        appendTo(out);
        return out.toString();
    }

    private static void quoteIfHyphen(StringBuilder out, int rune) {
        if (rune == 45) {
            out.append(AbstractJsonLexerKt.STRING_ESC);
        }
    }

    private void appendTo(StringBuilder out) {
        int i = 0;
        switch (this.op) {
            case STAR:
            case PLUS:
            case QUEST:
            case REPEAT:
                Regexp sub = this.subs[0];
                if (sub.op.ordinal() > Op.CAPTURE.ordinal() || (sub.op == Op.LITERAL && sub.runes.length > 1)) {
                    out.append("(?:");
                    sub.appendTo(out);
                    out.append(')');
                } else {
                    sub.appendTo(out);
                }
                switch (this.op) {
                    case STAR:
                        out.append('*');
                        break;
                    case PLUS:
                        out.append('+');
                        break;
                    case QUEST:
                        out.append('?');
                        break;
                    case REPEAT:
                        out.append(AbstractJsonLexerKt.BEGIN_OBJ).append(this.min);
                        if (this.min != this.max) {
                            out.append(AbstractJsonLexerKt.COMMA);
                            if (this.max >= 0) {
                                out.append(this.max);
                            }
                        }
                        out.append(AbstractJsonLexerKt.END_OBJ);
                        break;
                }
                if ((this.flags & 32) != 0) {
                    out.append('?');
                }
                break;
            case NO_MATCH:
                out.append("[^\\x00-\\x{10FFFF}]");
                break;
            case EMPTY_MATCH:
                out.append("(?:)");
                break;
            case CONCAT:
                Regexp[] regexpArr = this.subs;
                int length = regexpArr.length;
                while (i < length) {
                    Regexp sub2 = regexpArr[i];
                    if (sub2.op == Op.ALTERNATE) {
                        out.append("(?:");
                        sub2.appendTo(out);
                        out.append(')');
                    } else {
                        sub2.appendTo(out);
                    }
                    i++;
                }
                break;
            case ALTERNATE:
                String sep = "";
                Regexp[] regexpArr2 = this.subs;
                int length2 = regexpArr2.length;
                while (i < length2) {
                    Regexp sub3 = regexpArr2[i];
                    out.append(sep);
                    sep = "|";
                    sub3.appendTo(out);
                    i++;
                }
                break;
            case LITERAL:
                if ((this.flags & 1) != 0) {
                    out.append("(?i:");
                }
                int[] iArr = this.runes;
                int length3 = iArr.length;
                while (i < length3) {
                    int rune = iArr[i];
                    Utils.escapeRune(out, rune);
                    i++;
                }
                if ((this.flags & 1) != 0) {
                    out.append(')');
                }
                break;
            case ANY_CHAR_NOT_NL:
                out.append("(?-s:.)");
                break;
            case ANY_CHAR:
                out.append("(?s:.)");
                break;
            case CAPTURE:
                if (this.name == null || this.name.isEmpty()) {
                    out.append('(');
                } else {
                    out.append("(?P<");
                    out.append(this.name);
                    out.append(">");
                }
                if (this.subs[0].op != Op.EMPTY_MATCH) {
                    this.subs[0].appendTo(out);
                }
                out.append(')');
                break;
            case BEGIN_TEXT:
                out.append("\\A");
                break;
            case END_TEXT:
                if ((this.flags & 256) != 0) {
                    out.append("(?-m:$)");
                } else {
                    out.append("\\z");
                }
                break;
            case BEGIN_LINE:
                out.append('^');
                break;
            case END_LINE:
                out.append(Typography.dollar);
                break;
            case WORD_BOUNDARY:
                out.append("\\b");
                break;
            case NO_WORD_BOUNDARY:
                out.append("\\B");
                break;
            case CHAR_CLASS:
                if (this.runes.length % 2 != 0) {
                    out.append("[invalid char class]");
                } else {
                    out.append(AbstractJsonLexerKt.BEGIN_LIST);
                    if (this.runes.length == 0) {
                        out.append("^\\x00-\\x{10FFFF}");
                    } else if (this.runes[0] == 0 && this.runes[this.runes.length - 1] == 1114111) {
                        out.append('^');
                        for (int i2 = 1; i2 < this.runes.length - 1; i2 += 2) {
                            int lo = this.runes[i2] + 1;
                            int hi = this.runes[i2 + 1] - 1;
                            quoteIfHyphen(out, lo);
                            Utils.escapeRune(out, lo);
                            if (lo != hi) {
                                out.append('-');
                                quoteIfHyphen(out, hi);
                                Utils.escapeRune(out, hi);
                            }
                        }
                    } else {
                        for (int i3 = 0; i3 < this.runes.length; i3 += 2) {
                            int lo2 = this.runes[i3];
                            int hi2 = this.runes[i3 + 1];
                            quoteIfHyphen(out, lo2);
                            Utils.escapeRune(out, lo2);
                            if (lo2 != hi2) {
                                out.append('-');
                                quoteIfHyphen(out, hi2);
                                Utils.escapeRune(out, hi2);
                            }
                        }
                    }
                    out.append(AbstractJsonLexerKt.END_LIST);
                }
                break;
            default:
                out.append(this.op);
                break;
        }
    }

    int maxCap() {
        int m = 0;
        if (this.op == Op.CAPTURE) {
            m = this.cap;
        }
        if (this.subs != null) {
            for (Regexp sub : this.subs) {
                int n = sub.maxCap();
                if (m < n) {
                    m = n;
                }
            }
        }
        return m;
    }

    public int hashCode() {
        int hashcode = this.op.hashCode();
        switch (this.op) {
            case STAR:
            case PLUS:
            case QUEST:
                return hashcode + ((this.flags & 32) * 31) + (this.subs[0].hashCode() * 31);
            case REPEAT:
                return hashcode + (this.min * 31) + (this.max * 31) + (this.subs[0].hashCode() * 31);
            case NO_MATCH:
            case EMPTY_MATCH:
            case ANY_CHAR_NOT_NL:
            case ANY_CHAR:
            case BEGIN_TEXT:
            case BEGIN_LINE:
            case END_LINE:
            case WORD_BOUNDARY:
            case NO_WORD_BOUNDARY:
            default:
                return hashcode;
            case CONCAT:
            case ALTERNATE:
                return hashcode + (Arrays.deepHashCode(this.subs) * 31);
            case LITERAL:
            case CHAR_CLASS:
                return hashcode + (Arrays.hashCode(this.runes) * 31);
            case CAPTURE:
                return hashcode + (this.cap * 31) + ((this.name != null ? this.name.hashCode() : 0) * 31) + (this.subs[0].hashCode() * 31);
            case END_TEXT:
                return hashcode + ((this.flags & 256) * 31);
        }
    }

    public boolean equals(Object that) {
        if (!(that instanceof Regexp)) {
            return false;
        }
        Regexp y = (Regexp) that;
        if (this.op != y.op) {
            return false;
        }
        switch (this.op) {
            case STAR:
            case PLUS:
            case QUEST:
                if ((this.flags & 32) != (y.flags & 32) || !this.subs[0].equals(y.subs[0])) {
                }
                break;
            case REPEAT:
                if ((this.flags & 32) != (y.flags & 32) || this.min != y.min || this.max != y.max || !this.subs[0].equals(y.subs[0])) {
                }
                break;
            case CONCAT:
            case ALTERNATE:
                if (this.subs.length == y.subs.length) {
                    for (int i = 0; i < this.subs.length; i++) {
                        if (!this.subs[i].equals(y.subs[i])) {
                        }
                        break;
                    }
                    break;
                }
                break;
            case LITERAL:
            case CHAR_CLASS:
                if (!Arrays.equals(this.runes, y.runes)) {
                }
                break;
            case CAPTURE:
                if (this.cap != y.cap || (this.name != null ? !this.name.equals(y.name) : y.name != null) || !this.subs[0].equals(y.subs[0])) {
                }
                break;
            case END_TEXT:
                if ((this.flags & 256) != (y.flags & 256)) {
                }
                break;
        }
        return false;
    }
}
