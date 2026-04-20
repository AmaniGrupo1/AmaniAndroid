package com.google.re2j;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.runtime.ComposerImplKt;
import androidx.core.location.LocationRequestCompat;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import com.google.re2j.Regexp;
import j$.sun.nio.cs.Surrogate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
class Parser {
    private static final int[][] ANY_TABLE = {new int[]{0, Surrogate.UCS4_MAX, 1}};
    private static final String ERR_DUPLICATE_NAMED_CAPTURE = "duplicate capture group name";
    private static final String ERR_INTERNAL_ERROR = "regexp/syntax: internal error";
    private static final String ERR_INVALID_CHAR_CLASS = "invalid character class";
    private static final String ERR_INVALID_CHAR_RANGE = "invalid character class range";
    private static final String ERR_INVALID_ESCAPE = "invalid escape sequence";
    private static final String ERR_INVALID_NAMED_CAPTURE = "invalid named capture";
    private static final String ERR_INVALID_PERL_OP = "invalid or unsupported Perl syntax";
    private static final String ERR_INVALID_REPEAT_OP = "invalid nested repetition operator";
    private static final String ERR_INVALID_REPEAT_SIZE = "invalid repeat count";
    private static final String ERR_MISSING_BRACKET = "missing closing ]";
    private static final String ERR_MISSING_PAREN = "missing closing )";
    private static final String ERR_MISSING_REPEAT_ARGUMENT = "missing argument to repetition operator";
    private static final String ERR_TRAILING_BACKSLASH = "trailing backslash at end of expression";
    private int flags;
    private Regexp free;
    private final String wholeRegexp;
    private final Stack stack = new Stack();
    private int numCap = 0;
    private final Map<String, Integer> namedGroups = new HashMap();

    private static class Stack extends ArrayList<Regexp> {
        private Stack() {
        }

        @Override // java.util.ArrayList, java.util.AbstractList
        public void removeRange(int fromIndex, int toIndex) {
            super.removeRange(fromIndex, toIndex);
        }
    }

    Parser(String wholeRegexp, int flags) {
        this.wholeRegexp = wholeRegexp;
        this.flags = flags;
    }

    private Regexp newRegexp(Regexp.Op op) {
        Regexp re = this.free;
        if (re != null && re.subs != null && re.subs.length > 0) {
            this.free = re.subs[0];
            re.reinit();
            re.op = op;
            return re;
        }
        return new Regexp(op);
    }

    private void reuse(Regexp re) {
        if (re.subs != null && re.subs.length > 0) {
            re.subs[0] = this.free;
        }
        this.free = re;
    }

    private Regexp pop() {
        return this.stack.remove(this.stack.size() - 1);
    }

    private Regexp[] popToPseudo() {
        int n = this.stack.size();
        int i = n;
        while (i > 0 && !this.stack.get(i - 1).op.isPseudo()) {
            i--;
        }
        Regexp[] r = (Regexp[]) this.stack.subList(i, n).toArray(new Regexp[n - i]);
        this.stack.removeRange(i, n);
        return r;
    }

    private Regexp push(Regexp re) {
        if (re.op == Regexp.Op.CHAR_CLASS && re.runes.length == 2 && re.runes[0] == re.runes[1]) {
            if (maybeConcat(re.runes[0], this.flags & (-2))) {
                return null;
            }
            re.op = Regexp.Op.LITERAL;
            re.runes = new int[]{re.runes[0]};
            re.flags = this.flags & (-2);
        } else if ((re.op == Regexp.Op.CHAR_CLASS && re.runes.length == 4 && re.runes[0] == re.runes[1] && re.runes[2] == re.runes[3] && Unicode.simpleFold(re.runes[0]) == re.runes[2] && Unicode.simpleFold(re.runes[2]) == re.runes[0]) || (re.op == Regexp.Op.CHAR_CLASS && re.runes.length == 2 && re.runes[0] + 1 == re.runes[1] && Unicode.simpleFold(re.runes[0]) == re.runes[1] && Unicode.simpleFold(re.runes[1]) == re.runes[0])) {
            if (maybeConcat(re.runes[0], this.flags | 1)) {
                return null;
            }
            re.op = Regexp.Op.LITERAL;
            re.runes = new int[]{re.runes[0]};
            re.flags = this.flags | 1;
        } else {
            maybeConcat(-1, 0);
        }
        this.stack.add(re);
        return re;
    }

