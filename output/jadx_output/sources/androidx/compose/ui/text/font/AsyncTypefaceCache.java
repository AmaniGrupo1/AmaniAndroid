package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FontListFontFamilyTypefaceAdapter.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001:\u0002 !B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u001d\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\b\u0018JH\u0010\u0019\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u001e\u0010\u001a\u001a\u001a\b\u0001\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001bH\u0086@¢\u0006\u0002\u0010\u001dJ+\u0010\u001e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001fH\u0086\bR\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Landroidx/compose/ui/text/font/AsyncTypefaceCache;", "", "<init>", "()V", "PermanentFailure", "Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;", "Ljava/lang/Object;", "resultCache", "Landroidx/collection/LruCache;", "Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;", "permanentCache", "Landroidx/collection/MutableScatterMap;", "cacheLock", "Landroidx/compose/ui/text/platform/SynchronizedObject;", "put", "", "font", "Landroidx/compose/ui/text/font/Font;", "platformFontLoader", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "result", "forever", "", "get", "get-1ASDuI8", "runCached", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runCachedBlocking", "Lkotlin/Function0;", "AsyncTypefaceResult", "Key", "ui-text"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AsyncTypefaceCache {
    public static final int $stable = 8;
    private final Object PermanentFailure = AsyncTypefaceResult.m6996constructorimpl(null);
    private final LruCache<Key, AsyncTypefaceResult> resultCache = new LruCache<>(16);
    private final MutableScatterMap<Key, AsyncTypefaceResult> permanentCache = ScatterMapKt.mutableScatterMapOf();
    private final SynchronizedObject cacheLock = new SynchronizedObject();

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.AsyncTypefaceCache$runCached$1, reason: invalid class name */
    /* JADX INFO: compiled from: FontListFontFamilyTypefaceAdapter.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.text.font.AsyncTypefaceCache", f = "FontListFontFamilyTypefaceAdapter.kt", i = {0, 0}, l = {412}, m = "runCached", n = {"key", "forever"}, s = {"L$0", "Z$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AsyncTypefaceCache.this.runCached(null, null, false, null, this);
        }
    }

    /* JADX INFO: compiled from: FontListFontFamilyTypefaceAdapter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081@\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0088\u0001\u0002¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;", "", "result", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getResult", "()Ljava/lang/Object;", "isPermanentFailure", "", "isPermanentFailure-impl", "(Ljava/lang/Object;)Z", "equals", "other", "hashCode", "", "toString", "", "ui-text"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @JvmInline
    public static final class AsyncTypefaceResult {
        private final Object result;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ AsyncTypefaceResult m6995boximpl(Object obj) {
            return new AsyncTypefaceResult(obj);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static Object m6996constructorimpl(Object obj) {
            return obj;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m6997equalsimpl(Object obj, Object obj2) {
            return (obj2 instanceof AsyncTypefaceResult) && Intrinsics.areEqual(obj, ((AsyncTypefaceResult) obj2).m7002unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m6998equalsimpl0(Object obj, Object obj2) {
            return Intrinsics.areEqual(obj, obj2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m6999hashCodeimpl(Object obj) {
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m7001toStringimpl(Object obj) {
            return "AsyncTypefaceResult(result=" + obj + ')';
        }

        public boolean equals(Object other) {
            return m6997equalsimpl(this.result, other);
        }

        public int hashCode() {
            return m6999hashCodeimpl(this.result);
        }

        public String toString() {
            return m7001toStringimpl(this.result);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ Object m7002unboximpl() {
            return this.result;
        }

        private /* synthetic */ AsyncTypefaceResult(Object result) {
            this.result = result;
        }

        public final Object getResult() {
            return this.result;
        }

        /* JADX INFO: renamed from: isPermanentFailure-impl, reason: not valid java name */
        public static final boolean m7000isPermanentFailureimpl(Object obj) {
            return obj == null;
        }
    }

    /* JADX INFO: compiled from: FontListFontFamilyTypefaceAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;", "", "font", "Landroidx/compose/ui/text/font/Font;", "loaderKey", "<init>", "(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V", "getFont", "()Landroidx/compose/ui/text/font/Font;", "getLoaderKey", "()Ljava/lang/Object;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "ui-text"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Key {
        public static final int $stable = 8;
        private final Font font;
        private final Object loaderKey;

        public static /* synthetic */ Key copy$default(Key key, Font font, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                font = key.font;
            }
            if ((i & 2) != 0) {
                obj = key.loaderKey;
            }
            return key.copy(font, obj);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Font getFont() {
            return this.font;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Object getLoaderKey() {
            return this.loaderKey;
        }

        public final Key copy(Font font, Object loaderKey) {
            return new Key(font, loaderKey);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Key)) {
                return false;
            }
            Key key = (Key) other;
            return Intrinsics.areEqual(this.font, key.font) && Intrinsics.areEqual(this.loaderKey, key.loaderKey);
        }

        public int hashCode() {
            return (this.font.hashCode() * 31) + (this.loaderKey == null ? 0 : this.loaderKey.hashCode());
        }

        public String toString() {
            return "Key(font=" + this.font + ", loaderKey=" + this.loaderKey + ')';
        }

        public Key(Font font, Object loaderKey) {
            this.font = font;
            this.loaderKey = loaderKey;
        }

        public final Font getFont() {
            return this.font;
        }

        public final Object getLoaderKey() {
            return this.loaderKey;
        }
    }

    public static /* synthetic */ void put$default(AsyncTypefaceCache asyncTypefaceCache, Font font, PlatformFontLoader platformFontLoader, Object obj, boolean z, int i, Object obj2) {
        if ((i & 8) != 0) {
            z = false;
        }
        asyncTypefaceCache.put(font, platformFontLoader, obj, z);
    }

    public final void put(Font font, PlatformFontLoader platformFontLoader, Object result, boolean forever) {
        Key key = new Key(font, platformFontLoader.getCacheKey());
        SynchronizedObject lock$iv = this.cacheLock;
        synchronized (lock$iv) {
            try {
                if (result == null) {
                    this.permanentCache.set(key, AsyncTypefaceResult.m6995boximpl(this.PermanentFailure));
                    Unit unit = Unit.INSTANCE;
                } else if (forever) {
                    this.permanentCache.set(key, AsyncTypefaceResult.m6995boximpl(AsyncTypefaceResult.m6996constructorimpl(result)));
                    Unit unit2 = Unit.INSTANCE;
                } else {
                    this.resultCache.put(key, AsyncTypefaceResult.m6995boximpl(AsyncTypefaceResult.m6996constructorimpl(result)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: get-1ASDuI8, reason: not valid java name */
    public final AsyncTypefaceResult m6994get1ASDuI8(Font font, PlatformFontLoader platformFontLoader) {
        AsyncTypefaceResult asyncTypefaceResult;
        Key key = new Key(font, platformFontLoader.getCacheKey());
        SynchronizedObject lock$iv = this.cacheLock;
        synchronized (lock$iv) {
            asyncTypefaceResult = this.resultCache.get(key);
            if (asyncTypefaceResult == null) {
                asyncTypefaceResult = this.permanentCache.get(key);
            }
        }
        return asyncTypefaceResult;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runCached(Font font, PlatformFontLoader platformFontLoader, boolean forever, Function1<? super Continuation<Object>, ? extends Object> function1, Continuation<Object> continuation) {
        AnonymousClass1 anonymousClass1;
        AsyncTypefaceCache asyncTypefaceCache;
        Object objInvoke;
        boolean forever2;
        Key key;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                asyncTypefaceCache = this;
                Key key2 = new Key(font, platformFontLoader.getCacheKey());
                SynchronizedObject lock$iv = asyncTypefaceCache.cacheLock;
                synchronized (lock$iv) {
                    AsyncTypefaceResult priorResult = asyncTypefaceCache.resultCache.get(key2);
                    if (priorResult == null) {
                        priorResult = asyncTypefaceCache.permanentCache.get(key2);
                    }
                    if (priorResult != null) {
                        return priorResult.m7002unboximpl();
                    }
                    Unit unit = Unit.INSTANCE;
                    anonymousClass1.L$0 = key2;
                    anonymousClass1.Z$0 = forever;
                    anonymousClass1.label = 1;
                    objInvoke = function1.invoke(anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    forever2 = forever;
                    key = key2;
                    break;
                }
                break;
            case 1:
                forever2 = anonymousClass1.Z$0;
                key = (Key) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                asyncTypefaceCache = this;
                objInvoke = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Object it = objInvoke;
        SynchronizedObject lock$iv2 = asyncTypefaceCache.cacheLock;
        synchronized (lock$iv2) {
            try {
                if (it == null) {
                    asyncTypefaceCache.permanentCache.set(key, AsyncTypefaceResult.m6995boximpl(asyncTypefaceCache.PermanentFailure));
                } else if (forever2) {
                    asyncTypefaceCache.permanentCache.set(key, AsyncTypefaceResult.m6995boximpl(AsyncTypefaceResult.m6996constructorimpl(it)));
                } else {
                    asyncTypefaceCache.resultCache.put(key, AsyncTypefaceResult.m6995boximpl(AsyncTypefaceResult.m6996constructorimpl(it)));
                }
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return objInvoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object runCachedBlocking(Font font, PlatformFontLoader platformFontLoader, Function0<? extends Object> block) throws Throwable {
        SynchronizedObject lock$iv = this.cacheLock;
        synchronized (lock$iv) {
            try {
                Key key = new Key(font, platformFontLoader.getCacheKey());
                AsyncTypefaceResult priorResult = (AsyncTypefaceResult) this.resultCache.get(key);
                if (priorResult == null) {
                    try {
                        priorResult = (AsyncTypefaceResult) this.permanentCache.get(key);
                    } catch (Throwable th) {
                        th = th;
                    }
                }
                if (priorResult != null) {
                    return priorResult.m7002unboximpl();
                }
                Unit unit = Unit.INSTANCE;
                Object it = block.invoke();
                put$default(this, font, platformFontLoader, it, false, 8, null);
                return it;
            } catch (Throwable th2) {
                th = th2;
            }
            throw th;
        }
    }
}
