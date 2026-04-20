package com.google.re2j;

import j$.sun.nio.cs.Surrogate;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
class CharClass {
    private int len;
    private int[] r;

    CharClass(int[] r) {
        this.r = r;
        this.len = r.length;
    }

    CharClass() {
        this.r = Utils.EMPTY_INTS;
        this.len = 0;
    }

    private void ensureCapacity(int newLen) {
        if (this.r.length < newLen) {
            if (newLen < this.len * 2) {
                newLen = this.len * 2;
            }
            int[] r2 = new int[newLen];
            System.arraycopy(this.r, 0, r2, 0, this.len);
            this.r = r2;
        }
    }

    int[] toArray() {
        if (this.len == this.r.length) {
            return this.r;
        }
        int[] r2 = new int[this.len];
        System.arraycopy(this.r, 0, r2, 0, this.len);
        return r2;
    }

    CharClass cleanClass() {
        if (this.len < 4) {
            return this;
        }
        qsortIntPair(this.r, 0, this.len - 2);
        int w = 2;
        for (int i = 2; i < this.len; i += 2) {
            int lo = this.r[i];
            int hi = this.r[i + 1];
            int i2 = this.r[w - 1] + 1;
            int[] iArr = this.r;
            if (lo <= i2) {
                if (hi > iArr[w - 1]) {
                    this.r[w - 1] = hi;
                }
            } else {
                iArr[w] = lo;
                this.r[w + 1] = hi;
                w += 2;
            }
        }
        this.len = w;
        return this;
    }

    CharClass appendLiteral(int x, int flags) {
        return (flags & 1) != 0 ? appendFoldedRange(x, x) : appendRange(x, x);
    }

    CharClass appendRange(int lo, int hi) {
        if (this.len > 0) {
            for (int i = 2; i <= 4; i += 2) {
                if (this.len >= i) {
                    int rlo = this.r[this.len - i];
                    int rhi = this.r[(this.len - i) + 1];
                    if (lo <= rhi + 1 && rlo <= hi + 1) {
                        if (lo < rlo) {
                            this.r[this.len - i] = lo;
                        }
                        if (hi > rhi) {
                            this.r[(this.len - i) + 1] = hi;
                        }
                        return this;
                    }
                }
            }
        }
        int i2 = this.len;
        ensureCapacity(i2 + 2);
        int[] iArr = this.r;
        int i3 = this.len;
        this.len = i3 + 1;
        iArr[i3] = lo;
        int[] iArr2 = this.r;
        int i4 = this.len;
        this.len = i4 + 1;
        iArr2[i4] = hi;
        return this;
    }

    CharClass appendFoldedRange(int lo, int hi) {
        if (lo <= 65 && hi >= 66639) {
            return appendRange(lo, hi);
        }
        if (hi < 65 || lo > 66639) {
            return appendRange(lo, hi);
        }
        if (lo < 65) {
            appendRange(lo, 64);
            lo = 65;
        }
        if (hi > 66639) {
            appendRange(66640, hi);
            hi = 66639;
        }
        for (int c = lo; c <= hi; c++) {
            appendRange(c, c);
            for (int f = Unicode.simpleFold(c); f != c; f = Unicode.simpleFold(f)) {
                appendRange(f, f);
            }
        }
        return this;
    }

    CharClass appendClass(int[] x) {
        for (int i = 0; i < x.length; i += 2) {
            appendRange(x[i], x[i + 1]);
        }
        return this;
    }

    CharClass appendFoldedClass(int[] x) {
        for (int i = 0; i < x.length; i += 2) {
            appendFoldedRange(x[i], x[i + 1]);
        }
        return this;
    }

    CharClass appendNegatedClass(int[] x) {
        int nextLo = 0;
        for (int i = 0; i < x.length; i += 2) {
            int lo = x[i];
            int hi = x[i + 1];
            if (nextLo <= lo - 1) {
                appendRange(nextLo, lo - 1);
            }
            nextLo = hi + 1;
        }
        if (nextLo <= 1114111) {
            appendRange(nextLo, Surrogate.UCS4_MAX);
        }
        return this;
    }

