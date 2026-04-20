package j$.sun.nio.cs;

import java.io.IOException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes19.dex */
public class CharsetMapping {
    private static final int MAP_COMPOSITE = 7;
    private static final int MAP_DOUBLEBYTE1 = 2;
    private static final int MAP_DOUBLEBYTE2 = 3;
    private static final int MAP_INDEXC2B = 8;
    private static final int MAP_SINGLEBYTE = 1;
    private static final int MAP_SUPPLEMENT = 5;
    private static final int MAP_SUPPLEMENT_C2B = 6;
    public static final char UNMAPPABLE_DECODING = 65533;
    public static final int UNMAPPABLE_ENCODING = 65533;
    static Comparator<Entry> comparatorBytes = new Comparator<Entry>() { // from class: j$.sun.nio.cs.CharsetMapping.2
        @Override // java.util.Comparator
        public int compare(Entry m1, Entry m2) {
            return m1.bs - m2.bs;
        }

        @Override // java.util.Comparator
        public boolean equals(Object obj) {
            return this == obj;
        }
    };
    static Comparator<Entry> comparatorCP = new Comparator<Entry>() { // from class: j$.sun.nio.cs.CharsetMapping.3
        @Override // java.util.Comparator
        public int compare(Entry m1, Entry m2) {
            return m1.cp - m2.cp;
        }

        @Override // java.util.Comparator
        public boolean equals(Object obj) {
            return this == obj;
        }
    };
    static Comparator<Entry> comparatorComp = new Comparator<Entry>() { // from class: j$.sun.nio.cs.CharsetMapping.4
        @Override // java.util.Comparator
        public int compare(Entry m1, Entry m2) {
            int v = m1.cp - m2.cp;
            if (v == 0) {
                return m1.cp2 - m2.cp2;
            }
            return v;
        }

        @Override // java.util.Comparator
        public boolean equals(Object obj) {
            return this == obj;
        }
    };
    int b1MaxDB1;
    int b1MaxDB2;
    int b1MinDB1;
    int b1MinDB2;
    int b2Max;
    int b2Min;
    Entry[] b2cComp;
    char[] b2cDB1;
    char[] b2cDB2;
    char[] b2cSB;
    char[] b2cSupp;
    byte[] bb;
    char[] c2b;
    Entry[] c2bComp;
    char[] c2bIndex;
    char[] c2bSupp;
    int dbSegSize;
    int off = 0;

    public static class Entry {
        public int bs;
        public int cp;
        public int cp2;
    }

    public char decodeSingle(int b) {
        return this.b2cSB[b];
    }

    public char decodeDouble(int b1, int b2) {
        if (b2 >= this.b2Min && b2 < this.b2Max) {
            int b22 = b2 - this.b2Min;
            if (b1 >= this.b1MinDB1 && b1 <= this.b1MaxDB1) {
                return this.b2cDB1[(this.dbSegSize * (b1 - this.b1MinDB1)) + b22];
            }
            if (b1 >= this.b1MinDB2 && b1 <= this.b1MaxDB2) {
                return this.b2cDB2[(this.dbSegSize * (b1 - this.b1MinDB2)) + b22];
            }
            return (char) 65533;
        }
        return (char) 65533;
    }

    public char[] decodeSurrogate(int db, char[] cc) {
        int end = this.b2cSupp.length / 2;
        int i = Arrays.binarySearch(this.b2cSupp, 0, end, (char) db);
        if (i >= 0) {
            Character.toChars(this.b2cSupp[end + i] + 0, cc, 0);
            return cc;
        }
        return null;
    }

    public char[] decodeComposite(Entry comp, char[] cc) {
        int i = findBytes(this.b2cComp, comp);
        if (i >= 0) {
            cc[0] = (char) this.b2cComp[i].cp;
            cc[1] = (char) this.b2cComp[i].cp2;
            return cc;
        }
        return null;
    }

    public int encodeChar(char ch) {
        char c = this.c2bIndex[ch >> '\b'];
        if (c == 65535) {
            return 65533;
        }
        return this.c2b[(ch & 255) + c];
    }

    public int encodeSurrogate(char hi, char lo) {
        int end;
        int i;
        int cp = Character.toCodePoint(hi, lo);
        if (cp < 131072 || cp >= 196608 || (i = Arrays.binarySearch(this.c2bSupp, 0, (end = this.c2bSupp.length / 2), (char) cp)) < 0) {
            return 65533;
        }
        return this.c2bSupp[end + i];
    }

