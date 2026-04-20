package androidx.compose.foundation;

import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.widget.EdgeEffect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: AndroidOverscroll.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\f\u0010\u0010\u001a\u00020\u0011*\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\u001c\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\n\u0010\u0019\u001a\u00060\u001aj\u0002`\u001bH\u0002J\u001c\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00182\n\u0010\u0019\u001a\u00060\u001aj\u0002`\u001bH\u0002J\u001c\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00182\n\u0010\u0019\u001a\u00060\u001aj\u0002`\u001bH\u0002J\u001c\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u00182\n\u0010\u0019\u001a\u00060\u001aj\u0002`\u001bH\u0002J$\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00182\n\u0010\u0019\u001a\u00060\u001aj\u0002`\u001bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006&"}, d2 = {"Landroidx/compose/foundation/StretchOverscrollNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "pointerInputNode", "Landroidx/compose/ui/node/DelegatableNode;", "overscrollEffect", "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "edgeEffectWrapper", "Landroidx/compose/foundation/EdgeEffectWrapper;", "<init>", "(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;)V", "_renderNode", "Landroid/graphics/RenderNode;", "renderNode", "getRenderNode", "()Landroid/graphics/RenderNode;", "draw", "", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "shouldDrawVerticalStretch", "", "shouldDrawHorizontalStretch", "drawLeftStretch", TtmlNode.LEFT, "Landroid/widget/EdgeEffect;", "canvas", "Landroid/graphics/Canvas;", "Landroidx/compose/ui/graphics/NativeCanvas;", "drawTopStretch", "top", "drawRightStretch", TtmlNode.RIGHT, "drawBottomStretch", "bottom", "drawWithRotation", "rotationDegrees", "", "edgeEffect", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class StretchOverscrollNode extends DelegatingNode implements DrawModifierNode {
    private RenderNode _renderNode;
    private final EdgeEffectWrapper edgeEffectWrapper;
    private final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    public StretchOverscrollNode(DelegatableNode pointerInputNode, AndroidEdgeEffectOverscrollEffect overscrollEffect, EdgeEffectWrapper edgeEffectWrapper) {
        this.overscrollEffect = overscrollEffect;
        this.edgeEffectWrapper = edgeEffectWrapper;
        delegate(pointerInputNode);
    }

    private final RenderNode getRenderNode() {
        RenderNode renderNode = this._renderNode;
        if (renderNode != null) {
            return renderNode;
        }
        RenderNode it = new RenderNode("AndroidEdgeEffectOverscrollEffect");
        this._renderNode = it;
        return it;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope $this$draw) throws Throwable {
        RecordingCanvas recordingCanvas;
        long j;
        char c;
        float maxElevation;
        boolean needsInvalidate;
        Canvas canvas$iv;
        this.overscrollEffect.m244updateSizeuvyYCjk$foundation($this$draw.mo5271getSizeNHjbRc());
        android.graphics.Canvas canvas = AndroidCanvas_androidKt.getNativeCanvas($this$draw.getDrawContext().getCanvas());
        this.overscrollEffect.getRedrawSignal$foundation().getValue();
        if (Size.m4523isEmptyimpl($this$draw.mo5271getSizeNHjbRc())) {
            $this$draw.drawContent();
            return;
        }
        if (!canvas.isHardwareAccelerated()) {
            this.edgeEffectWrapper.finishAll();
            $this$draw.drawContent();
            return;
        }
        float maxElevation2 = $this$draw.mo405toPx0680j_4(ClipScrollableContainerKt.getMaxSupportedElevation());
        boolean needsInvalidate2 = false;
        EdgeEffectWrapper $this$draw_u24lambda_u240 = this.edgeEffectWrapper;
        boolean shouldDrawVerticalStretch = shouldDrawVerticalStretch();
        boolean shouldDrawHorizontalStretch = shouldDrawHorizontalStretch();
        if (shouldDrawVerticalStretch && shouldDrawHorizontalStretch) {
            getRenderNode().setPosition(0, 0, canvas.getWidth(), canvas.getHeight());
        } else if (shouldDrawVerticalStretch) {
            getRenderNode().setPosition(0, 0, canvas.getWidth() + (MathKt.roundToInt(maxElevation2) * 2), canvas.getHeight());
        } else {
            if (!shouldDrawHorizontalStretch) {
                $this$draw.drawContent();
                return;
            }
            getRenderNode().setPosition(0, 0, canvas.getWidth(), canvas.getHeight() + (MathKt.roundToInt(maxElevation2) * 2));
        }
        RecordingCanvas recordingCanvas2 = getRenderNode().beginRecording();
        if ($this$draw_u24lambda_u240.isLeftNegationStretched()) {
            EdgeEffect leftEffectNegation = $this$draw_u24lambda_u240.getOrCreateLeftEffectNegation();
            drawRightStretch(leftEffectNegation, recordingCanvas2);
            leftEffectNegation.finish();
        }
        if ($this$draw_u24lambda_u240.isLeftAnimating()) {
            EdgeEffect leftEffect = $this$draw_u24lambda_u240.getOrCreateLeftEffect();
            needsInvalidate2 = drawLeftStretch(leftEffect, recordingCanvas2);
            if ($this$draw_u24lambda_u240.isLeftStretched()) {
                recordingCanvas = recordingCanvas2;
                int bits$iv$iv$iv = (int) (this.overscrollEffect.m243displacementF1C5BW0$foundation() & 4294967295L);
                float displacementY = Float.intBitsToFloat(bits$iv$iv$iv);
                j = 4294967295L;
                EdgeEffectCompat.INSTANCE.onPullDistanceCompat($this$draw_u24lambda_u240.getOrCreateLeftEffectNegation(), EdgeEffectCompat.INSTANCE.getDistanceCompat(leftEffect), 1 - displacementY);
            } else {
                recordingCanvas = recordingCanvas2;
                j = 4294967295L;
            }
        } else {
            recordingCanvas = recordingCanvas2;
            j = 4294967295L;
        }
        if ($this$draw_u24lambda_u240.isTopNegationStretched()) {
            EdgeEffect topEffectNegation = $this$draw_u24lambda_u240.getOrCreateTopEffectNegation();
            drawBottomStretch(topEffectNegation, recordingCanvas);
            topEffectNegation.finish();
        }
        if ($this$draw_u24lambda_u240.isTopAnimating()) {
            EdgeEffect topEffect = $this$draw_u24lambda_u240.getOrCreateTopEffect();
            needsInvalidate2 = drawTopStretch(topEffect, recordingCanvas) || needsInvalidate2;
            if ($this$draw_u24lambda_u240.isTopStretched()) {
                c = ' ';
                int bits$iv$iv$iv2 = (int) (this.overscrollEffect.m243displacementF1C5BW0$foundation() >> 32);
                float displacementX = Float.intBitsToFloat(bits$iv$iv$iv2);
                EdgeEffectCompat.INSTANCE.onPullDistanceCompat($this$draw_u24lambda_u240.getOrCreateTopEffectNegation(), EdgeEffectCompat.INSTANCE.getDistanceCompat(topEffect), displacementX);
            } else {
                c = ' ';
            }
        } else {
            c = ' ';
        }
        if ($this$draw_u24lambda_u240.isRightNegationStretched()) {
            EdgeEffect rightEffectNegation = $this$draw_u24lambda_u240.getOrCreateRightEffectNegation();
            drawLeftStretch(rightEffectNegation, recordingCanvas);
            rightEffectNegation.finish();
        }
        if ($this$draw_u24lambda_u240.isRightAnimating()) {
            EdgeEffect rightEffect = $this$draw_u24lambda_u240.getOrCreateRightEffect();
            needsInvalidate2 = drawRightStretch(rightEffect, recordingCanvas) || needsInvalidate2;
            if ($this$draw_u24lambda_u240.isRightStretched()) {
                int bits$iv$iv$iv3 = (int) (this.overscrollEffect.m243displacementF1C5BW0$foundation() & j);
                float displacementY2 = Float.intBitsToFloat(bits$iv$iv$iv3);
                EdgeEffectCompat.INSTANCE.onPullDistanceCompat($this$draw_u24lambda_u240.getOrCreateRightEffectNegation(), EdgeEffectCompat.INSTANCE.getDistanceCompat(rightEffect), displacementY2);
            }
        }
        if ($this$draw_u24lambda_u240.isBottomNegationStretched()) {
            EdgeEffect bottomEffectNegation = $this$draw_u24lambda_u240.getOrCreateBottomEffectNegation();
            drawTopStretch(bottomEffectNegation, recordingCanvas);
            bottomEffectNegation.finish();
        }
        if ($this$draw_u24lambda_u240.isBottomAnimating()) {
            EdgeEffect bottomEffect = $this$draw_u24lambda_u240.getOrCreateBottomEffect();
            boolean needsInvalidate3 = drawBottomStretch(bottomEffect, recordingCanvas) || needsInvalidate2;
            if ($this$draw_u24lambda_u240.isBottomStretched()) {
                maxElevation = maxElevation2;
                int bits$iv$iv$iv4 = (int) (this.overscrollEffect.m243displacementF1C5BW0$foundation() >> c);
                float displacementX2 = Float.intBitsToFloat(bits$iv$iv$iv4);
                EdgeEffectCompat.INSTANCE.onPullDistanceCompat($this$draw_u24lambda_u240.getOrCreateBottomEffectNegation(), EdgeEffectCompat.INSTANCE.getDistanceCompat(bottomEffect), 1 - displacementX2);
            } else {
                maxElevation = maxElevation2;
            }
            needsInvalidate = needsInvalidate3;
        } else {
            maxElevation = maxElevation2;
            needsInvalidate = needsInvalidate2;
        }
        if (needsInvalidate) {
            this.overscrollEffect.invalidateOverscroll$foundation();
        }
        float left = shouldDrawHorizontalStretch ? 0.0f : maxElevation;
        float top = shouldDrawVerticalStretch ? 0.0f : maxElevation;
        ContentDrawScope $this$draw_u2dymL40Pk_u24default$iv = $this$draw;
        ContentDrawScope density$iv = $this$draw;
        LayoutDirection layoutDirection$iv = $this$draw.getLayoutDirection();
        Canvas canvas$iv2 = AndroidCanvas_androidKt.Canvas(recordingCanvas);
        long j2 = $this$draw.mo5271getSizeNHjbRc();
        Density prevDensity$iv = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().getDensity();
        LayoutDirection prevLayoutDirection$iv = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().getLayoutDirection();
        Canvas prevCanvas$iv = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().getCanvas();
        long prevSize$iv = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().mo5192getSizeNHjbRc();
        GraphicsLayer prevLayer$iv = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().getGraphicsLayer();
        DrawContext $this$draw_ymL40Pk_u24lambda_u240$iv = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext();
        $this$draw_ymL40Pk_u24lambda_u240$iv.setDensity(density$iv);
        $this$draw_ymL40Pk_u24lambda_u240$iv.setLayoutDirection(layoutDirection$iv);
        $this$draw_ymL40Pk_u24lambda_u240$iv.setCanvas(canvas$iv2);
        $this$draw_ymL40Pk_u24lambda_u240$iv.mo5193setSizeuvyYCjk(j2);
        $this$draw_ymL40Pk_u24lambda_u240$iv.setGraphicsLayer(null);
        canvas$iv2.save();
        float left$iv = left;
        try {
            canvas$iv = canvas$iv2;
            try {
                $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().getTransform().translate(left$iv, top);
                try {
                    try {
                        $this$draw.drawContent();
                        $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().getTransform().translate(-left$iv, -top);
                        canvas$iv.restore();
                        DrawContext $this$draw_ymL40Pk_u24lambda_u241$iv = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext();
                        $this$draw_ymL40Pk_u24lambda_u241$iv.setDensity(prevDensity$iv);
                        $this$draw_ymL40Pk_u24lambda_u241$iv.setLayoutDirection(prevLayoutDirection$iv);
                        $this$draw_ymL40Pk_u24lambda_u241$iv.setCanvas(prevCanvas$iv);
                        $this$draw_ymL40Pk_u24lambda_u241$iv.mo5193setSizeuvyYCjk(prevSize$iv);
                        $this$draw_ymL40Pk_u24lambda_u241$iv.setGraphicsLayer(prevLayer$iv);
                        getRenderNode().endRecording();
                        int restore = canvas.save();
                        canvas.translate(-left, -top);
                        canvas.drawRenderNode(getRenderNode());
                        canvas.restoreToCount(restore);
                    } catch (Throwable th) {
                        $this$draw_u2dymL40Pk_u24default$iv.getDrawContext().getTransform().translate(-left$iv, -top);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    canvas$iv.restore();
                    DrawContext $this$draw_ymL40Pk_u24lambda_u241$iv2 = $this$draw_u2dymL40Pk_u24default$iv.getDrawContext();
                    $this$draw_ymL40Pk_u24lambda_u241$iv2.setDensity(prevDensity$iv);
                    $this$draw_ymL40Pk_u24lambda_u241$iv2.setLayoutDirection(prevLayoutDirection$iv);
                    $this$draw_ymL40Pk_u24lambda_u241$iv2.setCanvas(prevCanvas$iv);
                    $this$draw_ymL40Pk_u24lambda_u241$iv2.mo5193setSizeuvyYCjk(prevSize$iv);
                    $this$draw_ymL40Pk_u24lambda_u241$iv2.setGraphicsLayer(prevLayer$iv);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            canvas$iv = canvas$iv2;
        }
    }

    private final boolean shouldDrawVerticalStretch() {
        EdgeEffectWrapper $this$shouldDrawVerticalStretch_u24lambda_u240 = this.edgeEffectWrapper;
        return $this$shouldDrawVerticalStretch_u24lambda_u240.isTopAnimating() || $this$shouldDrawVerticalStretch_u24lambda_u240.isTopNegationStretched() || $this$shouldDrawVerticalStretch_u24lambda_u240.isBottomAnimating() || $this$shouldDrawVerticalStretch_u24lambda_u240.isBottomNegationStretched();
    }

    private final boolean shouldDrawHorizontalStretch() {
        EdgeEffectWrapper $this$shouldDrawHorizontalStretch_u24lambda_u240 = this.edgeEffectWrapper;
        return $this$shouldDrawHorizontalStretch_u24lambda_u240.isLeftAnimating() || $this$shouldDrawHorizontalStretch_u24lambda_u240.isLeftNegationStretched() || $this$shouldDrawHorizontalStretch_u24lambda_u240.isRightAnimating() || $this$shouldDrawHorizontalStretch_u24lambda_u240.isRightNegationStretched();
    }

    private final boolean drawLeftStretch(EdgeEffect left, android.graphics.Canvas canvas) {
        return drawWithRotation(270.0f, left, canvas);
    }

    private final boolean drawTopStretch(EdgeEffect top, android.graphics.Canvas canvas) {
        return drawWithRotation(0.0f, top, canvas);
    }

    private final boolean drawRightStretch(EdgeEffect right, android.graphics.Canvas canvas) {
        return drawWithRotation(90.0f, right, canvas);
    }

    private final boolean drawBottomStretch(EdgeEffect bottom, android.graphics.Canvas canvas) {
        return drawWithRotation(180.0f, bottom, canvas);
    }

    private final boolean drawWithRotation(float rotationDegrees, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        if (rotationDegrees == 0.0f) {
            boolean needsInvalidate = edgeEffect.draw(canvas);
            return needsInvalidate;
        }
        int restore = canvas.save();
        canvas.rotate(rotationDegrees);
        boolean needsInvalidate2 = edgeEffect.draw(canvas);
        canvas.restoreToCount(restore);
        return needsInvalidate2;
    }
}
