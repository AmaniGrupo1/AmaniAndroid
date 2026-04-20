package j$.sun.nio.cs;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: loaded from: classes19.dex */
public class ThreadLocalCoders {
    private static final int CACHE_SIZE = 3;
    private static Cache decoderCache;
    private static Cache encoderCache;

    private static abstract class Cache {
        private ThreadLocal<Object[]> cache = new ThreadLocal<>();
        private final int size;

        abstract Object create(Object obj);

        abstract boolean hasName(Object obj, Object obj2);

        Cache(int size) {
            this.size = size;
        }

        private void moveToFront(Object[] oa, int i) {
            Object ob = oa[i];
            for (int j = i; j > 0; j--) {
                oa[j] = oa[j - 1];
            }
            oa[0] = ob;
        }

        Object forName(Object name) {
            Object[] oa = this.cache.get();
            if (oa == null) {
                oa = new Object[this.size];
                this.cache.set(oa);
            } else {
                for (int i = 0; i < oa.length; i++) {
                    Object ob = oa[i];
                    if (ob != null && hasName(ob, name)) {
                        if (i > 0) {
                            moveToFront(oa, i);
                        }
                        return ob;
                    }
                }
            }
            Object ob2 = create(name);
            oa[oa.length - 1] = ob2;
            moveToFront(oa, oa.length - 1);
            return ob2;
        }
    }

    static {
        int i = 3;
        decoderCache = new Cache(i) { // from class: j$.sun.nio.cs.ThreadLocalCoders.1
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // j$.sun.nio.cs.ThreadLocalCoders.Cache
            boolean hasName(Object ob, Object name) {
                if (name instanceof Charset) {
                    return ((CharsetDecoder) ob).charset().equals(name);
                }
                if (name instanceof String) {
                    return ((CharsetDecoder) ob).charset().name().equals(name);
                }
                return false;
            }

            @Override // j$.sun.nio.cs.ThreadLocalCoders.Cache
            Object create(Object name) {
                if (name instanceof Charset) {
                    return ((Charset) name).newDecoder();
                }
                if (name instanceof String) {
                    return Charset.forName((String) name).newDecoder();
                }
                return null;
            }
        };
        encoderCache = new Cache(i) { // from class: j$.sun.nio.cs.ThreadLocalCoders.2
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // j$.sun.nio.cs.ThreadLocalCoders.Cache
            boolean hasName(Object ob, Object name) {
                if (name instanceof Charset) {
                    return ((CharsetEncoder) ob).charset().equals(name);
                }
                if (name instanceof String) {
                    return ((CharsetEncoder) ob).charset().name().equals(name);
                }
                return false;
            }

            @Override // j$.sun.nio.cs.ThreadLocalCoders.Cache
            Object create(Object name) {
                if (name instanceof Charset) {
                    return ((Charset) name).newEncoder();
                }
                if (name instanceof String) {
                    return Charset.forName((String) name).newEncoder();
                }
                return null;
            }
        };
    }

    public static CharsetDecoder decoderFor(Object name) {
        CharsetDecoder cd = (CharsetDecoder) decoderCache.forName(name);
        cd.reset();
        return cd;
    }

    public static CharsetEncoder encoderFor(Object name) {
        CharsetEncoder ce = (CharsetEncoder) encoderCache.forName(name);
        ce.reset();
        return ce;
    }
}
