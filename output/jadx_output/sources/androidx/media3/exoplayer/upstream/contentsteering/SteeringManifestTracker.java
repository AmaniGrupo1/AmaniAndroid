package androidx.media3.exoplayer.upstream.contentsteering;

import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
public final class SteeringManifestTracker {
    static final long FALLBACK_DELAY_UNTIL_NEXT_LOAD_MS = 300000;
    private static final String RETRY_AFTER_HEADER = "Retry-After";
    private static final String TAG = "SteeringManifestTracker";
    private Callback callback;
    private final Clock clock;
    private final DataSource.Factory dataSourceFactory;
    private final Supplier<ReleasableExecutor> downloadExecutorSupplier;
    private MediaSourceEventListener.EventDispatcher eventDispatcher;
    private boolean hasStarted;
    private SteeringManifest steeringManifest;
    private Loader steeringManifestLoader;
    private final SteeringManifestLoaderCallback steeringManifestLoaderCallback;
    private HandlerWrapper steeringManifestReloadHandler;
    private Uri steeringManifestUrl;

    public interface Callback {
        ImmutableMap<String, String> getSteeringQueryParameters();

        void onSteeringManifestUpdated(SteeringManifest steeringManifest);
    }

    public SteeringManifestTracker(DataSource.Factory dataSourceFactory, Supplier<ReleasableExecutor> downloadExecutorSupplier) {
        this(dataSourceFactory, downloadExecutorSupplier, Clock.DEFAULT);
    }

    SteeringManifestTracker(DataSource.Factory dataSourceFactory, Supplier<ReleasableExecutor> downloadExecutorSupplier, Clock clock) {
        this.dataSourceFactory = dataSourceFactory;
        this.downloadExecutorSupplier = downloadExecutorSupplier;
        this.clock = clock;
        this.steeringManifestLoaderCallback = new SteeringManifestLoaderCallback();
    }

    public void start(Uri initialSteeringManifestUrl, Callback callback, MediaSourceEventListener.EventDispatcher eventDispatcher) {
        Loader loader;
        this.steeringManifestUrl = initialSteeringManifestUrl;
        this.callback = callback;
        this.eventDispatcher = eventDispatcher;
        this.steeringManifestReloadHandler = this.clock.createHandler(Util.getCurrentOrMainLooper(), null);
        if (this.downloadExecutorSupplier != null) {
            loader = new Loader(this.downloadExecutorSupplier.get());
        } else {
            loader = new Loader(TAG);
        }
        this.steeringManifestLoader = loader;
        this.hasStarted = true;
        loadSteeringManifestImmediately();
    }

