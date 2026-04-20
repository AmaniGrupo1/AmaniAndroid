package androidx.compose.ui.graphics.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.media.Image;
import android.media.ImageReader;
import android.os.Looper;
import android.view.Surface;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.core.os.HandlerCompat;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: compiled from: LayerSnapshot.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0096@¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/layer/LayerSnapshotV22;", "Landroidx/compose/ui/graphics/layer/LayerSnapshotImpl;", "<init>", "()V", "toBitmap", "Landroid/graphics/Bitmap;", "graphicsLayer", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ui-graphics"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LayerSnapshotV22 implements LayerSnapshotImpl {
    public static final int $stable = 0;
    public static final LayerSnapshotV22 INSTANCE = new LayerSnapshotV22();

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$1, reason: invalid class name */
    /* JADX INFO: compiled from: LayerSnapshot.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.graphics.layer.LayerSnapshotV22", f = "LayerSnapshot.android.kt", i = {0, 0, 0, 0}, l = {225}, m = "toBitmap", n = {"graphicsLayer", "looper", "reader", "$completion$iv"}, s = {"L$0", "L$1", "L$3", "L$4"}, v = 1)
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
            return LayerSnapshotV22.this.toBitmap(null, this);
        }
    }

    private LayerSnapshotV22() {
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // androidx.compose.ui.graphics.layer.LayerSnapshotImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object toBitmap(GraphicsLayer graphicsLayer, Continuation<? super Bitmap> continuation) {
        AnonymousClass1 anonymousClass1;
        Throwable th;
        AutoCloseable autoCloseable;
        Object result;
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
                long size = graphicsLayer.getSize();
                Looper looper = Looper.myLooper();
                if (looper == null) {
                    looper = Looper.getMainLooper();
                }
                int $i$f$unpackInt2 = (int) (4294967295L & size);
                ImageReader imageReaderNewInstance = ImageReader.newInstance((int) (size >> 32), $i$f$unpackInt2, 1, 1);
                try {
                    ImageReader reader = imageReaderNewInstance;
                    anonymousClass12.L$0 = graphicsLayer;
                    anonymousClass12.L$1 = looper;
                    anonymousClass12.L$2 = imageReaderNewInstance;
                    anonymousClass12.L$3 = reader;
                    anonymousClass12.L$4 = anonymousClass12;
                    anonymousClass12.label = 1;
                    AnonymousClass1 uCont$iv = anonymousClass12;
                    CancellableContinuationImpl cancellable$iv = new CancellableContinuationImpl(IntrinsicsKt.intercepted(uCont$iv), 1);
                    cancellable$iv.initCancellability();
                    final CancellableContinuationImpl continuation2 = cancellable$iv;
                    reader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$2$image$1$1
                        @Override // android.media.ImageReader.OnImageAvailableListener
                        public final void onImageAvailable(ImageReader it) {
                            CancellableContinuation<Image> cancellableContinuation = continuation2;
                            Result.Companion companion = Result.INSTANCE;
                            cancellableContinuation.resumeWith(Result.m8542constructorimpl(it.acquireLatestImage()));
                        }
                    }, HandlerCompat.createAsync(looper));
                    Surface surface = reader.getSurface();
                    Canvas canvas = SurfaceUtils.INSTANCE.lockCanvas(surface);
                    try {
                        canvas.drawColor(ColorKt.m4751toArgb8_81llA(Color.INSTANCE.m4723getBlack0d7_KjU()), PorterDuff.Mode.CLEAR);
                        graphicsLayer.draw$ui_graphics(AndroidCanvas_androidKt.Canvas(canvas), null);
                        surface.unlockCanvasAndPost(canvas);
                        result = cancellable$iv.getResult();
                        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(anonymousClass12);
                        }
                        if (result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        autoCloseable = imageReaderNewInstance;
                        Image image = (Image) result;
                        Bitmap bitmap = LayerSnapshot_androidKt.toBitmap(image);
                        AutoCloseableKt.closeFinally(autoCloseable, null);
                        return bitmap;
                    } catch (Throwable th2) {
                        surface.unlockCanvasAndPost(canvas);
                        throw th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    autoCloseable = imageReaderNewInstance;
                    try {
                        throw th;
                    } catch (Throwable th4) {
                        AutoCloseableKt.closeFinally(autoCloseable, th);
                        throw th4;
                    }
                }
            case 1:
                autoCloseable = (AutoCloseable) anonymousClass12.L$2;
                try {
                    ResultKt.throwOnFailure($result);
                    result = $result;
                    Image image2 = (Image) result;
                    Bitmap bitmap2 = LayerSnapshot_androidKt.toBitmap(image2);
                    AutoCloseableKt.closeFinally(autoCloseable, null);
                    return bitmap2;
                } catch (Throwable th5) {
                    th = th5;
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
