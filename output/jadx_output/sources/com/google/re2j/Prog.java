package com.google.re2j;

import java.util.Arrays;

/* JADX INFO: loaded from: classes22.dex */
final class Prog {
    Inst[] inst = new Inst[10];
    int instSize = 0;
    int numCap = 2;
    int start;

    Prog() {
    }

    Inst getInst(int pc) {
        return this.inst[pc];
    }

    int numInst() {
        return this.instSize;
    }

    void addInst(int op) {
        if (this.instSize >= this.inst.length) {
            this.inst = (Inst[]) Arrays.copyOf(this.inst, this.inst.length * 2);
        }
        this.inst[this.instSize] = new Inst(op);
        this.instSize++;
    }

    Inst skipNop(int pc) {
        Inst i = this.inst[pc];
        while (true) {
            if (i.op == 7 || i.op == 3) {
                i = this.inst[pc];
                pc = i.out;
            } else {
                return i;
            }
        }
    }

    boolean prefix(StringBuilder prefix) {
        Inst i = skipNop(this.start);
        if (!Inst.isRuneOp(i.op) || i.runes.length != 1) {
            return i.op == 6;
        }
        while (Inst.isRuneOp(i.op) && i.runes.length == 1 && (i.arg & 1) == 0) {
            prefix.appendCodePoint(i.runes[0]);
            i = skipNop(i.out);
        }
        return i.op == 6;
    }

    int startCond() {
        int flag = 0;
        int pc = this.start;
        while (true) {
            Inst i = this.inst[pc];
            switch (i.op) {
                case 3:
                case 7:
                    break;
                case 4:
                    flag |= i.arg;
                    break;
                case 5:
                    return -1;
                case 6:
                default:
                    return flag;
            }
            pc = i.out;
        }
    }

    int next(int l) {
        Inst i = this.inst[l >> 1];
        if ((l & 1) == 0) {
            return i.out;
        }
        return i.arg;
    }

    void patch(int l, int val) {
        while (l != 0) {
            Inst i = this.inst[l >> 1];
            if ((l & 1) == 0) {
                l = i.out;
                i.out = val;
            } else {
                l = i.arg;
                i.arg = val;
            }
        }
    }

    int append(int l1, int l2) {
        if (l1 == 0) {
            return l2;
        }
        if (l2 == 0) {
            return l1;
        }
        int last = l1;
        while (true) {
            int next = next(last);
            if (next == 0) {
                break;
            }
            last = next;
        }
        Inst i = this.inst[last >> 1];
        if ((last & 1) == 0) {
            i.out = l2;
        } else {
            i.arg = l2;
        }
        return l1;
    }

    public String toString() {
        StringBuilder out = new StringBuilder();
        for (int pc = 0; pc < this.instSize; pc++) {
            int len = out.length();
            out.append(pc);
            if (pc == this.start) {
                out.append('*');
            }
            out.append("        ".substring(out.length() - len)).append(this.inst[pc]).append('\n');
        }
        return out.toString();
    }
}
