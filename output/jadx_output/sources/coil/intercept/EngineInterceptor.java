package coil.intercept;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.media3.extractor.ts.TsExtractor;
import coil.ComponentRegistry;
import coil.EventListener;
import coil.ImageLoader;
import coil.decode.DataSource;
import coil.decode.DecodeResult;
import coil.decode.Decoder;
import coil.decode.FileImageSource;
import coil.decode.ImageSource;
import coil.fetch.DrawableResult;
import coil.fetch.FetchResult;
import coil.fetch.Fetcher;
import coil.fetch.SourceResult;
import coil.intercept.Interceptor;
import coil.memory.MemoryCache;
import coil.memory.MemoryCacheService;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import coil.request.Options;
import coil.request.RequestService;
import coil.request.SuccessResult;
import coil.size.Scale;
import coil.size.Size;
import coil.transform.Transformation;
import coil.util.Bitmaps;
import coil.util.DrawableUtils;
import coil.util.Logger;
import coil.util.SystemCallbacks;
import coil.util.Utils;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: EngineInterceptor.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 42\u00020\u0001:\u000234B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0012J.\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010\u001dJ6\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010#J>\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010'J0\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0081@¢\u0006\u0004\b*\u0010+J&\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u0010\"\u001a\u00020\u001a2\f\u00100\u001a\b\u0012\u0004\u0012\u00020201H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcoil/intercept/EngineInterceptor;", "Lcoil/intercept/Interceptor;", "imageLoader", "Lcoil/ImageLoader;", "systemCallbacks", "Lcoil/util/SystemCallbacks;", "requestService", "Lcoil/request/RequestService;", "logger", "Lcoil/util/Logger;", "<init>", "(Lcoil/ImageLoader;Lcoil/util/SystemCallbacks;Lcoil/request/RequestService;Lcoil/util/Logger;)V", "memoryCacheService", "Lcoil/memory/MemoryCacheService;", "intercept", "Lcoil/request/ImageResult;", "chain", "Lcoil/intercept/Interceptor$Chain;", "(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "execute", "Lcoil/intercept/EngineInterceptor$ExecuteResult;", "request", "Lcoil/request/ImageRequest;", "mappedData", "", "_options", "Lcoil/request/Options;", "eventListener", "Lcoil/EventListener;", "(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetch", "Lcoil/fetch/FetchResult;", "components", "Lcoil/ComponentRegistry;", "options", "(Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "decode", "fetchResult", "Lcoil/fetch/SourceResult;", "(Lcoil/fetch/SourceResult;Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "transform", "result", "transform$coil_base_release", "(Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/ImageRequest;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "convertDrawableToBitmap", "Landroid/graphics/Bitmap;", "drawable", "Landroid/graphics/drawable/Drawable;", "transformations", "", "Lcoil/transform/Transformation;", "ExecuteResult", "Companion", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EngineInterceptor implements Interceptor {
    private static final String TAG = "EngineInterceptor";
    private final ImageLoader imageLoader;
    private final Logger logger;
    private final MemoryCacheService memoryCacheService;
    private final RequestService requestService;
    private final SystemCallbacks systemCallbacks;

    /* JADX INFO: renamed from: coil.intercept.EngineInterceptor$decode$1, reason: invalid class name */
    /* JADX INFO: compiled from: EngineInterceptor.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0}, l = {203}, m = "decode", n = {"this", "fetchResult", "components", "request", "mappedData", "options", "eventListener", "decoder", "searchIndex"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EngineInterceptor.this.decode(null, null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: coil.intercept.EngineInterceptor$execute$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EngineInterceptor.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1}, l = {WebSocketProtocol.PAYLOAD_SHORT, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 148}, m = "execute", n = {"this", "request", "mappedData", "eventListener", "options", "components", "fetchResult", "this", "request", "eventListener", "options", "fetchResult"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C06901 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        C06901(Continuation<? super C06901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EngineInterceptor.this.execute(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: coil.intercept.EngineInterceptor$fetch$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EngineInterceptor.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", i = {0, 0, 0, 0, 0, 0, 0, 0}, l = {169}, m = "fetch", n = {"this", "components", "request", "mappedData", "options", "eventListener", "fetcher", "searchIndex"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0"})
    static final class C06911 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        C06911(Continuation<? super C06911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EngineInterceptor.this.fetch(null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: coil.intercept.EngineInterceptor$intercept$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EngineInterceptor.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", i = {0, 0}, l = {75}, m = "intercept", n = {"this", "chain"}, s = {"L$0", "L$1"})
    static final class C06921 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06921(Continuation<? super C06921> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EngineInterceptor.this.intercept(null, this);
        }
    }

    public EngineInterceptor(ImageLoader imageLoader, SystemCallbacks systemCallbacks, RequestService requestService, Logger logger) {
        this.imageLoader = imageLoader;
        this.systemCallbacks = systemCallbacks;
        this.requestService = requestService;
        this.logger = logger;
        this.memoryCacheService = new MemoryCacheService(this.imageLoader, this.requestService, this.logger);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // coil.intercept.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object intercept(Interceptor.Chain chain, Continuation<? super ImageResult> continuation) throws Throwable {
        C06921 c06921;
        EngineInterceptor engineInterceptor;
        Interceptor.Chain chain2;
        if (continuation instanceof C06921) {
            c06921 = (C06921) continuation;
            if ((c06921.label & Integer.MIN_VALUE) != 0) {
                c06921.label -= Integer.MIN_VALUE;
            } else {
                c06921 = new C06921(continuation);
            }
        }
        C06921 c069212 = c06921;
        Object $result = c069212.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c069212.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    ImageRequest request = chain.getRequest();
                    Object data = request.getData();
                    Size size = chain.getSize();
                    EventListener eventListener = Utils.getEventListener(chain);
                    Options options = this.requestService.options(request, size);
                    Scale scale = options.getScale();
                    eventListener.mapStart(request, data);
                    Object mappedData = this.imageLoader.getComponents().map(data, options);
                    eventListener.mapEnd(request, mappedData);
                    MemoryCache.Key cacheKey = this.memoryCacheService.newCacheKey(request, mappedData, options, eventListener);
                    MemoryCache.Value cacheValue = cacheKey != null ? this.memoryCacheService.getCacheValue(request, cacheKey, size, scale) : null;
                    if (cacheValue != null) {
                        return this.memoryCacheService.newResult(chain, request, cacheKey, cacheValue);
                    }
                    CoroutineDispatcher fetcherDispatcher = request.getFetcherDispatcher();
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(request, mappedData, options, eventListener, cacheKey, chain, null);
                    c069212.L$0 = this;
                    c069212.L$1 = chain;
                    c069212.label = 1;
                    Object objWithContext = BuildersKt.withContext(fetcherDispatcher, anonymousClass2, c069212);
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objWithContext;
                } catch (Throwable th) {
                    throwable = th;
                    engineInterceptor = this;
                    chain2 = chain;
                }
                break;
            case 1:
                chain2 = (Interceptor.Chain) c069212.L$1;
                engineInterceptor = (EngineInterceptor) c069212.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    return $result;
                } catch (Throwable th2) {
                    throwable = th2;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (throwable instanceof CancellationException) {
            throw throwable;
        }
        return engineInterceptor.requestService.errorResult(chain2.getRequest(), throwable);
    }

    /* JADX INFO: renamed from: coil.intercept.EngineInterceptor$intercept$2, reason: invalid class name */
    /* JADX INFO: compiled from: EngineInterceptor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil/request/SuccessResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", i = {}, l = {77}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SuccessResult>, Object> {
        final /* synthetic */ MemoryCache.Key $cacheKey;
        final /* synthetic */ Interceptor.Chain $chain;
        final /* synthetic */ EventListener $eventListener;
        final /* synthetic */ Object $mappedData;
        final /* synthetic */ Options $options;
        final /* synthetic */ ImageRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, MemoryCache.Key key, Interceptor.Chain chain, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$request = imageRequest;
            this.$mappedData = obj;
            this.$options = options;
            this.$eventListener = eventListener;
            this.$cacheKey = key;
            this.$chain = chain;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EngineInterceptor.this.new AnonymousClass2(this.$request, this.$mappedData, this.$options, this.$eventListener, this.$cacheKey, this.$chain, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super SuccessResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) throws Throwable {
            AnonymousClass2 anonymousClass2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    anonymousClass2 = this;
                    anonymousClass2.label = 1;
                    Object objExecute = EngineInterceptor.this.execute(anonymousClass2.$request, anonymousClass2.$mappedData, anonymousClass2.$options, anonymousClass2.$eventListener, anonymousClass2);
                    if (objExecute == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objExecute;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    anonymousClass2 = this;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ExecuteResult result = (ExecuteResult) $result;
            EngineInterceptor.this.systemCallbacks.registerMemoryPressureCallbacks();
            boolean isCached = EngineInterceptor.this.memoryCacheService.setCacheValue(anonymousClass2.$cacheKey, anonymousClass2.$request, result);
            Drawable drawable = result.getDrawable();
            ImageRequest imageRequest = anonymousClass2.$request;
            DataSource dataSource = result.getDataSource();
            MemoryCache.Key key = anonymousClass2.$cacheKey;
            if (!(isCached)) {
                key = null;
            }
            return new SuccessResult(drawable, imageRequest, dataSource, key, result.getDiskCacheKey(), result.getIsSampled(), Utils.isPlaceholderCached(anonymousClass2.$chain));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00db A[Catch: all -> 0x023d, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x023d, blocks: (B:24:0x00bc, B:42:0x0112, B:31:0x00db, B:35:0x00f6, B:41:0x010c), top: B:122:0x00bc }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0150 A[Catch: all -> 0x0235, TRY_LEAVE, TryCatch #3 {all -> 0x0235, blocks: (B:48:0x0146, B:50:0x0150), top: B:112:0x0146 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x019e A[Catch: all -> 0x0194, TryCatch #1 {all -> 0x0194, blocks: (B:57:0x0188, B:54:0x0169, B:62:0x019e, B:64:0x01ab), top: B:109:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0222  */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, coil.ComponentRegistry] */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v20, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r7v3, types: [T, coil.ComponentRegistry] */
    /* JADX WARN: Type inference failed for: r7v6, types: [T, coil.request.Options] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object execute(ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, Continuation<? super ExecuteResult> continuation) throws Throwable {
        C06901 c06901;
        Object obj2;
        SourceResult sourceResult;
        ImageSource source;
        C06901 c069012;
        Object objFetch;
        EngineInterceptor engineInterceptor;
        ImageRequest imageRequest2;
        Object obj3;
        EventListener eventListener2;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        ComponentRegistry.Builder builder;
        T t;
        FetchResult fetchResult;
        ExecuteResult executeResult;
        Ref.ObjectRef objectRef5;
        EngineInterceptor engineInterceptor2;
        EventListener eventListener3;
        ImageRequest imageRequest3;
        EngineInterceptor engineInterceptor3;
        EventListener eventListener4;
        Object objWithContext;
        Ref.ObjectRef objectRef6;
        SourceResult sourceResult2;
        BitmapDrawable bitmapDrawable;
        Object objTransform$coil_base_release;
        ImageSource source2;
        ImageRequest imageRequest4;
        Ref.ObjectRef objectRef7;
        ?? r3;
        BitmapDrawable bitmapDrawable2;
        Bitmap bitmap;
        if (continuation instanceof C06901) {
            c06901 = (C06901) continuation;
            if ((c06901.label & Integer.MIN_VALUE) != 0) {
                c06901.label -= Integer.MIN_VALUE;
            } else {
                c06901 = new C06901(continuation);
            }
        }
        C06901 c069013 = c06901;
        Object obj4 = c069013.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Ref.ObjectRef objectRef8 = c069013.label;
        try {
        } catch (Throwable th) {
            th = th;
            obj2 = null;
        }
        switch (objectRef8) {
            case 0:
                ResultKt.throwOnFailure(obj4);
                Ref.ObjectRef objectRef9 = new Ref.ObjectRef();
                objectRef9.element = options;
                Ref.ObjectRef objectRef10 = new Ref.ObjectRef();
                objectRef10.element = this.imageLoader.getComponents();
                Ref.ObjectRef objectRef11 = new Ref.ObjectRef();
                try {
                    objectRef9.element = this.requestService.updateOptionsOnWorkerThread((Options) objectRef9.element);
                } catch (Throwable th2) {
                    th = th2;
                    obj2 = null;
                    objectRef8 = objectRef11;
                }
                if (imageRequest.getFetcherFactory() == null) {
                    try {
                        if (imageRequest.getDecoderFactory() != null) {
                            ComponentRegistry.Builder builderNewBuilder = ((ComponentRegistry) objectRef10.element).newBuilder();
                            Pair<Fetcher.Factory<?>, Class<?>> fetcherFactory = imageRequest.getFetcherFactory();
                            if (fetcherFactory != null) {
                                builderNewBuilder.getFetcherFactories$coil_base_release().add(0, fetcherFactory);
                            }
                            Decoder.Factory decoderFactory = imageRequest.getDecoderFactory();
                            if (decoderFactory != null) {
                                builder = builderNewBuilder;
                                builderNewBuilder.getDecoderFactories$coil_base_release().add(0, decoderFactory);
                            } else {
                                builder = builderNewBuilder;
                            }
                            objectRef10.element = builder.build();
                        }
                        ComponentRegistry componentRegistry = (ComponentRegistry) objectRef10.element;
                        Options options2 = (Options) objectRef9.element;
                        c069013.L$0 = this;
                        c069013.L$1 = imageRequest;
                        c069013.L$2 = obj;
                        c069013.L$3 = eventListener;
                        c069013.L$4 = objectRef9;
                        c069013.L$5 = objectRef10;
                        c069013.L$6 = objectRef11;
                        c069013.L$7 = objectRef11;
                        c069013.label = 1;
                        c069012 = c069013;
                        try {
                            objFetch = fetch(componentRegistry, imageRequest, obj, options2, eventListener, c069012);
                        } catch (Throwable th3) {
                            th = th3;
                            obj2 = null;
                            objectRef8 = objectRef11;
                        }
                        break;
                    } catch (Throwable th4) {
                        th = th4;
                        objectRef8 = objectRef11;
                        obj2 = null;
                    }
                    if (objFetch == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    engineInterceptor = this;
                    imageRequest2 = imageRequest;
                    obj3 = obj;
                    eventListener2 = eventListener;
                    objectRef = objectRef9;
                    objectRef2 = objectRef10;
                    objectRef3 = objectRef11;
                    objectRef4 = objectRef3;
                    t = objFetch;
                    obj2 = objectRef9;
                    try {
                        objectRef3.element = t;
                        fetchResult = (FetchResult) objectRef4.element;
                        if (fetchResult instanceof SourceResult) {
                            objectRef8 = objectRef4;
                            EngineInterceptor engineInterceptor4 = engineInterceptor;
                            ImageRequest imageRequest5 = imageRequest2;
                            Ref.ObjectRef objectRef12 = objectRef;
                            EventListener eventListener5 = eventListener2;
                            try {
                                if (!(fetchResult instanceof DrawableResult)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                executeResult = new ExecuteResult(((DrawableResult) objectRef8.element).getDrawable(), ((DrawableResult) objectRef8.element).getIsSampled(), ((DrawableResult) objectRef8.element).getDataSource(), null);
                                objectRef5 = objectRef12;
                                engineInterceptor2 = engineInterceptor4;
                                eventListener3 = eventListener5;
                                imageRequest3 = imageRequest5;
                                objectRef6 = objectRef8;
                                T t2 = objectRef6.element;
                                if (t2 instanceof SourceResult) {
                                }
                                if (sourceResult2 != null) {
                                    Utils.closeQuietly(source2);
                                }
                                Options options3 = (Options) objectRef5.element;
                                bitmapDrawable = null;
                                c069012.L$0 = null;
                                c069012.L$1 = null;
                                c069012.L$2 = null;
                                c069012.L$3 = null;
                                c069012.L$4 = null;
                                c069012.L$5 = null;
                                c069012.L$6 = null;
                                c069012.L$7 = null;
                                c069012.label = 3;
                                objTransform$coil_base_release = engineInterceptor2.transform$coil_base_release(executeResult, imageRequest3, options3, eventListener3, c069012);
                                if (objTransform$coil_base_release == coroutine_suspended) {
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        } else {
                            CoroutineDispatcher decoderDispatcher = imageRequest2.getDecoderDispatcher();
                            Ref.ObjectRef objectRef13 = objectRef4;
                            try {
                                engineInterceptor3 = engineInterceptor;
                                Ref.ObjectRef objectRef14 = objectRef13;
                                ImageRequest imageRequest6 = imageRequest2;
                                Ref.ObjectRef objectRef15 = objectRef;
                                eventListener4 = eventListener2;
                                EngineInterceptor$execute$executeResult$1 engineInterceptor$execute$executeResult$1 = new EngineInterceptor$execute$executeResult$1(engineInterceptor, objectRef13, objectRef2, imageRequest2, obj3, objectRef, eventListener2, null);
                                c069012.L$0 = engineInterceptor3;
                                c069012.L$1 = imageRequest6;
                                c069012.L$2 = eventListener4;
                                c069012.L$3 = objectRef15;
                                c069012.L$4 = objectRef14;
                                c069012.L$5 = null;
                                c069012.L$6 = null;
                                c069012.L$7 = null;
                                c069012.label = 2;
                                objWithContext = BuildersKt.withContext(decoderDispatcher, engineInterceptor$execute$executeResult$1, c069012);
                                r3 = objectRef14;
                                objectRef7 = objectRef15;
                                imageRequest4 = imageRequest6;
                                if (objWithContext == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                Ref.ObjectRef objectRef16 = objectRef7;
                                executeResult = (ExecuteResult) objWithContext;
                                objectRef5 = objectRef16;
                                engineInterceptor2 = engineInterceptor3;
                                eventListener3 = eventListener4;
                                imageRequest3 = imageRequest4;
                                objectRef6 = r3;
                                T t22 = objectRef6.element;
                                sourceResult2 = t22 instanceof SourceResult ? (SourceResult) t22 : null;
                                if (sourceResult2 != null && (source2 = sourceResult2.getSource()) != null) {
                                    Utils.closeQuietly(source2);
                                }
                                Options options32 = (Options) objectRef5.element;
                                bitmapDrawable = null;
                                c069012.L$0 = null;
                                c069012.L$1 = null;
                                c069012.L$2 = null;
                                c069012.L$3 = null;
                                c069012.L$4 = null;
                                c069012.L$5 = null;
                                c069012.L$6 = null;
                                c069012.L$7 = null;
                                c069012.label = 3;
                                objTransform$coil_base_release = engineInterceptor2.transform$coil_base_release(executeResult, imageRequest3, options32, eventListener3, c069012);
                                if (objTransform$coil_base_release == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                objectRef8 = objectRef13;
                                obj2 = null;
                            }
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        objectRef8 = objectRef4;
                        obj2 = null;
                    }
                    T t3 = objectRef8.element;
                    sourceResult = !(t3 instanceof SourceResult) ? (SourceResult) t3 : obj2;
                    if (sourceResult != 0 && (source = sourceResult.getSource()) != null) {
                        Utils.closeQuietly(source);
                    }
                    throw th;
                }
                ExecuteResult executeResult2 = (ExecuteResult) objTransform$coil_base_release;
                Drawable drawable = executeResult2.getDrawable();
                bitmapDrawable2 = drawable instanceof BitmapDrawable ? (BitmapDrawable) drawable : bitmapDrawable;
                if (bitmapDrawable2 != null && (bitmap = bitmapDrawable2.getBitmap()) != null) {
                    bitmap.prepareToDraw();
                }
                return executeResult2;
            case 1:
                objectRef3 = (Ref.ObjectRef) c069013.L$7;
                objectRef4 = (Ref.ObjectRef) c069013.L$6;
                Ref.ObjectRef objectRef17 = (Ref.ObjectRef) c069013.L$5;
                Ref.ObjectRef objectRef18 = (Ref.ObjectRef) c069013.L$4;
                EventListener eventListener6 = (EventListener) c069013.L$3;
                Object obj5 = c069013.L$2;
                ImageRequest imageRequest7 = (ImageRequest) c069013.L$1;
                EngineInterceptor engineInterceptor5 = (EngineInterceptor) c069013.L$0;
                try {
                    ResultKt.throwOnFailure(obj4);
                    objectRef2 = objectRef17;
                    objectRef = objectRef18;
                    eventListener2 = eventListener6;
                    obj3 = obj5;
                    t = obj4;
                    imageRequest2 = imageRequest7;
                    engineInterceptor = engineInterceptor5;
                    c069012 = c069013;
                    obj2 = imageRequest7;
                    objectRef3.element = t;
                    fetchResult = (FetchResult) objectRef4.element;
                    if (fetchResult instanceof SourceResult) {
                    }
                } catch (Throwable th8) {
                    th = th8;
                    objectRef8 = objectRef4;
                    obj2 = null;
                }
                T t32 = objectRef8.element;
                if (!(t32 instanceof SourceResult)) {
                }
                if (sourceResult != 0) {
                    Utils.closeQuietly(source);
                }
                throw th;
            case 2:
                objectRef8 = (Ref.ObjectRef) c069013.L$4;
                Ref.ObjectRef objectRef19 = (Ref.ObjectRef) c069013.L$3;
                eventListener4 = (EventListener) c069013.L$2;
                ImageRequest imageRequest8 = (ImageRequest) c069013.L$1;
                engineInterceptor3 = (EngineInterceptor) c069013.L$0;
                try {
                    ResultKt.throwOnFailure(obj4);
                    c069012 = c069013;
                    objWithContext = obj4;
                    r3 = objectRef8;
                    objectRef7 = objectRef19;
                    imageRequest4 = imageRequest8;
                    Ref.ObjectRef objectRef162 = objectRef7;
                    executeResult = (ExecuteResult) objWithContext;
                    objectRef5 = objectRef162;
                    engineInterceptor2 = engineInterceptor3;
                    eventListener3 = eventListener4;
                    imageRequest3 = imageRequest4;
                    objectRef6 = r3;
                    T t222 = objectRef6.element;
                    if (t222 instanceof SourceResult) {
                    }
                    if (sourceResult2 != null) {
                    }
                    Options options322 = (Options) objectRef5.element;
                    bitmapDrawable = null;
                    c069012.L$0 = null;
                    c069012.L$1 = null;
                    c069012.L$2 = null;
                    c069012.L$3 = null;
                    c069012.L$4 = null;
                    c069012.L$5 = null;
                    c069012.L$6 = null;
                    c069012.L$7 = null;
                    c069012.label = 3;
                    objTransform$coil_base_release = engineInterceptor2.transform$coil_base_release(executeResult, imageRequest3, options322, eventListener3, c069012);
                    if (objTransform$coil_base_release == coroutine_suspended) {
                    }
                    ExecuteResult executeResult22 = (ExecuteResult) objTransform$coil_base_release;
                    Drawable drawable2 = executeResult22.getDrawable();
                    if (drawable2 instanceof BitmapDrawable) {
                    }
                    if (bitmapDrawable2 != null) {
                        bitmap.prepareToDraw();
                    }
                    return executeResult22;
                } catch (Throwable th9) {
                    th = th9;
                    obj2 = null;
                }
                break;
            case 3:
                ResultKt.throwOnFailure(obj4);
                objTransform$coil_base_release = obj4;
                bitmapDrawable = null;
                ExecuteResult executeResult222 = (ExecuteResult) objTransform$coil_base_release;
                Drawable drawable22 = executeResult222.getDrawable();
                if (drawable22 instanceof BitmapDrawable) {
                }
                if (bitmapDrawable2 != null) {
                }
                return executeResult222;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00a7 -> B:20:0x00ae). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object fetch(ComponentRegistry components, ImageRequest request, Object obj, Options options, EventListener eventListener, Continuation<? super FetchResult> continuation) {
        C06911 c06911;
        Object mappedData;
        EngineInterceptor engineInterceptor;
        int searchIndex;
        ComponentRegistry components2;
        Options options2;
        EventListener eventListener2;
        ImageRequest request2;
        Fetcher fetcher;
        Object objFetch;
        Continuation<? super FetchResult> continuation2;
        Object obj2;
        Object $result;
        C06911 c069112;
        FetchResult result;
        ImageSource source;
        Continuation<? super FetchResult> continuation3 = continuation;
        if (continuation3 instanceof C06911) {
            c06911 = (C06911) continuation3;
            if ((c06911.label & Integer.MIN_VALUE) != 0) {
                c06911.label -= Integer.MIN_VALUE;
            } else {
                c06911 = new C06911(continuation3);
            }
        }
        Object $result2 = c06911.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c06911.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                mappedData = obj;
                engineInterceptor = this;
                searchIndex = 0;
                components2 = components;
                options2 = options;
                eventListener2 = eventListener;
                request2 = request;
                Pair<Fetcher, Integer> pairNewFetcher = components2.newFetcher(mappedData, options2, engineInterceptor.imageLoader, searchIndex);
                if (pairNewFetcher == null) {
                    fetcher = pairNewFetcher.getFirst();
                    searchIndex = pairNewFetcher.getSecond().intValue() + 1;
                    eventListener2.fetchStart(request2, fetcher, options2);
                    c06911.L$0 = engineInterceptor;
                    c06911.L$1 = components2;
                    c06911.L$2 = request2;
                    c06911.L$3 = mappedData;
                    c06911.L$4 = options2;
                    c06911.L$5 = eventListener2;
                    c06911.L$6 = fetcher;
                    c06911.I$0 = searchIndex;
                    c06911.label = 1;
                    objFetch = fetcher.fetch(c06911);
                    if (objFetch == $result3) {
                        return $result3;
                    }
                    try {
                        C06911 c069113 = c06911;
                        continuation2 = continuation3;
                        obj2 = $result3;
                        $result = $result2;
                        c069112 = c069113;
                        eventListener2.fetchEnd(request2, fetcher, options2, result);
                        if (result != null) {
                            Object obj3 = $result;
                            $result3 = obj2;
                            continuation3 = continuation2;
                            c06911 = c069112;
                            $result2 = obj3;
                            Pair<Fetcher, Integer> pairNewFetcher2 = components2.newFetcher(mappedData, options2, engineInterceptor.imageLoader, searchIndex);
                            if (pairNewFetcher2 == null) {
                                throw new IllegalStateException(("Unable to create a fetcher that supports: " + mappedData).toString());
                            }
                        } else {
                            return result;
                        }
                    } catch (Throwable throwable) {
                        SourceResult sourceResult = result instanceof SourceResult ? (SourceResult) result : null;
                        if (sourceResult != null && (source = sourceResult.getSource()) != null) {
                            Utils.closeQuietly(source);
                        }
                        throw throwable;
                    }
                    result = (FetchResult) objFetch;
                }
                break;
            case 1:
                searchIndex = c06911.I$0;
                Fetcher fetcher2 = (Fetcher) c06911.L$6;
                eventListener2 = (EventListener) c06911.L$5;
                options2 = (Options) c06911.L$4;
                mappedData = c06911.L$3;
                request2 = (ImageRequest) c06911.L$2;
                components2 = (ComponentRegistry) c06911.L$1;
                engineInterceptor = (EngineInterceptor) c06911.L$0;
                ResultKt.throwOnFailure($result2);
                fetcher = fetcher2;
                objFetch = $result2;
                c069112 = c06911;
                continuation2 = continuation3;
                obj2 = $result3;
                $result = objFetch;
                result = (FetchResult) objFetch;
                eventListener2.fetchEnd(request2, fetcher, options2, result);
                if (result != null) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00af -> B:20:0x00b5). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object decode(SourceResult fetchResult, ComponentRegistry components, ImageRequest imageRequest, Object mappedData, Options options, EventListener eventListener, Continuation<? super ExecuteResult> continuation) {
        AnonymousClass1 anonymousClass1;
        EventListener eventListener2;
        ImageRequest request;
        EngineInterceptor engineInterceptor;
        SourceResult fetchResult2;
        Object mappedData2;
        Options options2;
        ComponentRegistry components2;
        Decoder decoder;
        int searchIndex;
        Object obj;
        Object $result;
        DecodeResult result;
        Continuation<? super ExecuteResult> continuation2 = continuation;
        if (continuation2 instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation2;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation2);
            }
        }
        Object $result2 = anonymousClass1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                eventListener2 = eventListener;
                request = imageRequest;
                engineInterceptor = this;
                int searchIndex2 = 0;
                fetchResult2 = fetchResult;
                mappedData2 = mappedData;
                options2 = options;
                components2 = components;
                Pair<Decoder, Integer> pairNewDecoder = components2.newDecoder(fetchResult2, options2, engineInterceptor.imageLoader, searchIndex2);
                if (pairNewDecoder == null) {
                    decoder = pairNewDecoder.getFirst();
                    Continuation<? super ExecuteResult> continuation3 = continuation2;
                    int searchIndex3 = pairNewDecoder.getSecond().intValue() + 1;
                    eventListener2.decodeStart(request, decoder, options2);
                    anonymousClass1.L$0 = engineInterceptor;
                    anonymousClass1.L$1 = fetchResult2;
                    anonymousClass1.L$2 = components2;
                    anonymousClass1.L$3 = request;
                    anonymousClass1.L$4 = mappedData2;
                    anonymousClass1.L$5 = options2;
                    anonymousClass1.L$6 = eventListener2;
                    anonymousClass1.L$7 = decoder;
                    anonymousClass1.I$0 = searchIndex3;
                    anonymousClass1.label = 1;
                    Object objDecode = decoder.decode(anonymousClass1);
                    if (objDecode == $result3) {
                        return $result3;
                    }
                    searchIndex = searchIndex3;
                    obj = $result3;
                    $result = $result2;
                    $result2 = objDecode;
                    continuation2 = continuation3;
                    result = (DecodeResult) $result2;
                    eventListener2.decodeEnd(request, decoder, options2, result);
                    if (result != null) {
                        $result2 = $result;
                        $result3 = obj;
                        searchIndex2 = searchIndex;
                        Pair<Decoder, Integer> pairNewDecoder2 = components2.newDecoder(fetchResult2, options2, engineInterceptor.imageLoader, searchIndex2);
                        if (pairNewDecoder2 == null) {
                            throw new IllegalStateException(("Unable to create a decoder that supports: " + mappedData2).toString());
                        }
                    } else {
                        Drawable drawable = result.getDrawable();
                        boolean isSampled = result.getIsSampled();
                        DataSource dataSource = fetchResult2.getDataSource();
                        ImageSource source = fetchResult2.getSource();
                        FileImageSource fileImageSource = source instanceof FileImageSource ? (FileImageSource) source : null;
                        return new ExecuteResult(drawable, isSampled, dataSource, fileImageSource != null ? fileImageSource.getDiskCacheKey() : null);
                    }
                }
                break;
            case 1:
                int searchIndex4 = anonymousClass1.I$0;
                Decoder decoder2 = (Decoder) anonymousClass1.L$7;
                eventListener2 = (EventListener) anonymousClass1.L$6;
                options2 = (Options) anonymousClass1.L$5;
                mappedData2 = anonymousClass1.L$4;
                request = (ImageRequest) anonymousClass1.L$3;
                components2 = (ComponentRegistry) anonymousClass1.L$2;
                fetchResult2 = (SourceResult) anonymousClass1.L$1;
                engineInterceptor = (EngineInterceptor) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result2);
                decoder = decoder2;
                searchIndex = searchIndex4;
                obj = $result3;
                $result = $result2;
                result = (DecodeResult) $result2;
                eventListener2.decodeEnd(request, decoder, options2, result);
                if (result != null) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Object transform$coil_base_release(ExecuteResult result, ImageRequest request, Options options, EventListener eventListener, Continuation<? super ExecuteResult> continuation) {
        List<Transformation> transformations = request.getTransformations();
        if (transformations.isEmpty()) {
            return result;
        }
        if (!(result.getDrawable() instanceof BitmapDrawable) && !request.getAllowConversionToBitmap()) {
            Logger $this$log$iv = this.logger;
            if ($this$log$iv != null && $this$log$iv.getLevel() <= 4) {
                String type = result.getDrawable().getClass().getCanonicalName();
                $this$log$iv.log(TAG, 4, "allowConversionToBitmap=false, skipping transformations for type " + type + '.', null);
            }
            return result;
        }
        return BuildersKt.withContext(request.getTransformationDispatcher(), new EngineInterceptor$transform$3(this, result, options, transformations, eventListener, request, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap convertDrawableToBitmap(Drawable drawable, Options options, List<? extends Transformation> transformations) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            Bitmap.Config config = Bitmaps.getSafeConfig(bitmap);
            if (ArraysKt.contains(Utils.getVALID_TRANSFORMATION_CONFIGS(), config)) {
                return bitmap;
            }
            Logger $this$log$iv = this.logger;
            if ($this$log$iv != null && $this$log$iv.getLevel() <= 4) {
                $this$log$iv.log(TAG, 4, "Converting bitmap with config " + config + " to apply transformations: " + transformations + '.', null);
            }
        } else {
            Logger $this$log$iv2 = this.logger;
            if ($this$log$iv2 != null && $this$log$iv2.getLevel() <= 4) {
                $this$log$iv2.log(TAG, 4, "Converting drawable of type " + drawable.getClass().getCanonicalName() + " to apply transformations: " + transformations + '.', null);
            }
        }
        return DrawableUtils.INSTANCE.convertToBitmap(drawable, options.getConfig(), options.getSize(), options.getScale(), options.getAllowInexactSize());
    }

    /* JADX INFO: compiled from: EngineInterceptor.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ0\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcoil/intercept/EngineInterceptor$ExecuteResult;", "", "drawable", "Landroid/graphics/drawable/Drawable;", "isSampled", "", "dataSource", "Lcoil/decode/DataSource;", "diskCacheKey", "", "<init>", "(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;)V", "getDrawable", "()Landroid/graphics/drawable/Drawable;", "()Z", "getDataSource", "()Lcoil/decode/DataSource;", "getDiskCacheKey", "()Ljava/lang/String;", "copy", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ExecuteResult {
        private final DataSource dataSource;
        private final String diskCacheKey;
        private final Drawable drawable;
        private final boolean isSampled;

        public ExecuteResult(Drawable drawable, boolean isSampled, DataSource dataSource, String diskCacheKey) {
            this.drawable = drawable;
            this.isSampled = isSampled;
            this.dataSource = dataSource;
            this.diskCacheKey = diskCacheKey;
        }

        public final Drawable getDrawable() {
            return this.drawable;
        }

        /* JADX INFO: renamed from: isSampled, reason: from getter */
        public final boolean getIsSampled() {
            return this.isSampled;
        }

        public final DataSource getDataSource() {
            return this.dataSource;
        }

        public final String getDiskCacheKey() {
            return this.diskCacheKey;
        }

        public static /* synthetic */ ExecuteResult copy$default(ExecuteResult executeResult, Drawable drawable, boolean z, DataSource dataSource, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                drawable = executeResult.drawable;
            }
            if ((i & 2) != 0) {
                z = executeResult.isSampled;
            }
            if ((i & 4) != 0) {
                dataSource = executeResult.dataSource;
            }
            if ((i & 8) != 0) {
                str = executeResult.diskCacheKey;
            }
            return executeResult.copy(drawable, z, dataSource, str);
        }

        public final ExecuteResult copy(Drawable drawable, boolean isSampled, DataSource dataSource, String diskCacheKey) {
            return new ExecuteResult(drawable, isSampled, dataSource, diskCacheKey);
        }
    }
}
