package androidx.compose.material;

import androidx.autofill.HintConstants;
import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.media3.exoplayer.RendererCapabilities;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.FloatCompanionObject;

/* JADX INFO: compiled from: TextFieldImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\b\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J²\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0002\b\f2\u0006\u0010\r\u001a\u00020\u000e2e\u0010\u000f\u001aa\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00040\u0010¢\u0006\u0002\b\fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u001a²\u0006\n\u0010\u0014\u001a\u00020\u0011X\u008a\u0084\u0002²\u0006\n\u0010\u0017\u001a\u00020\u0011X\u008a\u0084\u0002²\u0006\n\u0010\u0015\u001a\u00020\bX\u008a\u0084\u0002²\u0006\n\u0010\u0016\u001a\u00020\bX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/material/TextFieldTransitionScope;", "", "()V", "Transition", "", "inputState", "Landroidx/compose/material/InputPhase;", "focusedTextStyleColor", "Landroidx/compose/ui/graphics/Color;", "unfocusedTextStyleColor", "contentColor", "Lkotlin/Function1;", "Landroidx/compose/runtime/Composable;", "showLabel", "", "content", "Lkotlin/Function4;", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "labelProgress", "labelTextStyleColor", "labelContentColor", "placeholderOpacity", "Transition-DTcfvLk", "(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function6;Landroidx/compose/runtime/Composer;I)V", "material_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class TextFieldTransitionScope {
    public static final TextFieldTransitionScope INSTANCE = new TextFieldTransitionScope();

    /* JADX INFO: compiled from: TextFieldImpl.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InputPhase.values().length];
            try {
                iArr[InputPhase.Focused.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private TextFieldTransitionScope() {
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x059e  */
    /* JADX INFO: renamed from: Transition-DTcfvLk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m2000TransitionDTcfvLk(final InputPhase inputState, final long focusedTextStyleColor, final long unfocusedTextStyleColor, final Function3<? super InputPhase, ? super Composer, ? super Integer, Color> function3, final boolean showLabel, final Function6<? super Float, ? super Color, ? super Color, ? super Float, ? super Composer, ? super Integer, Unit> function6, Composer $composer, final int $changed) {
        Function6<? super Float, ? super Color, ? super Color, ? super Float, ? super Composer, ? super Integer, Unit> function62;
        Composer $composer2;
        float f;
        InputPhase it;
        Composer $composer3;
        byte b;
        float f2;
        Composer $composer4;
        State labelProgress$delegate;
        float f3;
        Object initialValue$iv$iv;
        InputPhase it2;
        float f4;
        State placeholderOpacity$delegate;
        Transition $this$animateColor$iv;
        Object value$iv$iv;
        TwoWayConverter typeConverter$iv;
        State labelTextStyleColor$delegate;
        Object value$iv$iv2;
        Composer $composer5;
        Composer $composer6 = $composer.startRestartGroup(1988729962);
        ComposerKt.sourceInformation($composer6, "C(Transition)P(3,2:c#ui.graphics.Color,5:c#ui.graphics.Color,1,4)276@11175L59,278@11276L325,289@11648L1101,317@12797L299,327@13142L186,333@13338L140:TextFieldImpl.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer6.changed(inputState) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer6.changed(focusedTextStyleColor) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer6.changed(unfocusedTextStyleColor) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer6.changedInstance(function3) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer6.changed(showLabel) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            function62 = function6;
            $dirty |= $composer6.changedInstance(function62) ? 131072 : 65536;
        } else {
            function62 = function6;
        }
        if ((74899 & $dirty) == 74898 && $composer6.getSkipping()) {
            $composer6.skipToGroupEnd();
            $composer5 = $composer6;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1988729962, $dirty, -1, "androidx.compose.material.TextFieldTransitionScope.Transition (TextFieldImpl.kt:272)");
            }
            Transition transition = TransitionKt.updateTransition(inputState, "TextFieldInputState", $composer6, ($dirty & 14) | 48, 0);
            Function3 transitionSpec$iv = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material.TextFieldTransitionScope$Transition$labelProgress$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<InputPhase> segment, Composer composer, Integer num) {
                    return invoke(segment, composer, num.intValue());
                }

                public final FiniteAnimationSpec<Float> invoke(Transition.Segment<InputPhase> segment, Composer $composer7, int $changed2) {
                    $composer7.startReplaceGroup(-611722692);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-611722692, $changed2, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:280)");
                    }
                    TweenSpec tweenSpecTween$default = AnimationSpecKt.tween$default(150, 0, null, 6, null);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    $composer7.endReplaceGroup();
                    return tweenSpecTween$default;
                }
            };
            ComposerKt.sourceInformationMarkerStart($composer6, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
            TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
            int $changed$iv$iv = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
            ComposerKt.sourceInformationMarkerStart($composer6, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
            int $changed2 = ($changed$iv$iv >> 9) & 112;
            InputPhase it3 = (InputPhase) transition.getCurrentState();
            $composer6.startReplaceGroup(-1158004136);
            ComposerKt.sourceInformation($composer6, "C:TextFieldImpl.kt#jmzs0o");
            if (ComposerKt.isTraceInProgress()) {
                $composer2 = $composer6;
                ComposerKt.traceEventStart(-1158004136, $changed2, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:282)");
            } else {
                $composer2 = $composer6;
            }
            switch (WhenMappings.$EnumSwitchMapping$0[it3.ordinal()]) {
                case 1:
                    f = 1.0f;
                    break;
                case 2:
                    f = 0.0f;
                    break;
                case 3:
                    f = 1.0f;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer2.endReplaceGroup();
            Object initialValue$iv$iv2 = Float.valueOf(f);
            int $changed3 = ($changed$iv$iv >> 9) & 112;
            InputPhase it4 = (InputPhase) transition.getTargetState();
            $composer6.startReplaceGroup(-1158004136);
            ComposerKt.sourceInformation($composer6, "C:TextFieldImpl.kt#jmzs0o");
            if (ComposerKt.isTraceInProgress()) {
                it = it4;
                $composer3 = $composer6;
                b = -1;
                ComposerKt.traceEventStart(-1158004136, $changed3, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:282)");
            } else {
                it = it4;
                $composer3 = $composer6;
                b = -1;
            }
            switch (WhenMappings.$EnumSwitchMapping$0[it.ordinal()]) {
                case 1:
                    f2 = 1.0f;
                    break;
                case 2:
                    f2 = 0.0f;
                    break;
                case 3:
                    f2 = 1.0f;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer3.endReplaceGroup();
            Object targetValue$iv$iv = Float.valueOf(f2);
            State labelProgress$delegate2 = TransitionKt.createTransitionAnimation(transition, initialValue$iv$iv2, targetValue$iv$iv, transitionSpec$iv.invoke(transition.getSegment(), $composer6, Integer.valueOf(($changed$iv$iv >> 3) & 112)), vectorConverter, "LabelProgress", $composer6, ($changed$iv$iv & 14) | (($changed$iv$iv << 9) & 57344) | (($changed$iv$iv << 6) & 458752));
            ComposerKt.sourceInformationMarkerEnd($composer6);
            ComposerKt.sourceInformationMarkerEnd($composer6);
            Function3 transitionSpec$iv2 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material.TextFieldTransitionScope$Transition$placeholderOpacity$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<InputPhase> segment, Composer composer, Integer num) {
                    return invoke(segment, composer, num.intValue());
                }

                public final FiniteAnimationSpec<Float> invoke(Transition.Segment<InputPhase> segment, Composer $composer7, int $changed4) {
                    TweenSpec tweenSpecTween;
                    $composer7.startReplaceGroup(-1079955085);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1079955085, $changed4, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:292)");
                    }
                    if (segment.isTransitioningTo(InputPhase.Focused, InputPhase.UnfocusedEmpty)) {
                        tweenSpecTween = AnimationSpecKt.tween$default(67, 0, EasingKt.getLinearEasing(), 2, null);
                    } else if (segment.isTransitioningTo(InputPhase.UnfocusedEmpty, InputPhase.Focused) || segment.isTransitioningTo(InputPhase.UnfocusedNotEmpty, InputPhase.UnfocusedEmpty)) {
                        tweenSpecTween = AnimationSpecKt.tween(83, 67, EasingKt.getLinearEasing());
                    } else {
                        tweenSpecTween = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    $composer7.endReplaceGroup();
                    return tweenSpecTween;
                }
            };
            ComposerKt.sourceInformationMarkerStart($composer6, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
            TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
            int $changed$iv$iv2 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
            ComposerKt.sourceInformationMarkerStart($composer6, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
            int $changed4 = ($changed$iv$iv2 >> 9) & 112;
            InputPhase it5 = (InputPhase) transition.getCurrentState();
            $composer6.startReplaceGroup(-1376159017);
            ComposerKt.sourceInformation($composer6, "C:TextFieldImpl.kt#jmzs0o");
            if (ComposerKt.isTraceInProgress()) {
                $composer4 = $composer6;
                labelProgress$delegate = labelProgress$delegate2;
                ComposerKt.traceEventStart(-1376159017, $changed4, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:310)");
            } else {
                $composer4 = $composer6;
                labelProgress$delegate = labelProgress$delegate2;
            }
            switch (WhenMappings.$EnumSwitchMapping$0[it5.ordinal()]) {
                case 1:
                    f3 = 1.0f;
                    break;
                case 2:
                    f3 = !showLabel ? 1.0f : 0.0f;
                    break;
                case 3:
                    f3 = 0.0f;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer4.endReplaceGroup();
            Object initialValue$iv$iv3 = Float.valueOf(f3);
            int $changed5 = ($changed$iv$iv2 >> 9) & 112;
            InputPhase it6 = (InputPhase) transition.getTargetState();
            $composer6.startReplaceGroup(-1376159017);
            ComposerKt.sourceInformation($composer6, "C:TextFieldImpl.kt#jmzs0o");
            if (ComposerKt.isTraceInProgress()) {
                initialValue$iv$iv = initialValue$iv$iv3;
                it2 = it6;
                ComposerKt.traceEventStart(-1376159017, $changed5, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:310)");
            } else {
                initialValue$iv$iv = initialValue$iv$iv3;
                it2 = it6;
            }
            switch (WhenMappings.$EnumSwitchMapping$0[it2.ordinal()]) {
                case 1:
                    f4 = 1.0f;
                    break;
                case 2:
                    f4 = !showLabel ? 1.0f : 0.0f;
                    break;
                case 3:
                    f4 = 0.0f;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer6.endReplaceGroup();
            Object targetValue$iv$iv2 = Float.valueOf(f4);
            State placeholderOpacity$delegate2 = TransitionKt.createTransitionAnimation(transition, initialValue$iv$iv, targetValue$iv$iv2, transitionSpec$iv2.invoke(transition.getSegment(), $composer6, Integer.valueOf(($changed$iv$iv2 >> 3) & 112)), vectorConverter2, "PlaceholderOpacity", $composer6, ($changed$iv$iv2 & 14) | (($changed$iv$iv2 << 9) & 57344) | (($changed$iv$iv2 << 6) & 458752));
            ComposerKt.sourceInformationMarkerEnd($composer6);
            ComposerKt.sourceInformationMarkerEnd($composer6);
            Function3 transitionSpec$iv3 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material.TextFieldTransitionScope$Transition$labelTextStyleColor$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Color> invoke(Transition.Segment<InputPhase> segment, Composer composer, Integer num) {
                    return invoke(segment, composer, num.intValue());
                }

                public final FiniteAnimationSpec<Color> invoke(Transition.Segment<InputPhase> segment, Composer $composer7, int $changed6) {
                    $composer7.startReplaceGroup(-130058045);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-130058045, $changed6, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:318)");
                    }
                    TweenSpec tweenSpecTween$default = AnimationSpecKt.tween$default(150, 0, null, 6, null);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    $composer7.endReplaceGroup();
                    return tweenSpecTween$default;
                }
            };
            ComposerKt.sourceInformationMarkerStart($composer6, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
            Object targetState = transition.getTargetState();
            int $changed6 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
            InputPhase it7 = (InputPhase) targetState;
            $composer6.startReplaceGroup(-1490209928);
            ComposerKt.sourceInformation($composer6, "C:TextFieldImpl.kt#jmzs0o");
            if (ComposerKt.isTraceInProgress()) {
                placeholderOpacity$delegate = placeholderOpacity$delegate2;
                $this$animateColor$iv = transition;
                ComposerKt.traceEventStart(-1490209928, $changed6, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:321)");
            } else {
                placeholderOpacity$delegate = placeholderOpacity$delegate2;
                $this$animateColor$iv = transition;
            }
            long j = WhenMappings.$EnumSwitchMapping$0[it7.ordinal()] == 1 ? focusedTextStyleColor : unfocusedTextStyleColor;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer6.endReplaceGroup();
            ColorSpace colorSpace$iv = Color.m4701getColorSpaceimpl(j);
            ComposerKt.sourceInformationMarkerStart($composer6, 1918408083, "CC(remember):Transition.kt#9igjgp");
            boolean invalid$iv$iv = $composer6.changed(colorSpace$iv);
            Object it$iv$iv = $composer6.rememberedValue();
            if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv);
                $composer6.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            TwoWayConverter typeConverter$iv2 = (TwoWayConverter) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer6);
            int $changed$iv$iv3 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
            Transition $this$animateValue$iv$iv = $this$animateColor$iv;
            ComposerKt.sourceInformationMarkerStart($composer6, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
            int $changed7 = ($changed$iv$iv3 >> 9) & 112;
            InputPhase it8 = (InputPhase) $this$animateValue$iv$iv.getCurrentState();
            $composer6.startReplaceGroup(-1490209928);
            ComposerKt.sourceInformation($composer6, "C:TextFieldImpl.kt#jmzs0o");
            if (ComposerKt.isTraceInProgress()) {
                typeConverter$iv = typeConverter$iv2;
                ComposerKt.traceEventStart(-1490209928, $changed7, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:321)");
            } else {
                typeConverter$iv = typeConverter$iv2;
            }
            long j2 = WhenMappings.$EnumSwitchMapping$0[it8.ordinal()] == 1 ? focusedTextStyleColor : unfocusedTextStyleColor;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer6.endReplaceGroup();
            Object initialValue$iv$iv4 = Color.m4687boximpl(j2);
            int $changed8 = ($changed$iv$iv3 >> 9) & 112;
            InputPhase it9 = (InputPhase) $this$animateValue$iv$iv.getTargetState();
            $composer6.startReplaceGroup(-1490209928);
            ComposerKt.sourceInformation($composer6, "C:TextFieldImpl.kt#jmzs0o");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1490209928, $changed8, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:321)");
            }
            long j3 = WhenMappings.$EnumSwitchMapping$0[it9.ordinal()] == 1 ? focusedTextStyleColor : unfocusedTextStyleColor;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer6.endReplaceGroup();
            Object targetValue$iv$iv3 = Color.m4687boximpl(j3);
            State labelTextStyleColor$delegate2 = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv, initialValue$iv$iv4, targetValue$iv$iv3, transitionSpec$iv3.invoke($this$animateValue$iv$iv.getSegment(), $composer6, Integer.valueOf(($changed$iv$iv3 >> 3) & 112)), typeConverter$iv, "LabelTextStyleColor", $composer6, ($changed$iv$iv3 & 14) | (($changed$iv$iv3 << 9) & 57344) | (($changed$iv$iv3 << 6) & 458752));
            ComposerKt.sourceInformationMarkerEnd($composer6);
            ComposerKt.sourceInformationMarkerEnd($composer6);
            Function3 transitionSpec$iv4 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material.TextFieldTransitionScope$Transition$labelContentColor$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Color> invoke(Transition.Segment<InputPhase> segment, Composer composer, Integer num) {
                    return invoke(segment, composer, num.intValue());
                }

                public final FiniteAnimationSpec<Color> invoke(Transition.Segment<InputPhase> segment, Composer $composer7, int $changed9) {
                    $composer7.startReplaceGroup(-32667848);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-32667848, $changed9, -1, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:328)");
                    }
                    TweenSpec tweenSpecTween$default = AnimationSpecKt.tween$default(150, 0, null, 6, null);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    $composer7.endReplaceGroup();
                    return tweenSpecTween$default;
                }
            };
            int $changed$iv = ($dirty & 7168) | RendererCapabilities.DECODER_SUPPORT_MASK;
            ComposerKt.sourceInformationMarkerStart($composer6, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
            ColorSpace colorSpace$iv2 = Color.m4701getColorSpaceimpl(function3.invoke(transition.getTargetState(), $composer6, Integer.valueOf(($changed$iv >> 6) & 112)).m4707unboximpl());
            ComposerKt.sourceInformationMarkerStart($composer6, 1918408083, "CC(remember):Transition.kt#9igjgp");
            boolean invalid$iv$iv2 = $composer6.changed(colorSpace$iv2);
            Object it$iv$iv2 = $composer6.rememberedValue();
            if (invalid$iv$iv2) {
                labelTextStyleColor$delegate = labelTextStyleColor$delegate2;
            } else {
                labelTextStyleColor$delegate = labelTextStyleColor$delegate2;
                if (it$iv$iv2 != Composer.INSTANCE.getEmpty()) {
                    value$iv$iv2 = it$iv$iv2;
                }
                TwoWayConverter typeConverter$iv3 = (TwoWayConverter) value$iv$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer6);
                int $changed$iv$iv4 = ($changed$iv & 14) | (($changed$iv << 3) & 896) | (($changed$iv << 3) & 7168) | (($changed$iv << 3) & 57344);
                ComposerKt.sourceInformationMarkerStart($composer6, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                Object initialValue$iv$iv5 = function3.invoke(transition.getCurrentState(), $composer6, Integer.valueOf(($changed$iv$iv4 >> 9) & 112));
                Object targetValue$iv$iv4 = function3.invoke(transition.getTargetState(), $composer6, Integer.valueOf(($changed$iv$iv4 >> 9) & 112));
                State labelContentColor$delegate = TransitionKt.createTransitionAnimation(transition, initialValue$iv$iv5, targetValue$iv$iv4, transitionSpec$iv4.invoke(transition.getSegment(), $composer6, Integer.valueOf(($changed$iv$iv4 >> 3) & 112)), typeConverter$iv3, "LabelContentColor", $composer6, ($changed$iv$iv4 & 14) | (($changed$iv$iv4 << 9) & 57344) | (($changed$iv$iv4 << 6) & 458752));
                ComposerKt.sourceInformationMarkerEnd($composer6);
                ComposerKt.sourceInformationMarkerEnd($composer6);
                function62.invoke(Float.valueOf(Transition_DTcfvLk$lambda$1(labelProgress$delegate)), Color.m4687boximpl(Transition_DTcfvLk$lambda$5(labelTextStyleColor$delegate)), Color.m4687boximpl(Transition_DTcfvLk$lambda$6(labelContentColor$delegate)), Float.valueOf(Transition_DTcfvLk$lambda$3(placeholderOpacity$delegate)), $composer6, Integer.valueOf(($dirty >> 3) & 57344));
                $composer5 = $composer6;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            value$iv$iv2 = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv2);
            $composer6.updateRememberedValue(value$iv$iv2);
            TwoWayConverter typeConverter$iv32 = (TwoWayConverter) value$iv$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer6);
            int $changed$iv$iv42 = ($changed$iv & 14) | (($changed$iv << 3) & 896) | (($changed$iv << 3) & 7168) | (($changed$iv << 3) & 57344);
            ComposerKt.sourceInformationMarkerStart($composer6, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
            Object initialValue$iv$iv52 = function3.invoke(transition.getCurrentState(), $composer6, Integer.valueOf(($changed$iv$iv42 >> 9) & 112));
            Object targetValue$iv$iv42 = function3.invoke(transition.getTargetState(), $composer6, Integer.valueOf(($changed$iv$iv42 >> 9) & 112));
            State labelContentColor$delegate2 = TransitionKt.createTransitionAnimation(transition, initialValue$iv$iv52, targetValue$iv$iv42, transitionSpec$iv4.invoke(transition.getSegment(), $composer6, Integer.valueOf(($changed$iv$iv42 >> 3) & 112)), typeConverter$iv32, "LabelContentColor", $composer6, ($changed$iv$iv42 & 14) | (($changed$iv$iv42 << 9) & 57344) | (($changed$iv$iv42 << 6) & 458752));
            ComposerKt.sourceInformationMarkerEnd($composer6);
            ComposerKt.sourceInformationMarkerEnd($composer6);
            function62.invoke(Float.valueOf(Transition_DTcfvLk$lambda$1(labelProgress$delegate)), Color.m4687boximpl(Transition_DTcfvLk$lambda$5(labelTextStyleColor$delegate)), Color.m4687boximpl(Transition_DTcfvLk$lambda$6(labelContentColor$delegate2)), Float.valueOf(Transition_DTcfvLk$lambda$3(placeholderOpacity$delegate)), $composer6, Integer.valueOf(($dirty >> 3) & 57344));
            $composer5 = $composer6;
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer5.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldTransitionScope$Transition$1
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

                public final void invoke(Composer composer, int i) {
                    this.$tmp0_rcvr.m2000TransitionDTcfvLk(inputState, focusedTextStyleColor, unfocusedTextStyleColor, function3, showLabel, function6, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    private static final float Transition_DTcfvLk$lambda$1(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    private static final float Transition_DTcfvLk$lambda$3(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    private static final long Transition_DTcfvLk$lambda$5(State<Color> state) {
        Object thisObj$iv = state.getValue();
        return ((Color) thisObj$iv).m4707unboximpl();
    }

    private static final long Transition_DTcfvLk$lambda$6(State<Color> state) {
        Object thisObj$iv = state.getValue();
        return ((Color) thisObj$iv).m4707unboximpl();
    }
}