    CharClass appendTable(int[][] table) {
        for (int[] triple : table) {
            int lo = triple[0];
            int hi = triple[1];
            int stride = triple[2];
            if (stride == 1) {
                appendRange(lo, hi);
            } else {
                for (int c = lo; c <= hi; c += stride) {
                    appendRange(c, c);
                }
            }
        }
        return this;
    }

    CharClass appendNegatedTable(int[][] table) {
        int nextLo = 0;
        for (int[] triple : table) {
            int lo = triple[0];
            int hi = triple[1];
            int stride = triple[2];
            if (stride == 1) {
                if (nextLo <= lo - 1) {
                    appendRange(nextLo, lo - 1);
                }
                nextLo = hi + 1;
            } else {
                for (int c = lo; c <= hi; c += stride) {
                    if (nextLo <= c - 1) {
                        appendRange(nextLo, c - 1);
                    }
                    nextLo = c + 1;
                }
            }
        }
        if (nextLo <= 1114111) {
            appendRange(nextLo, Surrogate.UCS4_MAX);
        }
        return this;
    }

    CharClass appendTableWithSign(int[][] table, int sign) {
        return sign < 0 ? appendNegatedTable(table) : appendTable(table);
    }

    CharClass negateClass() {
        int nextLo = 0;
        int w = 0;
        for (int i = 0; i < this.len; i += 2) {
            int lo = this.r[i];
            int hi = this.r[i + 1];
            if (nextLo <= lo - 1) {
                this.r[w] = nextLo;
                this.r[w + 1] = lo - 1;
                w += 2;
            }
            nextLo = hi + 1;
        }
        this.len = w;
        if (nextLo <= 1114111) {
            ensureCapacity(this.len + 2);
            int[] iArr = this.r;
            int i2 = this.len;
            this.len = i2 + 1;
            iArr[i2] = nextLo;
            int[] iArr2 = this.r;
            int i3 = this.len;
            this.len = i3 + 1;
            iArr2[i3] = 1114111;
        }
        return this;
    }

    CharClass appendClassWithSign(int[] x, int sign) {
        return sign < 0 ? appendNegatedClass(x) : appendClass(x);
    }

    CharClass appendGroup(CharGroup g, boolean foldCase) {
        int[] cls = g.cls;
        if (foldCase) {
            cls = new CharClass().appendFoldedClass(cls).cleanClass().toArray();
        }
        return appendClassWithSign(cls, g.sign);
    }

    private static int cmp(int[] array, int i, int pivotFrom, int pivotTo) {
        int cmp = array[i] - pivotFrom;
        return cmp != 0 ? cmp : pivotTo - array[i + 1];
    }

    private static void qsortIntPair(int[] array, int left, int right) {
        int pivotIndex = ((left + right) / 2) & (-2);
        int pivotFrom = array[pivotIndex];
        int pivotTo = array[pivotIndex + 1];
        int i = left;
        int j = right;
        while (i <= j) {
            while (i < right && cmp(array, i, pivotFrom, pivotTo) < 0) {
                i += 2;
            }
            while (j > left && cmp(array, j, pivotFrom, pivotTo) > 0) {
                j -= 2;
            }
            if (i <= j) {
                if (i != j) {
                    int temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                    int temp2 = array[i + 1];
                    array[i + 1] = array[j + 1];
                    array[j + 1] = temp2;
                }
                i += 2;
                j -= 2;
            }
        }
        if (left < j) {
            qsortIntPair(array, left, j);
        }
        if (i < right) {
            qsortIntPair(array, i, right);
        }
    }

    static String charClassToString(int[] r, int len) {
        StringBuilder b = new StringBuilder();
        b.append(AbstractJsonLexerKt.BEGIN_LIST);
        for (int i = 0; i < len; i += 2) {
            if (i > 0) {
                b.append(' ');
            }
            int lo = r[i];
            int hi = r[i + 1];
            if (lo == hi) {
                b.append("0x");
                b.append(Integer.toHexString(lo));
            } else {
                b.append("0x");
                b.append(Integer.toHexString(lo));
                b.append("-0x");
                b.append(Integer.toHexString(hi));
            }
        }
        b.append(AbstractJsonLexerKt.END_LIST);
        return b.toString();
    }

    public String toString() {
        return charClassToString(this.r, this.len);
    }
}
