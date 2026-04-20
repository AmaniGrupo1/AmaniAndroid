package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutIdParentData;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextFieldImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aÙ\u0001\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\f2\u0011\u0010$\u001a\r\u0012\u0004\u0012\u00020 0%¢\u0006\u0002\b&2\u0006\u0010'\u001a\u00020(2\u0013\u0010)\u001a\u000f\u0012\u0004\u0012\u00020 \u0018\u00010%¢\u0006\u0002\b&2\u0013\u0010*\u001a\u000f\u0012\u0004\u0012\u00020 \u0018\u00010%¢\u0006\u0002\b&2\u0013\u0010+\u001a\u000f\u0012\u0004\u0012\u00020 \u0018\u00010%¢\u0006\u0002\b&2\u0013\u0010,\u001a\u000f\u0012\u0004\u0012\u00020 \u0018\u00010%¢\u0006\u0002\b&2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0013\u00109\u001a\u000f\u0012\u0004\u0012\u00020 \u0018\u00010%¢\u0006\u0002\b&H\u0001¢\u0006\u0002\u0010:\u001aT\u0010;\u001a\u00020 2\u0006\u0010<\u001a\u00020=2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010?2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A2 \u0010B\u001a\u001c\u0012\u0004\u0012\u00020 0%¢\u0006\u0002\b&¢\u0006\f\bC\u0012\b\bD\u0012\u0004\b\u0003\u0010\u0000H\u0001ø\u0001\u0000¢\u0006\u0004\bE\u0010F\u001a\u0012\u0010G\u001a\u00020\u00012\b\u0010H\u001a\u0004\u0018\u00010IH\u0000\u001a\u0012\u0010J\u001a\u00020\u00012\b\u0010H\u001a\u0004\u0018\u00010IH\u0000\u001a\u001c\u0010K\u001a\u00020\b*\u00020\b2\u0006\u00100\u001a\u00020.2\u0006\u0010L\u001a\u00020\fH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\"\u000e\u0010\u000b\u001a\u00020\fX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\fX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\fX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\fX\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0012\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0013\u0010\u0005\"\u000e\u0010\u0014\u001a\u00020\fX\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0015\u001a\u00020\u0016X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018\"\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u001c8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006M"}, d2 = {"AnimationDuration", "", "HorizontalIconPadding", "Landroidx/compose/ui/unit/Dp;", "getHorizontalIconPadding", "()F", "F", "IconDefaultSizeModifier", "Landroidx/compose/ui/Modifier;", "getIconDefaultSizeModifier", "()Landroidx/compose/ui/Modifier;", "LabelId", "", "LeadingId", "PlaceholderAnimationDelayOrDuration", "PlaceholderAnimationDuration", "PlaceholderId", "TextFieldId", "TextFieldPadding", "getTextFieldPadding", "TrailingId", "ZeroConstraints", "Landroidx/compose/ui/unit/Constraints;", "getZeroConstraints", "()J", "J", "layoutId", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "getLayoutId", "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;", "CommonDecorationBox", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/material/TextFieldType;", Values.VECTOR_MAP_VECTORS_KEY, "innerTextField", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "label", "placeholder", "leadingIcon", "trailingIcon", "singleLine", "", "enabled", "isError", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material/TextFieldColors;", OutlinedTextFieldKt.BorderId, "(Landroidx/compose/material/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "Decoration", "contentColor", "Landroidx/compose/ui/graphics/Color;", "typography", "Landroidx/compose/ui/text/TextStyle;", "contentAlpha", "", "content", "Landroidx/compose/runtime/ComposableOpenTarget;", "index", "Decoration-euL9pac", "(JLandroidx/compose/ui/text/TextStyle;Ljava/lang/Float;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "heightOrZero", "placeable", "Landroidx/compose/ui/layout/Placeable;", "widthOrZero", "defaultErrorSemantics", "defaultErrorMessage", "material_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TextFieldImplKt {
    public static final int AnimationDuration = 150;
    public static final String LabelId = "Label";
    public static final String LeadingId = "Leading";
    private static final int PlaceholderAnimationDelayOrDuration = 67;
    private static final int PlaceholderAnimationDuration = 83;
    public static final String PlaceholderId = "Hint";
    public static final String TextFieldId = "TextField";
    public static final String TrailingId = "Trailing";
    private static final long ZeroConstraints = ConstraintsKt.Constraints(0, 0, 0, 0);
    private static final float TextFieldPadding = Dp.m7505constructorimpl(16);
    private static final float HorizontalIconPadding = Dp.m7505constructorimpl(12);
    private static final Modifier IconDefaultSizeModifier = SizeKt.m848defaultMinSizeVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(48), Dp.m7505constructorimpl(48));

    public static final void CommonDecorationBox(final TextFieldType type, final String value, final Function2<? super Composer, ? super Integer, Unit> function2, final VisualTransformation visualTransformation, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final Function2<? super Composer, ? super Integer, Unit> function25, final boolean singleLine, final boolean enabled, final boolean isError, final InteractionSource interactionSource, final PaddingValues contentPadding, final Shape shape, final TextFieldColors colors, final Function2<? super Composer, ? super Integer, Unit> function26, Composer $composer, final int $changed, final int $changed1) {
        TextFieldType textFieldType;
        String str;
        Function2<? super Composer, ? super Integer, Unit> function27;
        int i;
        Function2<? super Composer, ? super Integer, Unit> function28;
        Object value$iv;
        InputPhase inputState;
        TextFieldTransitionScope textFieldTransitionScope;
        InputPhase inputState2;
        long $this$takeOrElse_u2dDxMtmZc$iv;
        long j;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(341783750);
        ComposerKt.sourceInformation($composer3, "C(CommonDecorationBox)P(13,14,4,15,7,9,8,12,11,3,6,5,2,10,1)82@3152L105,86@3307L25,103@3917L10,120@4754L4202,110@4252L4704:TextFieldImpl.kt#jmzs0o");
        int $dirty = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            textFieldType = type;
            $dirty |= $composer3.changed(textFieldType) ? 4 : 2;
        } else {
            textFieldType = type;
        }
        if (($changed & 48) == 0) {
            str = value;
            $dirty |= $composer3.changed(str) ? 32 : 16;
        } else {
            str = value;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function27 = function2;
            $dirty |= $composer3.changedInstance(function27) ? 256 : 128;
        } else {
            function27 = function2;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(visualTransformation) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer3.changedInstance(function22) ? 16384 : 8192;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i = 196608;
            function28 = function23;
            $dirty |= $composer3.changedInstance(function28) ? 131072 : 65536;
        } else {
            i = 196608;
            function28 = function23;
        }
        if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changedInstance(function24) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= $composer3.changedInstance(function25) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty |= $composer3.changed(singleLine) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty |= $composer3.changed(enabled) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($changed1 & 6) == 0) {
            $dirty1 |= $composer3.changed(isError) ? 4 : 2;
        }
        if (($changed1 & 48) == 0) {
            $dirty1 |= $composer3.changed(interactionSource) ? 32 : 16;
        }
        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty1 |= $composer3.changed(contentPadding) ? 256 : 128;
        }
        if (($changed1 & 3072) == 0) {
            $dirty1 |= $composer3.changed(shape) ? 2048 : 1024;
        }
        if (($changed1 & 24576) == 0) {
            $dirty1 |= $composer3.changed(colors) ? 16384 : 8192;
        }
        if (($changed1 & i) == 0) {
            $dirty1 |= $composer3.changedInstance(function26) ? 131072 : 65536;
        }
        if (($dirty & 306783379) != 306783378 || (74899 & $dirty1) != 74898 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(341783750, $dirty, $dirty1, "androidx.compose.material.CommonDecorationBox (TextFieldImpl.kt:81)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 1578828051, "CC(remember):TextFieldImpl.kt#9igjgp");
            boolean invalid$iv = (($dirty & 112) == 32) | (($dirty & 7168) == 2048);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = visualTransformation.filter(new AnnotatedString(str, null, null, 6, null));
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final String transformedText = ((TransformedText) value$iv).getText().getText();
            boolean isFocused = FocusInteractionKt.collectIsFocusedAsState(interactionSource, $composer3, ($dirty1 >> 3) & 14).getValue().booleanValue();
            if (isFocused) {
                inputState = InputPhase.Focused;
            } else {
                inputState = transformedText.length() == 0 ? InputPhase.UnfocusedEmpty : InputPhase.UnfocusedNotEmpty;
            }
            Function3<InputPhase, Composer, Integer, Color> function3 = new Function3<InputPhase, Composer, Integer, Color>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$labelColor$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Color invoke(InputPhase inputPhase, Composer composer, Integer num) {
                    return Color.m4687boximpl(m1995invokeXeAY9LY(inputPhase, composer, num.intValue()));
                }

                /* JADX INFO: renamed from: invoke-XeAY9LY, reason: not valid java name */
                public final long m1995invokeXeAY9LY(InputPhase it, Composer $composer4, int $changed2) {
                    $composer4.startReplaceGroup(-1272940975);
                    ComposerKt.sourceInformation($composer4, "C94@3595L273:TextFieldImpl.kt#jmzs0o");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1272940975, $changed2, -1, "androidx.compose.material.CommonDecorationBox.<anonymous> (TextFieldImpl.kt:94)");
                    }
                    long jM4707unboximpl = colors.labelColor(enabled, it == InputPhase.UnfocusedEmpty ? false : isError, interactionSource, $composer4, 0).getValue().m4707unboximpl();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    $composer4.endReplaceGroup();
                    return jM4707unboximpl;
                }
            };
            Typography typography = MaterialTheme.INSTANCE.getTypography($composer3, 6);
            TextStyle subtitle1 = typography.getSubtitle1();
            TextStyle caption = typography.getCaption();
            InputPhase inputState3 = inputState;
            final boolean shouldOverrideTextStyleColor = (Color.m4698equalsimpl0(subtitle1.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU()) && !Color.m4698equalsimpl0(caption.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU())) || (!Color.m4698equalsimpl0(subtitle1.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU()) && Color.m4698equalsimpl0(caption.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU()));
            TextFieldTransitionScope textFieldTransitionScope2 = TextFieldTransitionScope.INSTANCE;
            $composer3.startReplaceGroup(1578865765);
            ComposerKt.sourceInformation($composer3, "*112@4348L10");
            long $this$CommonDecorationBox_u24lambda_u242 = MaterialTheme.INSTANCE.getTypography($composer3, 6).getCaption().m6958getColor0d7_KjU();
            if (shouldOverrideTextStyleColor) {
                $composer3.startReplaceGroup(-1572851052);
                ComposerKt.sourceInformation($composer3, "*113@4440L22");
                $this$takeOrElse_u2dDxMtmZc$iv = $this$CommonDecorationBox_u24lambda_u242;
                if (($this$takeOrElse_u2dDxMtmZc$iv != 16 ? 1 : 0) != 0) {
                    textFieldTransitionScope = textFieldTransitionScope2;
                    inputState2 = inputState3;
                } else {
                    textFieldTransitionScope = textFieldTransitionScope2;
                    inputState2 = inputState3;
                    $this$takeOrElse_u2dDxMtmZc$iv = function3.invoke(inputState2, $composer3, 0).m4707unboximpl();
                }
                $composer3.endReplaceGroup();
            } else {
                textFieldTransitionScope = textFieldTransitionScope2;
                inputState2 = inputState3;
                $composer3.startReplaceGroup(780548205);
                $composer3.endReplaceGroup();
                $this$takeOrElse_u2dDxMtmZc$iv = $this$CommonDecorationBox_u24lambda_u242;
            }
            $composer3.endReplaceGroup();
            $composer3.startReplaceGroup(1578871879);
            ComposerKt.sourceInformation($composer3, "*115@4539L10");
            long $this$CommonDecorationBox_u24lambda_u244 = MaterialTheme.INSTANCE.getTypography($composer3, 6).getSubtitle1().m6958getColor0d7_KjU();
            if (shouldOverrideTextStyleColor) {
                $composer3.startReplaceGroup(-1572659596);
                ComposerKt.sourceInformation($composer3, "*116@4633L22");
                long $this$takeOrElse_u2dDxMtmZc$iv2 = $this$CommonDecorationBox_u24lambda_u244;
                if (($this$takeOrElse_u2dDxMtmZc$iv2 != 16 ? 1 : 0) == 0) {
                    $this$takeOrElse_u2dDxMtmZc$iv2 = function3.invoke(inputState2, $composer3, 0).m4707unboximpl();
                }
                $composer3.endReplaceGroup();
                j = $this$takeOrElse_u2dDxMtmZc$iv2;
            } else {
                $composer3.startReplaceGroup(780554381);
                $composer3.endReplaceGroup();
                j = $this$CommonDecorationBox_u24lambda_u244;
            }
            $composer3.endReplaceGroup();
            final TextFieldType textFieldType2 = textFieldType;
            final Function2<? super Composer, ? super Integer, Unit> function29 = function28;
            final Function2<? super Composer, ? super Integer, Unit> function210 = function27;
            textFieldTransitionScope.m2000TransitionDTcfvLk(inputState2, $this$takeOrElse_u2dDxMtmZc$iv, j, function3, function22 != null, ComposableLambdaKt.rememberComposableLambda(225557475, true, new Function6<Float, Color, Color, Float, Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt.CommonDecorationBox.3

                /* JADX INFO: renamed from: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$WhenMappings */
                /* JADX INFO: compiled from: TextFieldImpl.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[TextFieldType.values().length];
                        try {
                            iArr[TextFieldType.Filled.ordinal()] = 1;
                        } catch (NoSuchFieldError e) {
                        }
                        try {
                            iArr[TextFieldType.Outlined.ordinal()] = 2;
                        } catch (NoSuchFieldError e2) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(6);
                }

                @Override // kotlin.jvm.functions.Function6
                public /* bridge */ /* synthetic */ Unit invoke(Float f, Color color, Color color2, Float f2, Composer composer, Integer num) {
                    m1993invokeRIQooxk(f.floatValue(), color.m4707unboximpl(), color2.m4707unboximpl(), f2.floatValue(), composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:55:0x00fd  */
                /* JADX INFO: renamed from: invoke-RIQooxk, reason: not valid java name */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void m1993invokeRIQooxk(float labelProgress, long labelTextStyleColor, final long labelContentColor, final float placeholderAlphaProgress, Composer $composer4, int $changed2) {
                    long j2;
                    boolean z;
                    Function2 function211;
                    Function3 function32;
                    Function2 function2RememberComposableLambda;
                    Function2 decoratedTrailing;
                    Modifier backgroundModifier;
                    Object value$iv2;
                    Function2 decoratedLeading;
                    final float f = labelProgress;
                    ComposerKt.sourceInformation($composer4, "CP(1,2:c#ui.graphics.Color,0:c#ui.graphics.Color)150@6176L53,157@6477L54,165@6815L24:TextFieldImpl.kt#jmzs0o");
                    int $dirty2 = $changed2;
                    if (($changed2 & 6) == 0) {
                        $dirty2 |= $composer4.changed(f) ? 4 : 2;
                    }
                    if (($changed2 & 48) == 0) {
                        j2 = labelTextStyleColor;
                        $dirty2 |= $composer4.changed(j2) ? 32 : 16;
                    } else {
                        j2 = labelTextStyleColor;
                    }
                    if (($changed2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        $dirty2 |= $composer4.changed(labelContentColor) ? 256 : 128;
                    }
                    if (($changed2 & 3072) == 0) {
                        $dirty2 |= $composer4.changed(placeholderAlphaProgress) ? 2048 : 1024;
                    }
                    int $dirty3 = $dirty2;
                    if (($dirty3 & 9363) != 9362 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(225557475, $dirty3, -1, "androidx.compose.material.CommonDecorationBox.<anonymous> (TextFieldImpl.kt:122)");
                        }
                        final Function2<Composer, Integer, Unit> function212 = function22;
                        if (function212 == null) {
                            $composer4.startReplaceGroup(-1572365903);
                            $composer4.endReplaceGroup();
                            z = true;
                            function211 = null;
                        } else {
                            $composer4.startReplaceGroup(-1572365902);
                            ComposerKt.sourceInformation($composer4, "*123@4933L415");
                            final boolean z2 = shouldOverrideTextStyleColor;
                            z = true;
                            final long j3 = j2;
                            Function2<Composer, Integer, Unit> function213 = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1
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

                                public final void invoke(Composer $composer5, int $changed3) {
                                    ComposerKt.sourceInformation($composer5, "C*125@5012L10,126@5068L10,131@5279L55:TextFieldImpl.kt#jmzs0o");
                                    if (($changed3 & 3) == 2 && $composer5.getSkipping()) {
                                        $composer5.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1865025495, $changed3, -1, "androidx.compose.material.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:124)");
                                    }
                                    TextStyle it = TextStyleKt.lerp(MaterialTheme.INSTANCE.getTypography($composer5, 6).getSubtitle1(), MaterialTheme.INSTANCE.getTypography($composer5, 6).getCaption(), f);
                                    TextStyle labelTextStyle = z2 ? TextStyle.m6941copyp1EtxEg$default(it, j3, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16777214, null) : it;
                                    TextFieldImplKt.m1992DecorationeuL9pac(labelContentColor, labelTextStyle, null, function212, $composer5, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            };
                            f = f;
                            Function2 function2RememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-1865025495, true, function213, $composer4, 54);
                            $composer4.endReplaceGroup();
                            function211 = function2RememberComposableLambda2;
                        }
                        Function2 decoratedLabel = function211;
                        if (function29 == null) {
                            $composer4.startReplaceGroup(-1571160716);
                            $composer4.endReplaceGroup();
                            function32 = null;
                        } else if ((transformedText.length() == 0 ? z : false) && placeholderAlphaProgress > 0.0f) {
                            $composer4.startReplaceGroup(-1571586748);
                            ComposerKt.sourceInformation($composer4, "139@5719L393");
                            final TextFieldColors textFieldColors = colors;
                            final boolean z3 = enabled;
                            final Function2<Composer, Integer, Unit> function214 = function29;
                            Function3 function3RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-413527723, z, new Function3<Modifier, Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer, Integer num) {
                                    invoke(modifier, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Modifier modifier, Composer $composer5, int $changed3) {
                                    ComposerKt.sourceInformation($composer5, "C140@5753L341:TextFieldImpl.kt#jmzs0o");
                                    int $dirty4 = $changed3;
                                    if (($changed3 & 6) == 0) {
                                        $dirty4 |= $composer5.changed(modifier) ? 4 : 2;
                                    }
                                    if (($dirty4 & 19) != 18 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-413527723, $dirty4, -1, "androidx.compose.material.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:140)");
                                        }
                                        Modifier modifier$iv = AlphaKt.alpha(modifier, placeholderAlphaProgress);
                                        TextFieldColors textFieldColors2 = textFieldColors;
                                        boolean z4 = z3;
                                        Function2<Composer, Integer, Unit> function215 = function214;
                                        ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                        Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                        MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                        int $changed$iv$iv = (0 << 3) & 112;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                        CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv);
                                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                        if (!($composer5.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        $composer5.startReusableNode();
                                        if ($composer5.getInserting()) {
                                            $composer5.createNode(constructor);
                                        } else {
                                            $composer5.useNode();
                                        }
                                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer5);
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                                        }
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                        int i2 = ($changed$iv$iv$iv >> 6) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        int i3 = ((0 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer5, 717976197, "C142@5887L25,143@5975L10,141@5825L247:TextFieldImpl.kt#jmzs0o");
                                        TextFieldImplKt.m1992DecorationeuL9pac(textFieldColors2.placeholderColor(z4, $composer5, 0).getValue().m4707unboximpl(), MaterialTheme.INSTANCE.getTypography($composer5, 6).getSubtitle1(), null, function215, $composer5, 0, 4);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        $composer5.endNode();
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }, $composer4, 54);
                            $composer4.endReplaceGroup();
                            function32 = function3RememberComposableLambda;
                        }
                        Function3 decoratedPlaceholder = function32;
                        final long leadingIconColor = colors.leadingIconColor(enabled, isError, interactionSource, $composer4, 0).getValue().m4707unboximpl();
                        final Function2<Composer, Integer, Unit> function215 = function24;
                        if (function215 == null) {
                            $composer4.startReplaceGroup(-1570983241);
                            $composer4.endReplaceGroup();
                            function2RememberComposableLambda = null;
                        } else {
                            $composer4.startReplaceGroup(-1570983240);
                            ComposerKt.sourceInformation($composer4, "*152@6337L89");
                            function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1165144581, z, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1
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

                                public final void invoke(Composer $composer5, int $changed3) {
                                    ComposerKt.sourceInformation($composer5, "C153@6355L57:TextFieldImpl.kt#jmzs0o");
                                    if (($changed3 & 3) == 2 && $composer5.getSkipping()) {
                                        $composer5.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1165144581, $changed3, -1, "androidx.compose.material.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:153)");
                                    }
                                    TextFieldImplKt.m1992DecorationeuL9pac(leadingIconColor, null, null, function215, $composer5, 0, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, $composer4, 54);
                            $composer4.endReplaceGroup();
                        }
                        Function2 decoratedLeading2 = function2RememberComposableLambda;
                        final long trailingIconColor = colors.trailingIconColor(enabled, isError, interactionSource, $composer4, 0).getValue().m4707unboximpl();
                        final Function2<Composer, Integer, Unit> function216 = function25;
                        if (function216 == null) {
                            $composer4.startReplaceGroup(-1570681642);
                            $composer4.endReplaceGroup();
                            decoratedTrailing = null;
                        } else {
                            $composer4.startReplaceGroup(-1570681641);
                            ComposerKt.sourceInformation($composer4, "*159@6641L90");
                            decoratedTrailing = ComposableLambdaKt.rememberComposableLambda(1694126319, z, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1
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

                                public final void invoke(Composer $composer5, int $changed3) {
                                    ComposerKt.sourceInformation($composer5, "C160@6659L58:TextFieldImpl.kt#jmzs0o");
                                    if (($changed3 & 3) == 2 && $composer5.getSkipping()) {
                                        $composer5.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1694126319, $changed3, -1, "androidx.compose.material.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:160)");
                                    }
                                    TextFieldImplKt.m1992DecorationeuL9pac(trailingIconColor, null, null, function216, $composer5, 0, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, $composer4, 54);
                            $composer4.endReplaceGroup();
                        }
                        Modifier backgroundModifier2 = BackgroundKt.m263backgroundbw27NRU(Modifier.INSTANCE, colors.backgroundColor(enabled, $composer4, 0).getValue().m4707unboximpl(), shape);
                        switch (WhenMappings.$EnumSwitchMapping$0[textFieldType2.ordinal()]) {
                            case 1:
                                $composer4.startReplaceGroup(-1570370153);
                                ComposerKt.sourceInformation($composer4, "169@6931L482");
                                TextFieldKt.TextFieldLayout(backgroundModifier2, function210, decoratedLabel, decoratedPlaceholder, decoratedLeading2, decoratedTrailing, singleLine, labelProgress, contentPadding, $composer4, ($dirty3 << 21) & 29360128);
                                $composer4.endReplaceGroup();
                                break;
                            case 2:
                                $composer4.startReplaceGroup(-1569791817);
                                ComposerKt.sourceInformation($composer4, "183@7535L38,184@7631L286,201@8340L420,193@7935L991");
                                ComposerKt.sourceInformationMarkerStart($composer4, 780646319, "CC(remember):TextFieldImpl.kt#9igjgp");
                                Object it$iv2 = $composer4.rememberedValue();
                                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                                    backgroundModifier = backgroundModifier2;
                                    value$iv2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m4509boximpl(Size.INSTANCE.m4530getZeroNHjbRc()), null, 2, null);
                                    $composer4.updateRememberedValue(value$iv2);
                                } else {
                                    backgroundModifier = backgroundModifier2;
                                    value$iv2 = it$iv2;
                                }
                                final MutableState labelSize = (MutableState) value$iv2;
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                final PaddingValues paddingValues = contentPadding;
                                final Function2<Composer, Integer, Unit> function217 = function26;
                                Function2 drawBorder = ComposableLambdaKt.rememberComposableLambda(-1212965554, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$drawBorder$1
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

                                    public final void invoke(Composer $composer5, int $changed3) {
                                        Function0<ComposeUiNode> function0;
                                        ComposerKt.sourceInformation($composer5, "C185@7653L246:TextFieldImpl.kt#jmzs0o");
                                        if (($changed3 & 3) != 2 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1212965554, $changed3, -1, "androidx.compose.material.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:185)");
                                            }
                                            Modifier modifier$iv = OutlinedTextFieldKt.m1881outlineCutout12SF9DM(LayoutIdKt.layoutId(Modifier.INSTANCE, OutlinedTextFieldKt.BorderId), labelSize.getValue().m4526unboximpl(), paddingValues);
                                            Function2<Composer, Integer, Unit> function218 = function217;
                                            ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
                                            int $changed$iv$iv = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                            CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv);
                                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                            if (!($composer5.getApplier() instanceof Applier)) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            $composer5.startReusableNode();
                                            if ($composer5.getInserting()) {
                                                function0 = constructor;
                                                $composer5.createNode(function0);
                                            } else {
                                                function0 = constructor;
                                                $composer5.useNode();
                                            }
                                            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer5);
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                                            }
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                            int i2 = ($changed$iv$iv$iv >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            int i3 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer5, 719988748, "C:TextFieldImpl.kt#jmzs0o");
                                            if (function218 == null) {
                                                $composer5.startReplaceGroup(719996434);
                                            } else {
                                                $composer5.startReplaceGroup(-392416305);
                                                ComposerKt.sourceInformation($composer5, "189@7869L8");
                                                function218.invoke($composer5, 0);
                                            }
                                            $composer5.endReplaceGroup();
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            $composer5.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }, $composer4, 54);
                                Function2<Composer, Integer, Unit> function218 = function210;
                                boolean z4 = singleLine;
                                ComposerKt.sourceInformationMarkerStart($composer4, 780672461, "CC(remember):TextFieldImpl.kt#9igjgp");
                                boolean invalid$iv2 = ($dirty3 & 14) == 4;
                                Object value$iv3 = $composer4.rememberedValue();
                                if (!invalid$iv2) {
                                    decoratedLeading = decoratedLeading2;
                                    if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    OutlinedTextFieldKt.OutlinedTextFieldLayout(backgroundModifier, function218, decoratedPlaceholder, decoratedLabel, decoratedLeading, decoratedTrailing, z4, f, (Function1) value$iv3, drawBorder, contentPadding, $composer4, (($dirty3 << 21) & 29360128) | 805306368, 0);
                                    $composer4.endReplaceGroup();
                                } else {
                                    decoratedLeading = decoratedLeading2;
                                }
                                value$iv3 = (Function1) new Function1<Size, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Size size) {
                                        m1994invokeuvyYCjk(size.m4526unboximpl());
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke-uvyYCjk, reason: not valid java name */
                                    public final void m1994invokeuvyYCjk(long it) {
                                        float labelWidth = Size.m4521getWidthimpl(it) * f;
                                        float labelHeight = Size.m4518getHeightimpl(it) * f;
                                        if (Size.m4521getWidthimpl(labelSize.getValue().m4526unboximpl()) == labelWidth) {
                                            if (Size.m4518getHeightimpl(labelSize.getValue().m4526unboximpl()) == labelHeight) {
                                                return;
                                            }
                                        }
                                        labelSize.setValue(Size.m4509boximpl(androidx.compose.ui.geometry.SizeKt.Size(labelWidth, labelHeight)));
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv3);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                OutlinedTextFieldKt.OutlinedTextFieldLayout(backgroundModifier, function218, decoratedPlaceholder, decoratedLabel, decoratedLeading, decoratedTrailing, z4, f, (Function1) value$iv3, drawBorder, contentPadding, $composer4, (($dirty3 << 21) & 29360128) | 805306368, 0);
                                $composer4.endReplaceGroup();
                                break;
                            default:
                                $composer4.startReplaceGroup(-1568365383);
                                $composer4.endReplaceGroup();
                                break;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer3, 1769472);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt.CommonDecorationBox.4
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

                public final void invoke(Composer composer, int i2) {
                    TextFieldImplKt.CommonDecorationBox(type, value, function2, visualTransformation, function22, function23, function24, function25, singleLine, enabled, isError, interactionSource, contentPadding, shape, colors, function26, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1));
                }
            });
        }
    }

    /* JADX INFO: renamed from: Decoration-euL9pac, reason: not valid java name */
    public static final void m1992DecorationeuL9pac(final long contentColor, TextStyle typography, Float contentAlpha, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        final Float contentAlpha2;
        final Float contentAlpha3;
        final TextStyle typography2;
        Composer $composer2 = $composer.startRestartGroup(-399493340);
        ComposerKt.sourceInformation($composer2, "C(Decoration)P(2:c#ui.graphics.Color,3,1)230@9338L492:TextFieldImpl.kt#jmzs0o");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(contentColor) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(typography) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changed(contentAlpha) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 1171) != 1170 || !$composer2.getSkipping()) {
            if (i2 != 0) {
                typography = null;
            }
            if (i3 == 0) {
                contentAlpha2 = contentAlpha;
            } else {
                contentAlpha2 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-399493340, $dirty2, -1, "androidx.compose.material.Decoration (TextFieldImpl.kt:229)");
            }
            Function2 colorAndEmphasis = ComposableLambdaKt.rememberComposableLambda(494684590, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$Decoration$colorAndEmphasis$1
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

                public final void invoke(Composer $composer3, int $changed2) {
                    ComposerKt.sourceInformation($composer3, "C231@9414L410,231@9348L476:TextFieldImpl.kt#jmzs0o");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(494684590, $changed2, -1, "androidx.compose.material.Decoration.<anonymous> (TextFieldImpl.kt:231)");
                        }
                        ProvidedValue<Color> providedValueProvides = ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(contentColor));
                        final Float f = contentAlpha2;
                        final Function2<Composer, Integer, Unit> function22 = function2;
                        final long j = contentColor;
                        CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.rememberComposableLambda(-1132188434, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$Decoration$colorAndEmphasis$1.1
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

                            public final void invoke(Composer $composer4, int $changed3) {
                                ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#jmzs0o");
                                if (($changed3 & 3) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1132188434, $changed3, -1, "androidx.compose.material.Decoration.<anonymous>.<anonymous> (TextFieldImpl.kt:232)");
                                    }
                                    if (f != null) {
                                        $composer4.startReplaceGroup(-1178229056);
                                        ComposerKt.sourceInformation($composer4, "233@9472L142");
                                        CompositionLocalKt.CompositionLocalProvider(ContentAlphaKt.getLocalContentAlpha().provides(f), function22, $composer4, ProvidedValue.$stable);
                                        $composer4.endReplaceGroup();
                                    } else {
                                        $composer4.startReplaceGroup(-1178050310);
                                        ComposerKt.sourceInformation($composer4, "238@9652L148");
                                        CompositionLocalKt.CompositionLocalProvider(ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m4699getAlphaimpl(j))), function22, $composer4, ProvidedValue.$stable);
                                        $composer4.endReplaceGroup();
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }, $composer3, 54), $composer3, ProvidedValue.$stable | 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }, $composer2, 54);
            if (typography != null) {
                $composer2.startReplaceGroup(2115969060);
                ComposerKt.sourceInformation($composer2, "245@9859L46");
                TextKt.ProvideTextStyle(typography, colorAndEmphasis, $composer2, (($dirty2 >> 3) & 14) | 48);
            } else {
                $composer2.startReplaceGroup(2115970696);
                ComposerKt.sourceInformation($composer2, "245@9911L18");
                colorAndEmphasis.invoke($composer2, 6);
            }
            $composer2.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            contentAlpha3 = contentAlpha2;
            typography2 = typography;
        } else {
            $composer2.skipToGroupEnd();
            contentAlpha3 = contentAlpha;
            typography2 = typography;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$Decoration$1
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

                public final void invoke(Composer composer, int i4) {
                    TextFieldImplKt.m1992DecorationeuL9pac(contentColor, typography2, contentAlpha3, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final Modifier defaultErrorSemantics(Modifier $this$defaultErrorSemantics, boolean isError, final String defaultErrorMessage) {
        return isError ? SemanticsModifierKt.semantics$default($this$defaultErrorSemantics, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.TextFieldImplKt.defaultErrorSemantics.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                SemanticsPropertiesKt.error($this$semantics, defaultErrorMessage);
            }
        }, 1, null) : $this$defaultErrorSemantics;
    }

    public static final int widthOrZero(Placeable placeable) {
        if (placeable != null) {
            return placeable.getWidth();
        }
        return 0;
    }

    public static final int heightOrZero(Placeable placeable) {
        if (placeable != null) {
            return placeable.getHeight();
        }
        return 0;
    }

    public static final Object getLayoutId(IntrinsicMeasurable $this$layoutId) {
        Object parentData = $this$layoutId.getParentData();
        LayoutIdParentData layoutIdParentData = parentData instanceof LayoutIdParentData ? (LayoutIdParentData) parentData : null;
        if (layoutIdParentData != null) {
            return layoutIdParentData.getLayoutId();
        }
        return null;
    }

    public static final long getZeroConstraints() {
        return ZeroConstraints;
    }

    public static final float getTextFieldPadding() {
        return TextFieldPadding;
    }

    public static final float getHorizontalIconPadding() {
        return HorizontalIconPadding;
    }

    public static final Modifier getIconDefaultSizeModifier() {
        return IconDefaultSizeModifier;
    }
}
