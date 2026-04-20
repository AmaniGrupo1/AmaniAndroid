package com.google.re2j;

import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
class Machine {
    private int[] matchcap;
    private boolean matched;
    private int ncap;
    private Thread[] pool = new Thread[10];
    private int poolSize;
    private final Prog prog;
    private final Queue q0;
    private final Queue q1;
    private RE2 re2;

    private static class Thread {
        int[] cap;
        Inst inst;

        Thread(int n) {
            this.cap = new int[n];
        }
    }

    private static class Queue {
        final int[] densePcs;
        final Thread[] denseThreads;
        int size;
        final int[] sparse;

        Queue(int n) {
            this.sparse = new int[n];
            this.densePcs = new int[n];
            this.denseThreads = new Thread[n];
        }

        boolean contains(int pc) {
            int j = this.sparse[pc];
            return j < this.size && this.densePcs[j] == pc;
        }

        boolean isEmpty() {
            return this.size == 0;
        }

        int add(int pc) {
            int j = this.size;
            this.size = j + 1;
            this.sparse[pc] = j;
            this.denseThreads[j] = null;
            this.densePcs[j] = pc;
            return j;
        }

        void clear() {
            this.size = 0;
        }

        public String toString() {
            StringBuilder out = new StringBuilder();
            out.append(AbstractJsonLexerKt.BEGIN_OBJ);
            for (int i = 0; i < this.size; i++) {
                if (i != 0) {
                    out.append(", ");
                }
                out.append(this.densePcs[i]);
            }
            out.append(AbstractJsonLexerKt.END_OBJ);
            return out.toString();
        }
    }

    Machine(RE2 re2) {
        this.prog = re2.prog;
        this.re2 = re2;
        this.q0 = new Queue(this.prog.numInst());
        this.q1 = new Queue(this.prog.numInst());
        this.matchcap = new int[this.prog.numCap >= 2 ? this.prog.numCap : 2];
    }

    void init(int ncap) {
        this.ncap = ncap;
        if (ncap > this.matchcap.length) {
            initNewCap(ncap);
        } else {
            resetCap(ncap);
        }
    }

    private void resetCap(int ncap) {
        for (int i = 0; i < this.poolSize; i++) {
            Thread t = this.pool[i];
            Arrays.fill(t.cap, 0, ncap, 0);
        }
    }

    private void initNewCap(int ncap) {
        for (int i = 0; i < this.poolSize; i++) {
            Thread t = this.pool[i];
            t.cap = new int[ncap];
        }
        this.matchcap = new int[ncap];
    }

    int[] submatches() {
        if (this.ncap == 0) {
            return Utils.EMPTY_INTS;
        }
        return Arrays.copyOf(this.matchcap, this.ncap);
    }

    private Thread alloc(Inst inst) {
        Thread t;
        if (this.poolSize > 0) {
            this.poolSize--;
            t = this.pool[this.poolSize];
        } else {
            t = new Thread(this.matchcap.length);
        }
        t.inst = inst;
        return t;
    }

    private void free(Queue queue) {
        free(queue, 0);
    }

    private void free(Queue queue, int from) {
        int numberOfThread = queue.size - from;
        int requiredPoolLength = this.poolSize + numberOfThread;
        if (this.pool.length < requiredPoolLength) {
            this.pool = (Thread[]) Arrays.copyOf(this.pool, Math.max(this.pool.length * 2, requiredPoolLength));
        }
        for (int i = from; i < queue.size; i++) {
            Thread t = queue.denseThreads[i];
            if (t != null) {
                this.pool[this.poolSize] = t;
                this.poolSize++;
            }
        }
        queue.clear();
    }

