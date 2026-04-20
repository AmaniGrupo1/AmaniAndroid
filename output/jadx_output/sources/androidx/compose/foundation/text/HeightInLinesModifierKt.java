package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HeightInLinesModifier.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\u001a(\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\n²\u0006\n\u0010\u000b\u001a\u00020\fX\u008a\u0084\u0002"}, d2 = {"DefaultMinLines", "", "heightInLines", "Landroidx/compose/ui/Modifier;", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "minLines", "maxLines", "validateMinMaxLines", "", "foundation", "typeface", ""}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class HeightInLinesModifierKt {
    public static final int DefaultMinLines = 1;

    public static /* synthetic */ Modifier heightInLines$default(Modifier modifier, TextStyle textStyle, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return heightInLines(modifier, textStyle, i, i2);
    }

    public static final Modifier heightInLines(Modifier $this$heightInLines, final TextStyle textStyle, final int minLines, final int maxLines) {
        return ComposedModifierKt.composed($this$heightInLines, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.text.HeightInLinesModifierKt$heightInLines$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                inspectorInfo.setName("heightInLines");
                inspectorInfo.getProperties().set("minLines", Integer.valueOf(minLines));
                inspectorInfo.getProperties().set("maxLines", Integer.valueOf(maxLines));
                inspectorInfo.getProperties().set("textStyle", textStyle);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3() { // from class: androidx.compose.foundation.text.HeightInLinesModifierKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return HeightInLinesModifierKt.heightInLines$lambda$1(minLines, maxLines, textStyle, (Modifier) obj, (Composer) obj2, ((Integer) obj3).intValue());
            }
        });
    }

    static final Modifier heightInLines$lambda$1(int $minLines, int $maxLines, TextStyle $textStyle, Modifier $this$composed, Composer $composer, int $changed) {
        LayoutDirection layoutDirection;
        long j;
        $composer.startReplaceGroup(408240218);
        ComposerKt.sourceInformation($composer, "C65@2532L7,66@2597L7,67@2656L7,72@2851L84,74@2972L369,84@3385L430,96@3863L500:HeightInLinesModifier.kt#423gt5");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(408240218, $changed, -1, "androidx.compose.foundation.text.heightInLines.<anonymous> (HeightInLinesModifier.kt:62)");
        }
        validateMinMaxLines($minLines, $maxLines);
        if ($minLines == 1 && $maxLines == Integer.MAX_VALUE) {
            Modifier.Companion companion = Modifier.INSTANCE;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer.endReplaceGroup();
            return companion;
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Density density = (Density) objConsume;
        ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver = CompositionLocalsKt.getLocalFontFamilyResolver();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume2 = $composer.consume(localFontFamilyResolver);
        ComposerKt.sourceInformationMarkerEnd($composer);
        FontFamily.Resolver fontFamilyResolver = (FontFamily.Resolver) objConsume2;
        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume3 = $composer.consume(localLayoutDirection);
        ComposerKt.sourceInformationMarkerEnd($composer);
        LayoutDirection layoutDirection2 = (LayoutDirection) objConsume3;
        ComposerKt.sourceInformationMarkerStart($composer, 1476841646, "CC(remember):HeightInLinesModifier.kt#9igjgp");
        boolean invalid$iv = $composer.changed($textStyle) | $composer.changed(layoutDirection2.ordinal());
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = TextStyleKt.resolveDefaults($textStyle, layoutDirection2);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        TextStyle resolvedStyle = (TextStyle) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerStart($composer, 1476845803, "CC(remember):HeightInLinesModifier.kt#9igjgp");
        boolean invalid$iv2 = $composer.changed(fontFamilyResolver) | $composer.changed(resolvedStyle);
        Object it$iv2 = $composer.rememberedValue();
        if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
            FontFamily fontFamily = resolvedStyle.getFontFamily();
            FontWeight fontWeight = resolvedStyle.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.INSTANCE.getNormal();
            }
            FontWeight fontWeight2 = fontWeight;
            FontStyle fontStyleM6960getFontStyle4Lr2A7w = resolvedStyle.m6960getFontStyle4Lr2A7w();
            int iM7043unboximpl = fontStyleM6960getFontStyle4Lr2A7w != null ? fontStyleM6960getFontStyle4Lr2A7w.m7043unboximpl() : FontStyle.INSTANCE.m7047getNormal_LCdwA();
            FontSynthesis fontSynthesisM6961getFontSynthesisZQGJjVo = resolvedStyle.m6961getFontSynthesisZQGJjVo();
            layoutDirection = layoutDirection2;
            Object value$iv2 = fontFamilyResolver.mo7013resolveDPcqOEQ(fontFamily, fontWeight2, iM7043unboximpl, fontSynthesisM6961getFontSynthesisZQGJjVo != null ? fontSynthesisM6961getFontSynthesisZQGJjVo.m7056unboximpl() : FontSynthesis.INSTANCE.m7057getAllGVVA2EU());
            $composer.updateRememberedValue(value$iv2);
            it$iv2 = value$iv2;
        } else {
            layoutDirection = layoutDirection2;
        }
        State typeface$delegate = (State) it$iv2;
        ComposerKt.sourceInformationMarkerEnd($composer);
        Object value = typeface$delegate.getValue();
        ComposerKt.sourceInformationMarkerStart($composer, 1476859080, "CC(remember):HeightInLinesModifier.kt#9igjgp");
        boolean invalid$iv3 = $composer.changed(value) | $composer.changed(density) | $composer.changed(fontFamilyResolver) | $composer.changed($textStyle) | $composer.changed(layoutDirection.ordinal());
        Object it$iv3 = $composer.rememberedValue();
        if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
            j = 4294967295L;
            Object value$iv3 = Integer.valueOf((int) (TextFieldDelegateKt.computeSizeForDefaultText(resolvedStyle, density, fontFamilyResolver, TextFieldDelegateKt.getEmptyTextReplacement(), 1) & 4294967295L));
            $composer.updateRememberedValue(value$iv3);
            it$iv3 = value$iv3;
        } else {
            j = 4294967295L;
        }
        int firstLineHeight = ((Number) it$iv3).intValue();
        ComposerKt.sourceInformationMarkerEnd($composer);
        Object value2 = typeface$delegate.getValue();
        ComposerKt.sourceInformationMarkerStart($composer, 1476874446, "CC(remember):HeightInLinesModifier.kt#9igjgp");
        boolean invalid$iv4 = $composer.changed(value2) | $composer.changed(density) | $composer.changed(fontFamilyResolver) | $composer.changed($textStyle) | $composer.changed(layoutDirection.ordinal());
        Object it$iv4 = $composer.rememberedValue();
        if (invalid$iv4 || it$iv4 == Composer.INSTANCE.getEmpty()) {
            String twoLines = TextFieldDelegateKt.getEmptyTextReplacement() + '\n' + TextFieldDelegateKt.getEmptyTextReplacement();
            Object value$iv4 = Integer.valueOf((int) (TextFieldDelegateKt.computeSizeForDefaultText(resolvedStyle, density, fontFamilyResolver, twoLines, 2) & j));
            $composer.updateRememberedValue(value$iv4);
            it$iv4 = value$iv4;
        }
        int firstTwoLinesHeight = ((Number) it$iv4).intValue();
        ComposerKt.sourceInformationMarkerEnd($composer);
        int lineHeight = firstTwoLinesHeight - firstLineHeight;
        Integer precomputedMinLinesHeight = $minLines == 1 ? null : Integer.valueOf((($minLines - 1) * lineHeight) + firstLineHeight);
        Integer precomputedMaxLinesHeight = $maxLines != Integer.MAX_VALUE ? Integer.valueOf((($maxLines - 1) * lineHeight) + firstLineHeight) : null;
        Modifier modifierM851heightInVpY3zN4 = SizeKt.m851heightInVpY3zN4(Modifier.INSTANCE, precomputedMinLinesHeight != null ? density.mo402toDpu2uoSUM(precomputedMinLinesHeight.intValue()) : Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM(), precomputedMaxLinesHeight != null ? density.mo402toDpu2uoSUM(precomputedMaxLinesHeight.intValue()) : Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceGroup();
        return modifierM851heightInVpY3zN4;
    }

    public static final void validateMinMaxLines(int minLines, int maxLines) {
        boolean value$iv = minLines > 0 && maxLines > 0;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("both minLines " + minLines + " and maxLines " + maxLines + " must be greater than zero");
        }
        boolean value$iv2 = minLines <= maxLines;
        if (value$iv2) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("minLines " + minLines + " must be less than or equal to maxLines " + maxLines);
    }
}
