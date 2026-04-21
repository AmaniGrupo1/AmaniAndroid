package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Path;
import kotlin.Metadata;

/* JADX INFO: compiled from: CanvasDrawScope.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002¨\u0006\u0003"}, d2 = {"asDrawTransform", "Landroidx/compose/ui/graphics/drawscope/DrawTransform;", "Landroidx/compose/ui/graphics/drawscope/DrawContext;", "ui-graphics"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class CanvasDrawScopeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawTransform asDrawTransform(final DrawContext $this$asDrawTransform) {
        return new DrawTransform() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt.asDrawTransform.1
            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
            public long mo5197getSizeNHjbRc() {
                return $this$asDrawTransform.mo5192getSizeNHjbRc();
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: getCenter-F1C5BW0, reason: not valid java name */
            public long mo5196getCenterF1C5BW0() {
                return SizeKt.m4531getCenteruvyYCjk(mo5197getSizeNHjbRc());
            }

            /* JADX WARN: Removed duplicated region for block: B:7:0x0088  */
            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void inset(float left, float top, float right, float bottom) {
                boolean value$iv;
                Canvas it = $this$asDrawTransform.getCanvas();
                DrawContext drawContext = $this$asDrawTransform;
                int bits$iv$iv$iv = (int) (mo5197getSizeNHjbRc() >> 32);
                float width$iv = Float.intBitsToFloat(bits$iv$iv$iv) - (left + right);
                int bits$iv$iv$iv2 = (int) (mo5197getSizeNHjbRc() & 4294967295L);
                float height$iv = Float.intBitsToFloat(bits$iv$iv$iv2) - (top + bottom);
                long v1$iv$iv = Float.floatToRawIntBits(width$iv);
                long v2$iv$iv = Float.floatToRawIntBits(height$iv);
                long updatedSize = Size.m4512constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
                int bits$iv$iv$iv3 = (int) (updatedSize >> 32);
                if (Float.intBitsToFloat(bits$iv$iv$iv3) >= 0.0f) {
                    int bits$iv$iv$iv4 = (int) (updatedSize & 4294967295L);
                    value$iv = Float.intBitsToFloat(bits$iv$iv$iv4) >= 0.0f;
                }
                if (!value$iv) {
                    InlineClassHelperKt.throwIllegalArgumentException("Width and height must be greater than or equal to zero");
                }
                drawContext.mo5193setSizeuvyYCjk(updatedSize);
                it.translate(left, top);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: clipRect-N_I0leg, reason: not valid java name */
            public void mo5195clipRectN_I0leg(float left, float top, float right, float bottom, int clipOp) {
                $this$asDrawTransform.getCanvas().mo4547clipRectN_I0leg(left, top, right, bottom, clipOp);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: clipPath-mtrdD-E, reason: not valid java name */
            public void mo5194clipPathmtrdDE(Path path, int clipOp) {
                $this$asDrawTransform.getCanvas().mo4546clipPathmtrdDE(path, clipOp);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void translate(float left, float top) {
                $this$asDrawTransform.getCanvas().translate(left, top);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: rotate-Uv8p0NA, reason: not valid java name */
            public void mo5198rotateUv8p0NA(float degrees, long pivot) {
                Canvas $this$rotate_Uv8p0NA_u24lambda_u241 = $this$asDrawTransform.getCanvas();
                int bits$iv$iv$iv = (int) (pivot >> 32);
                int bits$iv$iv$iv2 = (int) (pivot & 4294967295L);
                $this$rotate_Uv8p0NA_u24lambda_u241.translate(Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2));
                $this$rotate_Uv8p0NA_u24lambda_u241.rotate(degrees);
                int bits$iv$iv$iv3 = (int) (pivot >> 32);
                int bits$iv$iv$iv4 = (int) (pivot & 4294967295L);
                $this$rotate_Uv8p0NA_u24lambda_u241.translate(-Float.intBitsToFloat(bits$iv$iv$iv3), -Float.intBitsToFloat(bits$iv$iv$iv4));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: scale-0AR0LA0, reason: not valid java name */
            public void mo5199scale0AR0LA0(float scaleX, float scaleY, long pivot) {
                Canvas $this$scale_0AR0LA0_u24lambda_u242 = $this$asDrawTransform.getCanvas();
                int bits$iv$iv$iv = (int) (pivot >> 32);
                int bits$iv$iv$iv2 = (int) (pivot & 4294967295L);
                $this$scale_0AR0LA0_u24lambda_u242.translate(Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2));
                $this$scale_0AR0LA0_u24lambda_u242.scale(scaleX, scaleY);
                int bits$iv$iv$iv3 = (int) (pivot >> 32);
                int bits$iv$iv$iv4 = (int) (4294967295L & pivot);
                $this$scale_0AR0LA0_u24lambda_u242.translate(-Float.intBitsToFloat(bits$iv$iv$iv3), -Float.intBitsToFloat(bits$iv$iv$iv4));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: transform-58bKbWc, reason: not valid java name */
            public void mo5200transform58bKbWc(float[] matrix) {
                $this$asDrawTransform.getCanvas().mo4548concat58bKbWc(matrix);
            }
        };
    }
}