    private void free(Thread t) {
        if (this.pool.length <= this.poolSize) {
            this.pool = (Thread[]) Arrays.copyOf(this.pool, this.pool.length * 2);
        }
        this.pool[this.poolSize] = t;
        this.poolSize++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0088, code lost:
    
        r2 = r8;
        r0 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean match(MachineInput machineInput, int i, int i2) {
        int iContext;
        int i3;
        Queue queue;
        Queue queue2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        Queue queue3;
        int iContext2;
        int i12;
        int iStep;
        Machine machine = this;
        int i13 = i2;
        int i14 = machine.re2.cond;
        int i15 = 0;
        if (i14 == -1) {
            return false;
        }
        if ((i13 == 1 || i13 == 2) && i != 0) {
            return false;
        }
        machine.matched = false;
        Arrays.fill(machine.matchcap, 0, machine.prog.numCap, -1);
        Queue queue4 = machine.q0;
        Queue queue5 = machine.q1;
        int iStep2 = machineInput.step(i);
        int i16 = iStep2 >> 3;
        int i17 = iStep2 & 7;
        int i18 = -1;
        int i19 = 0;
        if (iStep2 != -8) {
            iStep2 = machineInput.step(i + i17);
            i18 = iStep2 >> 3;
            i19 = iStep2 & 7;
        }
        if (i == 0) {
            iContext = Utils.emptyOpContext(-1, i16);
            i3 = i19;
            queue = queue5;
            queue2 = queue4;
            i4 = i;
        } else {
            iContext = machineInput.context(i);
            i3 = i19;
            queue = queue5;
            queue2 = queue4;
            i4 = i;
        }
        while (true) {
            if (!queue2.isEmpty()) {
                i5 = i15;
            } else {
                if ((i14 & 4) != 0 && i4 != 0) {
                    break;
                }
                i5 = i15;
                if (!machine.matched) {
                    if (!machine.re2.prefix.isEmpty() && i18 != machine.re2.prefixRune && machineInput.canCheckPrefix()) {
                        int iIndex = machineInput.index(machine.re2, i4);
                        if (iIndex < 0) {
                            break;
                        }
                        int i20 = i4 + iIndex;
                        int iStep3 = machineInput.step(i20);
                        int i21 = iStep3 >> 3;
                        int i22 = iStep3 & 7;
                        int iStep4 = machineInput.step(i20 + i22);
                        i6 = iStep4;
                        i7 = i21;
                        i8 = iStep4 >> 3;
                        i9 = iStep4 & 7;
                        i10 = i20;
                        i11 = i22;
                    }
                    if (!machine.matched) {
                        queue3 = queue2;
                    } else if (i10 == 0 || i13 == 0) {
                        if (machine.ncap > 0) {
                            machine.matchcap[i5] = i10;
                        }
                        queue3 = queue2;
                        machine.add(queue3, machine.prog.start, i10, machine.matchcap, iContext, null);
                    } else {
                        queue3 = queue2;
                    }
                    int i23 = i10 + i11;
                    iContext2 = machineInput.context(i23);
                    queue2 = queue;
                    machine = this;
                    machine.step(queue3, queue2, i10, i23, i7, iContext2, i13, i10 != machineInput.endPos() ? 1 : i5);
                    if (i11 != 0 || (machine.ncap == 0 && machine.matched)) {
                        break;
                    }
                    int i24 = i10 + i11;
                    i12 = i8;
                    int i25 = i9;
                    if (i12 != -1) {
                        iStep = i6;
                        i3 = i9;
                    } else {
                        iStep = machineInput.step(i24 + i25);
                        i8 = iStep >> 3;
                        i3 = iStep & 7;
                    }
                    Queue queue6 = queue3;
                    i4 = i24;
                    i16 = i12;
                    iContext = iContext2;
                    i17 = i25;
                    iStep2 = iStep;
                    queue = queue6;
                    i15 = i5;
                    i18 = i8;
                    i13 = i2;
                } else {
                    break;
                }
            }
            i6 = iStep2;
            i7 = i16;
            i8 = i18;
            i9 = i3;
            i10 = i4;
            i11 = i17;
            if (!machine.matched) {
            }
            int i232 = i10 + i11;
            iContext2 = machineInput.context(i232);
            queue2 = queue;
            machine = this;
            machine.step(queue3, queue2, i10, i232, i7, iContext2, i13, i10 != machineInput.endPos() ? 1 : i5);
            if (i11 != 0) {
                break;
            }
            int i242 = i10 + i11;
            i12 = i8;
            int i252 = i9;
            if (i12 != -1) {
            }
            Queue queue62 = queue3;
            i4 = i242;
            i16 = i12;
            iContext = iContext2;
            i17 = i252;
            iStep2 = iStep;
            queue = queue62;
            i15 = i5;
            i18 = i8;
            i13 = i2;
        }
        Machine machine2 = machine;
        machine2.free(queue2);
        return machine2.matched;
    }

    private void step(Queue runq, Queue nextq, int pos, int nextPos, int c, int nextCond, int anchor, boolean atEnd) {
        boolean add;
        boolean longest = this.re2.longest;
        for (int j = 0; j < runq.size; j++) {
            Thread t = runq.denseThreads[j];
            if (t != null) {
                if (longest && this.matched && this.ncap > 0 && this.matchcap[0] < t.cap[0]) {
                    free(t);
                } else {
                    Inst i = t.inst;
                    switch (i.op) {
                        case 6:
                            if (anchor != 2 || atEnd) {
                                if (this.ncap > 0 && (!longest || !this.matched || this.matchcap[1] < pos)) {
                                    t.cap[1] = pos;
                                    System.arraycopy(t.cap, 0, this.matchcap, 0, this.ncap);
                                }
                                if (!longest) {
                                    free(runq, j + 1);
                                }
                                this.matched = true;
                            }
                            add = false;
                            break;
                        case 7:
                        default:
                            throw new IllegalStateException("bad inst");
                        case 8:
                            add = i.matchRune(c);
                            break;
                        case 9:
                            add = c == i.runes[0];
                            break;
                        case 10:
                            add = true;
                            break;
                        case 11:
                            add = c != 10;
                            break;
                    }
                    if (add) {
                        t = add(nextq, i.out, nextPos, t.cap, nextCond, t);
                    }
                    if (t != null) {
                        free(t);
                        runq.denseThreads[j] = null;
                    }
                }
            }
        }
        runq.clear();
    }

    private Thread add(Queue q, int pc, int pos, int[] cap, int cond, Thread t) {
        Thread t2;
        if (pc == 0 || q.contains(pc)) {
            return t;
        }
        int d = q.add(pc);
        Inst inst = this.prog.inst[pc];
        switch (inst.op) {
            case 1:
            case 2:
                return add(q, inst.arg, pos, cap, cond, add(q, inst.out, pos, cap, cond, t));
            case 3:
                if (inst.arg < this.ncap) {
                    int opos = cap[inst.arg];
                    cap[inst.arg] = pos;
                    add(q, inst.out, pos, cap, cond, null);
                    cap[inst.arg] = opos;
                } else {
                    return add(q, inst.out, pos, cap, cond, t);
                }
                break;
            case 4:
                if ((inst.arg & (~cond)) == 0) {
                    return add(q, inst.out, pos, cap, cond, t);
                }
                break;
            case 5:
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
                if (t == null) {
                    t2 = alloc(inst);
                } else {
                    t.inst = inst;
                    t2 = t;
                }
                if (this.ncap > 0 && t2.cap != cap) {
                    System.arraycopy(cap, 0, t2.cap, 0, this.ncap);
                }
                q.denseThreads[d] = t2;
                return null;
            case 7:
                return add(q, inst.out, pos, cap, cond, t);
            default:
                throw new IllegalStateException("unhandled");
        }
        return t;
    }
}
