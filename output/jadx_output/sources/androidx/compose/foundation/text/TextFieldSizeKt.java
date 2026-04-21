package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: TextFieldSize.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004²\u0006\n\u0010\u0005\u001a\u00020\u0006X\u008a\u0084\u0002"}, d2 = {"textFieldMinSize", "Landroidx/compose/ui/Modifier;", "style", "Landroidx/compose/ui/text/TextStyle;", "foundation", "typeface", ""}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TextFieldSizeKt {
    public static final Modifier textFieldMinSize(Modifier $this$textFieldMinSize, final TextStyle style) {
        return ComposedModifierKt.composed$default($this$textFieldMinSize, null, new Function3() { // from class: androidx.compose.foundation.text.TextFieldSizeKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return TextFieldSizeKt.textFieldMinSize$lambda$0(style, (Modifier) obj, (Composer) obj2, ((Integer) obj3).intValue());
            }
        }, 1, null);
    }

    static final Modifier textFieldMinSize$lambda$0(TextStyle $style, Modifier $this$composed, Composer $composer, int $changed) {
        LayoutDirection layoutDirection;
        Density density;
        LayoutDirection layoutDirection2;
        $composer.startReplaceGroup(1582736677);
        ComposerKt.sourceInformation($composer, "C37@1534L7,38@1595L7,39@1650L7,41@1683L76,43@1788L341,52@2154L101,58@2373L488:TextFieldSize.kt#423gt5");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1582736677, $changed, -1, "androidx.compose.foundation.text.textFieldMinSize.<anonymous> (TextFieldSize.kt:37)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Density density2 = (Density) objConsume;
        ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver = CompositionLocalsKt.getLocalFontFamilyResolver();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume2 = $composer.consume(localFontFamilyResolver);
        ComposerKt.sourceInformationMarkerEnd($composer);
        FontFamily.Resolver fontFamilyResolver = (FontFamily.Resolver) objConsume2;
        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume3 = $composer.consume(localLayoutDirection);
        ComposerKt.sourceInformationMarkerEnd($composer);
        LayoutDirection layoutDirection3 = (LayoutDirection) objConsume3;
        ComposerKt.sourceInformationMarkerStart($composer, 591529713, "CC(remember):TextFieldSize.kt#9igjgp");
        boolean invalid$iv = $composer.changed($style) | $composer.changed(layoutDirection3.ordinal());
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = TextStyleKt.resolveDefaults($style, layoutDirection3);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        TextStyle resolvedStyle = (TextStyle) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerStart($composer, 591533338, "CC(remember):TextFieldSize.kt#9igjgp");
        boolean invalid$iv2 = $composer.changed(fontFamilyResolver) | $composer.changed(resolvedStyle);
        Object it$iv2 = $composer.rememberedValue();
        if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
            FontFamily fontFamily = resolvedStyle.getFontFamily();
            FontWeight fontWeight = resolvedStyle.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.INSTANCE.getNormal();
            }
            FontStyle fontStyleM6960getFontStyle4Lr2A7w = resolvedStyle.m6960getFontStyle4Lr2A7w();
            int iM7043unboximpl = fontStyleM6960getFontStyle4Lr2A7w != null ? fontStyleM6960getFontStyle4Lr2A7w.m7043unboximpl() : FontStyle.INSTANCE.m7047getNormal_LCdwA();
            FontSynthesis fontSynthesisM6961getFontSynthesisZQGJjVo = resolvedStyle.m6961getFontSynthesisZQGJjVo();
            layoutDirection = layoutDirection3;
            Object value$iv2 = fontFamilyResolver.mo7013resolveDPcqOEQ(fontFamily, fontWeight, iM7043unboximpl, fontSynthesisM6961getFontSynthesisZQGJjVo != null ? fontSynthesisM6961getFontSynthesisZQGJjVo.m7056unboximpl() : FontSynthesis.INSTANCE.m7057getAllGVVA2EU());
            $composer.updateRememberedValue(value$iv2);
            it$iv2 = value$iv2;
        } else {
            layoutDirection = layoutDirection3;
        }
        State typeface$delegate = (State) it$iv2;
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerStart($composer, 591544810, "CC(remember):TextFieldSize.kt#9igjgp");
        Object value$iv3 = $composer.rememberedValue();
        if (value$iv3 != Composer.INSTANCE.getEmpty()) {
            density = density2;
            layoutDirection2 = layoutDirection;
        } else {
            density = density2;
            layoutDirection2 = layoutDirection;
            value$iv3 = new TextFieldSize(layoutDirection2, density, fontFamilyResolver, $style, typeface$delegate.getValue());
            $composer.updateRememberedValue(value$iv3);
        }
        final TextFieldSize minSizeState = (TextFieldSize) value$iv3;
        ComposerKt.sourceInformationMarkerEnd($composer);
        minSizeState.update(layoutDirection2, density, fontFamilyResolver, resolvedStyle, typeface$delegate.getValue());
        Modifier.Companion companion = Modifier.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, 591552205, "CC(remember):TextFieldSize.kt#9igjgp");
        boolean invalid$iv3 = $composer.changedInstance(minSizeState);
        Object it$iv3 = $composer.rememberedValue();
        if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
            Object value$iv4 = new Function3() { // from class: androidx.compose.foundation.text.TextFieldSizeKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return TextFieldSizeKt.textFieldMinSize$lambda$0$4$0(minSizeState, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                }
            };
            $composer.updateRememberedValue(value$iv4);
            it$iv3 = value$iv4;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        Modifier modifierLayout = LayoutModifierKt.layout(companion, (Function3) it$iv3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceGroup();
        return modifierLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult textFieldMinSize$lambda$0$4$0(TextFieldSize $minSizeState, MeasureScope $this$layout, Measurable measurable, Constraints constraints) {
        long minSize = $minSizeState.getMinSize();
        long value = constraints.getValue();
        long childConstraints = Constraints.m7447copyZbe2FdA(value, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(value) : RangesKt.coerceIn((int) (minSize >> 32), Constraints.m7460getMinWidthimpl(constraints.getValue()), Constraints.m7458getMaxWidthimpl(constraints.getValue())), (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(value) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(value) : RangesKt.coerceIn((int) (4294967295L & minSize), Constraints.m7459getMinHeightimpl(constraints.getValue()), Constraints.m7457getMaxHeightimpl(constraints.getValue())), (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(value) : 0);
        final Placeable measured = measurable.mo6141measureBRTryo0(childConstraints);
        return MeasureScope.layout$default($this$layout, measured.getWidth(), measured.getHeight(), null, new Function1() { // from class: androidx.compose.foundation.text.TextFieldSizeKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TextFieldSizeKt.textFieldMinSize$lambda$0$4$0$0(measured, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit textFieldMinSize$lambda$0$4$0$0(Placeable $measured, Placeable.PlacementScope $this$layout) {
        Placeable.PlacementScope.placeRelative$default($this$layout, $measured, 0, 0, 0.0f, 4, null);
        return Unit.INSTANCE;
    }
}
