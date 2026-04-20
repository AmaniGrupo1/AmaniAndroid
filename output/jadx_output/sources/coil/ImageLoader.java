package coil;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import coil.ComponentRegistry;
import coil.EventListener;
import coil.ImageLoader;
import coil.decode.ExifOrientationPolicy;
import coil.disk.DiskCache;
import coil.memory.MemoryCache;
import coil.request.CachePolicy;
import coil.request.DefaultRequestOptions;
import coil.request.Disposable;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import coil.size.Precision;
import coil.transition.CrossfadeTransition;
import coil.transition.Transition;
import coil.util.Contexts;
import coil.util.ImageLoaderOptions;
import coil.util.Logger;
import coil.util.Requests;
import coil.util.SingletonDiskCache;
import coil.util.Utils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineDispatcher;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: ImageLoader.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u001dJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H¦@¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH&J\b\u0010\u001b\u001a\u00020\u001cH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001eÀ\u0006\u0001"}, d2 = {"Lcoil/ImageLoader;", "", "defaults", "Lcoil/request/DefaultRequestOptions;", "getDefaults", "()Lcoil/request/DefaultRequestOptions;", "components", "Lcoil/ComponentRegistry;", "getComponents", "()Lcoil/ComponentRegistry;", "memoryCache", "Lcoil/memory/MemoryCache;", "getMemoryCache", "()Lcoil/memory/MemoryCache;", "diskCache", "Lcoil/disk/DiskCache;", "getDiskCache", "()Lcoil/disk/DiskCache;", "enqueue", "Lcoil/request/Disposable;", "request", "Lcoil/request/ImageRequest;", "execute", "Lcoil/request/ImageResult;", "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shutdown", "", "newBuilder", "Lcoil/ImageLoader$Builder;", "Builder", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ImageLoader {
    Disposable enqueue(ImageRequest request);

    Object execute(ImageRequest imageRequest, Continuation<? super ImageResult> continuation);

    ComponentRegistry getComponents();

    DefaultRequestOptions getDefaults();

    DiskCache getDiskCache();

    MemoryCache getMemoryCache();

    Builder newBuilder();

    void shutdown();

    /* JADX INFO: compiled from: ImageLoader.kt */
    @Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001cJ\u0014\u0010\u001b\u001a\u00020\u00002\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0011\u001a\u00020\u00002\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u001eJ\"\u0010\u001f\u001a\u00020\u00002\u0017\u0010 \u001a\u0013\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!¢\u0006\u0002\b$H\u0086\bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0016J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\f\u001a\u00020\u00002\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u001eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0016\u0010\u000f\u001a\u00020\u00002\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u001eJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u000201J\u000e\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0014J\u000e\u00106\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'J\u000e\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u00020.J\u000e\u00108\u001a\u00020\u00002\u0006\u00105\u001a\u000209J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u000e\u0010B\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u000e\u0010C\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u0010\u0010D\u001a\u00020\u00002\b\b\u0001\u0010E\u001a\u00020.J\u0010\u0010D\u001a\u00020\u00002\b\u0010F\u001a\u0004\u0018\u00010GJ\u0010\u0010H\u001a\u00020\u00002\b\b\u0001\u0010E\u001a\u00020.J\u0010\u0010H\u001a\u00020\u00002\b\u0010F\u001a\u0004\u0018\u00010GJ\u0010\u0010I\u001a\u00020\u00002\b\b\u0001\u0010E\u001a\u00020.J\u0010\u0010I\u001a\u00020\u00002\b\u0010F\u001a\u0004\u0018\u00010GJ\u000e\u0010J\u001a\u00020\u00002\u0006\u00100\u001a\u00020KJ\u000e\u0010L\u001a\u00020\u00002\u0006\u00100\u001a\u00020KJ\u000e\u0010M\u001a\u00020\u00002\u0006\u00100\u001a\u00020KJ\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010N\u001a\u00020OJ\u0012\u0010P\u001a\u00020\u00002\b\b\u0001\u0010Q\u001a\u00020RH\u0007J\u0010\u0010S\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'H\u0007J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'H\u0007J!\u0010\u0015\u001a\u00020\u00002\u0017\u0010 \u001a\u0013\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!¢\u0006\u0002\b$H\u0007J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0016H\u0007J\u0010\u0010V\u001a\u00020\u00002\u0006\u0010V\u001a\u00020WH\u0007R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Lcoil/ImageLoader$Builder;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "imageLoader", "Lcoil/RealImageLoader;", "(Lcoil/RealImageLoader;)V", "applicationContext", "defaults", "Lcoil/request/DefaultRequestOptions;", "memoryCache", "Lkotlin/Lazy;", "Lcoil/memory/MemoryCache;", "diskCache", "Lcoil/disk/DiskCache;", "callFactory", "Lokhttp3/Call$Factory;", "eventListenerFactory", "Lcoil/EventListener$Factory;", "componentRegistry", "Lcoil/ComponentRegistry;", "options", "Lcoil/util/ImageLoaderOptions;", "logger", "Lcoil/util/Logger;", "okHttpClient", "Lokhttp3/OkHttpClient;", "initializer", "Lkotlin/Function0;", "components", "builder", "Lkotlin/Function1;", "Lcoil/ComponentRegistry$Builder;", "", "Lkotlin/ExtensionFunctionType;", "allowHardware", "enable", "", "allowRgb565", "addLastModifiedToFileCacheKey", "networkObserverEnabled", "respectCacheHeaders", "bitmapFactoryMaxParallelism", "maxParallelism", "", "bitmapFactoryExifOrientationPolicy", "policy", "Lcoil/decode/ExifOrientationPolicy;", "eventListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcoil/EventListener;", "factory", "crossfade", "durationMillis", "transitionFactory", "Lcoil/transition/Transition$Factory;", "precision", "Lcoil/size/Precision;", "bitmapConfig", "Landroid/graphics/Bitmap$Config;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "interceptorDispatcher", "fetcherDispatcher", "decoderDispatcher", "transformationDispatcher", "placeholder", "drawableResId", "drawable", "Landroid/graphics/drawable/Drawable;", "error", "fallback", "memoryCachePolicy", "Lcoil/request/CachePolicy;", "diskCachePolicy", "networkCachePolicy", "build", "Lcoil/ImageLoader;", "availableMemoryPercentage", "percent", "", "trackWeakReferences", "launchInterceptorChainOnMainThread", "registry", "transition", "Lcoil/transition/Transition;", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Builder {
        private final Context applicationContext;
        private Lazy<? extends Call.Factory> callFactory;
        private ComponentRegistry componentRegistry;
        private DefaultRequestOptions defaults;
        private Lazy<? extends DiskCache> diskCache;
        private EventListener.Factory eventListenerFactory;
        private Logger logger;
        private Lazy<? extends MemoryCache> memoryCache;
        private ImageLoaderOptions options;

        public Builder(Context context) {
            this.applicationContext = context.getApplicationContext();
            this.defaults = Requests.getDEFAULT_REQUEST_OPTIONS();
            this.memoryCache = null;
            this.diskCache = null;
            this.callFactory = null;
            this.eventListenerFactory = null;
            this.componentRegistry = null;
            this.options = new ImageLoaderOptions(false, false, false, 0, null, 31, null);
            this.logger = null;
        }

        public Builder(RealImageLoader imageLoader) {
            this.applicationContext = imageLoader.getContext().getApplicationContext();
            this.defaults = imageLoader.getDefaults();
            this.memoryCache = imageLoader.getMemoryCacheLazy();
            this.diskCache = imageLoader.getDiskCacheLazy();
            this.callFactory = imageLoader.getCallFactoryLazy();
            this.eventListenerFactory = imageLoader.getEventListenerFactory();
            this.componentRegistry = imageLoader.getComponentRegistry();
            this.options = imageLoader.getOptions();
            this.logger = imageLoader.getLogger();
        }

        public final Builder okHttpClient(OkHttpClient okHttpClient) {
            return callFactory(okHttpClient);
        }

        public final Builder okHttpClient(Function0<? extends OkHttpClient> initializer) {
            return callFactory(initializer);
        }

        public final Builder callFactory(Call.Factory callFactory) {
            Builder $this$callFactory_u24lambda_u240 = this;
            $this$callFactory_u24lambda_u240.callFactory = LazyKt.lazyOf(callFactory);
            return this;
        }

        public final Builder callFactory(Function0<? extends Call.Factory> initializer) {
            Builder $this$callFactory_u24lambda_u241 = this;
            $this$callFactory_u24lambda_u241.callFactory = LazyKt.lazy(initializer);
            return this;
        }

        public final /* synthetic */ Builder components(Function1<? super ComponentRegistry.Builder, Unit> builder) {
            ComponentRegistry.Builder builder2 = new ComponentRegistry.Builder();
            builder.invoke(builder2);
            return components(builder2.build());
        }

        public final Builder components(ComponentRegistry components) {
            Builder $this$components_u24lambda_u242 = this;
            $this$components_u24lambda_u242.componentRegistry = components;
            return this;
        }

        public final Builder memoryCache(MemoryCache memoryCache) {
            Builder $this$memoryCache_u24lambda_u243 = this;
            $this$memoryCache_u24lambda_u243.memoryCache = LazyKt.lazyOf(memoryCache);
            return this;
        }

        public final Builder memoryCache(Function0<? extends MemoryCache> initializer) {
            Builder $this$memoryCache_u24lambda_u244 = this;
            $this$memoryCache_u24lambda_u244.memoryCache = LazyKt.lazy(initializer);
            return this;
        }

        public final Builder diskCache(DiskCache diskCache) {
            Builder $this$diskCache_u24lambda_u245 = this;
            $this$diskCache_u24lambda_u245.diskCache = LazyKt.lazyOf(diskCache);
            return this;
        }

        public final Builder diskCache(Function0<? extends DiskCache> initializer) {
            Builder $this$diskCache_u24lambda_u246 = this;
            $this$diskCache_u24lambda_u246.diskCache = LazyKt.lazy(initializer);
            return this;
        }

        public final Builder allowHardware(boolean enable) {
            Builder $this$allowHardware_u24lambda_u247 = this;
            DefaultRequestOptions defaultRequestOptions = $this$allowHardware_u24lambda_u247.defaults;
            $this$allowHardware_u24lambda_u247.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : enable, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder allowRgb565(boolean enable) {
            Builder $this$allowRgb565_u24lambda_u248 = this;
            DefaultRequestOptions defaultRequestOptions = $this$allowRgb565_u24lambda_u248.defaults;
            $this$allowRgb565_u24lambda_u248.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : enable, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder addLastModifiedToFileCacheKey(boolean enable) {
            Builder $this$addLastModifiedToFileCacheKey_u24lambda_u249 = this;
            $this$addLastModifiedToFileCacheKey_u24lambda_u249.options = ImageLoaderOptions.copy$default($this$addLastModifiedToFileCacheKey_u24lambda_u249.options, enable, false, false, 0, null, 30, null);
            return this;
        }

        public final Builder networkObserverEnabled(boolean enable) {
            Builder $this$networkObserverEnabled_u24lambda_u2410 = this;
            $this$networkObserverEnabled_u24lambda_u2410.options = ImageLoaderOptions.copy$default($this$networkObserverEnabled_u24lambda_u2410.options, false, enable, false, 0, null, 29, null);
            return this;
        }

        public final Builder respectCacheHeaders(boolean enable) {
            Builder $this$respectCacheHeaders_u24lambda_u2411 = this;
            $this$respectCacheHeaders_u24lambda_u2411.options = ImageLoaderOptions.copy$default($this$respectCacheHeaders_u24lambda_u2411.options, false, false, enable, 0, null, 27, null);
            return this;
        }

        public final Builder bitmapFactoryMaxParallelism(int maxParallelism) {
            Builder $this$bitmapFactoryMaxParallelism_u24lambda_u2413 = this;
            if (!(maxParallelism > 0)) {
                throw new IllegalArgumentException("maxParallelism must be > 0.".toString());
            }
            $this$bitmapFactoryMaxParallelism_u24lambda_u2413.options = ImageLoaderOptions.copy$default($this$bitmapFactoryMaxParallelism_u24lambda_u2413.options, false, false, false, maxParallelism, null, 23, null);
            return this;
        }

        public final Builder bitmapFactoryExifOrientationPolicy(ExifOrientationPolicy policy) {
            Builder $this$bitmapFactoryExifOrientationPolicy_u24lambda_u2414 = this;
            $this$bitmapFactoryExifOrientationPolicy_u24lambda_u2414.options = ImageLoaderOptions.copy$default($this$bitmapFactoryExifOrientationPolicy_u24lambda_u2414.options, false, false, false, 0, policy, 15, null);
            return this;
        }

        static final EventListener eventListener$lambda$15(EventListener $listener, ImageRequest it) {
            return $listener;
        }

        public final Builder eventListener(final EventListener listener) {
            return eventListenerFactory(new EventListener.Factory() { // from class: coil.ImageLoader$Builder$$ExternalSyntheticLambda3
                @Override // coil.EventListener.Factory
                public final EventListener create(ImageRequest imageRequest) {
                    return ImageLoader.Builder.eventListener$lambda$15(listener, imageRequest);
                }
            });
        }

        public final Builder eventListenerFactory(EventListener.Factory factory) {
            Builder $this$eventListenerFactory_u24lambda_u2416 = this;
            $this$eventListenerFactory_u24lambda_u2416.eventListenerFactory = factory;
            return this;
        }

        public final Builder crossfade(boolean enable) {
            return crossfade(enable ? 100 : 0);
        }

        public final Builder crossfade(int durationMillis) {
            CrossfadeTransition.Factory factory;
            Builder $this$crossfade_u24lambda_u2417 = this;
            if (durationMillis > 0) {
                factory = new CrossfadeTransition.Factory(durationMillis, false, 2, null);
            } else {
                factory = Transition.Factory.NONE;
            }
            $this$crossfade_u24lambda_u2417.transitionFactory(factory);
            return this;
        }

        public final Builder transitionFactory(Transition.Factory factory) {
            Builder $this$transitionFactory_u24lambda_u2418 = this;
            DefaultRequestOptions defaultRequestOptions = $this$transitionFactory_u24lambda_u2418.defaults;
            $this$transitionFactory_u24lambda_u2418.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : factory, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder precision(Precision precision) {
            Builder $this$precision_u24lambda_u2419 = this;
            DefaultRequestOptions defaultRequestOptions = $this$precision_u24lambda_u2419.defaults;
            $this$precision_u24lambda_u2419.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : precision, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder bitmapConfig(Bitmap.Config bitmapConfig) {
            Builder $this$bitmapConfig_u24lambda_u2420 = this;
            DefaultRequestOptions defaultRequestOptions = $this$bitmapConfig_u24lambda_u2420.defaults;
            $this$bitmapConfig_u24lambda_u2420.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : bitmapConfig, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder dispatcher(CoroutineDispatcher dispatcher) {
            Builder $this$dispatcher_u24lambda_u2421 = this;
            DefaultRequestOptions defaultRequestOptions = $this$dispatcher_u24lambda_u2421.defaults;
            $this$dispatcher_u24lambda_u2421.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : dispatcher, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : dispatcher, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : dispatcher, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder interceptorDispatcher(CoroutineDispatcher dispatcher) {
            Builder $this$interceptorDispatcher_u24lambda_u2422 = this;
            DefaultRequestOptions defaultRequestOptions = $this$interceptorDispatcher_u24lambda_u2422.defaults;
            $this$interceptorDispatcher_u24lambda_u2422.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : dispatcher, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder fetcherDispatcher(CoroutineDispatcher dispatcher) {
            Builder $this$fetcherDispatcher_u24lambda_u2423 = this;
            DefaultRequestOptions defaultRequestOptions = $this$fetcherDispatcher_u24lambda_u2423.defaults;
            $this$fetcherDispatcher_u24lambda_u2423.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : dispatcher, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder decoderDispatcher(CoroutineDispatcher dispatcher) {
            Builder $this$decoderDispatcher_u24lambda_u2424 = this;
            DefaultRequestOptions defaultRequestOptions = $this$decoderDispatcher_u24lambda_u2424.defaults;
            $this$decoderDispatcher_u24lambda_u2424.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : dispatcher, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder transformationDispatcher(CoroutineDispatcher dispatcher) {
            Builder $this$transformationDispatcher_u24lambda_u2425 = this;
            DefaultRequestOptions defaultRequestOptions = $this$transformationDispatcher_u24lambda_u2425.defaults;
            $this$transformationDispatcher_u24lambda_u2425.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : dispatcher, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder placeholder(int drawableResId) {
            return placeholder(Contexts.getDrawableCompat(this.applicationContext, drawableResId));
        }

        public final Builder placeholder(Drawable drawable) {
            Builder $this$placeholder_u24lambda_u2426 = this;
            DefaultRequestOptions defaultRequestOptions = $this$placeholder_u24lambda_u2426.defaults;
            $this$placeholder_u24lambda_u2426.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : drawable != null ? drawable.mutate() : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder error(int drawableResId) {
            return error(Contexts.getDrawableCompat(this.applicationContext, drawableResId));
        }

        public final Builder error(Drawable drawable) {
            Builder $this$error_u24lambda_u2427 = this;
            DefaultRequestOptions defaultRequestOptions = $this$error_u24lambda_u2427.defaults;
            $this$error_u24lambda_u2427.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : drawable != null ? drawable.mutate() : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder fallback(int drawableResId) {
            return fallback(Contexts.getDrawableCompat(this.applicationContext, drawableResId));
        }

        public final Builder fallback(Drawable drawable) {
            Builder $this$fallback_u24lambda_u2428 = this;
            DefaultRequestOptions defaultRequestOptions = $this$fallback_u24lambda_u2428.defaults;
            $this$fallback_u24lambda_u2428.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : drawable != null ? drawable.mutate() : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder memoryCachePolicy(CachePolicy policy) {
            Builder $this$memoryCachePolicy_u24lambda_u2429 = this;
            DefaultRequestOptions defaultRequestOptions = $this$memoryCachePolicy_u24lambda_u2429.defaults;
            $this$memoryCachePolicy_u24lambda_u2429.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : policy, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder diskCachePolicy(CachePolicy policy) {
            Builder $this$diskCachePolicy_u24lambda_u2430 = this;
            DefaultRequestOptions defaultRequestOptions = $this$diskCachePolicy_u24lambda_u2430.defaults;
            $this$diskCachePolicy_u24lambda_u2430.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : policy, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : null);
            return this;
        }

        public final Builder networkCachePolicy(CachePolicy policy) {
            Builder $this$networkCachePolicy_u24lambda_u2431 = this;
            DefaultRequestOptions defaultRequestOptions = $this$networkCachePolicy_u24lambda_u2431.defaults;
            $this$networkCachePolicy_u24lambda_u2431.defaults = defaultRequestOptions.copy((32639 & 1) != 0 ? defaultRequestOptions.interceptorDispatcher : null, (32639 & 2) != 0 ? defaultRequestOptions.fetcherDispatcher : null, (32639 & 4) != 0 ? defaultRequestOptions.decoderDispatcher : null, (32639 & 8) != 0 ? defaultRequestOptions.transformationDispatcher : null, (32639 & 16) != 0 ? defaultRequestOptions.transitionFactory : null, (32639 & 32) != 0 ? defaultRequestOptions.precision : null, (32639 & 64) != 0 ? defaultRequestOptions.bitmapConfig : null, (32639 & 128) != 0 ? defaultRequestOptions.allowHardware : false, (32639 & 256) != 0 ? defaultRequestOptions.allowRgb565 : false, (32639 & 512) != 0 ? defaultRequestOptions.placeholder : null, (32639 & 1024) != 0 ? defaultRequestOptions.error : null, (32639 & 2048) != 0 ? defaultRequestOptions.fallback : null, (32639 & 4096) != 0 ? defaultRequestOptions.memoryCachePolicy : null, (32639 & 8192) != 0 ? defaultRequestOptions.diskCachePolicy : null, (32639 & 16384) != 0 ? defaultRequestOptions.networkCachePolicy : policy);
            return this;
        }

        public final Builder logger(Logger logger) {
            Builder $this$logger_u24lambda_u2432 = this;
            $this$logger_u24lambda_u2432.logger = logger;
            return this;
        }

        public final ImageLoader build() {
            Context context = this.applicationContext;
            DefaultRequestOptions defaultRequestOptions = this.defaults;
            Lazy<? extends MemoryCache> lazy = this.memoryCache;
            if (lazy == null) {
                lazy = LazyKt.lazy(new Function0() { // from class: coil.ImageLoader$Builder$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return new MemoryCache.Builder(this.f$0.applicationContext).build();
                    }
                });
            }
            Lazy<? extends DiskCache> lazy2 = this.diskCache;
            if (lazy2 == null) {
                lazy2 = LazyKt.lazy(new Function0() { // from class: coil.ImageLoader$Builder$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return SingletonDiskCache.INSTANCE.get(this.f$0.applicationContext);
                    }
                });
            }
            Lazy<? extends Call.Factory> lazy3 = this.callFactory;
            if (lazy3 == null) {
                lazy3 = LazyKt.lazy(new Function0() { // from class: coil.ImageLoader$Builder$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ImageLoader.Builder.build$lambda$35();
                    }
                });
            }
            EventListener.Factory factory = this.eventListenerFactory;
            if (factory == null) {
                factory = EventListener.Factory.NONE;
            }
            ComponentRegistry componentRegistry = this.componentRegistry;
            if (componentRegistry == null) {
                componentRegistry = new ComponentRegistry();
            }
            return new RealImageLoader(context, defaultRequestOptions, lazy, lazy2, lazy3, factory, componentRegistry, this.options, this.logger);
        }

        static final OkHttpClient build$lambda$35() {
            return new OkHttpClient();
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Migrate to 'memoryCache'.", replaceWith = @ReplaceWith(expression = "memoryCache { MemoryCache.Builder(context).maxSizePercent(percent).build() }", imports = {"coil.memory.MemoryCache"}))
        public final Builder availableMemoryPercentage(double percent) {
            Utils.unsupported();
            throw new KotlinNothingValueException();
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Migrate to 'memoryCache'.", replaceWith = @ReplaceWith(expression = "memoryCache { MemoryCache.Builder(context).weakReferencesEnabled(enable).build() }", imports = {"coil.memory.MemoryCache"}))
        public final Builder trackWeakReferences(boolean enable) {
            Utils.unsupported();
            throw new KotlinNothingValueException();
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Migrate to 'interceptorDispatcher'.", replaceWith = @ReplaceWith(expression = "interceptorDispatcher(if (enable) Dispatchers.Main.immediate else Dispatchers.IO)", imports = {"kotlinx.coroutines.Dispatchers"}))
        public final Builder launchInterceptorChainOnMainThread(boolean enable) {
            Utils.unsupported();
            throw new KotlinNothingValueException();
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Replace with 'components'.", replaceWith = @ReplaceWith(expression = "components(builder)", imports = {}))
        public final /* synthetic */ Builder componentRegistry(Function1 builder) {
            Utils.unsupported();
            throw new KotlinNothingValueException();
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Replace with 'components'.", replaceWith = @ReplaceWith(expression = "components(registry)", imports = {}))
        public final Builder componentRegistry(ComponentRegistry registry) {
            Utils.unsupported();
            throw new KotlinNothingValueException();
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Migrate to 'transitionFactory'.", replaceWith = @ReplaceWith(expression = "transitionFactory { _, _ -> transition }", imports = {}))
        public final Builder transition(Transition transition) {
            Utils.unsupported();
            throw new KotlinNothingValueException();
        }
    }
}
