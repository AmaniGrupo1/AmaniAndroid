package coil.decode;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import androidx.core.view.MotionEventCompat;
import coil.ImageLoader;
import coil.decode.Decoder;
import coil.decode.ImageSource;
import coil.fetch.SourceResult;
import coil.request.Options;
import coil.size.Scale;
import coil.size.Size;
import coil.size.Sizes;
import coil.util.Bitmaps;
import coil.util.Utils;
import com.google.firebase.firestore.model.Values;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.InterruptibleKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: compiled from: BitmapFactoryDecoder.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00192\u00020\u0001:\u0003\u0017\u0018\u0019B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bB\u0019\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\fB#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\rJ\u000e\u0010\u000e\u001a\u00020\u000fH\u0096@¢\u0006\u0002\u0010\u0010J\f\u0010\u000e\u001a\u00020\u000f*\u00020\u0011H\u0002J\u0014\u0010\u0012\u001a\u00020\u0013*\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0014\u0010\u0016\u001a\u00020\u0013*\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcoil/decode/BitmapFactoryDecoder;", "Lcoil/decode/Decoder;", "source", "Lcoil/decode/ImageSource;", "options", "Lcoil/request/Options;", "parallelismLock", "Lkotlinx/coroutines/sync/Semaphore;", "exifOrientationPolicy", "Lcoil/decode/ExifOrientationPolicy;", "<init>", "(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;)V", "(Lcoil/decode/ImageSource;Lcoil/request/Options;)V", "(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V", "decode", "Lcoil/decode/DecodeResult;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/graphics/BitmapFactory$Options;", "configureConfig", "", "exifData", "Lcoil/decode/ExifData;", "configureScale", "Factory", "ExceptionCatchingSource", "Companion", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BitmapFactoryDecoder implements Decoder {
    public static final int DEFAULT_MAX_PARALLELISM = 4;
    private final ExifOrientationPolicy exifOrientationPolicy;
    private final Options options;
    private final Semaphore parallelismLock;
    private final ImageSource source;

    /* JADX INFO: renamed from: coil.decode.BitmapFactoryDecoder$decode$1, reason: invalid class name */
    /* JADX INFO: compiled from: BitmapFactoryDecoder.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.decode.BitmapFactoryDecoder", f = "BitmapFactoryDecoder.kt", i = {0, 0, 1}, l = {231, MotionEventCompat.AXIS_GENERIC_15}, m = "decode", n = {"this", "$this$withPermit$iv", "$this$withPermit$iv"}, s = {"L$0", "L$1", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
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
            return BitmapFactoryDecoder.this.decode(this);
        }
    }

    public BitmapFactoryDecoder(ImageSource source, Options options, Semaphore parallelismLock, ExifOrientationPolicy exifOrientationPolicy) {
        this.source = source;
        this.options = options;
        this.parallelismLock = parallelismLock;
        this.exifOrientationPolicy = exifOrientationPolicy;
    }

    public /* synthetic */ BitmapFactoryDecoder(ImageSource imageSource, Options options, Semaphore semaphore, ExifOrientationPolicy exifOrientationPolicy, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageSource, options, (i & 4) != 0 ? SemaphoreKt.Semaphore$default(Integer.MAX_VALUE, 0, 2, null) : semaphore, (i & 8) != 0 ? ExifOrientationPolicy.RESPECT_PERFORMANCE : exifOrientationPolicy);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public /* synthetic */ BitmapFactoryDecoder(ImageSource source, Options options) {
        this(source, options, null, null, 12, null);
    }

    public /* synthetic */ BitmapFactoryDecoder(ImageSource imageSource, Options options, Semaphore semaphore, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageSource, options, (i & 4) != 0 ? SemaphoreKt.Semaphore$default(Integer.MAX_VALUE, 0, 2, null) : semaphore);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public /* synthetic */ BitmapFactoryDecoder(ImageSource source, Options options, Semaphore parallelismLock) {
        this(source, options, parallelismLock, null, 8, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // coil.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object decode(Continuation<? super DecodeResult> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        final BitmapFactoryDecoder bitmapFactoryDecoder;
        Semaphore $this$withPermit$iv;
        Semaphore $this$withPermit$iv2;
        Throwable th;
        Semaphore $this$withPermit$iv3;
        Object objRunInterruptible$default;
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
                bitmapFactoryDecoder = this;
                Semaphore $this$withPermit$iv4 = bitmapFactoryDecoder.parallelismLock;
                anonymousClass1.L$0 = bitmapFactoryDecoder;
                anonymousClass1.L$1 = $this$withPermit$iv4;
                anonymousClass1.label = 1;
                if ($this$withPermit$iv4.acquire(anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $this$withPermit$iv = $this$withPermit$iv4;
                $this$withPermit$iv2 = null;
                try {
                    Function0 function0 = new Function0() { // from class: coil.decode.BitmapFactoryDecoder$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return this.f$0.decode(new BitmapFactory.Options());
                        }
                    };
                    anonymousClass1.L$0 = $this$withPermit$iv;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                    objRunInterruptible$default = InterruptibleKt.runInterruptible$default(null, function0, anonymousClass1, 1, null);
                    if (objRunInterruptible$default != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    try {
                        DecodeResult decodeResult = (DecodeResult) objRunInterruptible$default;
                        $this$withPermit$iv.release();
                        return decodeResult;
                    } catch (Throwable th2) {
                        th = th2;
                        $this$withPermit$iv3 = $this$withPermit$iv;
                        $this$withPermit$iv3.release();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    $this$withPermit$iv3 = $this$withPermit$iv;
                    $this$withPermit$iv3.release();
                    throw th;
                }
            case 1:
                $this$withPermit$iv2 = null;
                $this$withPermit$iv = (Semaphore) anonymousClass1.L$1;
                bitmapFactoryDecoder = (BitmapFactoryDecoder) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                Function0 function02 = new Function0() { // from class: coil.decode.BitmapFactoryDecoder$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return this.f$0.decode(new BitmapFactory.Options());
                    }
                };
                anonymousClass1.L$0 = $this$withPermit$iv;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                objRunInterruptible$default = InterruptibleKt.runInterruptible$default(null, function02, anonymousClass1, 1, null);
                if (objRunInterruptible$default != coroutine_suspended) {
                }
                break;
            case 2:
                $this$withPermit$iv3 = (Semaphore) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    $this$withPermit$iv = $this$withPermit$iv3;
                    objRunInterruptible$default = $result;
                    DecodeResult decodeResult2 = (DecodeResult) objRunInterruptible$default;
                    $this$withPermit$iv.release();
                    return decodeResult2;
                } catch (Throwable th4) {
                    th = th4;
                    $this$withPermit$iv3.release();
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DecodeResult decode(BitmapFactory.Options $this$decode) throws Exception {
        ExceptionCatchingSource safeSource = new ExceptionCatchingSource(this.source.source());
        BufferedSource safeBufferedSource = Okio.buffer(safeSource);
        boolean z = true;
        $this$decode.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(safeBufferedSource.peek().inputStream(), null, $this$decode);
        Exception it = safeSource.getException();
        if (it != null) {
            throw it;
        }
        $this$decode.inJustDecodeBounds = false;
        ExifData exifData = ExifUtils.INSTANCE.getExifData($this$decode.outMimeType, safeBufferedSource, this.exifOrientationPolicy);
        Exception it2 = safeSource.getException();
        if (it2 != null) {
            throw it2;
        }
        $this$decode.inMutable = false;
        if (Build.VERSION.SDK_INT >= 26 && this.options.getColorSpace() != null) {
            $this$decode.inPreferredColorSpace = this.options.getColorSpace();
        }
        $this$decode.inPremultiplied = this.options.getPremultipliedAlpha();
        configureConfig($this$decode, exifData);
        configureScale($this$decode, exifData);
        BufferedSource it3 = safeBufferedSource;
        try {
            Bitmap outBitmap = BitmapFactory.decodeStream(it3.inputStream(), null, $this$decode);
            CloseableKt.closeFinally(it3, null);
            Exception it4 = safeSource.getException();
            if (it4 != null) {
                throw it4;
            }
            if (outBitmap == null) {
                throw new IllegalStateException("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it's not encoded as a valid image format.".toString());
            }
            outBitmap.setDensity(this.options.getContext().getResources().getDisplayMetrics().densityDpi);
            Bitmap bitmap = ExifUtils.INSTANCE.reverseTransformations(outBitmap, exifData);
            Context context$iv = this.options.getContext();
            Resources resources$iv$iv = context$iv.getResources();
            BitmapDrawable bitmapDrawable = new BitmapDrawable(resources$iv$iv, bitmap);
            if ($this$decode.inSampleSize <= 1 && !$this$decode.inScaled) {
                z = false;
            }
            return new DecodeResult(bitmapDrawable, z);
        } finally {
        }
    }

    private final void configureConfig(BitmapFactory.Options $this$configureConfig, ExifData exifData) {
        Bitmap.Config config = this.options.getConfig();
        if (exifData.getIsFlipped() || ExifUtilsKt.isRotated(exifData)) {
            config = Bitmaps.toSoftware(config);
        }
        if (this.options.getAllowRgb565() && config == Bitmap.Config.ARGB_8888 && Intrinsics.areEqual($this$configureConfig.outMimeType, "image/jpeg")) {
            config = Bitmap.Config.RGB_565;
        }
        if (Build.VERSION.SDK_INT >= 26 && $this$configureConfig.outConfig == Bitmap.Config.RGBA_F16 && config != Bitmap.Config.HARDWARE) {
            config = Bitmap.Config.RGBA_F16;
        }
        $this$configureConfig.inPreferredConfig = config;
    }

    private final void configureScale(BitmapFactory.Options $this$configureScale, ExifData exifData) {
        ImageSource.Metadata metadata = this.source.getMetadata();
        if ((metadata instanceof ResourceMetadata) && Sizes.isOriginal(this.options.getSize())) {
            $this$configureScale.inSampleSize = 1;
            $this$configureScale.inScaled = true;
            $this$configureScale.inDensity = ((ResourceMetadata) metadata).getDensity();
            $this$configureScale.inTargetDensity = this.options.getContext().getResources().getDisplayMetrics().densityDpi;
            return;
        }
        if ($this$configureScale.outWidth <= 0 || $this$configureScale.outHeight <= 0) {
            $this$configureScale.inSampleSize = 1;
            $this$configureScale.inScaled = false;
            return;
        }
        int srcWidth = ExifUtilsKt.isSwapped(exifData) ? $this$configureScale.outHeight : $this$configureScale.outWidth;
        int srcHeight = ExifUtilsKt.isSwapped(exifData) ? $this$configureScale.outWidth : $this$configureScale.outHeight;
        Size $this$widthPx$iv = this.options.getSize();
        Scale scale$iv = this.options.getScale();
        int dstWidth = Sizes.isOriginal($this$widthPx$iv) ? srcWidth : Utils.toPx($this$widthPx$iv.getWidth(), scale$iv);
        Size $this$heightPx$iv = this.options.getSize();
        Scale scale$iv2 = this.options.getScale();
        int dstHeight = Sizes.isOriginal($this$heightPx$iv) ? srcHeight : Utils.toPx($this$heightPx$iv.getHeight(), scale$iv2);
        $this$configureScale.inSampleSize = DecodeUtils.calculateInSampleSize(srcWidth, srcHeight, dstWidth, dstHeight, this.options.getScale());
        double scale = DecodeUtils.computeSizeMultiplier(((double) srcWidth) / ((double) $this$configureScale.inSampleSize), ((double) srcHeight) / ((double) $this$configureScale.inSampleSize), dstWidth, dstHeight, this.options.getScale());
        if (this.options.getAllowInexactSize()) {
            scale = RangesKt.coerceAtMost(scale, 1.0d);
        }
        $this$configureScale.inScaled = true ^ (scale == 1.0d);
        if ($this$configureScale.inScaled) {
            if (scale > 1.0d) {
                $this$configureScale.inDensity = MathKt.roundToInt(((double) Integer.MAX_VALUE) / scale);
                $this$configureScale.inTargetDensity = Integer.MAX_VALUE;
            } else {
                $this$configureScale.inDensity = Integer.MAX_VALUE;
                $this$configureScale.inTargetDensity = MathKt.roundToInt(((double) Integer.MAX_VALUE) * scale);
            }
        }
    }

    /* JADX INFO: compiled from: BitmapFactoryDecoder.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B\t\b\u0017¢\u0006\u0004\b\u0006\u0010\bB\u0013\b\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\tJ \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcoil/decode/BitmapFactoryDecoder$Factory;", "Lcoil/decode/Decoder$Factory;", "maxParallelism", "", "exifOrientationPolicy", "Lcoil/decode/ExifOrientationPolicy;", "<init>", "(ILcoil/decode/ExifOrientationPolicy;)V", "()V", "(I)V", "parallelismLock", "Lkotlinx/coroutines/sync/Semaphore;", "create", "Lcoil/decode/Decoder;", "result", "Lcoil/fetch/SourceResult;", "options", "Lcoil/request/Options;", "imageLoader", "Lcoil/ImageLoader;", "equals", "", "other", "", "hashCode", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Factory implements Decoder.Factory {
        private final ExifOrientationPolicy exifOrientationPolicy;
        private final Semaphore parallelismLock;

        public Factory(int maxParallelism, ExifOrientationPolicy exifOrientationPolicy) {
            this.exifOrientationPolicy = exifOrientationPolicy;
            this.parallelismLock = SemaphoreKt.Semaphore$default(maxParallelism, 0, 2, null);
        }

        public /* synthetic */ Factory(int i, ExifOrientationPolicy exifOrientationPolicy, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 4 : i, (i2 & 2) != 0 ? ExifOrientationPolicy.RESPECT_PERFORMANCE : exifOrientationPolicy);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(0, null, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Factory(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 4 : i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
        public /* synthetic */ Factory(int i) {
            this(i, null, 2, 0 == true ? 1 : 0);
        }

        @Override // coil.decode.Decoder.Factory
        public Decoder create(SourceResult result, Options options, ImageLoader imageLoader) {
            return new BitmapFactoryDecoder(result.getSource(), options, this.parallelismLock, this.exifOrientationPolicy);
        }

        public boolean equals(Object other) {
            return other instanceof Factory;
        }

        public int hashCode() {
            return getClass().hashCode();
        }
    }

    /* JADX INFO: compiled from: BitmapFactoryDecoder.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R0\u0010\t\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\u00072\u000e\u0010\u0006\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\u0007@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;", "Lokio/ForwardingSource;", "delegate", "Lokio/Source;", "<init>", "(Lokio/Source;)V", Values.VECTOR_MAP_VECTORS_KEY, "Lkotlin/Exception;", "Ljava/lang/Exception;", "exception", "getException", "()Ljava/lang/Exception;", "Ljava/lang/Exception;", "read", "", "sink", "Lokio/Buffer;", "byteCount", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class ExceptionCatchingSource extends ForwardingSource {
        private Exception exception;

        public ExceptionCatchingSource(Source delegate) {
            super(delegate);
        }

        public final Exception getException() {
            return this.exception;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer sink, long byteCount) throws Exception {
            try {
                return super.read(sink, byteCount);
            } catch (Exception e) {
                this.exception = e;
                throw e;
            }
        }
    }
}
