package androidx.compose.ui.scrollcapture;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import android.view.View;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.random.Random;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.NonCancellable;

/* JADX INFO: compiled from: ComposeScrollCaptureCallback.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001:\u0001%B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J \u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u001cH\u0016J.\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00182\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u001e\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0005H\u0082@¢\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u001cH\u0016J\f\u0010\"\u001a\u00020\u0013*\u00020#H\u0002J\f\u0010$\u001a\u00020\u0013*\u00020#H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;", "Landroid/view/ScrollCaptureCallback;", "node", "Landroidx/compose/ui/semantics/SemanticsNode;", "viewportBoundsInWindow", "Landroidx/compose/ui/unit/IntRect;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$ScrollCaptureSessionListener;", "composeView", "Landroid/view/View;", "<init>", "(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$ScrollCaptureSessionListener;Landroid/view/View;)V", "scrollTracker", "Landroidx/compose/ui/scrollcapture/RelativeScroller;", "requestCount", "", "onScrollCaptureSearch", "", "signal", "Landroid/os/CancellationSignal;", "onReady", "Ljava/util/function/Consumer;", "Landroid/graphics/Rect;", "onScrollCaptureStart", "session", "Landroid/view/ScrollCaptureSession;", "Ljava/lang/Runnable;", "onScrollCaptureImageRequest", "captureArea", "onComplete", "(Landroid/view/ScrollCaptureSession;Landroidx/compose/ui/unit/IntRect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onScrollCaptureEnd", "drawDebugBackground", "Landroid/graphics/Canvas;", "drawDebugOverlay", "ScrollCaptureSessionListener", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ComposeScrollCaptureCallback implements ScrollCaptureCallback {
    public static final int $stable = 8;
    private final View composeView;
    private final CoroutineScope coroutineScope;
    private final ScrollCaptureSessionListener listener;
    private final SemanticsNode node;
    private int requestCount;
    private final RelativeScroller scrollTracker;
    private final IntRect viewportBoundsInWindow;

    /* JADX INFO: compiled from: ComposeScrollCaptureCallback.android.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$ScrollCaptureSessionListener;", "", "onSessionStarted", "", "onSessionEnded", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface ScrollCaptureSessionListener {
        void onSessionEnded();

        void onSessionStarted();
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2, reason: invalid class name */
    /* JADX INFO: compiled from: ComposeScrollCaptureCallback.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback", f = "ComposeScrollCaptureCallback.android.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {TsExtractor.TS_STREAM_TYPE_DTS_HD, TsExtractor.TS_STREAM_TYPE_DTS, 142}, m = "onScrollCaptureImageRequest", n = {"session", "captureArea", "targetMin", "targetMax", "session", "captureArea", "targetMin", "targetMax", "session", "captureArea", "targetMin", "targetMax"}, s = {"L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"}, v = 1)
    static final class AnonymousClass2 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ComposeScrollCaptureCallback.this.onScrollCaptureImageRequest(null, null, this);
        }
    }

    public ComposeScrollCaptureCallback(SemanticsNode node, IntRect viewportBoundsInWindow, CoroutineScope coroutineScope, ScrollCaptureSessionListener listener, View composeView) {
        this.node = node;
        this.viewportBoundsInWindow = viewportBoundsInWindow;
        this.listener = listener;
        this.composeView = composeView;
        this.coroutineScope = CoroutineScopeKt.plus(coroutineScope, DisableAnimationMotionDurationScale.INSTANCE);
        this.scrollTracker = new RelativeScroller(this.viewportBoundsInWindow.getHeight(), new ComposeScrollCaptureCallback$scrollTracker$1(this, null));
    }

    @Override // android.view.ScrollCaptureCallback
    public void onScrollCaptureSearch(CancellationSignal signal, Consumer<Rect> onReady) {
        IntRect bounds = this.viewportBoundsInWindow;
        onReady.accept(RectHelper_androidKt.toAndroidRect(bounds));
    }

    @Override // android.view.ScrollCaptureCallback
    public void onScrollCaptureStart(ScrollCaptureSession session, CancellationSignal signal, Runnable onReady) {
        this.scrollTracker.reset();
        this.requestCount = 0;
        this.listener.onSessionStarted();
        onReady.run();
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ComposeScrollCaptureCallback.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1", f = "ComposeScrollCaptureCallback.android.kt", i = {}, l = {121}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C05751 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Rect $captureArea;
        final /* synthetic */ Consumer<Rect> $onComplete;
        final /* synthetic */ ScrollCaptureSession $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05751(ScrollCaptureSession scrollCaptureSession, Rect rect, Consumer<Rect> consumer, Continuation<? super C05751> continuation) {
            super(2, continuation);
            this.$session = scrollCaptureSession;
            this.$captureArea = rect;
            this.$onComplete = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ComposeScrollCaptureCallback.this.new C05751(this.$session, this.$captureArea, this.$onComplete, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05751) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objOnScrollCaptureImageRequest = ComposeScrollCaptureCallback.this.onScrollCaptureImageRequest(this.$session, RectHelper_androidKt.toComposeIntRect(this.$captureArea), this);
                    if (objOnScrollCaptureImageRequest == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objOnScrollCaptureImageRequest;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            IntRect result = (IntRect) $result;
            this.$onComplete.accept(RectHelper_androidKt.toAndroidRect(result));
            return Unit.INSTANCE;
        }
    }

    @Override // android.view.ScrollCaptureCallback
    public void onScrollCaptureImageRequest(ScrollCaptureSession session, CancellationSignal signal, Rect captureArea, Consumer<Rect> onComplete) {
        ComposeScrollCaptureCallback_androidKt.launchWithCancellationSignal(this.coroutineScope, signal, new C05751(session, captureArea, onComplete, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, IntRect intRect, Continuation<? super IntRect> continuation) {
        AnonymousClass2 anonymousClass2;
        IntRect captureArea;
        ScrollCaptureSession session;
        int targetMax;
        int targetMin;
        ComposeScrollCaptureCallback composeScrollCaptureCallback;
        AnonymousClass3 anonymousClass3;
        int targetMin2;
        IntRect captureArea2;
        ScrollCaptureSession session2;
        int viewportClippedMin;
        int viewportClippedMax;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        }
        AnonymousClass2 anonymousClass22 = anonymousClass2;
        Object $result = anonymousClass22.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass22.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                captureArea = intRect;
                session = scrollCaptureSession;
                int targetMin3 = captureArea.getTop();
                targetMax = captureArea.getBottom();
                boolean z = ComposeUiFlags.isScrollCaptureCenteringEnabled;
                RelativeScroller relativeScroller = this.scrollTracker;
                if (z) {
                    anonymousClass22.L$0 = session;
                    anonymousClass22.L$1 = captureArea;
                    anonymousClass22.I$0 = targetMin3;
                    anonymousClass22.I$1 = targetMax;
                    anonymousClass22.label = 1;
                    if (relativeScroller.scrollRangeToCenter(targetMin3, targetMax, anonymousClass22) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    targetMin = targetMin3;
                    composeScrollCaptureCallback = this;
                } else {
                    anonymousClass22.L$0 = session;
                    anonymousClass22.L$1 = captureArea;
                    anonymousClass22.I$0 = targetMin3;
                    anonymousClass22.I$1 = targetMax;
                    anonymousClass22.label = 2;
                    if (relativeScroller.scrollRangeIntoView(targetMin3, targetMax, anonymousClass22) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    targetMin = targetMin3;
                    composeScrollCaptureCallback = this;
                }
                anonymousClass3 = new Function1<Long, Unit>() { // from class: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.onScrollCaptureImageRequest.3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long it) {
                    }
                };
                anonymousClass22.L$0 = session;
                anonymousClass22.L$1 = captureArea;
                anonymousClass22.I$0 = targetMin;
                anonymousClass22.I$1 = targetMax;
                anonymousClass22.label = 3;
                if (MonotonicFrameClockKt.withFrameNanos(anonymousClass3, anonymousClass22) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                targetMin2 = targetMin;
                captureArea2 = captureArea;
                session2 = session;
                viewportClippedMin = composeScrollCaptureCallback.scrollTracker.mapOffsetToViewport(targetMin2);
                viewportClippedMax = composeScrollCaptureCallback.scrollTracker.mapOffsetToViewport(targetMax);
                IntRect viewportClippedRect = IntRect.copy$default(captureArea2, 0, viewportClippedMin, 0, viewportClippedMax, 5, null);
                if (viewportClippedMin != viewportClippedMax) {
                    return IntRect.INSTANCE.getZero();
                }
                Canvas canvas = session2.getSurface().lockHardwareCanvas();
                try {
                    canvas.save();
                    canvas.translate(-viewportClippedRect.getLeft(), -viewportClippedRect.getTop());
                    canvas.translate(-composeScrollCaptureCallback.viewportBoundsInWindow.getLeft(), -composeScrollCaptureCallback.viewportBoundsInWindow.getTop());
                    composeScrollCaptureCallback.composeView.getRootView().draw(canvas);
                    session2.getSurface().unlockCanvasAndPost(canvas);
                    IntRect resultRect = viewportClippedRect.translate(0, MathKt.roundToInt(composeScrollCaptureCallback.scrollTracker.getScrollAmount()));
                    return resultRect;
                } catch (Throwable th) {
                    session2.getSurface().unlockCanvasAndPost(canvas);
                    throw th;
                }
            case 1:
                composeScrollCaptureCallback = this;
                targetMax = anonymousClass22.I$1;
                targetMin = anonymousClass22.I$0;
                captureArea = (IntRect) anonymousClass22.L$1;
                session = (ScrollCaptureSession) anonymousClass22.L$0;
                ResultKt.throwOnFailure($result);
                anonymousClass3 = new Function1<Long, Unit>() { // from class: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.onScrollCaptureImageRequest.3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long it) {
                    }
                };
                anonymousClass22.L$0 = session;
                anonymousClass22.L$1 = captureArea;
                anonymousClass22.I$0 = targetMin;
                anonymousClass22.I$1 = targetMax;
                anonymousClass22.label = 3;
                if (MonotonicFrameClockKt.withFrameNanos(anonymousClass3, anonymousClass22) == coroutine_suspended) {
                }
                break;
            case 2:
                composeScrollCaptureCallback = this;
                targetMax = anonymousClass22.I$1;
                targetMin = anonymousClass22.I$0;
                captureArea = (IntRect) anonymousClass22.L$1;
                session = (ScrollCaptureSession) anonymousClass22.L$0;
                ResultKt.throwOnFailure($result);
                anonymousClass3 = new Function1<Long, Unit>() { // from class: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.onScrollCaptureImageRequest.3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long it) {
                    }
                };
                anonymousClass22.L$0 = session;
                anonymousClass22.L$1 = captureArea;
                anonymousClass22.I$0 = targetMin;
                anonymousClass22.I$1 = targetMax;
                anonymousClass22.label = 3;
                if (MonotonicFrameClockKt.withFrameNanos(anonymousClass3, anonymousClass22) == coroutine_suspended) {
                }
                break;
            case 3:
                composeScrollCaptureCallback = this;
                targetMax = anonymousClass22.I$1;
                targetMin2 = anonymousClass22.I$0;
                captureArea2 = (IntRect) anonymousClass22.L$1;
                ScrollCaptureSession session3 = (ScrollCaptureSession) anonymousClass22.L$0;
                ResultKt.throwOnFailure($result);
                session2 = session3;
                viewportClippedMin = composeScrollCaptureCallback.scrollTracker.mapOffsetToViewport(targetMin2);
                viewportClippedMax = composeScrollCaptureCallback.scrollTracker.mapOffsetToViewport(targetMax);
                IntRect viewportClippedRect2 = IntRect.copy$default(captureArea2, 0, viewportClippedMin, 0, viewportClippedMax, 5, null);
                if (viewportClippedMin != viewportClippedMax) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1, reason: invalid class name */
    /* JADX INFO: compiled from: ComposeScrollCaptureCallback.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1", f = "ComposeScrollCaptureCallback.android.kt", i = {}, l = {193}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Runnable $onReady;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Runnable runnable, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onReady = runnable;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ComposeScrollCaptureCallback.this.new AnonymousClass1(this.$onReady, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (ComposeScrollCaptureCallback.this.scrollTracker.scrollTo(0.0f, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ComposeScrollCaptureCallback.this.listener.onSessionEnded();
            this.$onReady.run();
            return Unit.INSTANCE;
        }
    }

    @Override // android.view.ScrollCaptureCallback
    public void onScrollCaptureEnd(Runnable onReady) {
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, NonCancellable.INSTANCE, null, new AnonymousClass1(onReady, null), 2, null);
    }

    private final void drawDebugBackground(Canvas $this$drawDebugBackground) {
        $this$drawDebugBackground.drawColor(ColorKt.m4751toArgb8_81llA(Color.Companion.m4721hslJlNiLsg$default(Color.INSTANCE, Random.INSTANCE.nextFloat() * 360.0f, 0.75f, 0.5f, 1.0f, null, 16, null)));
    }

    private final void drawDebugOverlay(Canvas $this$drawDebugOverlay) {
        Paint circlePaint = new Paint();
        circlePaint.setColor(SupportMenu.CATEGORY_MASK);
        circlePaint.setTextSize(48.0f);
        $this$drawDebugOverlay.drawCircle(0.0f, 0.0f, 20.0f, circlePaint);
        $this$drawDebugOverlay.drawCircle($this$drawDebugOverlay.getWidth(), 0.0f, 20.0f, circlePaint);
        $this$drawDebugOverlay.drawCircle($this$drawDebugOverlay.getWidth(), $this$drawDebugOverlay.getHeight(), 20.0f, circlePaint);
        $this$drawDebugOverlay.drawCircle(0.0f, $this$drawDebugOverlay.getHeight(), 20.0f, circlePaint);
        $this$drawDebugOverlay.drawText(String.valueOf(this.requestCount), $this$drawDebugOverlay.getWidth() / 2.0f, $this$drawDebugOverlay.getHeight() / 2.0f, circlePaint);
        this.requestCount++;
    }
}