    private boolean maybeConcat(int r, int flags) {
        int n = this.stack.size();
        if (n < 2) {
            return false;
        }
        Regexp re1 = this.stack.get(n - 1);
        Regexp re2 = this.stack.get(n - 2);
        if (re1.op != Regexp.Op.LITERAL || re2.op != Regexp.Op.LITERAL || (re1.flags & 1) != (re2.flags & 1)) {
            return false;
        }
        re2.runes = concatRunes(re2.runes, re1.runes);
        if (r >= 0) {
            re1.runes = new int[]{r};
            re1.flags = flags;
            return true;
        }
        pop();
        reuse(re1);
        return false;
    }

    private Regexp newLiteral(int r, int flags) {
        Regexp re = newRegexp(Regexp.Op.LITERAL);
        re.flags = flags;
        if ((flags & 1) != 0) {
            r = minFoldRune(r);
        }
        re.runes = new int[]{r};
        return re;
    }

    private static int minFoldRune(int r) {
        if (r < 65 || r > 66639) {
            return r;
        }
        int min = r;
        while (true) {
            r = Unicode.simpleFold(r);
            if (r != r) {
                if (min > r) {
                    min = r;
                }
            } else {
                return min;
            }
        }
    }

    private void literal(int r) {
        push(newLiteral(r, this.flags));
    }

    private Regexp op(Regexp.Op op) {
        Regexp re = newRegexp(op);
        re.flags = this.flags;
        return push(re);
    }

    private void repeat(Regexp.Op op, int min, int max, int beforePos, StringIterator t, int lastRepeatPos) throws PatternSyntaxException {
        int flags = this.flags;
        if ((flags & 64) != 0) {
            if (t.more() && t.lookingAt('?')) {
                t.skip(1);
                flags ^= 32;
            }
            if (lastRepeatPos != -1) {
                throw new PatternSyntaxException(ERR_INVALID_REPEAT_OP, t.from(lastRepeatPos));
            }
        }
        int n = this.stack.size();
        if (n == 0) {
            throw new PatternSyntaxException(ERR_MISSING_REPEAT_ARGUMENT, t.from(beforePos));
        }
        Regexp sub = this.stack.get(n - 1);
        if (sub.op.isPseudo()) {
            throw new PatternSyntaxException(ERR_MISSING_REPEAT_ARGUMENT, t.from(beforePos));
        }
        Regexp re = newRegexp(op);
        re.min = min;
        re.max = max;
        re.flags = flags;
        re.subs = new Regexp[]{sub};
        this.stack.set(n - 1, re);
    }

    private Regexp concat() {
        maybeConcat(-1, 0);
        Regexp[] subs = popToPseudo();
        if (subs.length == 0) {
            return push(newRegexp(Regexp.Op.EMPTY_MATCH));
        }
        return push(collapse(subs, Regexp.Op.CONCAT));
    }

    private Regexp alternate() {
        Regexp[] subs = popToPseudo();
        if (subs.length > 0) {
            cleanAlt(subs[subs.length - 1]);
        }
        if (subs.length == 0) {
            return push(newRegexp(Regexp.Op.NO_MATCH));
        }
        return push(collapse(subs, Regexp.Op.ALTERNATE));
    }

    private void cleanAlt(Regexp re) {
        if (re.op == Regexp.Op.CHAR_CLASS) {
            re.runes = new CharClass(re.runes).cleanClass().toArray();
            if (re.runes.length == 2 && re.runes[0] == 0 && re.runes[1] == 1114111) {
                re.runes = null;
                re.op = Regexp.Op.ANY_CHAR;
            } else if (re.runes.length == 4 && re.runes[0] == 0 && re.runes[1] == 9 && re.runes[2] == 11 && re.runes[3] == 1114111) {
                re.runes = null;
                re.op = Regexp.Op.ANY_CHAR_NOT_NL;
            }
        }
    }

