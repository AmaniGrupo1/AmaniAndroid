package coil;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.lifecycle.Lifecycle;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import coil.ComponentRegistry;
import coil.EventListener;
import coil.ImageLoader;
import coil.decode.BitmapFactoryDecoder;
import coil.decode.DataSource;
import coil.disk.DiskCache;
import coil.fetch.AssetUriFetcher;
import coil.fetch.BitmapFetcher;
import coil.fetch.ByteBufferFetcher;
import coil.fetch.ContentUriFetcher;
import coil.fetch.DrawableFetcher;
import coil.fetch.FileFetcher;
import coil.fetch.HttpUriFetcher;
import coil.fetch.ResourceUriFetcher;
import coil.intercept.EngineInterceptor;
import coil.intercept.Interceptor;
import coil.key.FileKeyer;
import coil.key.UriKeyer;
import coil.map.ByteArrayMapper;
import coil.map.FileUriMapper;
import coil.map.HttpUrlMapper;
import coil.map.ResourceIntMapper;
import coil.map.ResourceUriMapper;
import coil.map.StringMapper;
import coil.memory.MemoryCache;
import coil.request.DefaultRequestOptions;
import coil.request.Disposable;
import coil.request.ErrorResult;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import coil.request.NullRequestData;
import coil.request.NullRequestDataException;
import coil.request.OneShotDisposable;
import coil.request.RequestDelegate;
import coil.request.RequestService;
import coil.request.SuccessResult;
import coil.size.Size;
import coil.size.SizeResolver;
import coil.target.Target;
import coil.target.ViewTarget;
import coil.transition.NoneTransition;
import coil.transition.Transition;
import coil.transition.TransitionTarget;
import coil.util.ImageLoaderOptions;
import coil.util.Lifecycles;
import coil.util.Logger;
import coil.util.SystemCallbacks;
import coil.util.Utils;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.Call;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: RealImageLoader.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \\2\u00020\u0001:\u0001\\Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0016J\u0016\u0010A\u001a\u00020B2\u0006\u0010?\u001a\u00020@H\u0096@¢\u0006\u0002\u0010CJ\u001e\u0010D\u001a\u00020B2\u0006\u0010E\u001a\u00020@2\u0006\u0010F\u001a\u00020GH\u0083@¢\u0006\u0002\u0010HJ\u0015\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020GH\u0000¢\u0006\u0002\bLJ\b\u0010;\u001a\u00020JH\u0016J\b\u0010M\u001a\u00020NH\u0016J\"\u0010O\u001a\u00020J2\u0006\u0010P\u001a\u00020Q2\b\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020UH\u0002J\"\u0010V\u001a\u00020J2\u0006\u0010P\u001a\u00020W2\b\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020UH\u0002J\u0018\u0010X\u001a\u00020J2\u0006\u0010?\u001a\u00020@2\u0006\u0010T\u001a\u00020UH\u0002J1\u0010Y\u001a\u00020J2\u0006\u0010P\u001a\u00020B2\b\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020U2\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020J0[H\u0082\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001cR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u000e\u0010'\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010-\u001a\u0004\u0018\u00010\b8VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b0\u00101*\u0004\b.\u0010/R\u001d\u00102\u001a\u0004\u0018\u00010\n8VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b4\u00105*\u0004\b3\u0010/R\u0014\u00106\u001a\u00020\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\"R\u0014\u00108\u001a\b\u0012\u0004\u0012\u00020:09X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006]"}, d2 = {"Lcoil/RealImageLoader;", "Lcoil/ImageLoader;", "context", "Landroid/content/Context;", "defaults", "Lcoil/request/DefaultRequestOptions;", "memoryCacheLazy", "Lkotlin/Lazy;", "Lcoil/memory/MemoryCache;", "diskCacheLazy", "Lcoil/disk/DiskCache;", "callFactoryLazy", "Lokhttp3/Call$Factory;", "eventListenerFactory", "Lcoil/EventListener$Factory;", "componentRegistry", "Lcoil/ComponentRegistry;", "options", "Lcoil/util/ImageLoaderOptions;", "logger", "Lcoil/util/Logger;", "<init>", "(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;Lcoil/util/ImageLoaderOptions;Lcoil/util/Logger;)V", "getContext", "()Landroid/content/Context;", "getDefaults", "()Lcoil/request/DefaultRequestOptions;", "getMemoryCacheLazy", "()Lkotlin/Lazy;", "getDiskCacheLazy", "getCallFactoryLazy", "getEventListenerFactory", "()Lcoil/EventListener$Factory;", "getComponentRegistry", "()Lcoil/ComponentRegistry;", "getOptions", "()Lcoil/util/ImageLoaderOptions;", "getLogger", "()Lcoil/util/Logger;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "systemCallbacks", "Lcoil/util/SystemCallbacks;", "requestService", "Lcoil/request/RequestService;", "memoryCache", "getMemoryCache$delegate", "(Lcoil/RealImageLoader;)Ljava/lang/Object;", "getMemoryCache", "()Lcoil/memory/MemoryCache;", "diskCache", "getDiskCache$delegate", "getDiskCache", "()Lcoil/disk/DiskCache;", "components", "getComponents", "interceptors", "", "Lcoil/intercept/Interceptor;", "shutdown", "Ljava/util/concurrent/atomic/AtomicBoolean;", "enqueue", "Lcoil/request/Disposable;", "request", "Lcoil/request/ImageRequest;", "execute", "Lcoil/request/ImageResult;", "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeMain", "initialRequest", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onTrimMemory", "", "level", "onTrimMemory$coil_base_release", "newBuilder", "Lcoil/ImageLoader$Builder;", "onSuccess", "result", "Lcoil/request/SuccessResult;", "target", "Lcoil/target/Target;", "eventListener", "Lcoil/EventListener;", "onError", "Lcoil/request/ErrorResult;", "onCancel", "transition", "setDrawable", "Lkotlin/Function0;", "Companion", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RealImageLoader implements ImageLoader {
    private static final int REQUEST_TYPE_ENQUEUE = 0;
    private static final int REQUEST_TYPE_EXECUTE = 1;
    private static final String TAG = "RealImageLoader";
    private final Lazy<Call.Factory> callFactoryLazy;
    private final ComponentRegistry componentRegistry;
    private final ComponentRegistry components;
    private final Context context;
    private final DefaultRequestOptions defaults;
    private final Lazy<DiskCache> diskCacheLazy;
    private final EventListener.Factory eventListenerFactory;
    private final List<Interceptor> interceptors;
    private final Logger logger;
    private final Lazy<MemoryCache> memoryCacheLazy;
    private final ImageLoaderOptions options;
    private final RequestService requestService;
    private final AtomicBoolean shutdown;
    private final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain().getImmediate()).plus(new RealImageLoader$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this)));
    private final SystemCallbacks systemCallbacks = new SystemCallbacks(this);

    /* JADX INFO: renamed from: coil.RealImageLoader$executeMain$1, reason: invalid class name */
    /* JADX INFO: compiled from: RealImageLoader.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.RealImageLoader", f = "RealImageLoader.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2}, l = {171, 183, 187}, m = "executeMain", n = {"this", "requestDelegate", "request", "eventListener", "this", "requestDelegate", "request", "eventListener", "placeholderBitmap", "this", "requestDelegate", "request", "eventListener"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RealImageLoader.this.executeMain(null, 0, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RealImageLoader(Context context, DefaultRequestOptions defaults, Lazy<? extends MemoryCache> lazy, Lazy<? extends DiskCache> lazy2, Lazy<? extends Call.Factory> lazy3, EventListener.Factory eventListenerFactory, ComponentRegistry componentRegistry, ImageLoaderOptions options, Logger logger) {
        this.context = context;
        this.defaults = defaults;
        this.memoryCacheLazy = lazy;
        this.diskCacheLazy = lazy2;
        this.callFactoryLazy = lazy3;
        this.eventListenerFactory = eventListenerFactory;
        this.componentRegistry = componentRegistry;
        this.options = options;
        this.logger = logger;
        this.requestService = new RequestService(this, this.systemCallbacks, this.logger);
        ComponentRegistry.Builder this_$iv = this.componentRegistry.newBuilder();
        this.components = this_$iv.add(new HttpUrlMapper(), HttpUrl.class).add(new StringMapper(), String.class).add(new FileUriMapper(), Uri.class).add(new ResourceUriMapper(), Uri.class).add(new ResourceIntMapper(), Integer.class).add(new ByteArrayMapper(), byte[].class).add(new UriKeyer(), Uri.class).add(new FileKeyer(this.options.getAddLastModifiedToFileCacheKey()), File.class).add(new HttpUriFetcher.Factory(this.callFactoryLazy, this.diskCacheLazy, this.options.getRespectCacheHeaders()), Uri.class).add(new FileFetcher.Factory(), File.class).add(new AssetUriFetcher.Factory(), Uri.class).add(new ContentUriFetcher.Factory(), Uri.class).add(new ResourceUriFetcher.Factory(), Uri.class).add(new DrawableFetcher.Factory(), Drawable.class).add(new BitmapFetcher.Factory(), Bitmap.class).add(new ByteBufferFetcher.Factory(), ByteBuffer.class).add(new BitmapFactoryDecoder.Factory(this.options.getBitmapFactoryMaxParallelism(), this.options.getBitmapFactoryExifOrientationPolicy())).build();
        this.interceptors = CollectionsKt.plus((Collection<? extends EngineInterceptor>) getComponents().getInterceptors(), new EngineInterceptor(this, this.systemCallbacks, this.requestService, this.logger));
        this.shutdown = new AtomicBoolean(false);
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // coil.ImageLoader
    public DefaultRequestOptions getDefaults() {
        return this.defaults;
    }

    public final Lazy<MemoryCache> getMemoryCacheLazy() {
        return this.memoryCacheLazy;
    }

    public final Lazy<DiskCache> getDiskCacheLazy() {
        return this.diskCacheLazy;
    }

    public final Lazy<Call.Factory> getCallFactoryLazy() {
        return this.callFactoryLazy;
    }

    public final EventListener.Factory getEventListenerFactory() {
        return this.eventListenerFactory;
    }

    public final ComponentRegistry getComponentRegistry() {
        return this.componentRegistry;
    }

    public final ImageLoaderOptions getOptions() {
        return this.options;
    }

    public final Logger getLogger() {
        return this.logger;
    }

    @Override // coil.ImageLoader
    public MemoryCache getMemoryCache() {
        return this.memoryCacheLazy.getValue();
    }

    @Override // coil.ImageLoader
    public DiskCache getDiskCache() {
        return this.diskCacheLazy.getValue();
    }

    @Override // coil.ImageLoader
    public ComponentRegistry getComponents() {
        return this.components;
    }

    @Override // coil.ImageLoader
    public Disposable enqueue(ImageRequest request) {
        Deferred<? extends ImageResult> deferredAsync$default = BuildersKt__Builders_commonKt.async$default(this.scope, null, null, new RealImageLoader$enqueue$job$1(this, request, null), 3, null);
        if (request.getTarget() instanceof ViewTarget) {
            return Utils.getRequestManager(((ViewTarget) request.getTarget()).getView()).getDisposable(deferredAsync$default);
        }
        return new OneShotDisposable(deferredAsync$default);
    }

    @Override // coil.ImageLoader
    public Object execute(ImageRequest request, Continuation<? super ImageResult> continuation) {
        if (request.getTarget() instanceof ViewTarget) {
            return CoroutineScopeKt.coroutineScope(new AnonymousClass2(request, this, null), continuation);
        }
        return BuildersKt.withContext(Dispatchers.getMain().getImmediate(), new AnonymousClass3(request, null), continuation);
    }

    /* JADX INFO: renamed from: coil.RealImageLoader$execute$2, reason: invalid class name */
    /* JADX INFO: compiled from: RealImageLoader.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil/request/ImageResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.RealImageLoader$execute$2", f = "RealImageLoader.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_DTS}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImageResult>, Object> {
        final /* synthetic */ ImageRequest $request;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ RealImageLoader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ImageRequest imageRequest, RealImageLoader realImageLoader, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$request = imageRequest;
            this.this$0 = realImageLoader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$request, this.this$0, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ImageResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                    Deferred<? extends ImageResult> deferredAsync$default = BuildersKt__Builders_commonKt.async$default($this$coroutineScope, Dispatchers.getMain().getImmediate(), null, new RealImageLoader$execute$2$job$1(this.this$0, this.$request, null), 2, null);
                    Utils.getRequestManager(((ViewTarget) this.$request.getTarget()).getView()).getDisposable(deferredAsync$default);
                    this.label = 1;
                    Object objAwait = deferredAsync$default.await(this);
                    return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: renamed from: coil.RealImageLoader$execute$3, reason: invalid class name */
    /* JADX INFO: compiled from: RealImageLoader.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil/request/ImageResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.RealImageLoader$execute$3", f = "RealImageLoader.kt", i = {}, l = {143}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImageResult>, Object> {
        final /* synthetic */ ImageRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(ImageRequest imageRequest, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$request = imageRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RealImageLoader.this.new AnonymousClass3(this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ImageResult> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objExecuteMain = RealImageLoader.this.executeMain(this.$request, 1, this);
                    return objExecuteMain == coroutine_suspended ? coroutine_suspended : objExecuteMain;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fa A[Catch: all -> 0x008e, TryCatch #7 {all -> 0x008e, blocks: (B:23:0x008a, B:38:0x00f4, B:40:0x00fa, B:42:0x0101, B:45:0x010a, B:48:0x0112, B:50:0x012c, B:52:0x0132, B:53:0x0136, B:55:0x013f, B:56:0x0142, B:49:0x0128), top: B:108:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0112 A[Catch: all -> 0x008e, TryCatch #7 {all -> 0x008e, blocks: (B:23:0x008a, B:38:0x00f4, B:40:0x00fa, B:42:0x0101, B:45:0x010a, B:48:0x0112, B:50:0x012c, B:52:0x0132, B:53:0x0136, B:55:0x013f, B:56:0x0142, B:49:0x0128), top: B:108:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0128 A[Catch: all -> 0x008e, TryCatch #7 {all -> 0x008e, blocks: (B:23:0x008a, B:38:0x00f4, B:40:0x00fa, B:42:0x0101, B:45:0x010a, B:48:0x0112, B:50:0x012c, B:52:0x0132, B:53:0x0136, B:55:0x013f, B:56:0x0142, B:49:0x0128), top: B:108:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0132 A[Catch: all -> 0x008e, TryCatch #7 {all -> 0x008e, blocks: (B:23:0x008a, B:38:0x00f4, B:40:0x00fa, B:42:0x0101, B:45:0x010a, B:48:0x0112, B:50:0x012c, B:52:0x0132, B:53:0x0136, B:55:0x013f, B:56:0x0142, B:49:0x0128), top: B:108:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013f A[Catch: all -> 0x008e, TryCatch #7 {all -> 0x008e, blocks: (B:23:0x008a, B:38:0x00f4, B:40:0x00fa, B:42:0x0101, B:45:0x010a, B:48:0x0112, B:50:0x012c, B:52:0x0132, B:53:0x0136, B:55:0x013f, B:56:0x0142, B:49:0x0128), top: B:108:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a8 A[Catch: all -> 0x01cc, TryCatch #6 {all -> 0x01cc, blocks: (B:67:0x01a1, B:69:0x01a8, B:70:0x01b3, B:72:0x01b7, B:75:0x01c6, B:76:0x01cb, B:64:0x0188), top: B:107:0x0188 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b3 A[Catch: all -> 0x01cc, TryCatch #6 {all -> 0x01cc, blocks: (B:67:0x01a1, B:69:0x01a8, B:70:0x01b3, B:72:0x01b7, B:75:0x01c6, B:76:0x01cb, B:64:0x0188), top: B:107:0x0188 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f0 A[Catch: all -> 0x0207, TRY_LEAVE, TryCatch #3 {all -> 0x0207, blocks: (B:87:0x01ec, B:89:0x01f0, B:92:0x0202, B:93:0x0206), top: B:103:0x01ec }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0202 A[Catch: all -> 0x0207, TRY_ENTER, TryCatch #3 {all -> 0x0207, blocks: (B:87:0x01ec, B:89:0x01f0, B:92:0x0202, B:93:0x0206), top: B:103:0x01ec }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object executeMain(ImageRequest initialRequest, int type, Continuation<? super ImageResult> continuation) {
        AnonymousClass1 anonymousClass1;
        RealImageLoader realImageLoader;
        ImageRequest request;
        ImageRequest request2;
        RequestDelegate requestDelegate;
        EventListener eventListener;
        RealImageLoader realImageLoader2;
        RequestDelegate requestDelegate2;
        MemoryCache $this$get$iv;
        Bitmap placeholderBitmap;
        BitmapDrawable placeholder;
        Target target;
        ImageRequest.Listener listener;
        Object size;
        EventListener eventListener2;
        ImageRequest request3;
        RealImageLoader realImageLoader3;
        Bitmap placeholderBitmap2;
        ImageRequest request4;
        EventListener eventListener3;
        RealImageLoader realImageLoader4;
        Object objWithContext;
        ImageResult result;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        AnonymousClass1 anonymousClass12 = anonymousClass1;
        Object $result = anonymousClass12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                realImageLoader = this;
                RequestDelegate requestDelegate3 = realImageLoader.requestService.requestDelegate(initialRequest, JobKt.getJob(anonymousClass12.getContext()));
                requestDelegate3.assertActive();
                request = ImageRequest.newBuilder$default(initialRequest, null, 1, null).defaults(realImageLoader.getDefaults()).build();
                EventListener eventListener4 = realImageLoader.eventListenerFactory.create(request);
                try {
                    if (request.getData() == NullRequestData.INSTANCE) {
                        throw new NullRequestDataException();
                    }
                    requestDelegate3.start();
                    if (type == 0) {
                        Lifecycle lifecycle = request.getLifecycle();
                        anonymousClass12.L$0 = realImageLoader;
                        anonymousClass12.L$1 = requestDelegate3;
                        anonymousClass12.L$2 = request;
                        anonymousClass12.L$3 = eventListener4;
                        anonymousClass12.label = 1;
                        if (Lifecycles.awaitStarted(lifecycle, anonymousClass12) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        realImageLoader2 = realImageLoader;
                        requestDelegate2 = requestDelegate3;
                        eventListener = eventListener4;
                    } else {
                        realImageLoader2 = realImageLoader;
                        requestDelegate2 = requestDelegate3;
                        eventListener = eventListener4;
                    }
                    $this$get$iv = realImageLoader2.getMemoryCache();
                    if ($this$get$iv != null) {
                        MemoryCache.Key key$iv = request.getPlaceholderMemoryCacheKey();
                        MemoryCache.Value value = key$iv != null ? $this$get$iv.get(key$iv) : null;
                        if (value != null) {
                            placeholderBitmap = value.getBitmap();
                        }
                        if (placeholderBitmap != null) {
                            Context context$iv = request.getContext();
                            Bitmap $this$toDrawable$iv = placeholderBitmap;
                            Resources resources$iv$iv = context$iv.getResources();
                            placeholder = new BitmapDrawable(resources$iv$iv, $this$toDrawable$iv);
                        } else {
                            placeholder = request.getPlaceholder();
                        }
                        target = request.getTarget();
                        if (target != null) {
                            target.onStart(placeholder);
                        }
                        eventListener.onStart(request);
                        listener = request.getListener();
                        if (listener != null) {
                            listener.onStart(request);
                        }
                        eventListener.resolveSizeStart(request);
                        SizeResolver sizeResolver = request.getSizeResolver();
                        anonymousClass12.L$0 = realImageLoader2;
                        anonymousClass12.L$1 = requestDelegate2;
                        anonymousClass12.L$2 = request;
                        anonymousClass12.L$3 = eventListener;
                        anonymousClass12.L$4 = placeholderBitmap;
                        anonymousClass12.label = 2;
                        size = sizeResolver.size(anonymousClass12);
                        if (size == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        ImageRequest imageRequest = request;
                        eventListener2 = eventListener;
                        request3 = imageRequest;
                        realImageLoader3 = realImageLoader2;
                        placeholderBitmap2 = placeholderBitmap;
                        try {
                            Size size2 = (Size) size;
                            eventListener2.resolveSizeEnd(request3, size2);
                            CoroutineDispatcher interceptorDispatcher = request3.getInterceptorDispatcher();
                            request4 = request3;
                            eventListener3 = eventListener2;
                            try {
                                request2 = request4;
                                realImageLoader4 = realImageLoader3;
                                eventListener = eventListener3;
                            } catch (Throwable th) {
                                throwable = th;
                                request2 = request4;
                                eventListener = eventListener3;
                                requestDelegate = requestDelegate2;
                                realImageLoader = realImageLoader3;
                            }
                        } catch (Throwable th2) {
                            throwable = th2;
                            request2 = request3;
                            eventListener = eventListener2;
                            requestDelegate = requestDelegate2;
                            realImageLoader = realImageLoader3;
                        }
                        try {
                            RealImageLoader$executeMain$result$1 realImageLoader$executeMain$result$1 = new RealImageLoader$executeMain$result$1(request4, realImageLoader3, size2, eventListener3, placeholderBitmap2, null);
                            anonymousClass12.L$0 = realImageLoader4;
                            anonymousClass12.L$1 = requestDelegate2;
                            anonymousClass12.L$2 = request2;
                            anonymousClass12.L$3 = eventListener;
                            anonymousClass12.L$4 = null;
                            anonymousClass12.label = 3;
                            objWithContext = BuildersKt.withContext(interceptorDispatcher, realImageLoader$executeMain$result$1, anonymousClass12);
                            if (objWithContext == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            result = (ImageResult) objWithContext;
                            if (result instanceof SuccessResult) {
                                realImageLoader4.onSuccess((SuccessResult) result, request2.getTarget(), eventListener);
                            } else {
                                if (!(result instanceof ErrorResult)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                realImageLoader4.onError((ErrorResult) result, request2.getTarget(), eventListener);
                            }
                            return result;
                        } catch (Throwable th3) {
                            throwable = th3;
                            requestDelegate = requestDelegate2;
                            realImageLoader = realImageLoader4;
                            try {
                                if (throwable instanceof CancellationException) {
                                }
                            } finally {
                                requestDelegate.complete();
                            }
                        }
                    }
                    placeholderBitmap = null;
                    if (placeholderBitmap != null) {
                    }
                    target = request.getTarget();
                    if (target != null) {
                    }
                    eventListener.onStart(request);
                    listener = request.getListener();
                    if (listener != null) {
                    }
                    eventListener.resolveSizeStart(request);
                    SizeResolver sizeResolver2 = request.getSizeResolver();
                    anonymousClass12.L$0 = realImageLoader2;
                    anonymousClass12.L$1 = requestDelegate2;
                    anonymousClass12.L$2 = request;
                    anonymousClass12.L$3 = eventListener;
                    anonymousClass12.L$4 = placeholderBitmap;
                    anonymousClass12.label = 2;
                    size = sizeResolver2.size(anonymousClass12);
                    if (size == coroutine_suspended) {
                    }
                } catch (Throwable th4) {
                    throwable = th4;
                    request2 = request;
                    requestDelegate = requestDelegate3;
                    eventListener = eventListener4;
                    if (throwable instanceof CancellationException) {
                    }
                }
                break;
            case 1:
                eventListener = (EventListener) anonymousClass12.L$3;
                request = (ImageRequest) anonymousClass12.L$2;
                requestDelegate2 = (RequestDelegate) anonymousClass12.L$1;
                realImageLoader2 = (RealImageLoader) anonymousClass12.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    $this$get$iv = realImageLoader2.getMemoryCache();
                    if ($this$get$iv != null) {
                    }
                    placeholderBitmap = null;
                    if (placeholderBitmap != null) {
                    }
                    target = request.getTarget();
                    if (target != null) {
                    }
                    eventListener.onStart(request);
                    listener = request.getListener();
                    if (listener != null) {
                    }
                    eventListener.resolveSizeStart(request);
                    SizeResolver sizeResolver22 = request.getSizeResolver();
                    anonymousClass12.L$0 = realImageLoader2;
                    anonymousClass12.L$1 = requestDelegate2;
                    anonymousClass12.L$2 = request;
                    anonymousClass12.L$3 = eventListener;
                    anonymousClass12.L$4 = placeholderBitmap;
                    anonymousClass12.label = 2;
                    size = sizeResolver22.size(anonymousClass12);
                    if (size == coroutine_suspended) {
                    }
                } catch (Throwable th5) {
                    throwable = th5;
                    request2 = request;
                    requestDelegate = requestDelegate2;
                    realImageLoader = realImageLoader2;
                    if (throwable instanceof CancellationException) {
                    }
                }
                break;
            case 2:
                Bitmap placeholderBitmap3 = (Bitmap) anonymousClass12.L$4;
                eventListener2 = (EventListener) anonymousClass12.L$3;
                ImageRequest request5 = (ImageRequest) anonymousClass12.L$2;
                RequestDelegate requestDelegate4 = (RequestDelegate) anonymousClass12.L$1;
                RealImageLoader realImageLoader5 = (RealImageLoader) anonymousClass12.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    size = $result;
                    placeholderBitmap2 = placeholderBitmap3;
                    request3 = request5;
                    requestDelegate2 = requestDelegate4;
                    realImageLoader3 = realImageLoader5;
                    Size size22 = (Size) size;
                    eventListener2.resolveSizeEnd(request3, size22);
                    CoroutineDispatcher interceptorDispatcher2 = request3.getInterceptorDispatcher();
                    request4 = request3;
                    eventListener3 = eventListener2;
                    request2 = request4;
                    realImageLoader4 = realImageLoader3;
                    eventListener = eventListener3;
                    RealImageLoader$executeMain$result$1 realImageLoader$executeMain$result$12 = new RealImageLoader$executeMain$result$1(request4, realImageLoader3, size22, eventListener3, placeholderBitmap2, null);
                    anonymousClass12.L$0 = realImageLoader4;
                    anonymousClass12.L$1 = requestDelegate2;
                    anonymousClass12.L$2 = request2;
                    anonymousClass12.L$3 = eventListener;
                    anonymousClass12.L$4 = null;
                    anonymousClass12.label = 3;
                    objWithContext = BuildersKt.withContext(interceptorDispatcher2, realImageLoader$executeMain$result$12, anonymousClass12);
                    if (objWithContext == coroutine_suspended) {
                    }
                    result = (ImageResult) objWithContext;
                    if (result instanceof SuccessResult) {
                    }
                    return result;
                } catch (Throwable th6) {
                    throwable = th6;
                    eventListener = eventListener2;
                    request2 = request5;
                    requestDelegate = requestDelegate4;
                    realImageLoader = realImageLoader5;
                    if (throwable instanceof CancellationException) {
                    }
                }
                break;
            case 3:
                eventListener = (EventListener) anonymousClass12.L$3;
                request2 = (ImageRequest) anonymousClass12.L$2;
                requestDelegate = (RequestDelegate) anonymousClass12.L$1;
                realImageLoader = (RealImageLoader) anonymousClass12.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    realImageLoader4 = realImageLoader;
                    requestDelegate2 = requestDelegate;
                    objWithContext = $result;
                    result = (ImageResult) objWithContext;
                    if (result instanceof SuccessResult) {
                    }
                    return result;
                } catch (Throwable th7) {
                    throwable = th7;
                    if (throwable instanceof CancellationException) {
                        realImageLoader.onCancel(request2, eventListener);
                        throw throwable;
                    }
                    ErrorResult result2 = realImageLoader.requestService.errorResult(request2, throwable);
                    realImageLoader.onError(result2, request2.getTarget(), eventListener);
                    return result2;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void onTrimMemory$coil_base_release(int level) {
        MemoryCache value;
        Lazy<MemoryCache> lazy = this.memoryCacheLazy;
        if (lazy == null || (value = lazy.getValue()) == null) {
            return;
        }
        value.trimMemory(level);
    }

    @Override // coil.ImageLoader
    public void shutdown() {
        if (this.shutdown.getAndSet(true)) {
            return;
        }
        CoroutineScopeKt.cancel$default(this.scope, null, 1, null);
        this.systemCallbacks.shutdown();
        MemoryCache memoryCache = getMemoryCache();
        if (memoryCache != null) {
            memoryCache.clear();
        }
    }

    @Override // coil.ImageLoader
    public ImageLoader.Builder newBuilder() {
        return new ImageLoader.Builder(this);
    }

    private final void onSuccess(SuccessResult result, Target target, EventListener eventListener) {
        ImageRequest request = result.getRequest();
        DataSource dataSource = result.getDataSource();
        Logger $this$log$iv = this.logger;
        if ($this$log$iv != null && $this$log$iv.getLevel() <= 4) {
            $this$log$iv.log(TAG, 4, Utils.getEmoji(dataSource) + " Successful (" + dataSource.name() + ") - " + request.getData(), null);
        }
        if (!(target instanceof TransitionTarget)) {
            if (target != null) {
                target.onSuccess(result.getDrawable());
            }
        } else {
            Transition transition$iv = result.getRequest().getTransitionFactory().create((TransitionTarget) target, result);
            if (transition$iv instanceof NoneTransition) {
                target.onSuccess(result.getDrawable());
            } else {
                eventListener.transitionStart(result.getRequest(), transition$iv);
                transition$iv.transition();
                eventListener.transitionEnd(result.getRequest(), transition$iv);
            }
        }
        eventListener.onSuccess(request, result);
        ImageRequest.Listener listener = request.getListener();
        if (listener != null) {
            listener.onSuccess(request, result);
        }
    }

    private final void onError(ErrorResult result, Target target, EventListener eventListener) {
        ImageRequest request = result.getRequest();
        Logger $this$log$iv = this.logger;
        if ($this$log$iv != null && $this$log$iv.getLevel() <= 4) {
            $this$log$iv.log(TAG, 4, "🚨 Failed - " + request.getData() + " - " + result.getThrowable(), null);
        }
        if (!(target instanceof TransitionTarget)) {
            if (target != null) {
                target.onError(result.getDrawable());
            }
        } else {
            Transition transition$iv = result.getRequest().getTransitionFactory().create((TransitionTarget) target, result);
            if (transition$iv instanceof NoneTransition) {
                target.onError(result.getDrawable());
            } else {
                eventListener.transitionStart(result.getRequest(), transition$iv);
                transition$iv.transition();
                eventListener.transitionEnd(result.getRequest(), transition$iv);
            }
        }
        eventListener.onError(request, result);
        ImageRequest.Listener listener = request.getListener();
        if (listener != null) {
            listener.onError(request, result);
        }
    }

    private final void onCancel(ImageRequest request, EventListener eventListener) {
        Logger $this$log$iv = this.logger;
        if ($this$log$iv != null && $this$log$iv.getLevel() <= 4) {
            $this$log$iv.log(TAG, 4, "🏗  Cancelled - " + request.getData(), null);
        }
        eventListener.onCancel(request);
        ImageRequest.Listener listener = request.getListener();
        if (listener != null) {
            listener.onCancel(request);
        }
    }

    private final void transition(ImageResult result, Target target, EventListener eventListener, Function0<Unit> setDrawable) {
        if (!(target instanceof TransitionTarget)) {
            setDrawable.invoke();
            return;
        }
        Transition transition = result.getRequest().getTransitionFactory().create((TransitionTarget) target, result);
        if (transition instanceof NoneTransition) {
            setDrawable.invoke();
            return;
        }
        eventListener.transitionStart(result.getRequest(), transition);
        transition.transition();
        eventListener.transitionEnd(result.getRequest(), transition);
    }
}
