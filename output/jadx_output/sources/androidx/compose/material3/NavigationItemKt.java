package androidx.compose.material3;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.internal.MappedInteractionSource;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: NavigationItem.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u001aÍ\u0001\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u00142\u0011\u0010\u0015\u001a\r\u0012\u0004\u0012\u00020\u00100\u0014¢\u0006\u0002\b\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00122\u0013\u0010&\u001a\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0014¢\u0006\u0002\b\u00162\u0013\u0010'\u001a\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0014¢\u0006\u0002\b\u00162\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001ø\u0001\u0000¢\u0006\u0004\b,\u0010-\u001a\u0090\u0001\u0010.\u001a\u00020\u00102\u0006\u0010*\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010\u0019\u001a\u00020\u001a2\u0011\u0010\u0015\u001a\r\u0012\u0004\u0012\u00020\u00100\u0014¢\u0006\u0002\b\u00162\u0006\u0010(\u001a\u00020)2\u0013\u0010&\u001a\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0014¢\u0006\u0002\b\u00162\f\u00102\u001a\b\u0012\u0004\u0012\u0002030\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0003ø\u0001\u0000¢\u0006\u0004\b4\u00105\u001a6\u00106\u001a\u000207*\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>H\u0002ø\u0001\u0000¢\u0006\u0004\b?\u0010@\u001aF\u0010A\u001a\u000207*\u0002082\u0006\u0010B\u001a\u00020:2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010\u001f\u001a\u00020\u0005H\u0002ø\u0001\u0000¢\u0006\u0004\bC\u0010D\u001aV\u0010E\u001a\u000207*\u0002082\u0006\u0010B\u001a\u00020:2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0002ø\u0001\u0000¢\u0006\u0004\bF\u0010G\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\n\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u000b\u0010\f\"\u0016\u0010\r\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u000e\u0010\f\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006H²\u0006\n\u0010I\u001a\u00020\bX\u008a\u008e\u0002"}, d2 = {"IconLayoutIdTag", "", "IndicatorLayoutIdTag", "IndicatorRippleLayoutIdTag", "IndicatorVerticalOffset", "Landroidx/compose/ui/unit/Dp;", "F", "ItemAnimationDurationMillis", "", "LabelLayoutIdTag", "NavigationItemMinHeight", "getNavigationItemMinHeight", "()F", "NavigationItemMinWidth", "getNavigationItemMinWidth", "NavigationItem", "", "selected", "", "onClick", "Lkotlin/Function0;", NavigationItemKt.IconLayoutIdTag, "Landroidx/compose/runtime/Composable;", "labelTextStyle", "Landroidx/compose/ui/text/TextStyle;", "indicatorShape", "Landroidx/compose/ui/graphics/Shape;", "indicatorWidth", "indicatorHorizontalPadding", "indicatorVerticalPadding", "indicatorToLabelVerticalPadding", "startIconToLabelHorizontalPadding", "topIconItemVerticalPadding", "colors", "Landroidx/compose/material3/NavigationItemColors;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", NavigationItemKt.LabelLayoutIdTag, "badge", "iconPosition", "Landroidx/compose/material3/NavigationItemIconPosition;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "NavigationItem-SHbi2eg", "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/graphics/Shape;FFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "NavigationItemLayout", "Landroidx/compose/foundation/interaction/InteractionSource;", "indicatorColor", "Landroidx/compose/ui/graphics/Color;", "animationProgress", "", "NavigationItemLayout-KmRX-Dg", "(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V", "placeIcon", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "iconPlaceable", "Landroidx/compose/ui/layout/Placeable;", "indicatorRipplePlaceable", "indicatorPlaceable", "constraints", "Landroidx/compose/ui/unit/Constraints;", "placeIcon-X9ElhV4", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;", "placeLabelAndStartIcon", "labelPlaceable", "placeLabelAndStartIcon-nru01g4", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;", "placeLabelAndTopIcon", "placeLabelAndTopIcon-qoqLrGI", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JFFF)Landroidx/compose/ui/layout/MeasureResult;", "material3_release", "itemWidth"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class NavigationItemKt {
    private static final String IconLayoutIdTag = "icon";
    private static final String IndicatorLayoutIdTag = "indicator";
    private static final String IndicatorRippleLayoutIdTag = "indicatorRipple";
    private static final int ItemAnimationDurationMillis = 100;
    private static final String LabelLayoutIdTag = "label";
    private static final float NavigationItemMinWidth = NavigationRailKt.getNavigationRailItemWidth();
    private static final float NavigationItemMinHeight = NavigationRailKt.getNavigationRailItemHeight();
    private static final float IndicatorVerticalOffset = Dp.m7505constructorimpl(12);

    /* JADX WARN: Removed duplicated region for block: B:214:0x057e  */
    /* JADX INFO: renamed from: NavigationItem-SHbi2eg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2594NavigationItemSHbi2eg(final boolean selected, final Function0<Unit> function0, final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle labelTextStyle, final Shape indicatorShape, final float indicatorWidth, final float indicatorHorizontalPadding, final float indicatorVerticalPadding, final float indicatorToLabelVerticalPadding, final float startIconToLabelHorizontalPadding, final float topIconItemVerticalPadding, final NavigationItemColors colors, final Modifier modifier, final boolean enabled, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final int iconPosition, final MutableInteractionSource interactionSource, Composer $composer, final int $changed, final int $changed1) {
        final Function2<? super Composer, ? super Integer, Unit> function24;
        TextStyle textStyle;
        Shape shape;
        float f;
        Function2 function2RememberComposableLambda;
        Object value$iv;
        Object value$iv2;
        Function0<ComposeUiNode> function02;
        MappedInteractionSource offsetInteractionSource;
        InteractionSource interactionSource2;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(547979956);
        ComposerKt.sourceInformation($composer3, "C(NavigationItem)P(15,14,3,12,6,9:c#ui.unit.Dp,5:c#ui.unit.Dp,8:c#ui.unit.Dp,7:c#ui.unit.Dp,16:c#ui.unit.Dp,17:c#ui.unit.Dp,1,13,2,11!1,4:c#material3.NavigationItemIconPosition)254@10949L438,281@11981L33,294@12438L24,283@12020L2390:NavigationItem.kt#uh7d8r");
        int $dirty = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(selected) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(function0) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function24 = function2;
            $dirty |= $composer3.changedInstance(function24) ? 256 : 128;
        } else {
            function24 = function2;
        }
        if (($changed & 3072) == 0) {
            textStyle = labelTextStyle;
            $dirty |= $composer3.changed(textStyle) ? 2048 : 1024;
        } else {
            textStyle = labelTextStyle;
        }
        if (($changed & 24576) == 0) {
            shape = indicatorShape;
            $dirty |= $composer3.changed(shape) ? 16384 : 8192;
        } else {
            shape = indicatorShape;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty |= $composer3.changed(indicatorWidth) ? 131072 : 65536;
        }
        if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(indicatorHorizontalPadding) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= $composer3.changed(indicatorVerticalPadding) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty |= $composer3.changed(indicatorToLabelVerticalPadding) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty |= $composer3.changed(startIconToLabelHorizontalPadding) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($changed1 & 6) == 0) {
            f = topIconItemVerticalPadding;
            $dirty1 |= $composer3.changed(f) ? 4 : 2;
        } else {
            f = topIconItemVerticalPadding;
        }
        if (($changed1 & 48) == 0) {
            $dirty1 |= $composer3.changed(colors) ? 32 : 16;
        }
        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty1 |= $composer3.changed(modifier) ? 256 : 128;
        }
        if (($changed1 & 3072) == 0) {
            $dirty1 |= $composer3.changed(enabled) ? 2048 : 1024;
        }
        if (($changed1 & 24576) == 0) {
            $dirty1 |= $composer3.changedInstance(function22) ? 16384 : 8192;
        }
        if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty1 |= $composer3.changedInstance(function23) ? 131072 : 65536;
        }
        if ((1572864 & $changed1) == 0) {
            $dirty1 |= $composer3.changed(iconPosition) ? 1048576 : 524288;
        }
        if ((12582912 & $changed1) == 0) {
            $dirty1 |= $composer3.changed(interactionSource) ? 8388608 : 4194304;
        }
        int $dirty12 = $dirty1;
        if ((306783379 & $dirty) != 306783378 || (4793491 & $dirty12) != 4793490 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(547979956, $dirty, $dirty12, "androidx.compose.material3.NavigationItem (NavigationItem.kt:252)");
            }
            int $dirty2 = $dirty;
            final Function2 styledIcon = ComposableLambdaKt.rememberComposableLambda(-44329638, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$styledIcon$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    Function0<ComposeUiNode> function03;
                    ComposerKt.sourceInformation($composer4, "C258@11184L193:NavigationItem.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-44329638, $changed2, -1, "androidx.compose.material3.NavigationItem.<anonymous> (NavigationItem.kt:255)");
                        }
                        long iconColor = colors.m2583iconColorWaAFU9c(selected, enabled);
                        boolean clearSemantics = function22 != null;
                        Modifier.Companion modifier$iv = Modifier.INSTANCE;
                        if (clearSemantics) {
                            modifier$iv = SemanticsModifierKt.clearAndSetSemantics(modifier$iv, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$styledIcon$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                                }
                            });
                        }
                        Function2<Composer, Integer, Unit> function25 = function24;
                        ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                        MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                        int $changed$iv$iv = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            function03 = constructor;
                            $composer4.createNode(function03);
                        } else {
                            function03 = constructor;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        int i2 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -735818003, "C259@11285L78:NavigationItem.kt#uh7d8r");
                        CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(iconColor)), function25, $composer4, ProvidedValue.$stable);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54);
            $composer3.startReplaceGroup(-1735402128);
            ComposerKt.sourceInformation($composer3, "264@11453L51");
            if (function23 != null) {
                function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1836184859, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$iconWithBadge$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer4, int $changed2) {
                        ComposerKt.sourceInformation($composer4, "C264@11473L11,264@11486L16,264@11455L47:NavigationItem.kt#uh7d8r");
                        if (($changed2 & 3) == 2 && $composer4.getSkipping()) {
                            $composer4.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1836184859, $changed2, -1, "androidx.compose.material3.NavigationItem.<anonymous> (NavigationItem.kt:264)");
                        }
                        final Function2<Composer, Integer, Unit> function25 = function23;
                        ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(870803363, true, new Function3<BoxScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$iconWithBadge$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Composer composer, Integer num) {
                                invoke(boxScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(BoxScope $this$BadgedBox, Composer $composer5, int $changed3) {
                                ComposerKt.sourceInformation($composer5, "C264@11475L7:NavigationItem.kt#uh7d8r");
                                if (($changed3 & 17) == 16 && $composer5.getSkipping()) {
                                    $composer5.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(870803363, $changed3, -1, "androidx.compose.material3.NavigationItem.<anonymous>.<anonymous> (NavigationItem.kt:264)");
                                }
                                function25.invoke($composer5, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, $composer4, 54);
                        final Function2<Composer, Integer, Unit> function26 = styledIcon;
                        BadgeKt.BadgedBox(composableLambdaRememberComposableLambda, null, ComposableLambdaKt.rememberComposableLambda(-1365557663, true, new Function3<BoxScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$iconWithBadge$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Composer composer, Integer num) {
                                invoke(boxScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(BoxScope $this$BadgedBox, Composer $composer5, int $changed3) {
                                ComposerKt.sourceInformation($composer5, "C264@11488L12:NavigationItem.kt#uh7d8r");
                                if (($changed3 & 17) == 16 && $composer5.getSkipping()) {
                                    $composer5.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1365557663, $changed3, -1, "androidx.compose.material3.NavigationItem.<anonymous>.<anonymous> (NavigationItem.kt:264)");
                                }
                                function26.invoke($composer5, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, $composer4, 54), $composer4, 390, 2);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, $composer3, 54);
            } else {
                function2RememberComposableLambda = styledIcon;
            }
            $composer3.endReplaceGroup();
            Function2 iconWithBadge = function2RememberComposableLambda;
            $composer3.startReplaceGroup(-1735395524);
            ComposerKt.sourceInformation($composer3, "*271@11650L298");
            Function2 function2RememberComposableLambda2 = null;
            if (function22 != null) {
                final TextStyle textStyle2 = textStyle;
                function2RememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-254668050, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$styledLabel$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer4, int $changed2) {
                        ComposerKt.sourceInformation($composer4, "C273@11757L177:NavigationItem.kt#uh7d8r");
                        if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-254668050, $changed2, -1, "androidx.compose.material3.NavigationItem.<anonymous>.<anonymous> (NavigationItem.kt:272)");
                            }
                            long textColor = colors.m2584textColorWaAFU9c(selected, enabled);
                            ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(textColor, textStyle2, function22, $composer4, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer4.skipToGroupEnd();
                    }
                }, $composer3, 54);
            }
            $composer3.endReplaceGroup();
            Function2 styledLabel = function2RememberComposableLambda2;
            ComposerKt.sourceInformationMarkerStart($composer3, -1735384277, "CC(remember):NavigationItem.kt#9igjgp");
            Object it$iv = $composer3.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = SnapshotIntStateKt.mutableIntStateOf(0);
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final MutableIntState itemWidth$delegate = (MutableIntState) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierM848defaultMinSizeVpY3zN4 = SizeKt.m848defaultMinSizeVpY3zN4(SelectableKt.m1088selectableO2vRcR0(modifier, selected, interactionSource, null, enabled, Role.m6692boximpl(Role.INSTANCE.m6706getTabo7Vup1c()), function0), NavigationItemMinWidth, NavigationItemMinHeight);
            ComposerKt.sourceInformationMarkerStart($composer3, -1735369662, "CC(remember):NavigationItem.kt#9igjgp");
            Object it$iv2 = $composer3.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = (Function1) new Function1<IntSize, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                        m2603invokeozmzZPI(intSize.m7680unboximpl());
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
                    public final void m2603invokeozmzZPI(long it) {
                        itemWidth$delegate.setIntValue(IntSize.m7676getWidthimpl(it));
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifier$iv = OnRemeasuredModifierKt.onSizeChanged(modifierM848defaultMinSizeVpY3zN4, (Function1) value$iv2);
            Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
            int $changed$iv$iv = (432 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor;
                $composer3.createNode(function02);
            } else {
                function02 = constructor;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i2 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 872931531, "C299@12615L157,330@14002L27,323@13657L747:NavigationItem.kt#uh7d8r");
            final State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(selected ? 1.0f : 0.0f, AnimationSpecKt.tween$default(100, 0, null, 6, null), 0.0f, null, null, $composer3, 48, 28);
            $composer3.startReplaceGroup(-1634400795);
            ComposerKt.sourceInformation($composer3, "*310@13207L7,318@13501L136");
            if (!NavigationItemIconPosition.m2588equalsimpl0(iconPosition, NavigationItemIconPosition.INSTANCE.m2593getTopxw1Ddg())) {
                offsetInteractionSource = null;
            } else {
                ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume = $composer3.consume(localDensity);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Density $this$NavigationItem_SHbi2eg_u24lambda_u248_u24lambda_u245 = (Density) objConsume;
                long deltaOffset = OffsetKt.Offset((NavigationItem_SHbi2eg$lambda$2(itemWidth$delegate) - $this$NavigationItem_SHbi2eg_u24lambda_u248_u24lambda_u245.mo399roundToPx0680j_4(indicatorWidth)) / 2, $this$NavigationItem_SHbi2eg_u24lambda_u248_u24lambda_u245.mo405toPx0680j_4(IndicatorVerticalOffset));
                Unit unit = Unit.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, -1634380655, "CC(remember):NavigationItem.kt#9igjgp");
                boolean invalid$iv = (($dirty12 & 29360128) == 8388608) | $composer3.changed(deltaOffset);
                Object value$iv3 = $composer3.rememberedValue();
                if (invalid$iv || value$iv3 == Composer.INSTANCE.getEmpty()) {
                    value$iv3 = new MappedInteractionSource(interactionSource, deltaOffset, null);
                    $composer3.updateRememberedValue(value$iv3);
                }
                MappedInteractionSource offsetInteractionSource2 = (MappedInteractionSource) value$iv3;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                offsetInteractionSource = offsetInteractionSource2;
            }
            $composer3.endReplaceGroup();
            MutableInteractionSource mutableInteractionSource = offsetInteractionSource != null ? offsetInteractionSource : interactionSource;
            long selectedIndicatorColor = colors.getSelectedIndicatorColor();
            ComposerKt.sourceInformationMarkerStart($composer3, -1634364732, "CC(remember):NavigationItem.kt#9igjgp");
            boolean invalid$iv2 = $composer3.changed(stateAnimateFloatAsState);
            Object value$iv4 = $composer3.rememberedValue();
            if (!invalid$iv2) {
                interactionSource2 = mutableInteractionSource;
                if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2 = $composer3;
                m2595NavigationItemLayoutKmRXDg(interactionSource2, selectedIndicatorColor, shape, iconWithBadge, iconPosition, styledLabel, (Function0) value$iv4, indicatorHorizontalPadding, indicatorVerticalPadding, indicatorToLabelVerticalPadding, startIconToLabelHorizontalPadding, f, $composer3, (($dirty2 >> 6) & 896) | (($dirty12 >> 6) & 57344) | (($dirty2 << 3) & 29360128) | (($dirty2 << 3) & 234881024) | (($dirty2 << 3) & C.ENCODING_PCM_DOUBLE), (($dirty2 >> 27) & 14) | (($dirty12 << 3) & 112));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                interactionSource2 = mutableInteractionSource;
            }
            value$iv4 = (Function0) new Function0<Float>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$2$3$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Float invoke() {
                    return stateAnimateFloatAsState.getValue();
                }
            };
            $composer3.updateRememberedValue(value$iv4);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            m2595NavigationItemLayoutKmRXDg(interactionSource2, selectedIndicatorColor, shape, iconWithBadge, iconPosition, styledLabel, (Function0) value$iv4, indicatorHorizontalPadding, indicatorVerticalPadding, indicatorToLabelVerticalPadding, startIconToLabelHorizontalPadding, f, $composer3, (($dirty2 >> 6) & 896) | (($dirty12 >> 6) & 57344) | (($dirty2 << 3) & 29360128) | (($dirty2 << 3) & 234881024) | (($dirty2 << 3) & C.ENCODING_PCM_DOUBLE), (($dirty2 >> 27) & 14) | (($dirty12 << 3) & 112));
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    NavigationItemKt.m2594NavigationItemSHbi2eg(selected, function0, function2, labelTextStyle, indicatorShape, indicatorWidth, indicatorHorizontalPadding, indicatorVerticalPadding, indicatorToLabelVerticalPadding, startIconToLabelHorizontalPadding, topIconItemVerticalPadding, colors, modifier, enabled, function22, function23, iconPosition, interactionSource, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1));
                }
            });
        }
    }

    private static final int NavigationItem_SHbi2eg$lambda$2(MutableIntState $itemWidth$delegate) {
        MutableIntState $this$getValue$iv = $itemWidth$delegate;
        return $this$getValue$iv.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0560  */
    /* JADX INFO: renamed from: NavigationItemLayout-KmRX-Dg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2595NavigationItemLayoutKmRXDg(final InteractionSource interactionSource, final long indicatorColor, final Shape indicatorShape, final Function2<? super Composer, ? super Integer, Unit> function2, final int iconPosition, final Function2<? super Composer, ? super Integer, Unit> function22, Function0<Float> function0, final float indicatorHorizontalPadding, final float indicatorVerticalPadding, final float indicatorToLabelVerticalPadding, final float startIconToLabelHorizontalPadding, final float topIconItemVerticalPadding, Composer $composer, final int $changed, final int $changed1) {
        float f;
        float f2;
        int $dirty;
        int i;
        MeasurePolicy measurePolicy$iv;
        final Function0<Float> function02;
        Composer $composer2;
        int compositeKeyHash$iv;
        Function0<ComposeUiNode> function03;
        Composer $composer3;
        Composer $this$Layout_u24lambda_u240$iv;
        boolean invalid$iv;
        Object value$iv;
        int compositeKeyHash$iv$iv;
        Function0<ComposeUiNode> function04;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        Function0<ComposeUiNode> function05;
        int $changed$iv;
        Composer $composer4 = $composer.startRestartGroup(1757687417);
        ComposerKt.sourceInformation($composer4, "C(NavigationItemLayout)P(8,3:c#ui.graphics.Color,5,1,2:c#material3.NavigationItemIconPosition,9!1,4:c#ui.unit.Dp,7:c#ui.unit.Dp,6:c#ui.unit.Dp,10:c#ui.unit.Dp,11:c#ui.unit.Dp)356@14947L1719:NavigationItem.kt#uh7d8r");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer4.changed(interactionSource) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer4.changed(indicatorColor) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer4.changed(indicatorShape) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty2 |= $composer4.changedInstance(function2) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty2 |= $composer4.changed(iconPosition) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty2 |= $composer4.changedInstance(function22) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty2 |= $composer4.changedInstance(function0) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            f = indicatorHorizontalPadding;
            $dirty2 |= $composer4.changed(f) ? 8388608 : 4194304;
        } else {
            f = indicatorHorizontalPadding;
        }
        if (($changed & 100663296) == 0) {
            $dirty2 |= $composer4.changed(indicatorVerticalPadding) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty2 |= $composer4.changed(indicatorToLabelVerticalPadding) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($changed1 & 6) == 0) {
            f2 = startIconToLabelHorizontalPadding;
            $dirty1 |= $composer4.changed(f2) ? 4 : 2;
        } else {
            f2 = startIconToLabelHorizontalPadding;
        }
        if (($changed1 & 48) == 0) {
            $dirty1 |= $composer4.changed(topIconItemVerticalPadding) ? 32 : 16;
        }
        if (($dirty2 & 306783379) != 306783378 || ($dirty1 & 19) != 18 || !$composer4.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1757687417, $dirty2, $dirty1, "androidx.compose.material3.NavigationItemLayout (NavigationItem.kt:355)");
            }
            if (function22 == null || NavigationItemIconPosition.m2588equalsimpl0(iconPosition, NavigationItemIconPosition.INSTANCE.m2593getTopxw1Ddg())) {
                int i2 = 0;
                $dirty = $dirty2;
                boolean z = function22 != null ? 1 : i2;
                i = i2;
                $composer2 = $composer4;
                function02 = function0;
                measurePolicy$iv = new TopIconOrIconOnlyMeasurePolicy(z, function0, indicatorHorizontalPadding, indicatorVerticalPadding, indicatorToLabelVerticalPadding, topIconItemVerticalPadding, null);
                int $changed$iv2 = i;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                Modifier modifier$iv = Modifier.INSTANCE;
                compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, i);
                CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv = (($changed$iv2 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if (!$composer2.getInserting()) {
                    function03 = constructor;
                    $composer2.createNode(function03);
                } else {
                    function03 = constructor;
                    $composer2.useNode();
                }
                $composer3 = $composer2;
                $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                    $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                    $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i3 = ($changed$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 1690051920, "C362@15191L32,359@15031L207,369@15552L31,367@15456L292,375@15761L50:NavigationItem.kt#uh7d8r");
                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.INSTANCE, IndicatorRippleLayoutIdTag), indicatorShape), interactionSource, RippleKt.m2690rippleOrFallbackImplementation9IZ8Weo(false, 0.0f, 0L, $composer3, 0, 7)), $composer3, 0);
                Modifier modifierLayoutId = LayoutIdKt.layoutId(Modifier.INSTANCE, IndicatorLayoutIdTag);
                ComposerKt.sourceInformationMarkerStart($composer3, -776750382, "CC(remember):NavigationItem.kt#9igjgp");
                boolean invalid$iv2 = ($dirty & 3670016) != 1048576;
                invalid$iv = invalid$iv2;
                value$iv = $composer3.rememberedValue();
                if (!invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItemLayout$1$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                            invoke2(graphicsLayerScope);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                            $this$graphicsLayer.setAlpha(function02.invoke().floatValue());
                        }
                    };
                    $composer3.updateRememberedValue(value$iv);
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                BoxKt.Box(BackgroundKt.m263backgroundbw27NRU(GraphicsLayerModifierKt.graphicsLayer(modifierLayoutId, (Function1) value$iv), indicatorColor, indicatorShape), $composer3, 0);
                Modifier modifier$iv2 = LayoutIdKt.layoutId(Modifier.INSTANCE, IconLayoutIdTag);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                int $changed$iv$iv2 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv = (($changed$iv$iv2 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                    function04 = constructor2;
                    $composer3.createNode(function04);
                } else {
                    function04 = constructor2;
                    $composer3.useNode();
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i4 = ($changed$iv$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                int i5 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 14502763, "C375@15803L6:NavigationItem.kt#uh7d8r");
                function2.invoke($composer3, Integer.valueOf(($dirty >> 9) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.startReplaceGroup(-776741606);
                ComposerKt.sourceInformation($composer3, "377@15861L52");
                if (function22 != null) {
                    Modifier modifier$iv3 = LayoutIdKt.layoutId(Modifier.INSTANCE, LabelLayoutIdTag);
                    ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                    int $changed$iv$iv3 = (6 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv3);
                    Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv2 = (($changed$iv$iv3 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        function05 = constructor3;
                        $composer3.createNode(function05);
                    } else {
                        function05 = constructor3;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                        $changed$iv = 6;
                    } else {
                        $changed$iv = 6;
                        if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                        int i6 = ($changed$iv$iv$iv2 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                        int i7 = (($changed$iv >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 14602986, "C377@15904L7:NavigationItem.kt#uh7d8r");
                        function22.invoke($composer3, Integer.valueOf(($dirty >> 15) & 14));
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                    }
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                    int i62 = ($changed$iv$iv$iv2 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                    int i72 = (($changed$iv >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 14602986, "C377@15904L7:NavigationItem.kt#uh7d8r");
                    function22.invoke($composer3, Integer.valueOf(($dirty >> 15) & 14));
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                }
                $composer3.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                $dirty = $dirty2;
                i = 0;
                measurePolicy$iv = new StartIconMeasurePolicy(function0, f, indicatorVerticalPadding, f2, null);
                $composer2 = $composer4;
                function02 = function0;
                int $changed$iv22 = i;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                Modifier modifier$iv4 = Modifier.INSTANCE;
                compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, i);
                CompositionLocalMap localMap$iv2 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv2 = ComposedModifierKt.materializeModifier($composer2, modifier$iv4);
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv4 = (($changed$iv22 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if (!$composer2.getInserting()) {
                }
                $composer3 = $composer2;
                $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash4);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                int i32 = ($changed$iv$iv4 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 1690051920, "C362@15191L32,359@15031L207,369@15552L31,367@15456L292,375@15761L50:NavigationItem.kt#uh7d8r");
                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.INSTANCE, IndicatorRippleLayoutIdTag), indicatorShape), interactionSource, RippleKt.m2690rippleOrFallbackImplementation9IZ8Weo(false, 0.0f, 0L, $composer3, 0, 7)), $composer3, 0);
                Modifier modifierLayoutId2 = LayoutIdKt.layoutId(Modifier.INSTANCE, IndicatorLayoutIdTag);
                ComposerKt.sourceInformationMarkerStart($composer3, -776750382, "CC(remember):NavigationItem.kt#9igjgp");
                if (($dirty & 3670016) != 1048576) {
                }
                invalid$iv = invalid$iv2;
                value$iv = $composer3.rememberedValue();
                if (!invalid$iv) {
                }
                value$iv = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItemLayout$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                        invoke2(graphicsLayerScope);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                        $this$graphicsLayer.setAlpha(function02.invoke().floatValue());
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                BoxKt.Box(BackgroundKt.m263backgroundbw27NRU(GraphicsLayerModifierKt.graphicsLayer(modifierLayoutId2, (Function1) value$iv), indicatorColor, indicatorShape), $composer3, 0);
                Modifier modifier$iv22 = LayoutIdKt.layoutId(Modifier.INSTANCE, IconLayoutIdTag);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv3 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv22 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv3, false);
                int $changed$iv$iv22 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer3, modifier$iv22);
                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv3 = (($changed$iv$iv22 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash22);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                int i42 = ($changed$iv$iv$iv3 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                int i52 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 14502763, "C375@15803L6:NavigationItem.kt#uh7d8r");
                function2.invoke($composer3, Integer.valueOf(($dirty >> 9) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.startReplaceGroup(-776741606);
                ComposerKt.sourceInformation($composer3, "377@15861L52");
                if (function22 != null) {
                }
                $composer3.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer4.skipToGroupEnd();
            function02 = function0;
            $composer3 = $composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItemLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    NavigationItemKt.m2595NavigationItemLayoutKmRXDg(interactionSource, indicatorColor, indicatorShape, function2, iconPosition, function22, function02, indicatorHorizontalPadding, indicatorVerticalPadding, indicatorToLabelVerticalPadding, startIconToLabelHorizontalPadding, topIconItemVerticalPadding, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeIcon-X9ElhV4, reason: not valid java name */
    public static final MeasureResult m2600placeIconX9ElhV4(MeasureScope $this$placeIcon_u2dX9ElhV4, final Placeable iconPlaceable, final Placeable indicatorRipplePlaceable, final Placeable indicatorPlaceable, long constraints) {
        int width = ConstraintsKt.m7475constrainWidthK40F9xA(constraints, indicatorRipplePlaceable.getWidth());
        int height = ConstraintsKt.m7474constrainHeightK40F9xA(constraints, indicatorRipplePlaceable.getHeight());
        final int indicatorX = (width - indicatorPlaceable.getWidth()) / 2;
        final int indicatorY = (height - indicatorPlaceable.getHeight()) / 2;
        final int iconX = (width - iconPlaceable.getWidth()) / 2;
        final int iconY = (height - iconPlaceable.getHeight()) / 2;
        final int rippleX = (width - indicatorRipplePlaceable.getWidth()) / 2;
        final int rippleY = (height - indicatorRipplePlaceable.getHeight()) / 2;
        return MeasureScope.layout$default($this$placeIcon_u2dX9ElhV4, width, height, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$placeIcon$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                Placeable.PlacementScope.placeRelative$default($this$layout, indicatorPlaceable, indicatorX, indicatorY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, iconPlaceable, iconX, iconY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, indicatorRipplePlaceable, rippleX, rippleY, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeLabelAndTopIcon-qoqLrGI, reason: not valid java name */
    public static final MeasureResult m2602placeLabelAndTopIconqoqLrGI(MeasureScope $this$placeLabelAndTopIcon_u2dqoqLrGI, final Placeable labelPlaceable, final Placeable iconPlaceable, final Placeable indicatorRipplePlaceable, final Placeable indicatorPlaceable, long constraints, float indicatorToLabelVerticalPadding, float indicatorVerticalPadding, float topIconItemVerticalPadding) {
        int width = ConstraintsKt.m7475constrainWidthK40F9xA(constraints, Math.max(labelPlaceable.getWidth(), indicatorRipplePlaceable.getWidth()));
        float contentHeight = indicatorRipplePlaceable.getHeight() + $this$placeLabelAndTopIcon_u2dqoqLrGI.mo405toPx0680j_4(indicatorToLabelVerticalPadding) + labelPlaceable.getHeight();
        int height = ConstraintsKt.m7474constrainHeightK40F9xA(constraints, MathKt.roundToInt(($this$placeLabelAndTopIcon_u2dqoqLrGI.mo405toPx0680j_4(topIconItemVerticalPadding) * 2) + contentHeight));
        final int iconY = $this$placeLabelAndTopIcon_u2dqoqLrGI.mo399roundToPx0680j_4(Dp.m7505constructorimpl(topIconItemVerticalPadding + indicatorVerticalPadding));
        final int iconX = (width - iconPlaceable.getWidth()) / 2;
        final int indicatorX = (width - indicatorPlaceable.getWidth()) / 2;
        final int indicatorY = iconY - $this$placeLabelAndTopIcon_u2dqoqLrGI.mo399roundToPx0680j_4(indicatorVerticalPadding);
        final int labelX = (width - labelPlaceable.getWidth()) / 2;
        final int labelY = iconY + iconPlaceable.getHeight() + $this$placeLabelAndTopIcon_u2dqoqLrGI.mo399roundToPx0680j_4(Dp.m7505constructorimpl(indicatorVerticalPadding + indicatorToLabelVerticalPadding));
        final int rippleX = (width - indicatorRipplePlaceable.getWidth()) / 2;
        return MeasureScope.layout$default($this$placeLabelAndTopIcon_u2dqoqLrGI, width, height, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$placeLabelAndTopIcon$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                Placeable.PlacementScope.placeRelative$default($this$layout, indicatorPlaceable, indicatorX, indicatorY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, labelPlaceable, labelX, labelY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, iconPlaceable, iconX, iconY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, indicatorRipplePlaceable, rippleX, indicatorY, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeLabelAndStartIcon-nru01g4, reason: not valid java name */
    public static final MeasureResult m2601placeLabelAndStartIconnru01g4(MeasureScope $this$placeLabelAndStartIcon_u2dnru01g4, final Placeable labelPlaceable, final Placeable iconPlaceable, final Placeable indicatorRipplePlaceable, final Placeable indicatorPlaceable, long constraints, float startIconToLabelHorizontalPadding) {
        int width = ConstraintsKt.m7475constrainWidthK40F9xA(constraints, indicatorRipplePlaceable.getWidth());
        int height = ConstraintsKt.m7474constrainHeightK40F9xA(constraints, indicatorRipplePlaceable.getHeight());
        final int indicatorX = (width - indicatorPlaceable.getWidth()) / 2;
        final int indicatorY = (height - indicatorPlaceable.getHeight()) / 2;
        final int iconY = (height - iconPlaceable.getHeight()) / 2;
        final int labelY = (height - labelPlaceable.getHeight()) / 2;
        int itemContentWidth = iconPlaceable.getWidth() + $this$placeLabelAndStartIcon_u2dnru01g4.mo399roundToPx0680j_4(startIconToLabelHorizontalPadding) + labelPlaceable.getWidth();
        final int iconX = (width - itemContentWidth) / 2;
        final int labelX = iconX + iconPlaceable.getWidth() + $this$placeLabelAndStartIcon_u2dnru01g4.mo399roundToPx0680j_4(startIconToLabelHorizontalPadding);
        final int rippleX = (width - indicatorRipplePlaceable.getWidth()) / 2;
        final int rippleY = (height - indicatorRipplePlaceable.getHeight()) / 2;
        return MeasureScope.layout$default($this$placeLabelAndStartIcon_u2dnru01g4, width, height, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.NavigationItemKt$placeLabelAndStartIcon$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                Placeable.PlacementScope.placeRelative$default($this$layout, indicatorPlaceable, indicatorX, indicatorY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, labelPlaceable, labelX, labelY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, iconPlaceable, iconX, iconY, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default($this$layout, indicatorRipplePlaceable, rippleX, rippleY, 0.0f, 4, null);
            }
        }, 4, null);
    }

    public static final float getNavigationItemMinWidth() {
        return NavigationItemMinWidth;
    }

    public static final float getNavigationItemMinHeight() {
        return NavigationItemMinHeight;
    }
}