    private Regexp collapse(Regexp[] subs, Regexp.Op op) {
        if (subs.length == 1) {
            return subs[0];
        }
        int len = 0;
        for (Regexp sub : subs) {
            len += sub.op == op ? sub.subs.length : 1;
        }
        Regexp[] newsubs = new Regexp[len];
        int i = 0;
        for (Regexp sub2 : subs) {
            if (sub2.op == op) {
                System.arraycopy(sub2.subs, 0, newsubs, i, sub2.subs.length);
                i += sub2.subs.length;
                reuse(sub2);
            } else {
                newsubs[i] = sub2;
                i++;
            }
        }
        Regexp re = newRegexp(op);
        re.subs = newsubs;
        if (op == Regexp.Op.ALTERNATE) {
            re.subs = factor(re.subs, re.flags);
            if (re.subs.length == 1) {
                Regexp re2 = re.subs[0];
                reuse(re);
                return re2;
            }
            return re;
        }
        return re;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0110 A[PHI: r11
      0x0110: PHI (r11v21 'ifirst' com.google.re2j.Regexp) = 
      (r11v20 'ifirst' com.google.re2j.Regexp)
      (r11v22 'ifirst' com.google.re2j.Regexp)
      (r11v22 'ifirst' com.google.re2j.Regexp)
      (r11v22 'ifirst' com.google.re2j.Regexp)
      (r11v22 'ifirst' com.google.re2j.Regexp)
      (r11v22 'ifirst' com.google.re2j.Regexp)
     binds: [B:43:0x00d8, B:45:0x00e2, B:47:0x00e8, B:51:0x00f4, B:53:0x00fa, B:55:0x0106] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Regexp[] factor(Regexp[] array, int flags) {
        int s;
        int lensub;
        int s2;
        char c;
        int i;
        if (array.length < 2) {
            return array;
        }
        int s3 = 0;
        int lensub2 = array.length;
        int lenout = 0;
        int[] str = null;
        int strlen = 0;
        int strflags = 0;
        int start = 0;
        int i2 = 0;
        while (i2 <= lensub2) {
            int[] istr = null;
            int istrlen = 0;
            int iflags = 0;
            if (i2 >= lensub2) {
                s2 = s3;
                c = 1;
                i = 0;
            } else {
                c = 1;
                Regexp re = array[s3 + i2];
                i = 0;
                if (re.op == Regexp.Op.CONCAT && re.subs.length > 0) {
                    re = re.subs[0];
                }
                if (re.op == Regexp.Op.LITERAL) {
                    istr = re.runes;
                    istrlen = re.runes.length;
                    iflags = re.flags & 1;
                }
                if (iflags != strflags) {
                    s2 = s3;
                } else {
                    int same = 0;
                    while (same < strlen && same < istrlen) {
                        int i3 = str[same];
                        s2 = s3;
                        int s4 = istr[same];
                        if (i3 != s4) {
                            break;
                        }
                        same++;
                        s3 = s2;
                    }
                    s2 = s3;
                    if (same > 0) {
                        int strlen2 = same;
                        strlen = strlen2;
                    }
                    i2++;
                    s3 = s2;
                }
            }
            if (i2 != start) {
                if (i2 != start + 1) {
                    Regexp prefix = newRegexp(Regexp.Op.LITERAL);
                    prefix.flags = strflags;
                    prefix.runes = Utils.subarray(str, i, strlen);
                    for (int j = start; j < i2; j++) {
                        array[s2 + j] = removeLeadingString(array[s2 + j], strlen);
                    }
                    int j2 = s2 + start;
                    Regexp suffix = collapse(subarray(array, j2, s2 + i2), Regexp.Op.ALTERNATE);
                    Regexp re2 = newRegexp(Regexp.Op.CONCAT);
                    Regexp[] regexpArr = new Regexp[2];
                    regexpArr[0] = prefix;
                    regexpArr[c] = suffix;
                    re2.subs = regexpArr;
                    array[lenout] = re2;
                    lenout++;
                } else {
                    array[lenout] = array[s2 + start];
                    lenout++;
                }
            }
            int lenout2 = i2;
            int[] str2 = istr;
            int strlen3 = istrlen;
            int strlen4 = iflags;
            start = lenout2;
            strflags = strlen4;
            strlen = strlen3;
            str = str2;
            i2++;
            s3 = s2;
        }
        int lensub3 = lenout;
        int start2 = 0;
        int lenout3 = 0;
        Regexp first = null;
        int i4 = 0;
        while (i4 <= lensub3) {
            Regexp ifirst = null;
            if (i4 < lensub3) {
                ifirst = leadingRegexp(array[0 + i4]);
                if (first != null && first.equals(ifirst) && (isCharClass(first) || (first.op == Regexp.Op.REPEAT && first.min == first.max && isCharClass(first.subs[0])))) {
                    lensub = lensub3;
                } else {
                    if (i4 == start2) {
                        lensub = lensub3;
                    } else if (i4 == start2 + 1) {
                        array[lenout3] = array[0 + start2];
                        lensub = lensub3;
                        lenout3++;
                    } else {
                        Regexp prefix2 = first;
                        int j3 = start2;
                        while (j3 < i4) {
                            boolean reuse = j3 != start2;
                            array[0 + j3] = removeLeadingRegexp(array[0 + j3], reuse);
                            j3++;
                            lensub3 = lensub3;
                        }
                        lensub = lensub3;
                        Regexp suffix2 = collapse(subarray(array, 0 + start2, 0 + i4), Regexp.Op.ALTERNATE);
                        Regexp re3 = newRegexp(Regexp.Op.CONCAT);
                        re3.subs = new Regexp[]{prefix2, suffix2};
                        array[lenout3] = re3;
                        lenout3++;
                    }
                    int start3 = i4;
                    first = ifirst;
                    start2 = start3;
                }
            }
            i4++;
            lensub3 = lensub;
        }
        int lensub4 = lenout3;
        int s5 = 0;
        int start4 = 0;
        int lenout4 = 0;
        int i5 = 0;
        while (i5 <= lensub4) {
            if (i5 < lensub4 && isCharClass(array[s5 + i5])) {
                s = s5;
            } else {
                if (i5 == start4) {
                    s = s5;
                } else if (i5 == start4 + 1) {
                    array[lenout4] = array[s5 + start4];
                    s = s5;
                    lenout4++;
                } else {
                    int max = start4;
                    int j4 = start4 + 1;
                    while (j4 < i5) {
                        Regexp subMax = array[s5 + max];
                        Regexp subJ = array[s5 + j4];
                        int s6 = s5;
                        if (subMax.op.ordinal() < subJ.op.ordinal() || (subMax.op == subJ.op && subMax.runes.length < subJ.runes.length)) {
                            max = j4;
                        }
                        j4++;
                        s5 = s6;
                    }
                    s = s5;
                    Regexp tmp = array[s + start4];
                    array[s + start4] = array[s + max];
                    array[s + max] = tmp;
                    for (int j5 = start4 + 1; j5 < i5; j5++) {
                        mergeCharClass(array[s + start4], array[s + j5]);
                        reuse(array[s + j5]);
                    }
                    int j6 = s + start4;
                    cleanAlt(array[j6]);
                    array[lenout4] = array[s + start4];
                    lenout4++;
                }
                if (i5 < lensub4) {
                    array[lenout4] = array[s + i5];
                    lenout4++;
                }
                int lenout5 = i5 + 1;
                start4 = lenout5;
            }
            i5++;
            s5 = s;
        }
        int lensub5 = lenout4;
        int lenout6 = 0;
        for (int i6 = 0; i6 < lensub5; i6++) {
            if (i6 + 1 >= lensub5 || array[0 + i6].op != Regexp.Op.EMPTY_MATCH || array[0 + i6 + 1].op != Regexp.Op.EMPTY_MATCH) {
                array[lenout6] = array[0 + i6];
                lenout6++;
            }
        }
        return subarray(array, 0, lenout6);
    }

    private Regexp removeLeadingString(Regexp re, int n) {
        if (re.op == Regexp.Op.CONCAT && re.subs.length > 0) {
            Regexp sub = removeLeadingString(re.subs[0], n);
            re.subs[0] = sub;
            if (sub.op == Regexp.Op.EMPTY_MATCH) {
                reuse(sub);
                switch (re.subs.length) {
                    case 0:
                    case 1:
                        re.op = Regexp.Op.EMPTY_MATCH;
                        re.subs = null;
                        break;
                    case 2:
                        Regexp re2 = re.subs[1];
                        reuse(re);
                        break;
                    default:
                        re.subs = subarray(re.subs, 1, re.subs.length);
                        break;
                }
                return re;
            }
            return re;
        }
        if (re.op == Regexp.Op.LITERAL) {
            re.runes = Utils.subarray(re.runes, n, re.runes.length);
            if (re.runes.length == 0) {
                re.op = Regexp.Op.EMPTY_MATCH;
            }
        }
        return re;
    }

    private static Regexp leadingRegexp(Regexp re) {
        if (re.op == Regexp.Op.EMPTY_MATCH) {
            return null;
        }
        if (re.op == Regexp.Op.CONCAT && re.subs.length > 0) {
            Regexp sub = re.subs[0];
            if (sub.op == Regexp.Op.EMPTY_MATCH) {
                return null;
            }
            return sub;
        }
        return re;
    }

    private Regexp removeLeadingRegexp(Regexp re, boolean reuse) {
        if (re.op == Regexp.Op.CONCAT && re.subs.length > 0) {
            if (reuse) {
                reuse(re.subs[0]);
            }
            re.subs = subarray(re.subs, 1, re.subs.length);
            switch (re.subs.length) {
                case 0:
                    re.op = Regexp.Op.EMPTY_MATCH;
                    re.subs = Regexp.EMPTY_SUBS;
                    return re;
                case 1:
                    Regexp re2 = re.subs[0];
                    reuse(re);
                    return re2;
                default:
                    return re;
            }
        }
        if (reuse) {
            reuse(re);
        }
        return newRegexp(Regexp.Op.EMPTY_MATCH);
    }

    private static Regexp literalRegexp(String s, int flags) {
        Regexp re = new Regexp(Regexp.Op.LITERAL);
        re.flags = flags;
        re.runes = Utils.stringToRunes(s);
        return re;
    }

    private static class StringIterator {
        private int pos = 0;
        private final String str;

        StringIterator(String str) {
            this.str = str;
        }

        int pos() {
            return this.pos;
        }

        void rewindTo(int pos) {
            this.pos = pos;
        }

        boolean more() {
            return this.pos < this.str.length();
        }

        int peek() {
            return this.str.codePointAt(this.pos);
        }

        void skip(int n) {
            this.pos += n;
        }

        void skipString(String s) {
            this.pos += s.length();
        }

        int pop() {
            int r = this.str.codePointAt(this.pos);
            this.pos += Character.charCount(r);
            return r;
        }

        boolean lookingAt(char c) {
            return this.str.charAt(this.pos) == c;
        }

        boolean lookingAt(String s) {
            return rest().startsWith(s);
        }

        String rest() {
            return this.str.substring(this.pos);
        }

        String from(int beforePos) {
            return this.str.substring(beforePos, this.pos);
        }

        public String toString() {
            return rest();
        }
    }

    static Regexp parse(String pattern, int flags) throws PatternSyntaxException {
        return new Parser(pattern, flags).parseInternal();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x011d  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private com.google.re2j.Regexp parseInternal() throws com.google.re2j.PatternSyntaxException {
        /*
            Method dump skipped, instruction units count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.Parser.parseInternal():com.google.re2j.Regexp");
    }

    private static int parseRepeat(StringIterator t) throws PatternSyntaxException {
        int max;
        int start = t.pos();
        if (!t.more() || !t.lookingAt(AbstractJsonLexerKt.BEGIN_OBJ)) {
            return -1;
        }
        t.skip(1);
        int min = parseInt(t);
        if (min == -1 || !t.more()) {
            return -1;
        }
        if (!t.lookingAt(AbstractJsonLexerKt.COMMA)) {
            max = min;
        } else {
            t.skip(1);
            if (!t.more()) {
                return -1;
            }
            if (t.lookingAt(AbstractJsonLexerKt.END_OBJ)) {
                max = -1;
            } else {
                int max2 = parseInt(t);
                if (max2 == -1) {
                    return -1;
                }
                max = max2;
            }
        }
        if (!t.more() || !t.lookingAt(AbstractJsonLexerKt.END_OBJ)) {
            return -1;
        }
        t.skip(1);
        if (min < 0 || min > 1000 || max == -2 || max > 1000 || (max >= 0 && min > max)) {
            throw new PatternSyntaxException(ERR_INVALID_REPEAT_SIZE, t.from(start));
        }
        return (min << 16) | (65535 & max);
    }

    private void parsePerlFlags(StringIterator t) throws PatternSyntaxException {
        int startPos = t.pos();
        String s = t.rest();
        if (s.startsWith("(?P<")) {
            int end = s.indexOf(62);
            if (end < 0) {
                throw new PatternSyntaxException(ERR_INVALID_NAMED_CAPTURE, s);
            }
            String name = s.substring(4, end);
            t.skipString(name);
            t.skip(5);
            if (!isValidCaptureName(name)) {
                throw new PatternSyntaxException(ERR_INVALID_NAMED_CAPTURE, s.substring(0, end));
            }
            Regexp re = op(Regexp.Op.LEFT_PAREN);
            int i = this.numCap + 1;
            this.numCap = i;
            re.cap = i;
            if (this.namedGroups.put(name, Integer.valueOf(this.numCap)) != null) {
                throw new PatternSyntaxException(ERR_DUPLICATE_NAMED_CAPTURE, name);
            }
            re.name = name;
            return;
        }
        t.skip(2);
        int flags = this.flags;
        int sign = 1;
        boolean sawFlag = false;
        while (true) {
            if (t.more()) {
                int c = t.pop();
                switch (c) {
                    case 41:
                    case 58:
                        if (sign < 0) {
                            if (sawFlag) {
                                flags = ~flags;
                            }
                        }
                        if (c == 58) {
                            op(Regexp.Op.LEFT_PAREN);
                        }
                        this.flags = flags;
                        return;
                    case 45:
                        if (sign >= 0) {
                            sign = -1;
                            flags = ~flags;
                            sawFlag = false;
                        }
                        break;
                    case 85:
                        flags |= 32;
                        sawFlag = true;
                        continue;
                    case 105:
                        flags |= 1;
                        sawFlag = true;
                        continue;
                    case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                        flags &= -17;
                        sawFlag = true;
                        continue;
                    case 115:
                        flags |= 8;
                        sawFlag = true;
                        continue;
                }
            }
        }
        throw new PatternSyntaxException(ERR_INVALID_PERL_OP, t.from(startPos));
    }

    private static boolean isValidCaptureName(String name) {
        if (name.isEmpty()) {
            return false;
        }
        for (int i = 0; i < name.length(); i++) {
            char c = name.charAt(i);
            if (c != '_' && !Utils.isalnum(c)) {
                return false;
            }
        }
        return true;
    }

    private static int parseInt(StringIterator t) {
        int c;
        int start = t.pos();
        while (t.more() && (c = t.peek()) >= 48 && c <= 57) {
            t.skip(1);
        }
        String n = t.from(start);
        if (n.isEmpty()) {
            return -1;
        }
        if (n.length() > 1 && n.charAt(0) == '0') {
            return -1;
        }
        if (n.length() > 8) {
            return -2;
        }
        return Integer.valueOf(n, 10).intValue();
    }

    private static boolean isCharClass(Regexp re) {
        return (re.op == Regexp.Op.LITERAL && re.runes.length == 1) || re.op == Regexp.Op.CHAR_CLASS || re.op == Regexp.Op.ANY_CHAR_NOT_NL || re.op == Regexp.Op.ANY_CHAR;
    }

    private static boolean matchRune(Regexp re, int r) {
        switch (re.op) {
            case LITERAL:
                return re.runes.length == 1 && re.runes[0] == r;
            case CHAR_CLASS:
                for (int i = 0; i < re.runes.length; i += 2) {
                    if (re.runes[i] <= r && r <= re.runes[i + 1]) {
                        return true;
                    }
                }
                return false;
            case ANY_CHAR_NOT_NL:
                return r != 10;
            case ANY_CHAR:
                return true;
            default:
                return false;
        }
    }

    private void parseVerticalBar() {
        concat();
        if (!swapVerticalBar()) {
            op(Regexp.Op.VERTICAL_BAR);
        }
    }

    private static void mergeCharClass(Regexp dst, Regexp src) {
        switch (dst.op) {
            case LITERAL:
                if (src.runes[0] != dst.runes[0] || src.flags != dst.flags) {
                    dst.op = Regexp.Op.CHAR_CLASS;
                    dst.runes = new CharClass().appendLiteral(dst.runes[0], dst.flags).appendLiteral(src.runes[0], src.flags).toArray();
                }
                break;
            case CHAR_CLASS:
                if (src.op == Regexp.Op.LITERAL) {
                    dst.runes = new CharClass(dst.runes).appendLiteral(src.runes[0], src.flags).toArray();
                } else {
                    dst.runes = new CharClass(dst.runes).appendClass(src.runes).toArray();
                }
                break;
            case ANY_CHAR_NOT_NL:
                if (matchRune(src, 10)) {
                    dst.op = Regexp.Op.ANY_CHAR;
                }
                break;
        }
    }

    private boolean swapVerticalBar() {
        int n = this.stack.size();
        if (n >= 3 && this.stack.get(n - 2).op == Regexp.Op.VERTICAL_BAR && isCharClass(this.stack.get(n - 1)) && isCharClass(this.stack.get(n - 3))) {
            Regexp re1 = this.stack.get(n - 1);
            Regexp re3 = this.stack.get(n - 3);
            if (re1.op.ordinal() > re3.op.ordinal()) {
                re3 = re1;
                re1 = re3;
                this.stack.set(n - 3, re3);
            }
            mergeCharClass(re3, re1);
            reuse(re1);
            pop();
            return true;
        }
        if (n >= 2) {
            Regexp re12 = this.stack.get(n - 1);
            Regexp re2 = this.stack.get(n - 2);
            if (re2.op == Regexp.Op.VERTICAL_BAR) {
                if (n >= 3) {
                    cleanAlt(this.stack.get(n - 3));
                }
                this.stack.set(n - 2, re12);
                this.stack.set(n - 1, re2);
                return true;
            }
            return false;
        }
        return false;
    }

    private void parseRightParen() throws PatternSyntaxException {
        concat();
        if (swapVerticalBar()) {
            pop();
        }
        alternate();
        int n = this.stack.size();
        if (n < 2) {
            throw new PatternSyntaxException(ERR_INTERNAL_ERROR, "stack underflow");
        }
        Regexp re1 = pop();
        Regexp re2 = pop();
        if (re2.op != Regexp.Op.LEFT_PAREN) {
            throw new PatternSyntaxException(ERR_MISSING_PAREN, this.wholeRegexp);
        }
        this.flags = re2.flags;
        if (re2.cap == 0) {
            push(re1);
            return;
        }
        re2.op = Regexp.Op.CAPTURE;
        re2.subs = new Regexp[]{re1};
        push(re2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a2, code lost:
    
        if (r9.peek() <= 55) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int parseEscape(StringIterator t) throws PatternSyntaxException {
        int startPos = t.pos();
        t.skip(1);
        if (!t.more()) {
            throw new PatternSyntaxException(ERR_TRAILING_BACKSLASH);
        }
        int c = t.pop();
        switch (c) {
            case 49:
            case 50:
            case 51:
            case 52:
            case FirestoreIndexValueWriter.INDEX_TYPE_VECTOR /* 53 */:
            case 54:
            case FirestoreIndexValueWriter.INDEX_TYPE_MAP /* 55 */:
                if (t.more()) {
                    if (t.peek() >= 48) {
                    }
                    break;
                }
                throw new PatternSyntaxException(ERR_INVALID_ESCAPE, t.from(startPos));
            case 48:
                int r = c - 48;
                for (int i = 1; i < 3 && t.more() && t.peek() >= 48 && t.peek() <= 55; i++) {
                    r = ((r * 8) + t.peek()) - 48;
                    t.skip(1);
                }
                return r;
            case 97:
                return 7;
            case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                return 12;
            case 110:
                return 10;
            case 114:
                return 13;
            case AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID /* 116 */:
                return 9;
            case 118:
                return 11;
            case 120:
                if (t.more()) {
                    int c2 = t.pop();
                    if (c2 == 123) {
                        int nhex = 0;
                        int r2 = 0;
                        while (true) {
                            if (t.more()) {
                                int c3 = t.pop();
                                if (c3 != 125) {
                                    int v = Utils.unhex(c3);
                                    if (v >= 0 && (r2 = (r2 * 16) + v) <= 1114111) {
                                        nhex++;
                                    }
                                } else if (nhex != 0) {
                                    return r2;
                                }
                            }
                        }
                    } else {
                        int x = Utils.unhex(c2);
                        if (t.more()) {
                            int y = Utils.unhex(t.pop());
                            if (x >= 0 && y >= 0) {
                                return (x * 16) + y;
                            }
                        }
                    }
                }
                throw new PatternSyntaxException(ERR_INVALID_ESCAPE, t.from(startPos));
            default:
                if (!Utils.isalnum(c)) {
                    return c;
                }
                throw new PatternSyntaxException(ERR_INVALID_ESCAPE, t.from(startPos));
        }
    }

    private static int parseClassChar(StringIterator t, int wholeClassPos) throws PatternSyntaxException {
        if (!t.more()) {
            throw new PatternSyntaxException(ERR_MISSING_BRACKET, t.from(wholeClassPos));
        }
        if (t.lookingAt(AbstractJsonLexerKt.STRING_ESC)) {
            return parseEscape(t);
        }
        return t.pop();
    }

    private boolean parsePerlClassEscape(StringIterator t, CharClass cc) {
        int beforePos = t.pos();
        if ((this.flags & 64) == 0 || !t.more() || t.pop() != 92 || !t.more()) {
            return false;
        }
        t.pop();
        CharGroup g = CharGroup.PERL_GROUPS.get(t.from(beforePos));
        if (g == null) {
            return false;
        }
        cc.appendGroup(g, (this.flags & 1) != 0);
        return true;
    }

    private boolean parseNamedClass(StringIterator t, CharClass cc) throws PatternSyntaxException {
        String cls = t.rest();
        int i = cls.indexOf(":]");
        if (i < 0) {
            return false;
        }
        String name = cls.substring(0, i + 2);
        t.skipString(name);
        CharGroup g = CharGroup.POSIX_GROUPS.get(name);
        if (g == null) {
            throw new PatternSyntaxException(ERR_INVALID_CHAR_RANGE, name);
        }
        cc.appendGroup(g, (this.flags & 1) != 0);
        return true;
    }

    private static Pair<int[][], int[][]> unicodeTable(String name) {
        if (name.equals("Any")) {
            return Pair.of(ANY_TABLE, ANY_TABLE);
        }
        int[][] table = UnicodeTables.CATEGORIES.get(name);
        if (table != null) {
            return Pair.of(table, UnicodeTables.FOLD_CATEGORIES.get(name));
        }
        int[][] table2 = UnicodeTables.SCRIPTS.get(name);
        if (table2 != null) {
            return Pair.of(table2, UnicodeTables.FOLD_SCRIPT.get(name));
        }
        return null;
    }

    private boolean parseUnicodeClass(StringIterator t, CharClass cc) throws PatternSyntaxException {
        String rest;
        int startPos = t.pos();
        if ((this.flags & 128) == 0 || !(t.lookingAt("\\p") || t.lookingAt("\\P"))) {
            return false;
        }
        t.skip(1);
        int sign = 1;
        if (t.pop() == 80) {
            sign = -1;
        }
        if (!t.more()) {
            t.rewindTo(startPos);
            throw new PatternSyntaxException(ERR_INVALID_CHAR_RANGE, t.rest());
        }
        int c = t.pop();
        if (c != 123) {
            rest = Utils.runeToString(c);
        } else {
            String rest2 = t.rest();
            int end = rest2.indexOf(ComposerImplKt.nodeKey);
            if (end < 0) {
                t.rewindTo(startPos);
                throw new PatternSyntaxException(ERR_INVALID_CHAR_RANGE, t.rest());
            }
            String name = rest2.substring(0, end);
            t.skipString(name);
            t.skip(1);
            rest = name;
        }
        if (!rest.isEmpty() && rest.charAt(0) == '^') {
            sign = -sign;
            rest = rest.substring(1);
        }
        Pair<int[][], int[][]> pair = unicodeTable(rest);
        if (pair == null) {
            throw new PatternSyntaxException(ERR_INVALID_CHAR_RANGE, t.from(startPos));
        }
        int[][] tab = pair.first;
        int[][] fold = pair.second;
        if ((this.flags & 1) == 0 || fold == null) {
            cc.appendTableWithSign(tab, sign);
        } else {
            int[] tmp = new CharClass().appendTable(tab).appendTable(fold).cleanClass().toArray();
            cc.appendClassWithSign(tmp, sign);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
    
        r14.rewindTo(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0095, code lost:
    
        throw new com.google.re2j.PatternSyntaxException(com.google.re2j.Parser.ERR_INVALID_CHAR_RANGE, r14.rest());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parseClass(StringIterator t) throws PatternSyntaxException {
        int startPos = t.pos();
        t.skip(1);
        Regexp re = newRegexp(Regexp.Op.CHAR_CLASS);
        re.flags = this.flags;
        CharClass cc = new CharClass();
        int sign = 1;
        if (t.more() && t.lookingAt('^')) {
            sign = -1;
            t.skip(1);
            if ((this.flags & 4) == 0) {
                cc.appendRange(10, 10);
            }
        }
        boolean first = true;
        while (true) {
            if (!t.more() || t.peek() != 93 || first) {
                if (t.more() && t.lookingAt('-') && (this.flags & 64) == 0 && !first) {
                    String s = t.rest();
                    if (s.equals("-") || !s.startsWith("-]")) {
                        break;
                    }
                }
                first = false;
                int beforePos = t.pos();
                if (t.lookingAt("[:")) {
                    if (parseNamedClass(t, cc)) {
                        continue;
                    } else {
                        t.rewindTo(beforePos);
                    }
                }
                if (!parseUnicodeClass(t, cc) && !parsePerlClassEscape(t, cc)) {
                    t.rewindTo(beforePos);
                    int lo = parseClassChar(t, startPos);
                    int hi = lo;
                    if (t.more() && t.lookingAt('-')) {
                        t.skip(1);
                        if (t.more() && t.lookingAt(AbstractJsonLexerKt.END_LIST)) {
                            t.skip(-1);
                        } else {
                            hi = parseClassChar(t, startPos);
                            if (hi < lo) {
                                throw new PatternSyntaxException(ERR_INVALID_CHAR_RANGE, t.from(beforePos));
                            }
                        }
                    }
                    if ((this.flags & 1) == 0) {
                        cc.appendRange(lo, hi);
                    } else {
                        cc.appendFoldedRange(lo, hi);
                    }
                }
            } else {
                t.skip(1);
                cc.cleanClass();
                if (sign < 0) {
                    cc.negateClass();
                }
                re.runes = cc.toArray();
                push(re);
                return;
            }
        }
    }

    static Regexp[] subarray(Regexp[] array, int start, int end) {
        Regexp[] r = new Regexp[end - start];
        for (int i = start; i < end; i++) {
            r[i - start] = array[i];
        }
        return r;
    }

    private static class Pair<F, S> {
        final F first;
        final S second;

        Pair(F first, S second) {
            this.first = first;
            this.second = second;
        }

        static <F, S> Pair<F, S> of(F first, S second) {
            return new Pair<>(first, second);
        }
    }

    private static int[] concatRunes(int[] x, int[] y) {
        int[] z = new int[x.length + y.length];
        System.arraycopy(x, 0, z, 0, x.length);
        System.arraycopy(y, 0, z, x.length, y.length);
        return z;
    }
}
