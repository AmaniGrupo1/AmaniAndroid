package androidx.compose.ui.text.font;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.font.TypefaceResult;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.YieldKt;

/* JADX INFO: compiled from: FontListFontFamilyTypefaceAdapter.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BI\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010!\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\"J\u0016\u0010#\u001a\u0004\u0018\u00010\u0002*\u00020\u0005H\u0080@¢\u0006\u0004\b$\u0010%R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00028V@RX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001b\u001a\u00020\u001cX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006&"}, d2 = {"Landroidx/compose/ui/text/font/AsyncFontListLoader;", "Landroidx/compose/runtime/State;", "", "fontList", "", "Landroidx/compose/ui/text/font/Font;", "initialType", "typefaceRequest", "Landroidx/compose/ui/text/font/TypefaceRequest;", "asyncTypefaceCache", "Landroidx/compose/ui/text/font/AsyncTypefaceCache;", "onCompletion", "Lkotlin/Function1;", "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;", "", "platformFontLoader", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "<init>", "(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/PlatformFontLoader;)V", "<set-?>", Values.VECTOR_MAP_VECTORS_KEY, "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "value$delegate", "Landroidx/compose/runtime/MutableState;", "cacheable", "", "getCacheable$ui_text", "()Z", "setCacheable$ui_text", "(Z)V", "load", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadWithTimeoutOrNull", "loadWithTimeoutOrNull$ui_text", "(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ui-text"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AsyncFontListLoader implements State<Object> {
    public static final int $stable = 0;
    private final AsyncTypefaceCache asyncTypefaceCache;
    private boolean cacheable = true;
    private final List<Font> fontList;
    private final Function1<TypefaceResult.Immutable, Unit> onCompletion;
    private final PlatformFontLoader platformFontLoader;
    private final TypefaceRequest typefaceRequest;

    /* JADX INFO: renamed from: value$delegate, reason: from kotlin metadata */
    private final MutableState value;

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.AsyncFontListLoader$load$1, reason: invalid class name */
    /* JADX INFO: compiled from: FontListFontFamilyTypefaceAdapter.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.text.font.AsyncFontListLoader", f = "FontListFontFamilyTypefaceAdapter.kt", i = {0, 0, 0, 1, 1}, l = {281, 295}, m = "load", n = {"$this$fastForEach$iv", "font", "index$iv", "$this$fastForEach$iv", "index$iv"}, s = {"L$0", "L$1", "I$0", "L$0", "I$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AsyncFontListLoader.this.load(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AsyncFontListLoader(List<? extends Font> list, Object initialType, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, Function1<? super TypefaceResult.Immutable, Unit> function1, PlatformFontLoader platformFontLoader) {
        this.fontList = list;
        this.typefaceRequest = typefaceRequest;
        this.asyncTypefaceCache = asyncTypefaceCache;
        this.onCompletion = function1;
        this.platformFontLoader = platformFontLoader;
        this.value = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(initialType, null, 2, null);
    }

    private void setValue(Object obj) {
        MutableState $this$setValue$iv = this.value;
        $this$setValue$iv.setValue(obj);
    }

    @Override // androidx.compose.runtime.State
    public Object getValue() {
        State $this$getValue$iv = this.value;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: renamed from: getCacheable$ui_text, reason: from getter */
    public final boolean getCacheable() {
        return this.cacheable;
    }

    public final void setCacheable$ui_text(boolean z) {
        this.cacheable = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c9 A[Catch: all -> 0x011f, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x011f, blocks: (B:30:0x00c9, B:37:0x0104), top: B:64:0x0104 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.text.font.AsyncFontListLoader] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [androidx.compose.ui.text.font.AsyncFontListLoader] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.ui.text.font.AsyncFontListLoader] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0116 -> B:41:0x0119). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0123 -> B:45:0x0129). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object load(Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        AnonymousClass1 anonymousClass12;
        List<Font> list;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Font font;
        List<Font> list2;
        int i6;
        ?? r8;
        Object obj;
        ?? r5;
        List<Font> list3;
        Font font2;
        ?? r52;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        AnonymousClass1 anonymousClass13 = anonymousClass1;
        Object obj2 = anonymousClass13.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r53 = anonymousClass13.label;
        try {
        } catch (Throwable th) {
            th = th;
        }
        switch (r53) {
            case 0:
                ResultKt.throwOnFailure(obj2);
                AsyncFontListLoader asyncFontListLoader = this;
                List<Font> list4 = asyncFontListLoader.fontList;
                int size = list4.size();
                anonymousClass12 = anonymousClass13;
                list = list4;
                i = 0;
                i2 = 0;
                i3 = size;
                r53 = asyncFontListLoader;
                if (i2 >= i3) {
                    try {
                        font2 = list.get(i2);
                    } catch (Throwable th2) {
                        th = th2;
                        anonymousClass13 = anonymousClass12;
                    }
                    if (FontLoadingStrategy.m7027equalsimpl0(font2.getLoadingStrategy(), FontLoadingStrategy.INSTANCE.m7031getAsyncPKNRLFQ())) {
                        AsyncTypefaceCache asyncTypefaceCache = r53.asyncTypefaceCache;
                        PlatformFontLoader platformFontLoader = r53.platformFontLoader;
                        AsyncFontListLoader$load$2$typeface$1 asyncFontListLoader$load$2$typeface$1 = new AsyncFontListLoader$load$2$typeface$1(r53, font2, null);
                        anonymousClass12.L$0 = list;
                        anonymousClass12.L$1 = font2;
                        anonymousClass12.I$0 = i2;
                        anonymousClass12.I$1 = i3;
                        anonymousClass12.label = 1;
                        int i7 = i3;
                        int i8 = i2;
                        Object objRunCached = asyncTypefaceCache.runCached(font2, platformFontLoader, false, asyncFontListLoader$load$2$typeface$1, anonymousClass12);
                        if (objRunCached == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        AnonymousClass1 anonymousClass14 = anonymousClass12;
                        list2 = list;
                        anonymousClass13 = anonymousClass14;
                        i5 = i8;
                        font = font2;
                        i6 = i;
                        i4 = i7;
                        r8 = r53;
                        obj = obj2;
                        obj2 = objRunCached;
                        if (obj2 == null) {
                            r8.setValue(FontSynthesis_androidKt.m7062synthesizeTypefaceFxwP2eA(r8.typefaceRequest.m7087getFontSynthesisGVVA2EU(), obj2, font, r8.typefaceRequest.getFontWeight(), r8.typefaceRequest.m7086getFontStyle_LCdwA()));
                            Unit unit = Unit.INSTANCE;
                            boolean zIsActive = JobKt.isActive(anonymousClass13.get$context());
                            r8.cacheable = false;
                            r8.onCompletion.invoke(new TypefaceResult.Immutable(r8.getValue(), zIsActive));
                            return unit;
                        }
                        try {
                            anonymousClass13.L$0 = list2;
                            anonymousClass13.L$1 = null;
                            anonymousClass13.I$0 = i5;
                            anonymousClass13.I$1 = i4;
                            anonymousClass13.label = 2;
                            if (YieldKt.yield(anonymousClass13) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj2 = obj;
                            r5 = r8;
                            list3 = list2;
                            anonymousClass12 = anonymousClass13;
                            i = i6;
                            i3 = i4;
                            i2 = i5;
                            list = list3;
                            r52 = r5;
                            i2++;
                            r53 = r52;
                            if (i2 >= i3) {
                                boolean zIsActive2 = JobKt.isActive(anonymousClass12.get$context());
                                r53.cacheable = false;
                                r53.onCompletion.invoke(new TypefaceResult.Immutable(r53.getValue(), zIsActive2));
                                return Unit.INSTANCE;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            r53 = r8;
                        }
                        th = th3;
                        r53 = r8;
                        boolean zIsActive3 = JobKt.isActive(anonymousClass13.get$context());
                        r53.cacheable = false;
                        r53.onCompletion.invoke(new TypefaceResult.Immutable(r53.getValue(), zIsActive3));
                        throw th;
                    }
                    i3 = i3;
                    r52 = r53;
                    i2++;
                    r53 = r52;
                    if (i2 >= i3) {
                    }
                    break;
                }
                break;
            case 1:
                i4 = anonymousClass13.I$1;
                i5 = anonymousClass13.I$0;
                font = (Font) anonymousClass13.L$1;
                list2 = (List) anonymousClass13.L$0;
                ResultKt.throwOnFailure(obj2);
                i6 = 0;
                r8 = this;
                obj = obj2;
                if (obj2 == null) {
                }
                th = th3;
                r53 = r8;
                boolean zIsActive32 = JobKt.isActive(anonymousClass13.get$context());
                r53.cacheable = false;
                r53.onCompletion.invoke(new TypefaceResult.Immutable(r53.getValue(), zIsActive32));
                throw th;
            case 2:
                r5 = this;
                i6 = 0;
                i4 = anonymousClass13.I$1;
                i5 = anonymousClass13.I$0;
                list3 = (List) anonymousClass13.L$0;
                ResultKt.throwOnFailure(obj2);
                anonymousClass12 = anonymousClass13;
                i = i6;
                i3 = i4;
                i2 = i5;
                list = list3;
                r52 = r5;
                i2++;
                r53 = r52;
                if (i2 >= i3) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object loadWithTimeoutOrNull$ui_text(Font $this$loadWithTimeoutOrNull, Continuation<Object> continuation) {
        AsyncFontListLoader$loadWithTimeoutOrNull$1 asyncFontListLoader$loadWithTimeoutOrNull$1;
        if (continuation instanceof AsyncFontListLoader$loadWithTimeoutOrNull$1) {
            asyncFontListLoader$loadWithTimeoutOrNull$1 = (AsyncFontListLoader$loadWithTimeoutOrNull$1) continuation;
            if ((asyncFontListLoader$loadWithTimeoutOrNull$1.label & Integer.MIN_VALUE) != 0) {
                asyncFontListLoader$loadWithTimeoutOrNull$1.label -= Integer.MIN_VALUE;
            } else {
                asyncFontListLoader$loadWithTimeoutOrNull$1 = new AsyncFontListLoader$loadWithTimeoutOrNull$1(this, continuation);
            }
        }
        Object $result = asyncFontListLoader$loadWithTimeoutOrNull$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Object objWithTimeoutOrNull = null;
        try {
            switch (asyncFontListLoader$loadWithTimeoutOrNull$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    AsyncFontListLoader$loadWithTimeoutOrNull$2 asyncFontListLoader$loadWithTimeoutOrNull$2 = new AsyncFontListLoader$loadWithTimeoutOrNull$2(this, $this$loadWithTimeoutOrNull, null);
                    asyncFontListLoader$loadWithTimeoutOrNull$1.L$0 = $this$loadWithTimeoutOrNull;
                    asyncFontListLoader$loadWithTimeoutOrNull$1.label = 1;
                    objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(15000L, asyncFontListLoader$loadWithTimeoutOrNull$2, asyncFontListLoader$loadWithTimeoutOrNull$1);
                    if (objWithTimeoutOrNull == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    $this$loadWithTimeoutOrNull = (Font) asyncFontListLoader$loadWithTimeoutOrNull$1.L$0;
                    ResultKt.throwOnFailure($result);
                    objWithTimeoutOrNull = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (CancellationException cancel) {
            if (!JobKt.isActive(asyncFontListLoader$loadWithTimeoutOrNull$1.get$context())) {
                throw cancel;
            }
        } catch (Exception uncaughtFontLoadException) {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) asyncFontListLoader$loadWithTimeoutOrNull$1.get$context().get(CoroutineExceptionHandler.INSTANCE);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(asyncFontListLoader$loadWithTimeoutOrNull$1.get$context(), new IllegalStateException("Unable to load font " + $this$loadWithTimeoutOrNull, uncaughtFontLoadException));
            }
        }
        return objWithTimeoutOrNull;
    }
}