    public boolean isCompositeBase(Entry comp) {
        return comp.cp <= 12791 && comp.cp >= 230 && findCP(this.c2bComp, comp) >= 0;
    }

    public int encodeComposite(Entry comp) {
        int i = findComp(this.c2bComp, comp);
        if (i >= 0) {
            return this.c2bComp[i].bs;
        }
        return 65533;
    }

    public static CharsetMapping get(final InputStream is) {
        return (CharsetMapping) AccessController.doPrivileged(new PrivilegedAction<CharsetMapping>() { // from class: j$.sun.nio.cs.CharsetMapping.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public CharsetMapping run() {
                return new CharsetMapping().load(is);
            }
        });
    }

    static int findBytes(Entry[] a, Entry k) {
        return Arrays.binarySearch(a, 0, a.length, k, comparatorBytes);
    }

    static int findCP(Entry[] a, Entry k) {
        return Arrays.binarySearch(a, 0, a.length, k, comparatorCP);
    }

    static int findComp(Entry[] a, Entry k) {
        return Arrays.binarySearch(a, 0, a.length, k, comparatorComp);
    }

    private static final boolean readNBytes(InputStream in, byte[] bb, int N) throws IOException {
        int off = 0;
        while (N > 0) {
            int n = in.read(bb, off, N);
            if (n == -1) {
                return false;
            }
            N -= n;
            off += n;
        }
        return true;
    }

    private char[] readCharArray() {
        byte[] bArr = this.bb;
        int i = this.off;
        this.off = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.bb;
        int i3 = this.off;
        this.off = i3 + 1;
        int size = i2 | (bArr2[i3] & 255);
        char[] cc = new char[size];
        for (int i4 = 0; i4 < size; i4++) {
            byte[] bArr3 = this.bb;
            int i5 = this.off;
            this.off = i5 + 1;
            int i6 = (bArr3[i5] & 255) << 8;
            byte[] bArr4 = this.bb;
            int i7 = this.off;
            this.off = i7 + 1;
            cc[i4] = (char) (i6 | (bArr4[i7] & 255));
        }
        return cc;
    }

    void readSINGLEBYTE() {
        char[] map = readCharArray();
        for (int i = 0; i < map.length; i++) {
            char c = map[i];
            if (c != 65533) {
                this.c2b[this.c2bIndex[c >> '\b'] + (c & 255)] = (char) i;
            }
        }
        this.b2cSB = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void readINDEXC2B() {
        char[] charArray = readCharArray();
        int i = charArray.length - 1;
        while (true) {
            if (i >= 0) {
                if (this.c2b != null || charArray[i] == -1) {
                    i--;
                } else {
                    this.c2b = new char[charArray[i] + 256];
                    Arrays.fill(this.c2b, (char) 65533);
                    break;
                }
            } else {
                break;
            }
        }
        this.c2bIndex = charArray;
    }

    char[] readDB(int b1Min, int b2Min, int segSize) {
        char[] map = readCharArray();
        for (int i = 0; i < map.length; i++) {
            char c = map[i];
            if (c != 65533) {
                int b1 = i / segSize;
                int b2 = i % segSize;
                int b = ((b1 + b1Min) * 256) + b2 + b2Min;
                this.c2b[this.c2bIndex[c >> '\b'] + (c & 255)] = (char) b;
            }
        }
        return map;
    }

    void readDOUBLEBYTE1() {
        byte[] bArr = this.bb;
        int i = this.off;
        this.off = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.bb;
        int i3 = this.off;
        this.off = i3 + 1;
        this.b1MinDB1 = i2 | (bArr2[i3] & 255);
        byte[] bArr3 = this.bb;
        int i4 = this.off;
        this.off = i4 + 1;
        int i5 = (bArr3[i4] & 255) << 8;
        byte[] bArr4 = this.bb;
        int i6 = this.off;
        this.off = i6 + 1;
        this.b1MaxDB1 = i5 | (bArr4[i6] & 255);
        byte[] bArr5 = this.bb;
        int i7 = this.off;
        this.off = i7 + 1;
        int i8 = (bArr5[i7] & 255) << 8;
        byte[] bArr6 = this.bb;
        int i9 = this.off;
        this.off = i9 + 1;
        this.b2Min = i8 | (bArr6[i9] & 255);
        byte[] bArr7 = this.bb;
        int i10 = this.off;
        this.off = i10 + 1;
        int i11 = (bArr7[i10] & 255) << 8;
        byte[] bArr8 = this.bb;
        int i12 = this.off;
        this.off = i12 + 1;
        this.b2Max = i11 | (bArr8[i12] & 255);
        this.dbSegSize = (this.b2Max - this.b2Min) + 1;
        this.b2cDB1 = readDB(this.b1MinDB1, this.b2Min, this.dbSegSize);
    }

    void readDOUBLEBYTE2() {
        byte[] bArr = this.bb;
        int i = this.off;
        this.off = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.bb;
        int i3 = this.off;
        this.off = i3 + 1;
        this.b1MinDB2 = i2 | (bArr2[i3] & 255);
        byte[] bArr3 = this.bb;
        int i4 = this.off;
        this.off = i4 + 1;
        int i5 = (bArr3[i4] & 255) << 8;
        byte[] bArr4 = this.bb;
        int i6 = this.off;
        this.off = i6 + 1;
        this.b1MaxDB2 = i5 | (bArr4[i6] & 255);
        byte[] bArr5 = this.bb;
        int i7 = this.off;
        this.off = i7 + 1;
        int i8 = (bArr5[i7] & 255) << 8;
        byte[] bArr6 = this.bb;
        int i9 = this.off;
        this.off = i9 + 1;
        this.b2Min = i8 | (bArr6[i9] & 255);
        byte[] bArr7 = this.bb;
        int i10 = this.off;
        this.off = i10 + 1;
        int i11 = (bArr7[i10] & 255) << 8;
        byte[] bArr8 = this.bb;
        int i12 = this.off;
        this.off = i12 + 1;
        this.b2Max = i11 | (bArr8[i12] & 255);
        this.dbSegSize = (this.b2Max - this.b2Min) + 1;
        this.b2cDB2 = readDB(this.b1MinDB2, this.b2Min, this.dbSegSize);
    }

    void readCOMPOSITE() {
        char[] map = readCharArray();
        int mLen = map.length / 3;
        this.b2cComp = new Entry[mLen];
        this.c2bComp = new Entry[mLen];
        int i = 0;
        int j = 0;
        while (i < mLen) {
            Entry m = new Entry();
            int j2 = j + 1;
            m.bs = map[j];
            int j3 = j2 + 1;
            m.cp = map[j2];
            m.cp2 = map[j3];
            this.b2cComp[i] = m;
            this.c2bComp[i] = m;
            i++;
            j = j3 + 1;
        }
        Arrays.sort(this.c2bComp, 0, this.c2bComp.length, comparatorComp);
    }

    CharsetMapping load(InputStream in) {
        try {
            int len = ((in.read() & 255) << 24) | ((in.read() & 255) << 16) | ((in.read() & 255) << 8) | (in.read() & 255);
            this.bb = new byte[len];
            this.off = 0;
            if (!readNBytes(in, this.bb, len)) {
                throw new RuntimeException("Corrupted data file");
            }
            in.close();
            while (this.off < len) {
                byte[] bArr = this.bb;
                int i = this.off;
                this.off = i + 1;
                int i2 = (bArr[i] & 255) << 8;
                byte[] bArr2 = this.bb;
                int i3 = this.off;
                this.off = i3 + 1;
                int type = i2 | (bArr2[i3] & 255);
                switch (type) {
                    case 1:
                        readSINGLEBYTE();
                        break;
                    case 2:
                        readDOUBLEBYTE1();
                        break;
                    case 3:
                        readDOUBLEBYTE2();
                        break;
                    case 4:
                    default:
                        throw new RuntimeException("Corrupted data file");
                    case 5:
                        this.b2cSupp = readCharArray();
                        break;
                    case 6:
                        this.c2bSupp = readCharArray();
                        break;
                    case 7:
                        readCOMPOSITE();
                        break;
                    case 8:
                        readINDEXC2B();
                        break;
                }
            }
            this.bb = null;
            return this;
        } catch (IOException x) {
            x.printStackTrace();
            return null;
        }
    }
}
