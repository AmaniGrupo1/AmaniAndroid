package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;

/* JADX INFO: compiled from: IndirectPointerInputDragCycleDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0003¢\u0006\u0004\b\u0007\u0010\b\u001a'\u0010\t\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0003¢\u0006\u0004\b\n\u0010\b\u001a\f\u0010\u000b\u001a\u00020\f*\u00020\u0002H\u0003\u001a\f\u0010\r\u001a\u00020\f*\u00020\u0002H\u0003\u001a\f\u0010\u000e\u001a\u00020\f*\u00020\u0002H\u0003\u001a1\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0010\u001a\u00020\fH\u0003¢\u0006\u0004\b\u0011\u0010\u0012\u001a'\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\b\u001a'\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a'\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\b\u001a?\u0010\u0019\u001a\u00020\u001a*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0001H\u0002¢\u0006\u0004\b \u0010!\"\u000e\u0010\"\u001a\u00020#X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020#X\u0082T¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"positionChange", "Landroidx/compose/ui/geometry/Offset;", "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "primaryDirectionalMotionAxis", "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;", "positionChange-_bfSUIo", "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J", "positionChangeIgnoreConsumed", "positionChangeIgnoreConsumed-_bfSUIo", "changedToUpIgnoreConsumed", "", "changedToDown", "changedToDownIgnoreConsumed", "positionChangeInternal", "ignoreConsumed", "positionChangeInternal-wfG_k4k", "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J", "primaryAxisPosition", "primaryAxisPosition-_bfSUIo", "primaryAxisPosition-grjNGvw", "(JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J", "primaryAxisPreviousPosition", "primaryAxisPreviousPosition-_bfSUIo", "addIndirectPointerInputChange", "", "Landroidx/compose/ui/input/pointer/util/VelocityTracker;", NotificationCompat.CATEGORY_EVENT, "smoother", "Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;", "nodeOffset", "addIndirectPointerInputChange-Qf4Zb88", "(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V", "SmoothingFactor", "", "PixelSensibility", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class IndirectPointerInputDragCycleDetectorKt {
    private static final int PixelSensibility = 2;
    private static final int SmoothingFactor = 3;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: positionChange-_bfSUIo, reason: not valid java name */
    public static final long m513positionChange_bfSUIo(IndirectPointerInputChange $this$positionChange_u2d_bfSUIo, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxis) {
        return m515positionChangeInternalwfG_k4k($this$positionChange_u2d_bfSUIo, orientation, primaryDirectionalMotionAxis, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: positionChangeIgnoreConsumed-_bfSUIo, reason: not valid java name */
    public static final long m514positionChangeIgnoreConsumed_bfSUIo(IndirectPointerInputChange $this$positionChangeIgnoreConsumed_u2d_bfSUIo, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxis) {
        return m515positionChangeInternalwfG_k4k($this$positionChangeIgnoreConsumed_u2d_bfSUIo, orientation, primaryDirectionalMotionAxis, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean changedToUpIgnoreConsumed(IndirectPointerInputChange $this$changedToUpIgnoreConsumed) {
        return $this$changedToUpIgnoreConsumed.getPreviousPressed() && !$this$changedToUpIgnoreConsumed.getPressed();
    }

    private static final boolean changedToDown(IndirectPointerInputChange $this$changedToDown) {
        return ($this$changedToDown.getIsConsumed() || $this$changedToDown.getPreviousPressed() || !$this$changedToDown.getPressed()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean changedToDownIgnoreConsumed(IndirectPointerInputChange $this$changedToDownIgnoreConsumed) {
        return !$this$changedToDownIgnoreConsumed.getPreviousPressed() && $this$changedToDownIgnoreConsumed.getPressed();
    }

    /* JADX INFO: renamed from: positionChangeInternal-wfG_k4k$default, reason: not valid java name */
    static /* synthetic */ long m516positionChangeInternalwfG_k4k$default(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m515positionChangeInternalwfG_k4k(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis, z);
    }

    /* JADX INFO: renamed from: positionChangeInternal-wfG_k4k, reason: not valid java name */
    private static final long m515positionChangeInternalwfG_k4k(IndirectPointerInputChange $this$positionChangeInternal_u2dwfG_k4k, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxis, boolean ignoreConsumed) {
        long previousPosition = m519primaryAxisPreviousPosition_bfSUIo($this$positionChangeInternal_u2dwfG_k4k, orientation, primaryDirectionalMotionAxis);
        long currentPosition = m517primaryAxisPosition_bfSUIo($this$positionChangeInternal_u2dwfG_k4k, orientation, primaryDirectionalMotionAxis);
        long offset = Offset.m4456minusMKHz9U(currentPosition, previousPosition);
        if (!ignoreConsumed && $this$positionChangeInternal_u2dwfG_k4k.getIsConsumed()) {
            return Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        return offset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: primaryAxisPosition-_bfSUIo, reason: not valid java name */
    public static final long m517primaryAxisPosition_bfSUIo(IndirectPointerInputChange $this$primaryAxisPosition_u2d_bfSUIo, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxis) {
        float delta;
        if (orientation == null) {
            return $this$primaryAxisPosition_u2d_bfSUIo.getPosition();
        }
        if (primaryDirectionalMotionAxis == null ? false : IndirectPointerEventPrimaryDirectionalMotionAxis.m5519equalsimpl0(primaryDirectionalMotionAxis.getValue(), IndirectPointerEventPrimaryDirectionalMotionAxis.INSTANCE.m5524getXnZO2Niw())) {
            int bits$iv$iv$iv = (int) ($this$primaryAxisPosition_u2d_bfSUIo.getPosition() >> 32);
            delta = Float.intBitsToFloat(bits$iv$iv$iv);
        } else {
            if (!(primaryDirectionalMotionAxis != null ? IndirectPointerEventPrimaryDirectionalMotionAxis.m5519equalsimpl0(primaryDirectionalMotionAxis.getValue(), IndirectPointerEventPrimaryDirectionalMotionAxis.INSTANCE.m5525getYnZO2Niw()) : false)) {
                return $this$primaryAxisPosition_u2d_bfSUIo.getPosition();
            }
            int bits$iv$iv$iv2 = (int) ($this$primaryAxisPosition_u2d_bfSUIo.getPosition() & 4294967295L);
            delta = Float.intBitsToFloat(bits$iv$iv$iv2);
        }
        if (orientation == Orientation.Horizontal) {
            float x$iv = delta;
            long v1$iv$iv = Float.floatToRawIntBits(x$iv);
            long v2$iv$iv = Float.floatToRawIntBits(0.0f);
            return Offset.m4444constructorimpl((4294967295L & v2$iv$iv) | (v1$iv$iv << 32));
        }
        float y$iv = delta;
        long v1$iv$iv2 = Float.floatToRawIntBits(0.0f);
        long v2$iv$iv2 = Float.floatToRawIntBits(y$iv);
        return Offset.m4444constructorimpl((4294967295L & v2$iv$iv2) | (v1$iv$iv2 << 32));
    }

    /* JADX INFO: renamed from: primaryAxisPosition-grjNGvw, reason: not valid java name */
    private static final long m518primaryAxisPositiongrjNGvw(long j, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxis) {
        float delta;
        if (orientation == null) {
            return j;
        }
        if (primaryDirectionalMotionAxis == null ? false : IndirectPointerEventPrimaryDirectionalMotionAxis.m5519equalsimpl0(primaryDirectionalMotionAxis.getValue(), IndirectPointerEventPrimaryDirectionalMotionAxis.INSTANCE.m5524getXnZO2Niw())) {
            int bits$iv$iv$iv = (int) (j >> 32);
            delta = Float.intBitsToFloat(bits$iv$iv$iv);
        } else {
            if (!(primaryDirectionalMotionAxis != null ? IndirectPointerEventPrimaryDirectionalMotionAxis.m5519equalsimpl0(primaryDirectionalMotionAxis.getValue(), IndirectPointerEventPrimaryDirectionalMotionAxis.INSTANCE.m5525getYnZO2Niw()) : false)) {
                return j;
            }
            int bits$iv$iv$iv2 = (int) (j & 4294967295L);
            delta = Float.intBitsToFloat(bits$iv$iv$iv2);
        }
        if (orientation == Orientation.Horizontal) {
            float x$iv = delta;
            long v1$iv$iv = Float.floatToRawIntBits(x$iv);
            long v2$iv$iv = Float.floatToRawIntBits(0.0f);
            return Offset.m4444constructorimpl((4294967295L & v2$iv$iv) | (v1$iv$iv << 32));
        }
        float y$iv = delta;
        long v1$iv$iv2 = Float.floatToRawIntBits(0.0f);
        long v2$iv$iv2 = Float.floatToRawIntBits(y$iv);
        return Offset.m4444constructorimpl((4294967295L & v2$iv$iv2) | (v1$iv$iv2 << 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: primaryAxisPreviousPosition-_bfSUIo, reason: not valid java name */
    public static final long m519primaryAxisPreviousPosition_bfSUIo(IndirectPointerInputChange $this$primaryAxisPreviousPosition_u2d_bfSUIo, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxis) {
        float delta;
        if (orientation == null) {
            return $this$primaryAxisPreviousPosition_u2d_bfSUIo.getPreviousPosition();
        }
        if (primaryDirectionalMotionAxis == null ? false : IndirectPointerEventPrimaryDirectionalMotionAxis.m5519equalsimpl0(primaryDirectionalMotionAxis.getValue(), IndirectPointerEventPrimaryDirectionalMotionAxis.INSTANCE.m5524getXnZO2Niw())) {
            int bits$iv$iv$iv = (int) ($this$primaryAxisPreviousPosition_u2d_bfSUIo.getPreviousPosition() >> 32);
            delta = Float.intBitsToFloat(bits$iv$iv$iv);
        } else {
            if (!(primaryDirectionalMotionAxis != null ? IndirectPointerEventPrimaryDirectionalMotionAxis.m5519equalsimpl0(primaryDirectionalMotionAxis.getValue(), IndirectPointerEventPrimaryDirectionalMotionAxis.INSTANCE.m5525getYnZO2Niw()) : false)) {
                return $this$primaryAxisPreviousPosition_u2d_bfSUIo.getPreviousPosition();
            }
            int bits$iv$iv$iv2 = (int) ($this$primaryAxisPreviousPosition_u2d_bfSUIo.getPreviousPosition() & 4294967295L);
            delta = Float.intBitsToFloat(bits$iv$iv$iv2);
        }
        if (orientation == Orientation.Horizontal) {
            float x$iv = delta;
            long v1$iv$iv = Float.floatToRawIntBits(x$iv);
            long v2$iv$iv = Float.floatToRawIntBits(0.0f);
            return Offset.m4444constructorimpl((4294967295L & v2$iv$iv) | (v1$iv$iv << 32));
        }
        float y$iv = delta;
        long v1$iv$iv2 = Float.floatToRawIntBits(0.0f);
        long v2$iv$iv2 = Float.floatToRawIntBits(y$iv);
        return Offset.m4444constructorimpl((4294967295L & v2$iv$iv2) | (v1$iv$iv2 << 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: addIndirectPointerInputChange-Qf4Zb88, reason: not valid java name */
    public static final void m512addIndirectPointerInputChangeQf4Zb88(VelocityTracker $this$addIndirectPointerInputChange_u2dQf4Zb88, IndirectPointerInputChange event, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxis, IndirectPointerInputEventSmoother smoother, long j) {
        long smoothedPosition = m518primaryAxisPositiongrjNGvw(smoother.m520smoothEventPositiontuRUvjQ(event), orientation, primaryDirectionalMotionAxis);
        $this$addIndirectPointerInputChange_u2dQf4Zb88.m6114addPositionUv8p0NA(event.getUptimeMillis(), Offset.m4457plusMKHz9U(smoothedPosition, j));
    }
}
