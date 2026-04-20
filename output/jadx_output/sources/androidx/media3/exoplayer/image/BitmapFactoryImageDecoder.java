package androidx.media3.exoplayer.image;

import android.content.Context;
import android.graphics.Point;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BitmapUtil;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.image.ImageDecoder;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes21.dex */
public final class BitmapFactoryImageDecoder extends SimpleDecoder<DecoderInputBuffer, ImageOutputBuffer, ImageDecoderException> implements ImageDecoder {
    private final Context context;
    private final int maxOutputSize;

    @Override // androidx.media3.decoder.SimpleDecoder, androidx.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ ImageOutputBuffer dequeueOutputBuffer() throws ImageDecoderException {
        return (ImageOutputBuffer) super.dequeueOutputBuffer();
    }

    public static final class Factory implements ImageDecoder.Factory {
        private final Context context;
        private int maxOutputSize;

        @Deprecated
        public Factory() {
            this.context = null;
            this.maxOutputSize = -1;
        }

        public Factory(Context context) {
            this.context = (Context) Preconditions.checkNotNull(context);
            this.maxOutputSize = -1;
        }

        public Factory setMaxOutputSize(int maxOutputSize) {
            Preconditions.checkArgument(maxOutputSize == -1 || maxOutputSize > 0);
            this.maxOutputSize = maxOutputSize;
            return this;
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public int supportsFormat(Format format) {
            if (format.sampleMimeType == null || !MimeTypes.isImage(format.sampleMimeType)) {
                return RendererCapabilities.create(0);
            }
            if (Util.isBitmapFactorySupportedMimeType(format.sampleMimeType)) {
                return RendererCapabilities.create(4);
            }
            return RendererCapabilities.create(1);
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public BitmapFactoryImageDecoder createImageDecoder() {
            return new BitmapFactoryImageDecoder(this.context, this.maxOutputSize);
        }
    }

    private BitmapFactoryImageDecoder(Context context, int maxOutputSize) {
        super(new DecoderInputBuffer[1], new ImageOutputBuffer[1]);
        this.context = context;
        this.maxOutputSize = maxOutputSize;
    }

    @Override // androidx.media3.decoder.Decoder
    public String getName() {
        return "BitmapFactoryImageDecoder";
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    protected DecoderInputBuffer createInputBuffer() {
        return new DecoderInputBuffer(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    public ImageOutputBuffer createOutputBuffer() {
        return new ImageOutputBuffer() { // from class: androidx.media3.exoplayer.image.BitmapFactoryImageDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public void release() {
                BitmapFactoryImageDecoder.this.releaseOutputBuffer(this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    public ImageDecoderException createUnexpectedDecodeException(Throwable error) {
        return new ImageDecoderException("Unexpected decode error", error);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    public ImageDecoderException decode(DecoderInputBuffer inputBuffer, ImageOutputBuffer outputBuffer, boolean reset) {
        int maxSize;
        ByteBuffer inputData = (ByteBuffer) Preconditions.checkNotNull(inputBuffer.data);
        Preconditions.checkState(inputData.hasArray());
        Preconditions.checkArgument(inputData.arrayOffset() == 0);
        try {
            if (this.maxOutputSize != -1) {
                maxSize = this.maxOutputSize;
            } else if (this.context != null) {
                Point currentDisplayModeSize = Util.getCurrentDisplayModeSize(this.context);
                int maxWidth = currentDisplayModeSize.x;
                int maxHeight = currentDisplayModeSize.y;
                if (inputBuffer.format != null) {
                    if (inputBuffer.format.tileCountHorizontal != -1) {
                        maxWidth *= inputBuffer.format.tileCountHorizontal;
                    }
                    if (inputBuffer.format.tileCountVertical != -1) {
                        maxHeight *= inputBuffer.format.tileCountVertical;
                    }
                }
                maxSize = (Math.max(maxWidth, maxHeight) * 2) - 1;
            } else {
                maxSize = 4096;
            }
            outputBuffer.bitmap = BitmapUtil.decode(inputData.array(), inputData.remaining(), null, maxSize);
            outputBuffer.timeUs = inputBuffer.timeUs;
            return null;
        } catch (ParserException e) {
            return new ImageDecoderException("Could not decode image data with BitmapFactory.", e);
        } catch (IOException e2) {
            return new ImageDecoderException(e2);
        }
    }
}
