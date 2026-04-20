package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.image.ImageDecoder;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes21.dex */
public class ImageRenderer extends BaseRenderer {
    private static final long IMAGE_PRESENTATION_WINDOW_THRESHOLD_US = 30000;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM_THEN_WAIT = 2;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 3;
    private static final String TAG = "ImageRenderer";
    private boolean codecNeedsInitialization;
    private int currentTileIndex;
    private ImageDecoder decoder;
    private final ImageDecoder.Factory decoderFactory;
    private int decoderReinitializationState;
    private int firstFrameState;
    private final DecoderInputBuffer flagsOnlyBuffer;
    private ImageOutput imageOutput;
    private DecoderInputBuffer inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;
    private long largestQueuedPresentationTimeUs;
    private long lastProcessedOutputBufferTimeUs;
    private TileInfo nextTileInfo;
    private Bitmap outputBitmap;
    private boolean outputStreamEnded;
    private OutputStreamInfo outputStreamInfo;
    private final ArrayDeque<OutputStreamInfo> pendingOutputStreamChanges;
    private boolean readyToOutputTiles;
    private TileInfo tileInfo;

    public ImageRenderer(ImageDecoder.Factory decoderFactory, ImageOutput imageOutput) {
        super(4);
        this.decoderFactory = decoderFactory;
        this.imageOutput = getImageOutput(imageOutput);
        this.flagsOnlyBuffer = DecoderInputBuffer.newNoDataInstance();
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        this.pendingOutputStreamChanges = new ArrayDeque<>();
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
        this.decoderReinitializationState = 0;
        this.firstFrameState = 1;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsFormat(Format format) {
        return this.decoderFactory.supportsFormat(format);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return;
        }
        if (this.inputFormat == null) {
            FormatHolder formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int result = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (result == -5) {
                this.inputFormat = (Format) Preconditions.checkNotNull(formatHolder.format);
                this.codecNeedsInitialization = true;
            } else {
                if (result == -4) {
                    Preconditions.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    this.outputStreamEnded = true;
                    return;
                }
                return;
            }
        }
        if (this.decoder == null && !maybeInitCodec()) {
            return;
        }
        try {
            TraceUtil.beginSection("drainAndFeedDecoder");
            while (drainOutput(positionUs, elapsedRealtimeUs)) {
            }
            while (feedInputBuffer(positionUs)) {
            }
            TraceUtil.endSection();
        } catch (ImageDecoderException e) {
            throw createRendererException(e, null, PlaybackException.ERROR_CODE_DECODING_FAILED);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return this.firstFrameState == 3 || (this.firstFrameState == 0 && this.readyToOutputTiles);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onEnabled(boolean joining, boolean mayRenderStartOfStream) throws ExoPlaybackException {
        int i;
        if (mayRenderStartOfStream) {
            i = 1;
        } else {
            i = 0;
        }
        this.firstFrameState = i;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onStreamChanged(Format[] formats, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        super.onStreamChanged(formats, startPositionUs, offsetUs, mediaPeriodId);
        if (this.outputStreamInfo.streamOffsetUs == C.TIME_UNSET || (this.pendingOutputStreamChanges.isEmpty() && (this.largestQueuedPresentationTimeUs == C.TIME_UNSET || (this.lastProcessedOutputBufferTimeUs != C.TIME_UNSET && this.lastProcessedOutputBufferTimeUs >= this.largestQueuedPresentationTimeUs)))) {
            this.outputStreamInfo = new OutputStreamInfo(C.TIME_UNSET, offsetUs);
        } else {
            this.pendingOutputStreamChanges.add(new OutputStreamInfo(this.largestQueuedPresentationTimeUs, offsetUs));
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onPositionReset(long positionUs, boolean joining, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        lowerFirstFrameState(1);
        this.outputStreamEnded = false;
        this.inputStreamEnded = false;
        this.outputBitmap = null;
        this.tileInfo = null;
        this.nextTileInfo = null;
        this.readyToOutputTiles = false;
        this.inputBuffer = null;
        if (this.decoder != null) {
            this.decoder.flush();
        }
        this.pendingOutputStreamChanges.clear();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onDisabled() {
        this.inputFormat = null;
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        this.pendingOutputStreamChanges.clear();
        releaseDecoderResources();
        this.imageOutput.onDisabled();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onReset() {
        releaseDecoderResources();
        lowerFirstFrameState(1);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onRelease() {
        releaseDecoderResources();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
        switch (messageType) {
            case 15:
                ImageOutput imageOutput = message instanceof ImageOutput ? (ImageOutput) message : null;
                setImageOutput(imageOutput);
                break;
            default:
                super.handleMessage(messageType, message);
                break;
        }
    }

    private boolean drainOutput(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException, ImageDecoderException {
        Bitmap bitmapCropTileFromImageGrid;
        if (this.outputBitmap != null && this.tileInfo == null) {
            return false;
        }
        if (this.firstFrameState == 0 && getState() != 2) {
            return false;
        }
        if (this.outputBitmap == null) {
            Preconditions.checkNotNull(this.decoder);
            ImageOutputBuffer outputBuffer = this.decoder.dequeueOutputBuffer();
            if (outputBuffer == null) {
                return false;
            }
            if (((ImageOutputBuffer) Preconditions.checkNotNull(outputBuffer)).isEndOfStream()) {
                if (this.decoderReinitializationState == 3) {
                    releaseDecoderResources();
                    Preconditions.checkNotNull(this.inputFormat);
                    maybeInitCodec();
                } else {
                    ((ImageOutputBuffer) Preconditions.checkNotNull(outputBuffer)).release();
                    if (this.pendingOutputStreamChanges.isEmpty()) {
                        this.outputStreamEnded = true;
                    }
                }
                return false;
            }
            Preconditions.checkNotNull(outputBuffer.bitmap, "Non-EOS buffer came back from the decoder without bitmap.");
            this.outputBitmap = outputBuffer.bitmap;
            ((ImageOutputBuffer) Preconditions.checkNotNull(outputBuffer)).release();
        }
        if (!this.readyToOutputTiles || this.outputBitmap == null || this.tileInfo == null) {
            return false;
        }
        Preconditions.checkNotNull(this.inputFormat);
        boolean isThumbnailGrid = ((this.inputFormat.tileCountHorizontal == 1 && this.inputFormat.tileCountVertical == 1) || this.inputFormat.tileCountHorizontal == -1 || this.inputFormat.tileCountVertical == -1) ? false : true;
        if (!this.tileInfo.hasTileBitmap()) {
            TileInfo tileInfo = this.tileInfo;
            if (isThumbnailGrid) {
                bitmapCropTileFromImageGrid = cropTileFromImageGrid(this.tileInfo.getTileIndex());
            } else {
                bitmapCropTileFromImageGrid = (Bitmap) Preconditions.checkNotNull(this.outputBitmap);
            }
            tileInfo.setTileBitmap(bitmapCropTileFromImageGrid);
        }
        if (!processOutputBuffer(positionUs, elapsedRealtimeUs, (Bitmap) Preconditions.checkNotNull(this.tileInfo.getTileBitmap()), this.tileInfo.getPresentationTimeUs())) {
            return false;
        }
        onProcessedOutputBuffer(((TileInfo) Preconditions.checkNotNull(this.tileInfo)).getPresentationTimeUs());
        this.firstFrameState = 3;
        if (!isThumbnailGrid || ((TileInfo) Preconditions.checkNotNull(this.tileInfo)).getTileIndex() == (((Format) Preconditions.checkNotNull(this.inputFormat)).tileCountVertical * ((Format) Preconditions.checkNotNull(this.inputFormat)).tileCountHorizontal) - 1) {
            this.outputBitmap = null;
        }
        this.tileInfo = this.nextTileInfo;
        this.nextTileInfo = null;
        return true;
    }

    private boolean shouldForceRender() {
        boolean isStarted = getState() == 2;
        switch (this.firstFrameState) {
            case 0:
                return isStarted;
            case 1:
                return true;
            case 2:
            default:
                throw new IllegalStateException();
            case 3:
                return false;
        }
    }

    protected boolean processOutputBuffer(long positionUs, long elapsedRealtimeUs, Bitmap outputBitmap, long bufferPresentationTimeUs) throws ExoPlaybackException {
        long earlyUs = bufferPresentationTimeUs - positionUs;
        if (shouldForceRender() || earlyUs < 30000) {
            this.imageOutput.onImageAvailable(bufferPresentationTimeUs - this.outputStreamInfo.streamOffsetUs, outputBitmap);
            return true;
        }
        return false;
    }

    protected boolean maybeInitializeProcessingPipeline() throws ExoPlaybackException {
        return true;
    }

    private void onProcessedOutputBuffer(long presentationTimeUs) {
        this.lastProcessedOutputBufferTimeUs = presentationTimeUs;
        while (!this.pendingOutputStreamChanges.isEmpty() && presentationTimeUs >= this.pendingOutputStreamChanges.peek().previousStreamLastBufferTimeUs) {
            this.outputStreamInfo = this.pendingOutputStreamChanges.removeFirst();
        }
    }

    private boolean feedInputBuffer(long positionUs) throws ImageDecoderException {
        if (this.readyToOutputTiles && this.tileInfo != null) {
            return false;
        }
        FormatHolder formatHolder = getFormatHolder();
        if (this.decoder == null || this.decoderReinitializationState == 3 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            this.inputBuffer = this.decoder.dequeueInputBuffer();
            if (this.inputBuffer == null) {
                return false;
            }
        }
        int i = this.decoderReinitializationState;
        DecoderInputBuffer decoderInputBuffer = this.inputBuffer;
        if (i == 2) {
            Preconditions.checkNotNull(decoderInputBuffer);
            this.inputBuffer.setFlags(4);
            ((ImageDecoder) Preconditions.checkNotNull(this.decoder)).queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 3;
            return false;
        }
        switch (readSource(formatHolder, decoderInputBuffer, 0)) {
            case C.RESULT_FORMAT_READ /* -5 */:
                this.inputFormat = (Format) Preconditions.checkNotNull(formatHolder.format);
                this.codecNeedsInitialization = true;
                this.decoderReinitializationState = 2;
                return true;
            case -4:
                this.inputBuffer.flip();
                boolean shouldQueueBuffer = (this.inputBuffer.data != null && this.inputBuffer.data.remaining() > 0) || ((DecoderInputBuffer) Preconditions.checkNotNull(this.inputBuffer)).isEndOfStream();
                if (shouldQueueBuffer) {
                    ((DecoderInputBuffer) Preconditions.checkNotNull(this.inputBuffer)).format = this.inputFormat;
                    ((ImageDecoder) Preconditions.checkNotNull(this.decoder)).queueInputBuffer((DecoderInputBuffer) Preconditions.checkNotNull(this.inputBuffer));
                    this.currentTileIndex = 0;
                }
                maybeAdvanceTileInfo(positionUs, (DecoderInputBuffer) Preconditions.checkNotNull(this.inputBuffer));
                if (((DecoderInputBuffer) Preconditions.checkNotNull(this.inputBuffer)).isEndOfStream()) {
                    this.inputStreamEnded = true;
                    this.inputBuffer = null;
                    return false;
                }
                this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, ((DecoderInputBuffer) Preconditions.checkNotNull(this.inputBuffer)).timeUs);
                if (shouldQueueBuffer) {
                    this.inputBuffer = null;
                } else {
                    ((DecoderInputBuffer) Preconditions.checkNotNull(this.inputBuffer)).clear();
                }
                return !this.readyToOutputTiles;
            case -3:
                return false;
            default:
                throw new IllegalStateException();
        }
    }

    private boolean maybeInitCodec() throws ExoPlaybackException {
        if (!maybeInitializeProcessingPipeline()) {
            return false;
        }
        if (!this.codecNeedsInitialization) {
            return true;
        }
        if (canCreateDecoderForFormat((Format) Preconditions.checkNotNull(this.inputFormat))) {
            if (this.decoder != null) {
                this.decoder.release();
            }
            this.decoder = this.decoderFactory.createImageDecoder();
            this.codecNeedsInitialization = false;
            return true;
        }
        throw createRendererException(new ImageDecoderException("Provided decoder factory can't create decoder for format."), this.inputFormat, PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
    }

    private boolean canCreateDecoderForFormat(Format format) {
        int supportsFormat = this.decoderFactory.supportsFormat(format);
        return supportsFormat == RendererCapabilities.create(4) || supportsFormat == RendererCapabilities.create(3);
    }

    private void lowerFirstFrameState(int firstFrameState) {
        this.firstFrameState = Math.min(this.firstFrameState, firstFrameState);
    }

    private void releaseDecoderResources() {
        this.inputBuffer = null;
        this.decoderReinitializationState = 0;
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        if (this.decoder != null) {
            this.decoder.release();
            this.decoder = null;
        }
    }

    private void setImageOutput(ImageOutput imageOutput) {
        this.imageOutput = getImageOutput(imageOutput);
    }

    private void maybeAdvanceTileInfo(long positionUs, DecoderInputBuffer inputBuffer) {
        boolean z = true;
        if (inputBuffer.isEndOfStream()) {
            this.readyToOutputTiles = true;
            return;
        }
        this.nextTileInfo = new TileInfo(this.currentTileIndex, inputBuffer.timeUs);
        this.currentTileIndex++;
        if (!this.readyToOutputTiles) {
            long tilePresentationTimeUs = this.nextTileInfo.getPresentationTimeUs();
            boolean isNextTileWithinPresentationThreshold = tilePresentationTimeUs - 30000 <= positionUs && positionUs <= 30000 + tilePresentationTimeUs;
            boolean isPositionBetweenTiles = this.tileInfo != null && this.tileInfo.getPresentationTimeUs() <= positionUs && positionUs < tilePresentationTimeUs;
            boolean isNextTileLastInGrid = isTileLastInGrid((TileInfo) Preconditions.checkNotNull(this.nextTileInfo));
            if (!isNextTileWithinPresentationThreshold && !isPositionBetweenTiles && !isNextTileLastInGrid) {
                z = false;
            }
            this.readyToOutputTiles = z;
            if (isPositionBetweenTiles && !isNextTileWithinPresentationThreshold) {
                return;
            }
        }
        this.tileInfo = this.nextTileInfo;
        this.nextTileInfo = null;
    }

    private boolean isTileLastInGrid(TileInfo tileInfo) {
        return ((Format) Preconditions.checkNotNull(this.inputFormat)).tileCountHorizontal == -1 || this.inputFormat.tileCountVertical == -1 || tileInfo.getTileIndex() == (((Format) Preconditions.checkNotNull(this.inputFormat)).tileCountVertical * this.inputFormat.tileCountHorizontal) - 1;
    }

    private Bitmap cropTileFromImageGrid(int tileIndex) {
        Preconditions.checkNotNull(this.outputBitmap);
        int tileWidth = this.outputBitmap.getWidth() / ((Format) Preconditions.checkNotNull(this.inputFormat)).tileCountHorizontal;
        int tileHeight = this.outputBitmap.getHeight() / ((Format) Preconditions.checkNotNull(this.inputFormat)).tileCountVertical;
        int tileStartXCoordinate = (tileIndex % this.inputFormat.tileCountHorizontal) * tileWidth;
        int tileStartYCoordinate = (tileIndex / this.inputFormat.tileCountHorizontal) * tileHeight;
        return Bitmap.createBitmap(this.outputBitmap, tileStartXCoordinate, tileStartYCoordinate, tileWidth, tileHeight);
    }

    private static ImageOutput getImageOutput(ImageOutput imageOutput) {
        return imageOutput == null ? ImageOutput.NO_OP : imageOutput;
    }

    private static class TileInfo {
        private final long presentationTimeUs;
        private Bitmap tileBitmap;
        private final int tileIndex;

        public TileInfo(int tileIndex, long presentationTimeUs) {
            this.tileIndex = tileIndex;
            this.presentationTimeUs = presentationTimeUs;
        }

        public int getTileIndex() {
            return this.tileIndex;
        }

        public long getPresentationTimeUs() {
            return this.presentationTimeUs;
        }

        public Bitmap getTileBitmap() {
            return this.tileBitmap;
        }

        public void setTileBitmap(Bitmap tileBitmap) {
            this.tileBitmap = tileBitmap;
        }

        public boolean hasTileBitmap() {
            return this.tileBitmap != null;
        }
    }

    private static final class OutputStreamInfo {
        public static final OutputStreamInfo UNSET = new OutputStreamInfo(C.TIME_UNSET, C.TIME_UNSET);
        public final long previousStreamLastBufferTimeUs;
        public final long streamOffsetUs;

        public OutputStreamInfo(long previousStreamLastBufferTimeUs, long streamOffsetUs) {
            this.previousStreamLastBufferTimeUs = previousStreamLastBufferTimeUs;
            this.streamOffsetUs = streamOffsetUs;
        }
    }
}
