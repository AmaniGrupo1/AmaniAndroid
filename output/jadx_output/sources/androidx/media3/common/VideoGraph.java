package androidx.media3.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import androidx.media3.common.util.TimestampIterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public interface VideoGraph {

    public interface Factory {
        VideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, Listener listener, Executor executor, long j, boolean z);

        boolean supportsMultipleInputs();
    }

    void flush();

    Surface getInputSurface(int i);

    int getPendingInputFrameCount(int i);

    boolean hasProducedFrameWithTimestampZero();

    void initialize() throws VideoFrameProcessingException;

    boolean queueInputBitmap(int i, Bitmap bitmap, TimestampIterator timestampIterator);

    boolean queueInputTexture(int i, int i2, long j);

    void redraw();

    void registerInput(int i) throws VideoFrameProcessingException;

    boolean registerInputFrame(int i);

    void registerInputStream(int i, int i2, Format format, List<Effect> list, long j);

    void release();

    void renderOutputFrame(long j);

    void setCompositionEffects(List<Effect> list);

    void setCompositorSettings(VideoCompositorSettings videoCompositorSettings);

    void setOnInputFrameProcessedListener(int i, OnInputFrameProcessedListener onInputFrameProcessedListener);

    void setOnInputSurfaceReadyListener(int i, Runnable runnable);

    void setOutputSurfaceInfo(SurfaceInfo surfaceInfo);

    void signalEndOfInput(int i);

    public interface Listener {
        default void onOutputSizeChanged(int width, int height) {
        }

        default void onOutputFrameRateChanged(float frameRate) {
        }

        default void onOutputFrameAvailableForRendering(long framePresentationTimeUs, boolean isRedrawnFrame) {
        }

        default void onEnded(long finalFramePresentationTimeUs) {
        }

        default void onError(VideoFrameProcessingException exception) {
        }
    }
}
