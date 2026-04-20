package com.google.re2j;

import com.google.re2j.Regexp;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes22.dex */
class Simplify {
    static Regexp simplify(Regexp re) {
        if (re == null) {
            return null;
        }
        switch (re.op) {
            case CAPTURE:
            case CONCAT:
            case ALTERNATE:
                Regexp nre = re;
                for (int i = 0; i < re.subs.length; i++) {
                    Regexp sub = re.subs[i];
                    Regexp nsub = simplify(sub);
                    if (nre == re && nsub != sub) {
                        Regexp nre2 = new Regexp(re);
                        nre2.runes = null;
                        nre2.subs = Parser.subarray(re.subs, 0, re.subs.length);
                        nre = nre2;
                    }
                    if (nre != re) {
                        nre.subs[i] = nsub;
                    }
                }
                return nre;
            case STAR:
            case PLUS:
            case QUEST:
                return simplify1(re.op, re.flags, simplify(re.subs[0]), re);
            case REPEAT:
                if (re.min == 0 && re.max == 0) {
                    return new Regexp(Regexp.Op.EMPTY_MATCH);
                }
                Regexp sub2 = simplify(re.subs[0]);
                if (re.max == -1) {
                    if (re.min == 0) {
                        return simplify1(Regexp.Op.STAR, re.flags, sub2, null);
                    }
                    if (re.min == 1) {
                        return simplify1(Regexp.Op.PLUS, re.flags, sub2, null);
                    }
                    Regexp nre3 = new Regexp(Regexp.Op.CONCAT);
                    ArrayList<Regexp> subs = new ArrayList<>();
                    for (int i2 = 0; i2 < re.min - 1; i2++) {
                        subs.add(sub2);
                    }
                    subs.add(simplify1(Regexp.Op.PLUS, re.flags, sub2, null));
                    nre3.subs = (Regexp[]) subs.toArray(new Regexp[subs.size()]);
                    return nre3;
                }
                if (re.min == 1 && re.max == 1) {
                    return sub2;
                }
                ArrayList<Regexp> prefixSubs = null;
                if (re.min > 0) {
                    prefixSubs = new ArrayList<>();
                    for (int i3 = 0; i3 < re.min; i3++) {
                        prefixSubs.add(sub2);
                    }
                }
                int i4 = re.max;
                if (i4 > re.min) {
                    Regexp suffix = simplify1(Regexp.Op.QUEST, re.flags, sub2, null);
                    for (int i5 = re.min + 1; i5 < re.max; i5++) {
                        Regexp nre22 = new Regexp(Regexp.Op.CONCAT);
                        nre22.subs = new Regexp[]{sub2, suffix};
                        suffix = simplify1(Regexp.Op.QUEST, re.flags, nre22, null);
                    }
                    if (prefixSubs == null) {
                        return suffix;
                    }
                    prefixSubs.add(suffix);
                }
                if (prefixSubs != null) {
                    Regexp prefix = new Regexp(Regexp.Op.CONCAT);
                    prefix.subs = (Regexp[]) prefixSubs.toArray(new Regexp[prefixSubs.size()]);
                    return prefix;
                }
                return new Regexp(Regexp.Op.NO_MATCH);
            default:
                return re;
        }
    }

    private static Regexp simplify1(Regexp.Op op, int flags, Regexp sub, Regexp re) {
        if (sub.op == Regexp.Op.EMPTY_MATCH) {
            return sub;
        }
        if (op == sub.op && (flags & 32) == (sub.flags & 32)) {
            return sub;
        }
        if (re != null && re.op == op && (re.flags & 32) == (flags & 32) && sub == re.subs[0]) {
            return re;
        }
        Regexp re2 = new Regexp(op);
        re2.flags = flags;
        re2.subs = new Regexp[]{sub};
        return re2;
    }

    private Simplify() {
    }
}
