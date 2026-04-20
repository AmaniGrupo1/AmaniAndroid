package com.google.re2j;

import androidx.media3.extractor.ts.PsExtractor;
import okio.Utf8;

/* JADX INFO: loaded from: classes22.dex */
abstract class MachineInput {
    static final int EOF = -8;

    abstract boolean canCheckPrefix();

    abstract int context(int i);

    abstract int endPos();

    abstract int index(RE2 re2, int i);

    abstract int step(int i);

    MachineInput() {
    }

    static MachineInput fromUTF8(byte[] b) {
        return new UTF8Input(b);
    }

    static MachineInput fromUTF8(byte[] b, int start, int end) {
        return new UTF8Input(b, start, end);
    }

    static MachineInput fromUTF16(CharSequence s) {
        return new UTF16Input(s, 0, s.length());
    }

    static MachineInput fromUTF16(CharSequence s, int start, int end) {
        return new UTF16Input(s, start, end);
    }

    private static class UTF8Input extends MachineInput {
        final byte[] b;
        final int end;
        final int start;

        UTF8Input(byte[] b) {
            this.b = b;
            this.start = 0;
            this.end = b.length;
        }

        UTF8Input(byte[] b, int start, int end) {
            if (end > b.length) {
                throw new ArrayIndexOutOfBoundsException("end is greater than length: " + end + " > " + b.length);
            }
            this.b = b;
            this.start = start;
            this.end = end;
        }

        @Override // com.google.re2j.MachineInput
        int step(int i) {
            int i2 = i + this.start;
            if (i2 >= this.end) {
                return -8;
            }
            int i3 = i2 + 1;
            int x = this.b[i2] & 255;
            if ((x & 128) == 0) {
                return (x << 3) | 1;
            }
            if ((x & 224) == 192) {
                int x2 = x & 31;
                if (i3 >= this.end) {
                    return -8;
                }
                int i4 = i3 + 1;
                return (((x2 << 6) | (this.b[i3] & Utf8.REPLACEMENT_BYTE)) << 3) | 2;
            }
            int i5 = x & PsExtractor.VIDEO_STREAM_MASK;
            int i6 = this.end;
            if (i5 == 224) {
                int x3 = x & 15;
                if (i3 + 1 >= i6) {
                    return -8;
                }
                int i7 = i3 + 1;
                int i8 = ((x3 << 6) | (this.b[i3] & Utf8.REPLACEMENT_BYTE)) << 6;
                int i9 = i7 + 1;
                return ((i8 | (this.b[i7] & Utf8.REPLACEMENT_BYTE)) << 3) | 3;
            }
            int x4 = x & 7;
            if (i3 + 2 >= i6) {
                return -8;
            }
            int i10 = i3 + 1;
            int i11 = ((x4 << 6) | (this.b[i3] & Utf8.REPLACEMENT_BYTE)) << 6;
            int i12 = i10 + 1;
            int i13 = (i11 | (this.b[i10] & Utf8.REPLACEMENT_BYTE)) << 6;
            int i14 = i12 + 1;
            return ((i13 | (this.b[i12] & Utf8.REPLACEMENT_BYTE)) << 3) | 4;
        }

        @Override // com.google.re2j.MachineInput
        boolean canCheckPrefix() {
            return true;
        }

        @Override // com.google.re2j.MachineInput
        int index(RE2 re2, int pos) {
            int pos2 = pos + this.start;
            int i = Utils.indexOf(this.b, re2.prefixUTF8, pos2);
            return i < 0 ? i : i - pos2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.re2j.MachineInput
        int context(int i) {
            int i2 = i + this.start;
            int iStep = -1;
            iStep = -1;
            if (i2 > this.start && i2 <= this.end) {
                int i3 = i2 - 1;
                int i4 = i3 - 1;
                iStep = this.b[i3];
                if (iStep >= 128) {
                    int i5 = i2 - 4;
                    if (i5 < this.start) {
                        i5 = this.start;
                    }
                    while (i4 >= i5 && (this.b[i4] & 192) == 128) {
                        i4--;
                    }
                    if (i4 < this.start) {
                        i4 = this.start;
                    }
                    iStep = step(i4) >> 3;
                }
            }
            return Utils.emptyOpContext(iStep, i2 < this.end ? step(i2) >> 3 : -1);
        }

        @Override // com.google.re2j.MachineInput
        int endPos() {
            return this.end;
        }
    }

    private static class UTF16Input extends MachineInput {
        final int end;
        final int start;
        final CharSequence str;

        public UTF16Input(CharSequence str, int start, int end) {
            this.str = str;
            this.start = start;
            this.end = end;
        }

        @Override // com.google.re2j.MachineInput
        int step(int pos) {
            int pos2 = pos + this.start;
            if (pos2 < this.end) {
                int rune = Character.codePointAt(this.str, pos2);
                return (rune << 3) | Character.charCount(rune);
            }
            return -8;
        }

        @Override // com.google.re2j.MachineInput
        boolean canCheckPrefix() {
            return true;
        }

        @Override // com.google.re2j.MachineInput
        int index(RE2 re2, int pos) {
            int pos2 = pos + this.start;
            int i = indexOf(this.str, re2.prefix, pos2);
            return i < 0 ? i : i - pos2;
        }

        @Override // com.google.re2j.MachineInput
        int context(int pos) {
            int pos2 = pos + this.start;
            int r1 = (pos2 <= 0 || pos2 > this.str.length()) ? -1 : Character.codePointBefore(this.str, pos2);
            int r2 = pos2 < this.str.length() ? Character.codePointAt(this.str, pos2) : -1;
            return Utils.emptyOpContext(r1, r2);
        }

        @Override // com.google.re2j.MachineInput
        int endPos() {
            return this.end;
        }

        private int indexOf(CharSequence hayStack, String needle, int pos) {
            if (hayStack instanceof String) {
                return ((String) hayStack).indexOf(needle, pos);
            }
            if (hayStack instanceof StringBuilder) {
                return ((StringBuilder) hayStack).indexOf(needle, pos);
            }
            return indexOfFallback(hayStack, needle, pos);
        }

        private int indexOfFallback(CharSequence hayStack, String needle, int fromIndex) {
            if (fromIndex >= hayStack.length()) {
                return needle.isEmpty() ? 0 : -1;
            }
            if (fromIndex < 0) {
                fromIndex = 0;
            }
            if (needle.isEmpty()) {
                return fromIndex;
            }
            char first = needle.charAt(0);
            int max = hayStack.length() - needle.length();
            int i = fromIndex;
            while (i <= max) {
                if (hayStack.charAt(i) != first) {
                    do {
                        i++;
                        if (i > max) {
                            break;
                        }
                    } while (hayStack.charAt(i) != first);
                }
                if (i <= max) {
                    int j = i + 1;
                    int end = (needle.length() + j) - 1;
                    for (int k = 1; j < end && hayStack.charAt(j) == needle.charAt(k); k++) {
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
    }
}
