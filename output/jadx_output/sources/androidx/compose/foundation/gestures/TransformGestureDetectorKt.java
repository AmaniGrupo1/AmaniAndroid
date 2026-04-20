package androidx.compose.foundation.gestures;

import androidx.autofill.HintConstants;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.spatial.RectListKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: compiled from: TransformGestureDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a~\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042`\u0010\u0005\u001a\\\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\f¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\f¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00010\u0006H\u0086@¢\u0006\u0002\u0010\u000f\u001a\n\u0010\u0010\u001a\u00020\f*\u00020\u0011\u001a\u0013\u0010\u0012\u001a\u00020\f*\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a\n\u0010\u0015\u001a\u00020\f*\u00020\u0011\u001a\u000f\u0010\u0016\u001a\u00020\u0007*\u00020\u0011¢\u0006\u0002\u0010\u0017\u001a\u0014\u0010\u0018\u001a\u00020\f*\u00020\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u0004\u001a\u0019\u0010\u001a\u001a\u00020\u0007*\u00020\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u0004¢\u0006\u0002\u0010\u001b¨\u0006\u001c"}, d2 = {"detectTransformGestures", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "panZoomLock", "", "onGesture", "Lkotlin/Function4;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "centroid", "pan", "", "zoom", "rotation", "(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "calculateRotation", "Landroidx/compose/ui/input/pointer/PointerEvent;", "angle", "angle-k-4lQ0M", "(J)F", "calculateZoom", "calculatePan", "(Landroidx/compose/ui/input/pointer/PointerEvent;)J", "calculateCentroidSize", "useCurrent", "calculateCentroid", "(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TransformGestureDetectorKt {
    public static /* synthetic */ Object detectTransformGestures$default(PointerInputScope pointerInputScope, boolean z, Function4 function4, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return detectTransformGestures(pointerInputScope, z, function4, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2, reason: invalid class name */
    /* JADX INFO: compiled from: TransformGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2", f = "TransformGestureDetector.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1}, l = {60, RectListKt.BitOffsetForGesturable}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "rotation", "zoom", "pan", "pastTouchSlop", "touchSlop", "lockedToPanZoom", "$this$awaitEachGesture", "rotation", "zoom", "pan", "pastTouchSlop", "touchSlop", "lockedToPanZoom"}, s = {"L$0", "F$0", "F$1", "J$0", "I$0", "F$2", "I$1", "L$0", "F$0", "F$1", "J$0", "I$0", "F$2", "I$1"}, v = 1)
    static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function4<Offset, Offset, Float, Float, Unit> $onGesture;
        final /* synthetic */ boolean $panZoomLock;
        float F$0;
        float F$1;
        float F$2;
        int I$0;
        int I$1;
        long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(boolean z, Function4<? super Offset, ? super Offset, ? super Float, ? super Float, Unit> function4, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$panZoomLock = z;
            this.$onGesture = function4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$panZoomLock, this.$onGesture, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Path cross not found for [B:60:0x0186, B:52:0x016a], limit reached: 88 */
        /* JADX WARN: Removed duplicated region for block: B:15:0x00af A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x01ca  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x00f3 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00b0 -> B:17:0x00bd). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object $result;
            float zoom;
            float zoom2;
            long pan;
            int i;
            int i2;
            AwaitPointerEventScope $this$awaitEachGesture;
            float touchSlop;
            Object objAwaitPointerEvent$default;
            Object $result2;
            Object $result3;
            AnonymousClass2 anonymousClass2;
            AwaitPointerEventScope $this$awaitEachGesture2;
            float rotation;
            float rotation2;
            long pan2;
            int i3;
            float touchSlop2;
            int i4;
            int size;
            int index$iv$iv;
            Object obj2;
            boolean canceled;
            boolean canceled2;
            PointerEvent event;
            Object $result4;
            int $i$f$fastAny;
            float zoomChange;
            boolean canceled3;
            int index$iv;
            int size2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i5 = 1;
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    $result = obj;
                    AwaitPointerEventScope $this$awaitEachGesture3 = (AwaitPointerEventScope) this.L$0;
                    long pan3 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                    float touchSlop3 = $this$awaitEachGesture3.getViewConfiguration().getTouchSlop();
                    this.L$0 = $this$awaitEachGesture3;
                    this.F$0 = 0.0f;
                    this.F$1 = 1.0f;
                    this.J$0 = pan3;
                    this.I$0 = 0;
                    this.F$2 = touchSlop3;
                    this.I$1 = 0;
                    this.label = 1;
                    if (TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture3, false, null, this, 2, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    zoom = 0.0f;
                    zoom2 = 1.0f;
                    pan = pan3;
                    i = 0;
                    i2 = 0;
                    $this$awaitEachGesture = $this$awaitEachGesture3;
                    touchSlop = touchSlop3;
                    AnonymousClass2 anonymousClass22 = this;
                    anonymousClass22.L$0 = $this$awaitEachGesture;
                    anonymousClass22.F$0 = zoom;
                    anonymousClass22.F$1 = zoom2;
                    anonymousClass22.J$0 = pan;
                    anonymousClass22.I$0 = i;
                    anonymousClass22.F$2 = touchSlop;
                    anonymousClass22.I$1 = i2;
                    anonymousClass22.label = 2;
                    objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture, null, anonymousClass22, i5, null);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    int i6 = i2;
                    $result2 = $result;
                    $result3 = objAwaitPointerEvent$default;
                    anonymousClass2 = anonymousClass22;
                    $this$awaitEachGesture2 = $this$awaitEachGesture;
                    rotation = zoom;
                    rotation2 = zoom2;
                    pan2 = pan;
                    i3 = i;
                    touchSlop2 = touchSlop;
                    i4 = i6;
                    PointerEvent event2 = (PointerEvent) $result3;
                    List<PointerInputChange> changes = event2.getChanges();
                    size = changes.size();
                    index$iv$iv = 0;
                    while (true) {
                        obj2 = coroutine_suspended;
                        if (index$iv$iv >= size) {
                            Object item$iv$iv = changes.get(index$iv$iv);
                            if (((PointerInputChange) item$iv$iv).isConsumed()) {
                                canceled = true;
                            } else {
                                index$iv$iv++;
                                coroutine_suspended = obj2;
                            }
                        } else {
                            canceled = false;
                        }
                    }
                    if (canceled) {
                        float zoomChange2 = TransformGestureDetectorKt.calculateZoom(event2);
                        float rotationChange = TransformGestureDetectorKt.calculateRotation(event2);
                        event = event2;
                        long panChange = TransformGestureDetectorKt.calculatePan(event);
                        if (i3 == 0) {
                            rotation2 *= zoomChange2;
                            rotation += rotationChange;
                            pan2 = Offset.m4457plusMKHz9U(pan2, panChange);
                            canceled2 = canceled;
                            float centroidSize = TransformGestureDetectorKt.calculateCentroidSize(event, false);
                            zoomChange = zoomChange2;
                            canceled3 = true;
                            float zoomMotion = Math.abs(1 - rotation2) * centroidSize;
                            float centroidSize2 = Math.abs(((3.1415927f * rotation) * centroidSize) / 180.0f);
                            float panMotion = Offset.m4450getDistanceimpl(pan2);
                            if (zoomMotion > touchSlop2 || centroidSize2 > touchSlop2 || panMotion > touchSlop2) {
                                i3 = 1;
                                i4 = (!anonymousClass2.$panZoomLock || centroidSize2 >= touchSlop2) ? 0 : 1;
                            }
                        } else {
                            canceled2 = canceled;
                            zoomChange = zoomChange2;
                            canceled3 = true;
                        }
                        if (i3 != 0) {
                            long centroid = TransformGestureDetectorKt.calculateCentroid(event, false);
                            if (i4 != 0) {
                                rotationChange = 0.0f;
                            }
                            if (rotationChange == 0.0f ? canceled3 : false) {
                                if (zoomChange == 1.0f ? canceled3 : false) {
                                    $result4 = $result2;
                                    if (!Offset.m4449equalsimpl0(panChange, Offset.INSTANCE.m4468getZeroF1C5BW0())) {
                                    }
                                    List<PointerInputChange> changes2 = event.getChanges();
                                    size2 = changes2.size();
                                    for (index$iv = 0; index$iv < size2; index$iv++) {
                                        Object item$iv = changes2.get(index$iv);
                                        PointerInputChange it = (PointerInputChange) item$iv;
                                        if (PointerEventKt.positionChanged(it)) {
                                            it.consume();
                                        }
                                    }
                                }
                                anonymousClass2.$onGesture.invoke(Offset.m4441boximpl(centroid), Offset.m4441boximpl(panChange), Boxing.boxFloat(zoomChange), Boxing.boxFloat(rotationChange));
                                List<PointerInputChange> changes22 = event.getChanges();
                                size2 = changes22.size();
                                while (index$iv < size2) {
                                }
                            }
                            $result4 = $result2;
                            anonymousClass2.$onGesture.invoke(Offset.m4441boximpl(centroid), Offset.m4441boximpl(panChange), Boxing.boxFloat(zoomChange), Boxing.boxFloat(rotationChange));
                            List<PointerInputChange> changes222 = event.getChanges();
                            size2 = changes222.size();
                            while (index$iv < size2) {
                            }
                        } else {
                            $result4 = $result2;
                        }
                        i2 = i4;
                    } else {
                        canceled2 = canceled;
                        event = event2;
                        $result4 = $result2;
                        i2 = i4;
                    }
                    if (!canceled2) {
                        List<PointerInputChange> changes3 = event.getChanges();
                        int index$iv$iv2 = 0;
                        int size3 = changes3.size();
                        while (true) {
                            if (index$iv$iv2 < size3) {
                                Object item$iv$iv2 = changes3.get(index$iv$iv2);
                                if (((PointerInputChange) item$iv$iv2).getPressed()) {
                                    $i$f$fastAny = 1;
                                } else {
                                    index$iv$iv2++;
                                }
                            } else {
                                $i$f$fastAny = 0;
                            }
                        }
                        if ($i$f$fastAny != 0) {
                            coroutine_suspended = obj2;
                            touchSlop = touchSlop2;
                            i = i3;
                            pan = pan2;
                            zoom2 = rotation2;
                            zoom = rotation;
                            $this$awaitEachGesture = $this$awaitEachGesture2;
                            anonymousClass22 = anonymousClass2;
                            $result = $result4;
                            i5 = 1;
                            anonymousClass22.L$0 = $this$awaitEachGesture;
                            anonymousClass22.F$0 = zoom;
                            anonymousClass22.F$1 = zoom2;
                            anonymousClass22.J$0 = pan;
                            anonymousClass22.I$0 = i;
                            anonymousClass22.F$2 = touchSlop;
                            anonymousClass22.I$1 = i2;
                            anonymousClass22.label = 2;
                            objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture, null, anonymousClass22, i5, null);
                            if (objAwaitPointerEvent$default == coroutine_suspended) {
                            }
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    $result = obj;
                    i2 = this.I$1;
                    touchSlop = this.F$2;
                    i = this.I$0;
                    pan = this.J$0;
                    zoom2 = this.F$1;
                    zoom = this.F$0;
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    AnonymousClass2 anonymousClass222 = this;
                    anonymousClass222.L$0 = $this$awaitEachGesture;
                    anonymousClass222.F$0 = zoom;
                    anonymousClass222.F$1 = zoom2;
                    anonymousClass222.J$0 = pan;
                    anonymousClass222.I$0 = i;
                    anonymousClass222.F$2 = touchSlop;
                    anonymousClass222.I$1 = i2;
                    anonymousClass222.label = 2;
                    objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture, null, anonymousClass222, i5, null);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                    }
                    break;
                case 2:
                    $result3 = obj;
                    int i7 = this.I$1;
                    float touchSlop4 = this.F$2;
                    int i8 = this.I$0;
                    long pan4 = this.J$0;
                    float zoom3 = this.F$1;
                    float rotation3 = this.F$0;
                    AwaitPointerEventScope $this$awaitEachGesture4 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result3);
                    anonymousClass2 = this;
                    $this$awaitEachGesture2 = $this$awaitEachGesture4;
                    rotation = rotation3;
                    rotation2 = zoom3;
                    pan2 = pan4;
                    i3 = i8;
                    touchSlop2 = touchSlop4;
                    i4 = i7;
                    $result2 = $result3;
                    PointerEvent event22 = (PointerEvent) $result3;
                    List<PointerInputChange> changes4 = event22.getChanges();
                    size = changes4.size();
                    index$iv$iv = 0;
                    while (true) {
                        obj2 = coroutine_suspended;
                        if (index$iv$iv >= size) {
                        }
                        index$iv$iv++;
                        coroutine_suspended = obj2;
                    }
                    if (canceled) {
                    }
                    if (!canceled2) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final Object detectTransformGestures(PointerInputScope $this$detectTransformGestures, boolean panZoomLock, Function4<? super Offset, ? super Offset, ? super Float, ? super Float, Unit> function4, Continuation<? super Unit> continuation) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$detectTransformGestures, new AnonymousClass2(panZoomLock, function4, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }

    public static final float calculateRotation(PointerEvent $this$calculateRotation) {
        float rotation;
        float f;
        int pointerCount;
        long previousCentroid;
        float f2;
        List<PointerInputChange> changes = $this$calculateRotation.getChanges();
        int sum$iv = 0;
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            int i = 0;
            if (index$iv$iv >= size) {
                break;
            }
            Object item$iv$iv = changes.get(index$iv$iv);
            PointerInputChange it = (PointerInputChange) item$iv$iv;
            if (it.getPreviousPressed() && it.getPressed()) {
                i = 1;
            }
            sum$iv += i;
            index$iv$iv++;
        }
        float f3 = 0.0f;
        if (sum$iv < 2) {
            return 0.0f;
        }
        long currentCentroid = calculateCentroid($this$calculateRotation, true);
        long previousCentroid2 = calculateCentroid($this$calculateRotation, false);
        float rotation2 = 0.0f;
        float rotationWeight = 0.0f;
        List<PointerInputChange> changes2 = $this$calculateRotation.getChanges();
        int index$iv = 0;
        int size2 = changes2.size();
        while (index$iv < size2) {
            Object item$iv = changes2.get(index$iv);
            PointerInputChange change = (PointerInputChange) item$iv;
            if (!change.getPressed() || !change.getPreviousPressed()) {
                rotation = rotation2;
                f = f3;
                pointerCount = sum$iv;
                previousCentroid = previousCentroid2;
            } else {
                f = f3;
                pointerCount = sum$iv;
                long currentPosition = change.getPosition();
                long previousPosition = change.getPreviousPosition();
                float rotation3 = rotation2;
                long previousOffset = Offset.m4456minusMKHz9U(previousPosition, previousCentroid2);
                previousCentroid = previousCentroid2;
                long currentOffset = Offset.m4456minusMKHz9U(currentPosition, currentCentroid);
                float previousAngle = m609anglek4lQ0M(previousOffset);
                float currentAngle = m609anglek4lQ0M(currentOffset);
                float angleDiff = currentAngle - previousAngle;
                float weight = Offset.m4450getDistanceimpl(Offset.m4457plusMKHz9U(currentOffset, previousOffset)) / 2.0f;
                if (angleDiff > 180.0f) {
                    f2 = angleDiff - 360.0f;
                } else {
                    f2 = angleDiff < -180.0f ? angleDiff + 360.0f : angleDiff;
                }
                rotation = rotation3 + (f2 * weight);
                rotationWeight += weight;
            }
            rotation2 = rotation;
            index$iv++;
            sum$iv = pointerCount;
            f3 = f;
            previousCentroid2 = previousCentroid;
        }
        float f4 = f3;
        return (rotationWeight > f4 ? 1 : (rotationWeight == f4 ? 0 : -1)) == 0 ? f4 : rotation2 / rotationWeight;
    }

    /* JADX INFO: renamed from: angle-k-4lQ0M, reason: not valid java name */
    private static final float m609anglek4lQ0M(long j) {
        int bits$iv$iv$iv = (int) (j >> 32);
        if (Float.intBitsToFloat(bits$iv$iv$iv) == 0.0f) {
            int bits$iv$iv$iv2 = (int) (j & 4294967295L);
            if (Float.intBitsToFloat(bits$iv$iv$iv2) == 0.0f) {
                return 0.0f;
            }
        }
        int bits$iv$iv$iv3 = (int) (j >> 32);
        int bits$iv$iv$iv4 = (int) (4294967295L & j);
        return ((-((float) Math.atan2(Float.intBitsToFloat(bits$iv$iv$iv3), Float.intBitsToFloat(bits$iv$iv$iv4)))) * 180.0f) / 3.1415927f;
    }

    public static final float calculateZoom(PointerEvent $this$calculateZoom) {
        boolean z;
        boolean z2 = true;
        float currentCentroidSize = calculateCentroidSize($this$calculateZoom, true);
        float previousCentroidSize = calculateCentroidSize($this$calculateZoom, false);
        if (currentCentroidSize == 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return 1.0f;
        }
        if (previousCentroidSize != 0.0f) {
            z2 = false;
        }
        if (z2) {
            return 1.0f;
        }
        return currentCentroidSize / previousCentroidSize;
    }

    public static final long calculatePan(PointerEvent $this$calculatePan) {
        long currentCentroid = calculateCentroid($this$calculatePan, true);
        if (Offset.m4449equalsimpl0(currentCentroid, Offset.INSTANCE.m4467getUnspecifiedF1C5BW0())) {
            return Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        long previousCentroid = calculateCentroid($this$calculatePan, false);
        return Offset.m4456minusMKHz9U(currentCentroid, previousCentroid);
    }

    public static /* synthetic */ float calculateCentroidSize$default(PointerEvent pointerEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return calculateCentroidSize(pointerEvent, z);
    }

    public static final float calculateCentroidSize(PointerEvent $this$calculateCentroidSize, boolean useCurrent) {
        long centroid = calculateCentroid($this$calculateCentroidSize, useCurrent);
        if (Offset.m4449equalsimpl0(centroid, Offset.INSTANCE.m4467getUnspecifiedF1C5BW0())) {
            return 0.0f;
        }
        float distanceToCentroid = 0.0f;
        int distanceWeight = 0;
        List<PointerInputChange> changes = $this$calculateCentroidSize.getChanges();
        int size = changes.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = changes.get(index$iv);
            PointerInputChange change = (PointerInputChange) item$iv;
            if (change.getPressed() && change.getPreviousPressed()) {
                long position = useCurrent ? change.getPosition() : change.getPreviousPosition();
                distanceToCentroid += Offset.m4450getDistanceimpl(Offset.m4456minusMKHz9U(position, centroid));
                distanceWeight++;
            }
        }
        return distanceToCentroid / distanceWeight;
    }

    public static /* synthetic */ long calculateCentroid$default(PointerEvent pointerEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return calculateCentroid(pointerEvent, z);
    }

    public static final long calculateCentroid(PointerEvent $this$calculateCentroid, boolean useCurrent) {
        long centroid = Offset.INSTANCE.m4468getZeroF1C5BW0();
        int centroidWeight = 0;
        List<PointerInputChange> changes = $this$calculateCentroid.getChanges();
        int size = changes.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = changes.get(index$iv);
            PointerInputChange change = (PointerInputChange) item$iv;
            if (change.getPressed() && change.getPreviousPressed()) {
                long position = useCurrent ? change.getPosition() : change.getPreviousPosition();
                centroid = Offset.m4457plusMKHz9U(centroid, position);
                centroidWeight++;
            }
        }
        if (centroidWeight == 0) {
            return Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
        }
        return Offset.m4447divtuRUvjQ(centroid, centroidWeight);
    }
}