    public void stop() {
        this.steeringManifest = null;
        if (this.steeringManifestLoader != null) {
            this.steeringManifestLoader.release();
            this.steeringManifestLoader = null;
        }
        if (this.steeringManifestReloadHandler != null) {
            this.steeringManifestReloadHandler.removeCallbacksAndMessages(null);
            this.steeringManifestReloadHandler = null;
        }
        this.callback = null;
        this.eventDispatcher = null;
        this.hasStarted = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSteeringManifestImmediately() {
        Preconditions.checkState(this.hasStarted);
        Uri.Builder steeringManifestUrlBuilder = ((Uri) Preconditions.checkNotNull(this.steeringManifestUrl)).buildUpon();
        ImmutableMap<String, String> steeringQueryParameters = ((Callback) Preconditions.checkNotNull(this.callback)).getSteeringQueryParameters();
        UnmodifiableIterator<Map.Entry<String, String>> it = steeringQueryParameters.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> entry = it.next();
            steeringManifestUrlBuilder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        DataSpec dataSpec = new DataSpec.Builder().setUri((Uri) Preconditions.checkNotNull(steeringManifestUrlBuilder.build())).build();
        ParsingLoadable<SteeringManifest> steeringManifestLoadable = new ParsingLoadable<>(this.dataSourceFactory.createDataSource(), dataSpec, 8, new SteeringManifestParser());
        ((Loader) Preconditions.checkNotNull(this.steeringManifestLoader)).startLoading(steeringManifestLoadable, this.steeringManifestLoaderCallback, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Uri getSteeringManifestUrl(Uri previousSteeringManifestUrl, Uri reloadUri) {
        if (reloadUri == null) {
            return previousSteeringManifestUrl;
        }
        if (UriUtil.isAbsolute(reloadUri.toString())) {
            return reloadUri;
        }
        return UriUtil.resolveToUri(previousSteeringManifestUrl.toString(), reloadUri.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LoadEventInfo buildLoadEventInfo(ParsingLoadable<SteeringManifest> loadable, long elapsedRealtimeMs, long loadDurationMs) {
        return new LoadEventInfo(loadable.loadTaskId, loadable.dataSpec, loadable.getUri(), loadable.getResponseHeaders(), elapsedRealtimeMs, loadDurationMs, loadable.bytesLoaded());
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SteeringManifestLoaderCallback implements Loader.Callback<ParsingLoadable<SteeringManifest>> {
        private SteeringManifestLoaderCallback() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadStarted(ParsingLoadable<SteeringManifest> loadable, long elapsedRealtimeMs, long loadDurationMs, int retryCount) {
            if (SteeringManifestTracker.this.hasStarted) {
                LoadEventInfo loadEventInfo = SteeringManifestTracker.buildLoadEventInfo(loadable, elapsedRealtimeMs, loadDurationMs);
                ((MediaSourceEventListener.EventDispatcher) Preconditions.checkNotNull(SteeringManifestTracker.this.eventDispatcher)).loadStarted(loadEventInfo, 8, retryCount);
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(ParsingLoadable<SteeringManifest> loadable, long elapsedRealtimeMs, long loadDurationMs) {
            long delayUntilNextLoadMs;
            if (!SteeringManifestTracker.this.hasStarted) {
                return;
            }
            SteeringManifest newSteeringManifest = (SteeringManifest) Preconditions.checkNotNull(loadable.getResult());
            SteeringManifestTracker.this.steeringManifest = newSteeringManifest;
            ((Callback) Preconditions.checkNotNull(SteeringManifestTracker.this.callback)).onSteeringManifestUpdated(newSteeringManifest);
            SteeringManifestTracker.this.steeringManifestUrl = SteeringManifestTracker.getSteeringManifestUrl((Uri) Preconditions.checkNotNull(SteeringManifestTracker.this.steeringManifestUrl), newSteeringManifest.reloadUri);
            if (newSteeringManifest.timeToLiveMs != C.TIME_UNSET) {
                delayUntilNextLoadMs = newSteeringManifest.timeToLiveMs;
            } else {
                delayUntilNextLoadMs = 300000;
            }
            HandlerWrapper handlerWrapper = (HandlerWrapper) Preconditions.checkNotNull(SteeringManifestTracker.this.steeringManifestReloadHandler);
            final SteeringManifestTracker steeringManifestTracker = SteeringManifestTracker.this;
            handlerWrapper.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestTracker$SteeringManifestLoaderCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    steeringManifestTracker.loadSteeringManifestImmediately();
                }
            }, delayUntilNextLoadMs);
            LoadEventInfo loadEventInfo = SteeringManifestTracker.buildLoadEventInfo(loadable, elapsedRealtimeMs, loadDurationMs);
            ((MediaSourceEventListener.EventDispatcher) Preconditions.checkNotNull(SteeringManifestTracker.this.eventDispatcher)).loadCompleted(loadEventInfo, 8);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(ParsingLoadable<SteeringManifest> loadable, long elapsedRealtimeMs, long loadDurationMs, boolean released) {
            if (SteeringManifestTracker.this.hasStarted) {
                LoadEventInfo loadEventInfo = SteeringManifestTracker.buildLoadEventInfo(loadable, elapsedRealtimeMs, loadDurationMs);
                ((MediaSourceEventListener.EventDispatcher) Preconditions.checkNotNull(SteeringManifestTracker.this.eventDispatcher)).loadCanceled(loadEventInfo, 8);
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<SteeringManifest> loadable, long elapsedRealtimeMs, long loadDurationMs, IOException error, int errorCount) {
            int responseCode;
            if (!SteeringManifestTracker.this.hasStarted) {
                return Loader.DONT_RETRY;
            }
            if (!(error instanceof HttpDataSource.InvalidResponseCodeException)) {
                responseCode = Integer.MAX_VALUE;
            } else {
                int responseCode2 = ((HttpDataSource.InvalidResponseCodeException) error).responseCode;
                responseCode = responseCode2;
            }
            long delayUntilNextLoadMs = 300000;
            if (responseCode == 410) {
                delayUntilNextLoadMs = C.TIME_UNSET;
                ((Loader) Preconditions.checkNotNull(SteeringManifestTracker.this.steeringManifestLoader)).release();
                ((HandlerWrapper) Preconditions.checkNotNull(SteeringManifestTracker.this.steeringManifestReloadHandler)).removeCallbacksAndMessages(null);
            } else if (responseCode != 429) {
                if (SteeringManifestTracker.this.steeringManifest != null && SteeringManifestTracker.this.steeringManifest.timeToLiveMs != C.TIME_UNSET) {
                    delayUntilNextLoadMs = SteeringManifestTracker.this.steeringManifest.timeToLiveMs;
                }
            } else {
                List<String> retryAfter = loadable.getResponseHeaders().get("Retry-After");
                if (retryAfter != null) {
                    try {
                        delayUntilNextLoadMs = Long.parseLong(retryAfter.get(0)) * 1000;
                    } catch (NumberFormatException e) {
                        Log.w(SteeringManifestTracker.TAG, "Retry-After header string doesn't contain a parsable long");
                    }
                }
            }
            if (delayUntilNextLoadMs != C.TIME_UNSET) {
                HandlerWrapper handlerWrapper = (HandlerWrapper) Preconditions.checkNotNull(SteeringManifestTracker.this.steeringManifestReloadHandler);
                final SteeringManifestTracker steeringManifestTracker = SteeringManifestTracker.this;
                handlerWrapper.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestTracker$SteeringManifestLoaderCallback$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        steeringManifestTracker.loadSteeringManifestImmediately();
                    }
                }, delayUntilNextLoadMs);
            }
            LoadEventInfo loadEventInfo = SteeringManifestTracker.buildLoadEventInfo(loadable, elapsedRealtimeMs, loadDurationMs);
            ((MediaSourceEventListener.EventDispatcher) Preconditions.checkNotNull(SteeringManifestTracker.this.eventDispatcher)).loadError(loadEventInfo, 8, error, delayUntilNextLoadMs == C.TIME_UNSET);
            return Loader.DONT_RETRY;
        }
    }
}
