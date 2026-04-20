package j$.sun.nio.cs;

import java.nio.CharBuffer;
import java.nio.charset.CoderResult;

/* JADX INFO: loaded from: classes19.dex */
public class Surrogate {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final char MAX = 57343;
    public static final char MAX_HIGH = 56319;
    public static final char MAX_LOW = 57343;
    public static final char MIN = 55296;
    public static final char MIN_HIGH = 55296;
    public static final char MIN_LOW = 56320;
    public static final int UCS4_MAX = 1114111;
    public static final int UCS4_MIN = 65536;

    private Surrogate() {
    }

    public static boolean isHigh(int c) {
        return 55296 <= c && c <= 56319;
    }

    public static boolean isLow(int c) {
        return 56320 <= c && c <= 57343;
    }

    public static boolean is(int c) {
        return 55296 <= c && c <= 57343;
    }

    public static boolean neededFor(int uc) {
        return Character.isSupplementaryCodePoint(uc);
    }

    public static char high(int uc) {
        return Character.highSurrogate(uc);
    }

    public static char low(int uc) {
        return Character.lowSurrogate(uc);
    }

    public static int toUCS4(char c, char d) {
        return Character.toCodePoint(c, d);
    }

    public static class Parser {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int character;
        private CoderResult error = CoderResult.UNDERFLOW;
        private boolean isPair;

        public int character() {
            return this.character;
        }

        public boolean isPair() {
            return this.isPair;
        }

        public int increment() {
            return this.isPair ? 2 : 1;
        }

        public CoderResult error() {
            return this.error;
        }

        public CoderResult unmappableResult() {
            return CoderResult.unmappableForLength(this.isPair ? 2 : 1);
        }

        public int parse(char c, CharBuffer in) {
            if (Character.isHighSurrogate(c)) {
                if (!in.hasRemaining()) {
                    this.error = CoderResult.UNDERFLOW;
                    return -1;
                }
                char d = in.get();
                if (Character.isLowSurrogate(d)) {
                    this.character = Character.toCodePoint(c, d);
                    this.isPair = true;
                    this.error = null;
                    return this.character;
                }
                this.error = CoderResult.malformedForLength(1);
                return -1;
            }
            if (Character.isLowSurrogate(c)) {
                this.error = CoderResult.malformedForLength(1);
                return -1;
            }
            this.character = c;
            this.isPair = false;
            this.error = null;
            return this.character;
        }

        public int parse(char c, char[] ia, int ip, int il) {
            if (Character.isHighSurrogate(c)) {
                if (il - ip < 2) {
                    this.error = CoderResult.UNDERFLOW;
                    return -1;
                }
                char d = ia[ip + 1];
                if (Character.isLowSurrogate(d)) {
                    this.character = Character.toCodePoint(c, d);
                    this.isPair = true;
                    this.error = null;
                    return this.character;
                }
                this.error = CoderResult.malformedForLength(1);
                return -1;
            }
            if (Character.isLowSurrogate(c)) {
                this.error = CoderResult.malformedForLength(1);
                return -1;
            }
            this.character = c;
            this.isPair = false;
            this.error = null;
            return this.character;
        }
    }

    public static class Generator {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private CoderResult error = CoderResult.OVERFLOW;

        public CoderResult error() {
            return this.error;
        }

        public int generate(int uc, int len, CharBuffer dst) {
            if (Character.isBmpCodePoint(uc)) {
                char c = (char) uc;
                if (Character.isSurrogate(c)) {
                    this.error = CoderResult.malformedForLength(len);
                    return -1;
                }
                if (dst.remaining() < 1) {
                    this.error = CoderResult.OVERFLOW;
                    return -1;
                }
                dst.put(c);
                this.error = null;
                return 1;
            }
            if (Character.isValidCodePoint(uc)) {
                if (dst.remaining() < 2) {
                    this.error = CoderResult.OVERFLOW;
                    return -1;
                }
                dst.put(Character.highSurrogate(uc));
                dst.put(Character.lowSurrogate(uc));
                this.error = null;
                return 2;
            }
            this.error = CoderResult.unmappableForLength(len);
            return -1;
        }

        public int generate(int uc, int len, char[] da, int dp, int dl) {
            if (Character.isBmpCodePoint(uc)) {
                char c = (char) uc;
                if (Character.isSurrogate(c)) {
                    this.error = CoderResult.malformedForLength(len);
                    return -1;
                }
                if (dl - dp < 1) {
                    this.error = CoderResult.OVERFLOW;
                    return -1;
                }
                da[dp] = c;
                this.error = null;
                return 1;
            }
            if (Character.isValidCodePoint(uc)) {
                if (dl - dp < 2) {
                    this.error = CoderResult.OVERFLOW;
                    return -1;
                }
                da[dp] = Character.highSurrogate(uc);
                da[dp + 1] = Character.lowSurrogate(uc);
                this.error = null;
                return 2;
            }
            this.error = CoderResult.unmappableForLength(len);
            return -1;
        }
    }
}
