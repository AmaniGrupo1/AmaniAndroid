package androidx.compose.material3;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Ripple.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0011H\u0002J\b\u0010\u0015\u001a\u00020\u0011H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u00020\tX\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0016"}, d2 = {"Landroidx/compose/material3/DelegatingThemeAwareRippleNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "bounded", "", "radius", "Landroidx/compose/ui/unit/Dp;", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/ColorProducer;", "(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "F", "rippleNode", "Landroidx/compose/ui/node/DelegatableNode;", "attachNewRipple", "", "onAttach", "onObservedReadsChanged", "removeRipple", "updateConfiguration", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class DelegatingThemeAwareRippleNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    private final boolean bounded;
    private final ColorProducer color;
    private final InteractionSource interactionSource;
    private final float radius;
    private DelegatableNode rippleNode;

    public /* synthetic */ DelegatingThemeAwareRippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, DefaultConstructorMarker defaultConstructorMarker) {
        this(interactionSource, z, f, colorProducer);
    }

    private DelegatingThemeAwareRippleNode(InteractionSource interactionSource, boolean bounded, float radius, ColorProducer color) {
        this.interactionSource = interactionSource;
        this.bounded = bounded;
        this.radius = radius;
        this.color = color;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateConfiguration();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        updateConfiguration();
    }

    private final void updateConfiguration() {
        ObserverModifierNodeKt.observeReads(this, new Function0<Unit>() { // from class: androidx.compose.material3.DelegatingThemeAwareRippleNode.updateConfiguration.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RippleConfiguration configuration = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(DelegatingThemeAwareRippleNode.this, RippleKt.getLocalRippleConfiguration());
                DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode = DelegatingThemeAwareRippleNode.this;
                if (configuration == null) {
                    delegatingThemeAwareRippleNode.removeRipple();
                } else if (delegatingThemeAwareRippleNode.rippleNode == null) {
                    DelegatingThemeAwareRippleNode.this.attachNewRipple();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void attachNewRipple() {
        ColorProducer calculateColor = new ColorProducer() { // from class: androidx.compose.material3.DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1
            /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
            @Override // androidx.compose.ui.graphics.ColorProducer
            /* JADX INFO: renamed from: invoke-0d7_KjU */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final long mo1802invoke0d7_KjU() {
                boolean z;
                long userDefinedColor = this.this$0.color.mo1802invoke0d7_KjU();
                if (userDefinedColor != 16) {
                    return userDefinedColor;
                }
                RippleConfiguration rippleConfiguration = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, RippleKt.getLocalRippleConfiguration());
                if (rippleConfiguration != null) {
                    long $this$isSpecified$iv = rippleConfiguration.getColor();
                    z = ($this$isSpecified$iv > 16L ? 1 : ($this$isSpecified$iv == 16L ? 0 : -1)) != 0;
                }
                if (z) {
                    return rippleConfiguration.getColor();
                }
                return ((Color) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, ContentColorKt.getLocalContentColor())).m4707unboximpl();
            }
        };
        this.rippleNode = delegate(androidx.compose.material.ripple.RippleKt.m2029createRippleModifierNodeTDGSqEk(this.interactionSource, this.bounded, this.radius, calculateColor, new Function0<RippleAlpha>() { // from class: androidx.compose.material3.DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final RippleAlpha invoke() {
                RippleAlpha rippleAlpha;
                RippleConfiguration rippleConfiguration = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, RippleKt.getLocalRippleConfiguration());
                return (rippleConfiguration == null || (rippleAlpha = rippleConfiguration.getRippleAlpha()) == null) ? RippleDefaults.INSTANCE.getRippleAlpha() : rippleAlpha;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeRipple() {
        DelegatableNode it = this.rippleNode;
        if (it != null) {
            undelegate(it);
        }
    }
}
