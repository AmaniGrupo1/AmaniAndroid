package com.google.re2j;

import j$.sun.nio.cs.Surrogate;

/* JADX INFO: loaded from: classes22.dex */
class Compiler {
    private final Prog prog = new Prog();
    private static final int[] ANY_RUNE_NOT_NL = {0, 9, 11, Surrogate.UCS4_MAX};
    private static final int[] ANY_RUNE = {0, Surrogate.UCS4_MAX};

    private static class Frag {
        final int i;
        int out;

        Frag() {
            this(0, 0);
        }

        Frag(int i) {
            this(i, 0);
        }

        Frag(int i, int out) {
            this.i = i;
            this.out = out;
        }
    }

    private Compiler() {
        newInst(5);
    }

    static Prog compileRegexp(Regexp re) {
        Compiler c = new Compiler();
        Frag f = c.compile(re);
        c.prog.patch(f.out, c.newInst(6).i);
        c.prog.start = f.i;
        return c.prog;
    }

    private Frag newInst(int op) {
        this.prog.addInst(op);
        return new Frag(this.prog.numInst() - 1);
    }

    private Frag nop() {
        Frag f = newInst(7);
        f.out = f.i << 1;
        return f;
    }

    private Frag fail() {
        return new Frag();
    }

    private Frag cap(int arg) {
        Frag f = newInst(3);
        f.out = f.i << 1;
        this.prog.getInst(f.i).arg = arg;
        if (this.prog.numCap < arg + 1) {
            this.prog.numCap = arg + 1;
        }
        return f;
    }

    private Frag cat(Frag f1, Frag f2) {
        if (f1.i == 0 || f2.i == 0) {
            return fail();
        }
        this.prog.patch(f1.out, f2.i);
        return new Frag(f1.i, f2.out);
    }

    private Frag alt(Frag f1, Frag f2) {
        if (f1.i == 0) {
            return f2;
        }
        if (f2.i == 0) {
            return f1;
        }
        Frag f = newInst(1);
        Inst i = this.prog.getInst(f.i);
        i.out = f1.i;
        i.arg = f2.i;
        f.out = this.prog.append(f1.out, f2.out);
        return f;
    }

    private Frag quest(Frag f1, boolean nongreedy) {
        Frag f = newInst(1);
        Inst i = this.prog.getInst(f.i);
        if (nongreedy) {
            i.arg = f1.i;
            f.out = f.i << 1;
        } else {
            i.out = f1.i;
            f.out = 1 | (f.i << 1);
        }
        f.out = this.prog.append(f.out, f1.out);
        return f;
    }

    private Frag star(Frag f1, boolean nongreedy) {
        Frag f = newInst(1);
        Inst i = this.prog.getInst(f.i);
        if (nongreedy) {
            i.arg = f1.i;
            f.out = f.i << 1;
        } else {
            i.out = f1.i;
            f.out = 1 | (f.i << 1);
        }
        this.prog.patch(f1.out, f.i);
        return f;
    }

    private Frag plus(Frag f1, boolean nongreedy) {
        return new Frag(f1.i, star(f1, nongreedy).out);
    }

    private Frag empty(int op) {
        Frag f = newInst(4);
        this.prog.getInst(f.i).arg = op;
        f.out = f.i << 1;
        return f;
    }

    private Frag rune(int rune, int flags) {
        return rune(new int[]{rune}, flags);
    }

    private Frag rune(int[] runes, int flags) {
        Frag f = newInst(8);
        Inst i = this.prog.getInst(f.i);
        i.runes = runes;
        int flags2 = flags & 1;
        if (runes.length != 1 || Unicode.simpleFold(runes[0]) == runes[0]) {
            flags2 &= -2;
        }
        i.arg = flags2;
        f.out = f.i << 1;
        if (((flags2 & 1) == 0 && runes.length == 1) || (runes.length == 2 && runes[0] == runes[1])) {
            i.op = 9;
        } else if (runes.length == 2 && runes[0] == 0 && runes[1] == 1114111) {
            i.op = 10;
        } else if (runes.length == 4 && runes[0] == 0 && runes[1] == 9 && runes[2] == 11 && runes[3] == 1114111) {
            i.op = 11;
        }
        return f;
    }

    private Frag compile(Regexp re) {
        int i = 0;
        switch (re.op) {
            case NO_MATCH:
                return fail();
            case EMPTY_MATCH:
                Frag f = nop();
                return f;
            case LITERAL:
                if (re.runes.length == 0) {
                    return nop();
                }
                Frag f2 = null;
                int[] iArr = re.runes;
                int length = iArr.length;
                while (i < length) {
                    int r = iArr[i];
                    Frag f1 = rune(r, re.flags);
                    f2 = f2 == null ? f1 : cat(f2, f1);
                    i++;
                }
                return f2;
            case CHAR_CLASS:
                return rune(re.runes, re.flags);
            case ANY_CHAR_NOT_NL:
                return rune(ANY_RUNE_NOT_NL, 0);
            case ANY_CHAR:
                return rune(ANY_RUNE, 0);
            case BEGIN_LINE:
                return empty(1);
            case END_LINE:
                return empty(2);
            case BEGIN_TEXT:
                return empty(4);
            case END_TEXT:
                return empty(8);
            case WORD_BOUNDARY:
                return empty(16);
            case NO_WORD_BOUNDARY:
                Frag bra = empty(32);
                return bra;
            case CAPTURE:
                Frag bra2 = cap(re.cap << 1);
                Frag sub = compile(re.subs[0]);
                Frag ket = cap(1 | (re.cap << 1));
                return cat(cat(bra2, sub), ket);
            case STAR:
                return star(compile(re.subs[0]), (32 & re.flags) != 0);
            case PLUS:
                return plus(compile(re.subs[0]), (32 & re.flags) != 0);
            case QUEST:
                return quest(compile(re.subs[0]), (32 & re.flags) != 0);
            case CONCAT:
                if (re.subs.length == 0) {
                    return nop();
                }
                Frag f3 = null;
                Regexp[] regexpArr = re.subs;
                int length2 = regexpArr.length;
                while (i < length2) {
                    Regexp sub2 = regexpArr[i];
                    Frag f12 = compile(sub2);
                    f3 = f3 == null ? f12 : cat(f3, f12);
                    i++;
                }
                return f3;
            case ALTERNATE:
                if (re.subs.length == 0) {
                    return nop();
                }
                Frag f4 = null;
                Regexp[] regexpArr2 = re.subs;
                int length3 = regexpArr2.length;
                while (i < length3) {
                    Regexp sub3 = regexpArr2[i];
                    Frag f13 = compile(sub3);
                    f4 = f4 == null ? f13 : alt(f4, f13);
                    i++;
                }
                return f4;
            default:
                throw new IllegalStateException("regexp: unhandled case in compile");
        }
    }
}
