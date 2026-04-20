package androidx.compose.material3.internal;

import androidx.autofill.HintConstants;
import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.Typography;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
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
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.profileinstaller.ProfileVerifier;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;

/* JADX INFO: compiled from: TextFieldImpl.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000º\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0002\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00012\u0011\u00102\u001a\r\u0012\u0004\u0012\u00020.03¢\u0006\u0002\b42\u0006\u00105\u001a\u0002062\u0013\u00107\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u00108\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u00109\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010:\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010;\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010<\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010=\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\b\b\u0002\u0010>\u001a\u00020?2\b\b\u0002\u0010@\u001a\u00020?2\b\b\u0002\u0010A\u001a\u00020?2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020G2\u0011\u0010H\u001a\r\u0012\u0004\u0012\u00020.03¢\u0006\u0002\b4H\u0001¢\u0006\u0002\u0010I\u001a-\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020L2\u0011\u0010M\u001a\r\u0012\u0004\u0012\u00020.03¢\u0006\u0002\b4H\u0003ø\u0001\u0000¢\u0006\u0004\bN\u0010O\u001a5\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020L2\u0006\u0010P\u001a\u00020Q2\u0011\u0010M\u001a\r\u0012\u0004\u0012\u00020.03¢\u0006\u0002\b4H\u0003ø\u0001\u0000¢\u0006\u0004\bR\u0010S\u001a×\u0001\u0010T\u001a\u00020.2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020L2\u0006\u0010X\u001a\u00020L2\u0006\u0010Y\u001a\u00020L2\u0006\u0010Z\u001a\u00020?2\u0099\u0001\u0010M\u001a\u0094\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020]0\\¢\u0006\f\b^\u0012\b\b_\u0012\u0004\b\b(`\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020L0\\¢\u0006\f\b^\u0012\b\b_\u0012\u0004\b\b(a\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020L0\\¢\u0006\f\b^\u0012\b\b_\u0012\u0004\b\b(b\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020]0\\¢\u0006\f\b^\u0012\b\b_\u0012\u0004\b\b(c\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020]0\\¢\u0006\f\b^\u0012\b\b_\u0012\u0004\b\b(d\u0012\u0004\u0012\u00020.0[¢\u0006\u0002\b4H\u0083\bø\u0001\u0000¢\u0006\u0004\be\u0010f\u001aH\u0010g\u001a\b\u0012\u0004\u0012\u00020h0\\2\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020?2\u0006\u0010i\u001a\u00020?2\u0006\u0010F\u001a\u00020G2\u0006\u0010j\u001a\u00020\u00032\u0006\u0010k\u001a\u00020\u0003H\u0001ø\u0001\u0000¢\u0006\u0004\bl\u0010m\u001a\u0012\u0010n\u001a\u00020\u00142\b\u0010o\u001a\u0004\u0018\u00010pH\u0000\u001a\u0012\u0010q\u001a\u00020\u00142\b\u0010o\u001a\u0004\u0018\u00010pH\u0000\u001a\u001c\u0010r\u001a\u00020\b*\u00020\b2\u0006\u0010A\u001a\u00020?2\u0006\u0010s\u001a\u00020\u0001H\u0000\u001a\u001c\u0010t\u001a\u00020\b*\u00020\b2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020xH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010\r\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u000e\u0010\u0005\"\u0016\u0010\u000f\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0010\u0010\u0005\"\u0016\u0010\u0011\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0012\u0010\u0005\"\u000e\u0010\u0013\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0018\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0019\u0010\u0005\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010\u001c\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u001d\u0010\u0005\"\u000e\u0010\u001e\u001a\u00020\u0014X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010 \u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b!\u0010\u0005\"\u000e\u0010\"\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u0010#\u001a\u00020$X\u0080\u0004¢\u0006\n\n\u0002\u0010'\u001a\u0004\b%\u0010&\"\u001a\u0010(\u001a\u0004\u0018\u00010)*\u00020*8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006y²\u0006\n\u0010z\u001a\u00020?X\u008a\u0084\u0002²\u0006\n\u0010{\u001a\u00020?X\u008a\u0084\u0002"}, d2 = {"ContainerId", "", "HorizontalIconPadding", "Landroidx/compose/ui/unit/Dp;", "getHorizontalIconPadding", "()F", "F", "IconDefaultSizeModifier", "Landroidx/compose/ui/Modifier;", "getIconDefaultSizeModifier", "()Landroidx/compose/ui/Modifier;", "LabelId", "LeadingId", "MinFocusedLabelLineHeight", "getMinFocusedLabelLineHeight", "MinSupportingTextLineHeight", "getMinSupportingTextLineHeight", "MinTextLineHeight", "getMinTextLineHeight", "PlaceholderAnimationDelayOrDuration", "", "PlaceholderAnimationDuration", "PlaceholderId", "PrefixId", "PrefixSuffixTextPadding", "getPrefixSuffixTextPadding", "SuffixId", "SupportingId", "SupportingTopPadding", "getSupportingTopPadding", "TextFieldAnimationDuration", "TextFieldId", "TextFieldPadding", "getTextFieldPadding", "TrailingId", "ZeroConstraints", "Landroidx/compose/ui/unit/Constraints;", "getZeroConstraints", "()J", "J", "layoutId", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "getLayoutId", "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;", "CommonDecorationBox", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/material3/internal/TextFieldType;", Values.VECTOR_MAP_VECTORS_KEY, "innerTextField", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "label", "placeholder", "leadingIcon", "trailingIcon", "prefix", "suffix", "supportingText", "singleLine", "", "enabled", "isError", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "colors", "Landroidx/compose/material3/TextFieldColors;", TtmlNode.RUBY_CONTAINER, "(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V", "Decoration", "contentColor", "Landroidx/compose/ui/graphics/Color;", "content", "Decoration-Iv8Zu3U", "(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "Decoration-3J-VO9M", "(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "TextFieldTransitionScope", "inputState", "Landroidx/compose/material3/internal/InputPhase;", "focusedLabelTextStyleColor", "unfocusedLabelTextStyleColor", "labelColor", "showLabel", "Lkotlin/Function5;", "Landroidx/compose/runtime/State;", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "labelProgress", "labelTextStyleColor", "labelContentColor", "placeholderOpacity", "prefixSuffixOpacity", "TextFieldTransitionScope-Jy8F4Js", "(Landroidx/compose/material3/internal/InputPhase;JJJZLkotlin/jvm/functions/Function7;Landroidx/compose/runtime/Composer;I)V", "animateBorderStrokeAsState", "Landroidx/compose/foundation/BorderStroke;", "focused", "focusedBorderThickness", "unfocusedBorderThickness", "animateBorderStrokeAsState-NuRrP5Q", "(ZZZLandroidx/compose/material3/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "heightOrZero", "placeable", "Landroidx/compose/ui/layout/Placeable;", "widthOrZero", "defaultErrorSemantics", "defaultErrorMessage", "textFieldBackground", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/ColorProducer;", "shape", "Landroidx/compose/ui/graphics/Shape;", "material3_release", "showPlaceholder", "showPrefixSuffix"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TextFieldImplKt {
    public static final String ContainerId = "Container";
    public static final String LabelId = "Label";
    public static final String LeadingId = "Leading";
    private static final int PlaceholderAnimationDelayOrDuration = 67;
    private static final int PlaceholderAnimationDuration = 83;
    public static final String PlaceholderId = "Hint";
    public static final String PrefixId = "Prefix";
    public static final String SuffixId = "Suffix";
    public static final String SupportingId = "Supporting";
    public static final int TextFieldAnimationDuration = 150;
    public static final String TextFieldId = "TextField";
    public static final String TrailingId = "Trailing";
    private static final long ZeroConstraints = ConstraintsKt.Constraints(0, 0, 0, 0);
    private static final float TextFieldPadding = Dp.m7505constructorimpl(16);
    private static final float HorizontalIconPadding = Dp.m7505constructorimpl(12);
    private static final float SupportingTopPadding = Dp.m7505constructorimpl(4);
    private static final float PrefixSuffixTextPadding = Dp.m7505constructorimpl(2);
    private static final float MinTextLineHeight = Dp.m7505constructorimpl(24);
    private static final float MinFocusedLabelLineHeight = Dp.m7505constructorimpl(16);
    private static final float MinSupportingTextLineHeight = Dp.m7505constructorimpl(16);
    private static final Modifier IconDefaultSizeModifier = SizeKt.m848defaultMinSizeVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(48), Dp.m7505constructorimpl(48));

    /* JADX INFO: compiled from: TextFieldImpl.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

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
            int[] iArr2 = new int[InputPhase.values().length];
            try {
                iArr2[InputPhase.Focused.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr2[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr2[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:176:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x04e5  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0544  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0546  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0602  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0610  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0625  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0627  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x062e  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0636  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x065f  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x067c  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0682  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0741  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x074f  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x075e  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0764  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0767  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x076e  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0776  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x079f  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x07bc  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x07c2  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x07c5  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x07cc  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x085a  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0865  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0874  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0877  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x087f  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x08a0  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x08ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:404:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x091a  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0929  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x092c  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0934  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x095d  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0968  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0977  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x097a  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0982  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0a0b  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0a16  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0a20  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0a41  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0a4f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0ab0  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0abb  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0ac5  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0aee  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0af7  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0aff  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0b8a  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0b9b  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0bf6  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0c10  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0c26  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0c67  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0c93  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0cb1  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0cf9  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0d45  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0d66  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0d6a  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0d9c  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0da0  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0dd1  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0dd8  */
    /* JADX WARN: Removed duplicated region for block: B:502:0x0e01  */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0e17  */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0efb  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0f71  */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0f8a  */
    /* JADX WARN: Removed duplicated region for block: B:524:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void CommonDecorationBox(final TextFieldType type, final String value, final Function2<? super Composer, ? super Integer, Unit> function2, final VisualTransformation visualTransformation, final Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, Function2<? super Composer, ? super Integer, Unit> function24, Function2<? super Composer, ? super Integer, Unit> function25, Function2<? super Composer, ? super Integer, Unit> function26, Function2<? super Composer, ? super Integer, Unit> function27, Function2<? super Composer, ? super Integer, Unit> function28, boolean singleLine, boolean enabled, boolean isError, final InteractionSource interactionSource, final PaddingValues contentPadding, final TextFieldColors colors, final Function2<? super Composer, ? super Integer, Unit> function29, Composer $composer, final int $changed, final int $changed1, final int i) {
        String str;
        Function2<? super Composer, ? super Integer, Unit> function210;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int $dirty1;
        Function2<? super Composer, ? super Integer, Unit> function211;
        boolean enabled2;
        Function2<? super Composer, ? super Integer, Unit> function212;
        boolean invalid$iv;
        int $dirty;
        Object value$iv;
        boolean overrideLabelTextStyleColor;
        InputPhase it$iv;
        long focusedLabelTextStyleColor$iv;
        float f;
        Composer $composer$iv;
        InputPhase it$iv2;
        float f2;
        InputPhase it$iv3;
        Composer $composer$iv2;
        float f3;
        InputPhase it$iv4;
        Composer $composer$iv3;
        float f4;
        InputPhase it$iv5;
        Composer $composer$iv4;
        float f5;
        InputPhase it$iv6;
        Composer $composer$iv5;
        float f6;
        Composer $composer$iv6;
        Transition $this$animateColor$iv$iv;
        boolean invalid$iv$iv$iv;
        Object value$iv$iv$iv;
        Composer $composer$iv7;
        Transition $this$animateValue$iv$iv$iv;
        InputPhase it$iv7;
        Composer $composer$iv8;
        Composer $composer$iv9;
        boolean invalid$iv$iv$iv2;
        Object value$iv$iv$iv2;
        Composer $composer$iv10;
        Transition $this$animateValue$iv$iv$iv2;
        Composer $composer2;
        final TextStyle bodyLarge;
        final TextStyle bodySmall;
        float labelProgressValue;
        Function2 decoratedLabel;
        Object value$iv2;
        Function2<? super Composer, ? super Integer, Unit> function213;
        Function3 decoratedPlaceholder;
        Object value$iv3;
        final State prefixSuffixAlpha;
        State showPrefixSuffix$delegate;
        State showPrefixSuffix$delegate2;
        State prefixSuffixAlpha2;
        Function2<? super Composer, ? super Integer, Unit> function214;
        Function2 decoratedPrefix;
        Function2<? super Composer, ? super Integer, Unit> function215;
        Function2 decoratedPrefix2;
        Function2 decoratedSuffix;
        Function2 decoratedLeading;
        Function2 decoratedTrailing;
        boolean enabled3;
        Function2 decoratedSupporting;
        Composer $composer3;
        Object value$iv4;
        Object value$iv5;
        final Function2<? super Composer, ? super Integer, Unit> function216;
        final boolean singleLine2;
        final Function2<? super Composer, ? super Integer, Unit> function217;
        final Function2<? super Composer, ? super Integer, Unit> function218;
        final Function2<? super Composer, ? super Integer, Unit> function219;
        final Function2<? super Composer, ? super Integer, Unit> function220;
        final boolean enabled4;
        final boolean isError2;
        final Function2<? super Composer, ? super Integer, Unit> function221;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i10;
        int i11;
        Composer $composer4 = $composer.startRestartGroup(1514469103);
        ComposerKt.sourceInformation($composer4, "C(CommonDecorationBox)P(15,16,4,17,7,9,8,14,10,12,13,11,3,6,5,2)98@4054L121,104@4251L25,114@4594L10,121@4911L7503:TextFieldImpl.kt#mqatfk");
        int $dirty2 = $changed;
        int $dirty12 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer4.changed(type) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
            str = value;
        } else if (($changed & 48) == 0) {
            str = value;
            $dirty2 |= $composer4.changed(str) ? 32 : 16;
        } else {
            str = value;
        }
        if ((i & 4) != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function210 = function2;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function210 = function2;
            $dirty2 |= $composer4.changedInstance(function210) ? 256 : 128;
        } else {
            function210 = function2;
        }
        if ((i & 8) != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer4.changed(visualTransformation) ? 2048 : 1024;
        }
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty2 |= $composer4.changedInstance(function22) ? 16384 : 8192;
        }
        int i12 = i & 32;
        if (i12 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer4.changedInstance(function23) ? 131072 : 65536;
        }
        int i13 = i & 64;
        if (i13 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer4.changedInstance(function24) ? 1048576 : 524288;
        }
        int i14 = i & 128;
        if (i14 != 0) {
            $dirty2 |= 12582912;
            i2 = i14;
        } else if (($changed & 12582912) == 0) {
            i2 = i14;
            $dirty2 |= $composer4.changedInstance(function25) ? 8388608 : 4194304;
        } else {
            i2 = i14;
        }
        int i15 = i & 256;
        if (i15 != 0) {
            $dirty2 |= 100663296;
            i3 = i15;
        } else if (($changed & 100663296) == 0) {
            i3 = i15;
            $dirty2 |= $composer4.changedInstance(function26) ? 67108864 : 33554432;
        } else {
            i3 = i15;
        }
        int i16 = i & 512;
        if (i16 != 0) {
            $dirty2 |= 805306368;
            i4 = i16;
        } else if (($changed & 805306368) == 0) {
            i4 = i16;
            $dirty2 |= $composer4.changedInstance(function27) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i4 = i16;
        }
        int i17 = i & 1024;
        if (i17 != 0) {
            $dirty12 |= 6;
            i5 = i17;
        } else if (($changed1 & 6) == 0) {
            i5 = i17;
            $dirty12 |= $composer4.changedInstance(function28) ? 4 : 2;
        } else {
            i5 = i17;
        }
        int i18 = i & 2048;
        if (i18 != 0) {
            $dirty12 |= 48;
            i6 = i18;
        } else if (($changed1 & 48) == 0) {
            i6 = i18;
            $dirty12 |= $composer4.changed(singleLine) ? 32 : 16;
        } else {
            i6 = i18;
        }
        int i19 = i & 4096;
        if (i19 != 0) {
            $dirty12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i7 = i19;
        } else {
            i7 = i19;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty12 |= $composer4.changed(enabled) ? 256 : 128;
            }
        }
        int i20 = i & 8192;
        if (i20 != 0) {
            $dirty12 |= 3072;
            i8 = i20;
        } else {
            i8 = i20;
            if (($changed1 & 3072) == 0) {
                $dirty12 |= $composer4.changed(isError) ? 2048 : 1024;
            }
        }
        if ((i & 16384) != 0) {
            $dirty12 |= 24576;
        } else if (($changed1 & 24576) == 0) {
            $dirty12 |= $composer4.changed(interactionSource) ? 16384 : 8192;
        }
        if ((32768 & i) != 0) {
            i9 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else {
            if ((196608 & $changed1) == 0) {
                i9 = $composer4.changed(contentPadding) ? 131072 : 65536;
            }
            if ((65536 & i) != 0) {
                i11 = (1572864 & $changed1) == 0 ? $composer4.changed(colors) ? 1048576 : 524288 : 1572864;
                if ((131072 & i) == 0) {
                    i10 = (12582912 & $changed1) == 0 ? $composer4.changedInstance(function29) ? 8388608 : 4194304 : 12582912;
                    $dirty1 = $dirty12;
                    if ((306783379 & $dirty2) != 306783378 && (4793491 & $dirty1) == 4793490 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        function221 = function23;
                        function218 = function24;
                        function220 = function27;
                        function217 = function28;
                        singleLine2 = singleLine;
                        enabled4 = enabled;
                        isError2 = isError;
                        $composer2 = $composer4;
                        function216 = function25;
                        function219 = function26;
                    } else {
                        Function2<? super Composer, ? super Integer, Unit> function222 = i12 == 0 ? null : function23;
                        Function2<? super Composer, ? super Integer, Unit> function223 = i13 == 0 ? null : function24;
                        Function2<? super Composer, ? super Integer, Unit> function224 = i2 == 0 ? null : function25;
                        Function2<? super Composer, ? super Integer, Unit> function225 = i3 == 0 ? null : function26;
                        Function2<? super Composer, ? super Integer, Unit> function226 = i4 == 0 ? null : function27;
                        Function2<? super Composer, ? super Integer, Unit> function227 = i5 == 0 ? null : function28;
                        boolean singleLine3 = i6 == 0 ? false : singleLine;
                        if (i7 == 0) {
                            function211 = function222;
                            enabled2 = true;
                        } else {
                            function211 = function222;
                            enabled2 = enabled;
                        }
                        boolean isError3 = i8 == 0 ? false : isError;
                        if (ComposerKt.isTraceInProgress()) {
                            function212 = function223;
                        } else {
                            function212 = function223;
                            ComposerKt.traceEventStart(1514469103, $dirty2, $dirty1, "androidx.compose.material3.internal.CommonDecorationBox (TextFieldImpl.kt:96)");
                        }
                        ComposerKt.sourceInformationMarkerStart($composer4, 318599163, "CC(remember):TextFieldImpl.kt#9igjgp");
                        invalid$iv = (($dirty2 & 112) != 32) | (($dirty2 & 7168) != 2048);
                        Object it$iv8 = $composer4.rememberedValue();
                        if (invalid$iv) {
                            $dirty = $dirty2;
                            if (it$iv8 != Composer.INSTANCE.getEmpty()) {
                                value$iv = it$iv8;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            String transformedText = ((TransformedText) value$iv).getText().getText();
                            boolean isFocused = FocusInteractionKt.collectIsFocusedAsState(interactionSource, $composer4, ($dirty1 >> 12) & 14).getValue().booleanValue();
                            InputPhase inputState = isFocused ? InputPhase.Focused : transformedText.length() == 0 ? InputPhase.UnfocusedEmpty : InputPhase.UnfocusedNotEmpty;
                            long labelColor = colors.m2939labelColorXeAY9LY$material3_release(enabled2, isError3, isFocused);
                            Typography typography = MaterialTheme.INSTANCE.getTypography($composer4, 6);
                            TextStyle bodyLarge2 = typography.getBodyLarge();
                            final TextStyle bodySmall2 = typography.getBodySmall();
                            boolean enabled5 = enabled2;
                            overrideLabelTextStyleColor = (Color.m4698equalsimpl0(bodyLarge2.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU()) && !Color.m4698equalsimpl0(bodySmall2.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU())) || (!Color.m4698equalsimpl0(bodyLarge2.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU()) && Color.m4698equalsimpl0(bodySmall2.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU()));
                            long $this$CommonDecorationBox_u24lambda_u242 = bodySmall2.m6958getColor0d7_KjU();
                            if (overrideLabelTextStyleColor) {
                                $this$CommonDecorationBox_u24lambda_u242 = ($this$CommonDecorationBox_u24lambda_u242 > 16L ? 1 : ($this$CommonDecorationBox_u24lambda_u242 == 16L ? 0 : -1)) != 0 ? $this$CommonDecorationBox_u24lambda_u242 : labelColor;
                            }
                            long $this$CommonDecorationBox_u24lambda_u244 = bodyLarge2.m6958getColor0d7_KjU();
                            if (overrideLabelTextStyleColor) {
                                $this$CommonDecorationBox_u24lambda_u244 = ($this$CommonDecorationBox_u24lambda_u244 > 16L ? 1 : ($this$CommonDecorationBox_u24lambda_u244 == 16L ? 0 : -1)) != 0 ? $this$CommonDecorationBox_u24lambda_u244 : labelColor;
                            }
                            boolean showLabel$iv = function22 != null;
                            long unfocusedLabelTextStyleColor$iv = $this$CommonDecorationBox_u24lambda_u244;
                            final boolean overrideLabelTextStyleColor2 = overrideLabelTextStyleColor;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1087703202, "CC(TextFieldTransitionScope)P(2,1:c#ui.graphics.Color,5:c#ui.graphics.Color,3:c#ui.graphics.Color,4)349@14528L59,352@14632L334,364@15016L1126,394@16193L363,406@16607L318,418@17028L197,424@17231L150:TextFieldImpl.kt#mqatfk");
                            boolean showLabel$iv2 = showLabel$iv;
                            Transition transition$iv = TransitionKt.updateTransition(inputState, "TextFieldInputState", $composer4, (0 & 14) | 48, 0);
                            Function3 transitionSpec$iv$iv = TextFieldImplKt$TextFieldTransitionScope$labelProgress$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv = ($changed$iv$iv$iv >> 9) & 112;
                            it$iv = (InputPhase) transition$iv.getCurrentState();
                            $composer4.startReplaceGroup(-2036730335);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                focusedLabelTextStyleColor$iv = $this$CommonDecorationBox_u24lambda_u242;
                                ComposerKt.traceEventStart(-2036730335, $changed$iv, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:356)");
                            } else {
                                focusedLabelTextStyleColor$iv = $this$CommonDecorationBox_u24lambda_u242;
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv.ordinal()]) {
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
                            $composer4.endReplaceGroup();
                            Object initialValue$iv$iv$iv = Float.valueOf(f);
                            int $changed$iv2 = ($changed$iv$iv$iv >> 9) & 112;
                            InputPhase it$iv9 = (InputPhase) transition$iv.getTargetState();
                            $composer4.startReplaceGroup(-2036730335);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                $composer$iv = $composer4;
                                it$iv2 = it$iv9;
                                ComposerKt.traceEventStart(-2036730335, $changed$iv2, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:356)");
                            } else {
                                $composer$iv = $composer4;
                                it$iv2 = it$iv9;
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv2.ordinal()]) {
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
                            $composer$iv.endReplaceGroup();
                            Object targetValue$iv$iv$iv = Float.valueOf(f2);
                            State labelProgress$iv = TransitionKt.createTransitionAnimation(transition$iv, initialValue$iv$iv$iv, targetValue$iv$iv$iv, transitionSpec$iv$iv.invoke(transition$iv.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112)), vectorConverter, "LabelProgress", $composer4, ($changed$iv$iv$iv & 14) | (($changed$iv$iv$iv << 9) & 57344) | (($changed$iv$iv$iv << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv2 = TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv2 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv3 = ($changed$iv$iv$iv2 >> 9) & 112;
                            it$iv3 = (InputPhase) transition$iv.getCurrentState();
                            $composer4.startReplaceGroup(1435837472);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                $composer$iv2 = $composer4;
                                ComposerKt.traceEventStart(1435837472, $changed$iv3, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:386)");
                            } else {
                                $composer$iv2 = $composer4;
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv3.ordinal()]) {
                                case 1:
                                    f3 = 1.0f;
                                    break;
                                case 2:
                                    f3 = !showLabel$iv2 ? 1.0f : 0.0f;
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
                            $composer$iv2.endReplaceGroup();
                            Object initialValue$iv$iv$iv2 = Float.valueOf(f3);
                            int $changed$iv4 = ($changed$iv$iv$iv2 >> 9) & 112;
                            InputPhase it$iv10 = (InputPhase) transition$iv.getTargetState();
                            $composer4.startReplaceGroup(1435837472);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                it$iv4 = it$iv10;
                                $composer$iv3 = $composer4;
                                ComposerKt.traceEventStart(1435837472, $changed$iv4, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:386)");
                            } else {
                                it$iv4 = it$iv10;
                                $composer$iv3 = $composer4;
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv4.ordinal()]) {
                                case 1:
                                    f4 = 1.0f;
                                    break;
                                case 2:
                                    f4 = !showLabel$iv2 ? 1.0f : 0.0f;
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
                            $composer$iv3.endReplaceGroup();
                            Object targetValue$iv$iv$iv2 = Float.valueOf(f4);
                            final State placeholderOpacity$iv = TransitionKt.createTransitionAnimation(transition$iv, initialValue$iv$iv$iv2, targetValue$iv$iv$iv2, transitionSpec$iv$iv2.invoke(transition$iv.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112)), vectorConverter2, "PlaceholderOpacity", $composer4, ($changed$iv$iv$iv2 & 14) | (($changed$iv$iv$iv2 << 9) & 57344) | (($changed$iv$iv$iv2 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv3 = TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter3 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv3 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv5 = ($changed$iv$iv$iv3 >> 9) & 112;
                            it$iv5 = (InputPhase) transition$iv.getCurrentState();
                            $composer4.startReplaceGroup(1128033978);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                $composer$iv4 = $composer4;
                                ComposerKt.traceEventStart(1128033978, $changed$iv5, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:398)");
                            } else {
                                $composer$iv4 = $composer4;
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv5.ordinal()]) {
                                case 1:
                                    f5 = 1.0f;
                                    break;
                                case 2:
                                    f5 = !showLabel$iv2 ? 1.0f : 0.0f;
                                    break;
                                case 3:
                                    f5 = 1.0f;
                                    break;
                                default:
                                    throw new NoWhenBranchMatchedException();
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer$iv4.endReplaceGroup();
                            Object initialValue$iv$iv$iv3 = Float.valueOf(f5);
                            int $changed$iv6 = ($changed$iv$iv$iv3 >> 9) & 112;
                            InputPhase it$iv11 = (InputPhase) transition$iv.getTargetState();
                            $composer4.startReplaceGroup(1128033978);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                it$iv6 = it$iv11;
                                $composer$iv5 = $composer4;
                                ComposerKt.traceEventStart(1128033978, $changed$iv6, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:398)");
                            } else {
                                it$iv6 = it$iv11;
                                $composer$iv5 = $composer4;
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv6.ordinal()]) {
                                case 1:
                                    f6 = 1.0f;
                                    break;
                                case 2:
                                    f6 = !showLabel$iv2 ? 1.0f : 0.0f;
                                    break;
                                case 3:
                                    f6 = 1.0f;
                                    break;
                                default:
                                    throw new NoWhenBranchMatchedException();
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer$iv5.endReplaceGroup();
                            Object targetValue$iv$iv$iv3 = Float.valueOf(f6);
                            State prefixSuffixOpacity$iv = TransitionKt.createTransitionAnimation(transition$iv, initialValue$iv$iv$iv3, targetValue$iv$iv$iv3, transitionSpec$iv$iv3.invoke(transition$iv.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112)), vectorConverter3, "PrefixSuffixOpacity", $composer4, ($changed$iv$iv$iv3 & 14) | (($changed$iv$iv$iv3 << 9) & 57344) | (($changed$iv$iv$iv3 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv4 = TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
                            Object targetState = transition$iv.getTargetState();
                            int $changed$iv7 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
                            InputPhase it$iv12 = (InputPhase) targetState;
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                $composer$iv6 = $composer4;
                                $this$animateColor$iv$iv = transition$iv;
                                ComposerKt.traceEventStart(-107432127, $changed$iv7, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:410)");
                            } else {
                                $composer$iv6 = $composer4;
                                $this$animateColor$iv$iv = transition$iv;
                            }
                            long j = WhenMappings.$EnumSwitchMapping$1[it$iv12.ordinal()] == 1 ? focusedLabelTextStyleColor$iv : unfocusedLabelTextStyleColor$iv;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer$iv6.endReplaceGroup();
                            ColorSpace colorSpace$iv$iv = Color.m4701getColorSpaceimpl(j);
                            ComposerKt.sourceInformationMarkerStart($composer4, 1918408083, "CC(remember):Transition.kt#9igjgp");
                            invalid$iv$iv$iv = $composer4.changed(colorSpace$iv$iv);
                            value$iv$iv$iv = $composer4.rememberedValue();
                            if (invalid$iv$iv$iv || value$iv$iv$iv == Composer.INSTANCE.getEmpty()) {
                                value$iv$iv$iv = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv$iv);
                                $composer4.updateRememberedValue(value$iv$iv$iv);
                            }
                            TwoWayConverter typeConverter$iv$iv = (TwoWayConverter) value$iv$iv$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            int $changed$iv$iv$iv4 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            Transition $this$animateValue$iv$iv$iv3 = $this$animateColor$iv$iv;
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv8 = ($changed$iv$iv$iv4 >> 9) & 112;
                            InputPhase it$iv13 = (InputPhase) $this$animateValue$iv$iv$iv3.getCurrentState();
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                $composer$iv7 = $composer4;
                                $this$animateValue$iv$iv$iv = $this$animateValue$iv$iv$iv3;
                                ComposerKt.traceEventStart(-107432127, $changed$iv8, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:410)");
                            } else {
                                $composer$iv7 = $composer4;
                                $this$animateValue$iv$iv$iv = $this$animateValue$iv$iv$iv3;
                            }
                            long j2 = WhenMappings.$EnumSwitchMapping$1[it$iv13.ordinal()] == 1 ? focusedLabelTextStyleColor$iv : unfocusedLabelTextStyleColor$iv;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer$iv7.endReplaceGroup();
                            Object initialValue$iv$iv$iv4 = Color.m4687boximpl(j2);
                            int $changed$iv9 = ($changed$iv$iv$iv4 >> 9) & 112;
                            InputPhase it$iv14 = (InputPhase) $this$animateValue$iv$iv$iv.getTargetState();
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                it$iv7 = it$iv14;
                                $composer$iv8 = $composer4;
                                ComposerKt.traceEventStart(-107432127, $changed$iv9, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:410)");
                            } else {
                                it$iv7 = it$iv14;
                                $composer$iv8 = $composer4;
                            }
                            long j3 = WhenMappings.$EnumSwitchMapping$1[it$iv7.ordinal()] == 1 ? focusedLabelTextStyleColor$iv : unfocusedLabelTextStyleColor$iv;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer$iv8.endReplaceGroup();
                            Object targetValue$iv$iv$iv4 = Color.m4687boximpl(j3);
                            final State labelTextStyleColor$iv = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv$iv, initialValue$iv$iv$iv4, targetValue$iv$iv$iv4, transitionSpec$iv$iv4.invoke($this$animateValue$iv$iv$iv.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112)), typeConverter$iv$iv, "LabelTextStyleColor", $composer4, ($changed$iv$iv$iv4 & 14) | (($changed$iv$iv$iv4 << 9) & 57344) | (($changed$iv$iv$iv4 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv5 = TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
                            Object targetState2 = transition$iv.getTargetState();
                            int $changed$iv10 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                $composer$iv9 = $composer4;
                                ComposerKt.traceEventStart(1023351670, $changed$iv10, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:421)");
                            } else {
                                $composer$iv9 = $composer4;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer$iv9.endReplaceGroup();
                            ColorSpace colorSpace$iv$iv2 = Color.m4701getColorSpaceimpl(labelColor);
                            ComposerKt.sourceInformationMarkerStart($composer4, 1918408083, "CC(remember):Transition.kt#9igjgp");
                            invalid$iv$iv$iv2 = $composer4.changed(colorSpace$iv$iv2);
                            value$iv$iv$iv2 = $composer4.rememberedValue();
                            if (invalid$iv$iv$iv2 || value$iv$iv$iv2 == Composer.INSTANCE.getEmpty()) {
                                value$iv$iv$iv2 = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv$iv2);
                                $composer4.updateRememberedValue(value$iv$iv$iv2);
                            }
                            TwoWayConverter typeConverter$iv$iv2 = (TwoWayConverter) value$iv$iv$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            int $changed$iv$iv$iv5 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv11 = ($changed$iv$iv$iv5 >> 9) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                $composer$iv10 = $composer4;
                                $this$animateValue$iv$iv$iv2 = transition$iv;
                                ComposerKt.traceEventStart(1023351670, $changed$iv11, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:421)");
                            } else {
                                $composer$iv10 = $composer4;
                                $this$animateValue$iv$iv$iv2 = transition$iv;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer$iv10.endReplaceGroup();
                            Object initialValue$iv$iv$iv5 = Color.m4687boximpl(labelColor);
                            int $changed$iv12 = ($changed$iv$iv$iv5 >> 9) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1023351670, $changed$iv12, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:421)");
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer4.endReplaceGroup();
                            Object targetValue$iv$iv$iv5 = Color.m4687boximpl(labelColor);
                            final State labelContentColor$iv = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv$iv2, initialValue$iv$iv$iv5, targetValue$iv$iv$iv5, transitionSpec$iv$iv5.invoke($this$animateValue$iv$iv$iv2.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112)), typeConverter$iv$iv2, "LabelContentColor", $composer4, ($changed$iv$iv$iv5 & 14) | (($changed$iv$iv$iv5 << 9) & 57344) | (($changed$iv$iv$iv5 << 6) & 458752));
                            $composer2 = $composer4;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            int i21 = 0 & 458752;
                            ComposerKt.sourceInformationMarkerStart($composer2, -571896332, "CP(1,2)155@6472L107,172@7259L108:TextFieldImpl.kt#mqatfk");
                            final float labelProgressValue2 = ((Number) labelProgress$iv.getValue()).floatValue();
                            $composer2.startReplaceGroup(-156998101);
                            ComposerKt.sourceInformation($composer2, "*138@5668L506");
                            if (function22 == null) {
                                bodyLarge = bodyLarge2;
                                bodySmall = bodySmall2;
                                labelProgressValue = labelProgressValue2;
                                decoratedLabel = null;
                            } else {
                                bodyLarge = bodyLarge2;
                                bodySmall = bodySmall2;
                                labelProgressValue = labelProgressValue2;
                                decoratedLabel = ComposableLambdaKt.rememberComposableLambda(-1236585568, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1
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

                                    public final void invoke(Composer $composer5, int $changed2) {
                                        TextStyle labelTextStyle;
                                        ComposerKt.sourceInformation($composer5, "C147@6101L55:TextFieldImpl.kt#mqatfk");
                                        if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1236585568, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:139)");
                                            }
                                            TextStyle textStyle = TextStyleKt.lerp(bodyLarge, bodySmall2, labelProgressValue2);
                                            boolean z = overrideLabelTextStyleColor2;
                                            State<Color> state = labelTextStyleColor$iv;
                                            if (z) {
                                                labelTextStyle = TextStyle.m6941copyp1EtxEg$default(textStyle, state.getValue().m4707unboximpl(), 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16777214, null);
                                            } else {
                                                labelTextStyle = textStyle;
                                            }
                                            TextFieldImplKt.m3259Decoration3JVO9M(labelContentColor$iv.getValue().m4707unboximpl(), labelTextStyle, function22, $composer5, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }, $composer2, 54);
                            }
                            $composer2.endReplaceGroup();
                            final long placeholderColor = colors.m2941placeholderColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                            ComposerKt.sourceInformationMarkerStart($composer2, -156971732, "CC(remember):TextFieldImpl.kt#9igjgp");
                            value$iv2 = $composer2.rememberedValue();
                            if (value$iv2 == Composer.INSTANCE.getEmpty()) {
                                value$iv2 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<Boolean>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$showPlaceholder$2$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Boolean invoke() {
                                        return Boolean.valueOf(placeholderOpacity$iv.getValue().floatValue() > 0.0f);
                                    }
                                });
                                $composer2.updateRememberedValue(value$iv2);
                            }
                            State showPlaceholder$delegate = (State) value$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            $composer2.startReplaceGroup(-156965270);
                            ComposerKt.sourceInformation($composer2, "160@6765L362");
                            if (function211 == null) {
                                function213 = function211;
                                decoratedPlaceholder = null;
                                $composer2.endReplaceGroup();
                                final long prefixColor = colors.m2942prefixColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                ComposerKt.sourceInformationMarkerStart($composer2, -156946547, "CC(remember):TextFieldImpl.kt#9igjgp");
                                Function3 decoratedPlaceholder2 = decoratedPlaceholder;
                                value$iv3 = $composer2.rememberedValue();
                                if (value$iv3 != Composer.INSTANCE.getEmpty()) {
                                    prefixSuffixAlpha = prefixSuffixOpacity$iv;
                                    value$iv3 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<Boolean>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$showPrefixSuffix$2$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(0);
                                        }

                                        /* JADX WARN: Can't rename method to resolve collision */
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Boolean invoke() {
                                            return Boolean.valueOf(prefixSuffixAlpha.getValue().floatValue() > 0.0f);
                                        }
                                    });
                                    $composer2.updateRememberedValue(value$iv3);
                                } else {
                                    prefixSuffixAlpha = prefixSuffixOpacity$iv;
                                }
                                showPrefixSuffix$delegate = (State) value$iv3;
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                $composer2.startReplaceGroup(-156940524);
                                ComposerKt.sourceInformation($composer2, "177@7507L341");
                                if (function225 == null && CommonDecorationBox$lambda$15$lambda$9(showPrefixSuffix$delegate)) {
                                    final TextStyle bodyLarge3 = bodyLarge;
                                    final State prefixSuffixAlpha3 = prefixSuffixAlpha;
                                    final Function2<? super Composer, ? super Integer, Unit> function228 = function225;
                                    Function2<Composer, Integer, Unit> function229 = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1
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

                                        public final void invoke(Composer $composer5, int $changed2) {
                                            Object value$iv6;
                                            Function0<ComposeUiNode> function0;
                                            ComposerKt.sourceInformation($composer5, "C178@7556L35,178@7529L301:TextFieldImpl.kt#mqatfk");
                                            if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                                                $composer5.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(274398694, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:178)");
                                            }
                                            Modifier.Companion companion = Modifier.INSTANCE;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1325794077, "CC(remember):TextFieldImpl.kt#9igjgp");
                                            boolean invalid$iv2 = $composer5.changed(prefixSuffixAlpha3);
                                            final State<Float> state = prefixSuffixAlpha3;
                                            Object it$iv15 = $composer5.rememberedValue();
                                            if (invalid$iv2 || it$iv15 == Composer.INSTANCE.getEmpty()) {
                                                value$iv6 = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1$1$1
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
                                                        $this$graphicsLayer.setAlpha(state.getValue().floatValue());
                                                    }
                                                };
                                                $composer5.updateRememberedValue(value$iv6);
                                            } else {
                                                value$iv6 = it$iv15;
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            Modifier modifier$iv = GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) value$iv6);
                                            long j4 = prefixColor;
                                            TextStyle textStyle = bodyLarge3;
                                            Function2<Composer, Integer, Unit> function230 = function228;
                                            ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                            int $changed$iv$iv = (0 << 3) & 112;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                            CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv);
                                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                            int $changed$iv$iv$iv6 = (($changed$iv$iv << 6) & 896) | 6;
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
                                            int i22 = ($changed$iv$iv$iv6 >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            int i23 = ((0 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1245051865, "C179@7619L189:TextFieldImpl.kt#mqatfk");
                                            TextFieldImplKt.m3259Decoration3JVO9M(j4, textStyle, function230, $composer5, 0);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            $composer5.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    };
                                    function214 = function228;
                                    showPrefixSuffix$delegate2 = showPrefixSuffix$delegate;
                                    bodyLarge = bodyLarge3;
                                    prefixSuffixAlpha2 = prefixSuffixAlpha;
                                    decoratedPrefix = ComposableLambdaKt.rememberComposableLambda(274398694, true, function229, $composer2, 54);
                                } else {
                                    showPrefixSuffix$delegate2 = showPrefixSuffix$delegate;
                                    prefixSuffixAlpha2 = prefixSuffixAlpha;
                                    function214 = function225;
                                    decoratedPrefix = null;
                                }
                                $composer2.endReplaceGroup();
                                final long suffixColor = colors.m2943suffixColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                $composer2.startReplaceGroup(-156921964);
                                ComposerKt.sourceInformation($composer2, "191@8087L341");
                                if (function226 == null && CommonDecorationBox$lambda$15$lambda$9(showPrefixSuffix$delegate2)) {
                                    final TextStyle bodyLarge4 = bodyLarge;
                                    final Function2<? super Composer, ? super Integer, Unit> function230 = function226;
                                    final State prefixSuffixAlpha4 = prefixSuffixAlpha2;
                                    function215 = function230;
                                    decoratedPrefix2 = decoratedPrefix;
                                    decoratedSuffix = ComposableLambdaKt.rememberComposableLambda(-1526229403, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedSuffix$1
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

                                        public final void invoke(Composer $composer5, int $changed2) {
                                            Object value$iv6;
                                            Function0<ComposeUiNode> function0;
                                            ComposerKt.sourceInformation($composer5, "C192@8136L35,192@8109L301:TextFieldImpl.kt#mqatfk");
                                            if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                                                $composer5.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1526229403, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:192)");
                                            }
                                            Modifier.Companion companion = Modifier.INSTANCE;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1325775517, "CC(remember):TextFieldImpl.kt#9igjgp");
                                            boolean invalid$iv2 = $composer5.changed(prefixSuffixAlpha4);
                                            final State<Float> state = prefixSuffixAlpha4;
                                            Object it$iv15 = $composer5.rememberedValue();
                                            if (invalid$iv2 || it$iv15 == Composer.INSTANCE.getEmpty()) {
                                                value$iv6 = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedSuffix$1$1$1
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
                                                        $this$graphicsLayer.setAlpha(state.getValue().floatValue());
                                                    }
                                                };
                                                $composer5.updateRememberedValue(value$iv6);
                                            } else {
                                                value$iv6 = it$iv15;
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            Modifier modifier$iv = GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) value$iv6);
                                            long j4 = suffixColor;
                                            TextStyle textStyle = bodyLarge4;
                                            Function2<Composer, Integer, Unit> function231 = function230;
                                            ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                            int $changed$iv$iv = (0 << 3) & 112;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                            CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv);
                                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                            int $changed$iv$iv$iv6 = (($changed$iv$iv << 6) & 896) | 6;
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
                                            int i22 = ($changed$iv$iv$iv6 >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            int i23 = ((0 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1244476505, "C193@8199L189:TextFieldImpl.kt#mqatfk");
                                            TextFieldImplKt.m3259Decoration3JVO9M(j4, textStyle, function231, $composer5, 0);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            $composer5.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }, $composer2, 54);
                                } else {
                                    function215 = function226;
                                    decoratedPrefix2 = decoratedPrefix;
                                    decoratedSuffix = null;
                                }
                                $composer2.endReplaceGroup();
                                final long leadingIconColor = colors.m2940leadingIconColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                $composer2.startReplaceGroup(-156902962);
                                ComposerKt.sourceInformation($composer2, "*205@8655L61");
                                if (function212 != null) {
                                    decoratedLeading = null;
                                } else {
                                    final Function2<? super Composer, ? super Integer, Unit> function231 = function212;
                                    decoratedLeading = ComposableLambdaKt.rememberComposableLambda(-130107406, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1
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

                                        public final void invoke(Composer $composer5, int $changed2) {
                                            ComposerKt.sourceInformation($composer5, "C205@8657L57:TextFieldImpl.kt#mqatfk");
                                            if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                                                $composer5.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-130107406, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:205)");
                                            }
                                            TextFieldImplKt.m3260DecorationIv8Zu3U(leadingIconColor, function231, $composer5, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }, $composer2, 54);
                                }
                                $composer2.endReplaceGroup();
                                Function2 decoratedLeading2 = decoratedLeading;
                                final long trailingIconColor = colors.m2946trailingIconColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                $composer2.startReplaceGroup(-156893937);
                                ComposerKt.sourceInformation($composer2, "*211@8937L62");
                                if (function224 != null) {
                                    decoratedTrailing = null;
                                } else {
                                    final Function2<? super Composer, ? super Integer, Unit> function232 = function224;
                                    decoratedTrailing = ComposableLambdaKt.rememberComposableLambda(2079816678, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1
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

                                        public final void invoke(Composer $composer5, int $changed2) {
                                            ComposerKt.sourceInformation($composer5, "C211@8939L58:TextFieldImpl.kt#mqatfk");
                                            if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                                                $composer5.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(2079816678, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:211)");
                                            }
                                            TextFieldImplKt.m3260DecorationIv8Zu3U(trailingIconColor, function232, $composer5, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }, $composer2, 54);
                                }
                                $composer2.endReplaceGroup();
                                Function2 decoratedTrailing2 = decoratedTrailing;
                                final long supportingTextColor = colors.m2944supportingTextColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                $composer2.startReplaceGroup(-156884470);
                                ComposerKt.sourceInformation($composer2, "*217@9228L217");
                                if (function227 != null) {
                                    enabled3 = enabled5;
                                    decoratedSupporting = null;
                                } else {
                                    final Function2<? super Composer, ? super Integer, Unit> function233 = function227;
                                    enabled3 = enabled5;
                                    decoratedSupporting = ComposableLambdaKt.rememberComposableLambda(1263707005, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1
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

                                        public final void invoke(Composer $composer5, int $changed2) {
                                            ComposerKt.sourceInformation($composer5, "C218@9250L177:TextFieldImpl.kt#mqatfk");
                                            if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1263707005, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:218)");
                                                }
                                                TextFieldImplKt.m3259Decoration3JVO9M(supportingTextColor, bodySmall, function233, $composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }, $composer2, 54);
                                }
                                $composer2.endReplaceGroup();
                                switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
                                    case 1:
                                        $composer3 = $composer2;
                                        $composer3.startReplaceGroup(-568105095);
                                        ComposerKt.sourceInformation($composer3, "228@9583L167,234@9768L769");
                                        Function2 containerWithId = ComposableLambdaKt.rememberComposableLambda(1750327932, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$containerWithId$1
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

                                            public final void invoke(Composer $composer5, int $changed2) {
                                                Function0<ComposeUiNode> function0;
                                                ComposerKt.sourceInformation($composer5, "C229@9605L127:TextFieldImpl.kt#mqatfk");
                                                if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(1750327932, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:229)");
                                                    }
                                                    Modifier modifier$iv = LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.ContainerId);
                                                    Function2<Composer, Integer, Unit> function234 = function29;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                                    Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                                    MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
                                                    int $changed$iv$iv = (390 << 3) & 112;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                                    CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                                    Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv);
                                                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                                    int $changed$iv$iv$iv6 = (($changed$iv$iv << 6) & 896) | 6;
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
                                                    int i22 = ($changed$iv$iv$iv6 >> 6) & 14;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                                    int i23 = ((390 >> 6) & 112) | 6;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, -1242994023, "C230@9699L11:TextFieldImpl.kt#mqatfk");
                                                    function234.invoke($composer5, 0);
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
                                        }, $composer3, 54);
                                        TextFieldKt.TextFieldLayout(Modifier.INSTANCE, function2, decoratedLabel, decoratedPlaceholder2, decoratedLeading2, decoratedTrailing2, decoratedPrefix2, decoratedSuffix, singleLine3, labelProgressValue, containerWithId, decoratedSupporting, contentPadding, $composer3, (($dirty >> 3) & 112) | 6 | (($dirty1 << 21) & 234881024), (($dirty1 >> 9) & 896) | 6);
                                        $composer3.endReplaceGroup();
                                        Unit unit = Unit.INSTANCE;
                                        break;
                                    case 2:
                                        $composer2.startReplaceGroup(-567018607);
                                        ComposerKt.sourceInformation($composer2, "253@10659L38,254@10766L314,275@11639L463,264@11098L1286");
                                        ComposerKt.sourceInformationMarkerStart($composer2, -156837817, "CC(remember):TextFieldImpl.kt#9igjgp");
                                        Object it$iv15 = $composer2.rememberedValue();
                                        if (it$iv15 == Composer.INSTANCE.getEmpty()) {
                                            value$iv4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m4509boximpl(Size.INSTANCE.m4530getZeroNHjbRc()), null, 2, null);
                                            $composer2.updateRememberedValue(value$iv4);
                                        } else {
                                            value$iv4 = it$iv15;
                                        }
                                        final MutableState labelSize = (MutableState) value$iv4;
                                        ComposerKt.sourceInformationMarkerEnd($composer2);
                                        Function2 borderContainerWithId = ComposableLambdaKt.rememberComposableLambda(157291737, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1
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

                                            public final void invoke(Composer $composer5, int $changed2) {
                                                Function0<ComposeUiNode> function0;
                                                ComposerKt.sourceInformation($composer5, "C255@10788L274:TextFieldImpl.kt#mqatfk");
                                                if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(157291737, $changed2, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:255)");
                                                    }
                                                    Modifier modifier$iv = OutlinedTextFieldKt.outlineCutout(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.ContainerId), new MutablePropertyReference0Impl(labelSize) { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1.1
                                                        @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
                                                        public Object get() {
                                                            return ((MutableState) this.receiver).getValue();
                                                        }

                                                        @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
                                                        public void set(Object value2) {
                                                            ((MutableState) this.receiver).setValue(value2);
                                                        }
                                                    }, contentPadding);
                                                    Function2<Composer, Integer, Unit> function234 = function29;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                                    Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                                    MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
                                                    int $changed$iv$iv = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                                    CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                                    Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv);
                                                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                                    int $changed$iv$iv$iv6 = (($changed$iv$iv << 6) & 896) | 6;
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
                                                    int i22 = ($changed$iv$iv$iv6 >> 6) & 14;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                                    int i23 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                                                    ComposerKt.sourceInformationMarkerStart($composer5, -1241674663, "C260@11029L11:TextFieldImpl.kt#mqatfk");
                                                    function234.invoke($composer5, 0);
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
                                        }, $composer2, 54);
                                        Modifier.Companion companion = Modifier.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart($composer2, -156806032, "CC(remember):TextFieldImpl.kt#9igjgp");
                                        final float labelProgressValue3 = labelProgressValue;
                                        boolean invalid$iv2 = $composer2.changed(labelProgressValue3);
                                        Object it$iv16 = $composer2.rememberedValue();
                                        if (invalid$iv2 || it$iv16 == Composer.INSTANCE.getEmpty()) {
                                            value$iv5 = (Function1) new Function1<Size, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$1$1
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(1);
                                                }

                                                @Override // kotlin.jvm.functions.Function1
                                                public /* bridge */ /* synthetic */ Unit invoke(Size size) {
                                                    m3265invokeuvyYCjk(size.m4526unboximpl());
                                                    return Unit.INSTANCE;
                                                }

                                                /* JADX INFO: renamed from: invoke-uvyYCjk, reason: not valid java name */
                                                public final void m3265invokeuvyYCjk(long it) {
                                                    float labelWidth = Size.m4521getWidthimpl(it) * labelProgressValue3;
                                                    float labelHeight = Size.m4518getHeightimpl(it) * labelProgressValue3;
                                                    if (Size.m4521getWidthimpl(labelSize.getValue().m4526unboximpl()) == labelWidth) {
                                                        if (Size.m4518getHeightimpl(labelSize.getValue().m4526unboximpl()) == labelHeight) {
                                                            return;
                                                        }
                                                    }
                                                    labelSize.setValue(Size.m4509boximpl(androidx.compose.ui.geometry.SizeKt.Size(labelWidth, labelHeight)));
                                                }
                                            };
                                            $composer2.updateRememberedValue(value$iv5);
                                        } else {
                                            value$iv5 = it$iv16;
                                        }
                                        ComposerKt.sourceInformationMarkerEnd($composer2);
                                        OutlinedTextFieldKt.OutlinedTextFieldLayout(companion, function210, decoratedPlaceholder2, decoratedLabel, decoratedLeading2, decoratedTrailing2, decoratedPrefix2, decoratedSuffix, singleLine3, labelProgressValue3, (Function1) value$iv5, borderContainerWithId, decoratedSupporting, contentPadding, $composer2, (($dirty >> 3) & 112) | 6 | (($dirty1 << 21) & 234881024), (($dirty1 >> 6) & 7168) | 48);
                                        $composer3 = $composer2;
                                        $composer3.endReplaceGroup();
                                        Unit unit2 = Unit.INSTANCE;
                                        break;
                                    default:
                                        $composer3 = $composer2;
                                        $composer3.startReplaceGroup(-565271199);
                                        $composer3.endReplaceGroup();
                                        Unit unit3 = Unit.INSTANCE;
                                        break;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                function216 = function224;
                                singleLine2 = singleLine3;
                                function217 = function227;
                                function218 = function212;
                                function219 = function214;
                                function220 = function215;
                                enabled4 = enabled3;
                                isError2 = isError3;
                                function221 = function213;
                            } else {
                                if ((transformedText.length() == 0) && CommonDecorationBox$lambda$15$lambda$7(showPlaceholder$delegate)) {
                                    final TextStyle bodyLarge5 = bodyLarge;
                                    final Function2<? super Composer, ? super Integer, Unit> function234 = function211;
                                    function213 = function234;
                                    bodyLarge = bodyLarge5;
                                    decoratedPlaceholder = ComposableLambdaKt.rememberComposableLambda(-660524084, true, new Function3<Modifier, Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1
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

                                        public final void invoke(Modifier modifier, Composer $composer5, int $changed2) {
                                            Object value$iv6;
                                            Function0<ComposeUiNode> function0;
                                            ComposerKt.sourceInformation($composer5, "C161@6826L34,161@6799L310:TextFieldImpl.kt#mqatfk");
                                            int $dirty3 = $changed2;
                                            if (($changed2 & 6) == 0) {
                                                $dirty3 |= $composer5.changed(modifier) ? 4 : 2;
                                            }
                                            if (($dirty3 & 19) == 18 && $composer5.getSkipping()) {
                                                $composer5.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-660524084, $dirty3, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:161)");
                                            }
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1325817438, "CC(remember):TextFieldImpl.kt#9igjgp");
                                            boolean invalid$iv3 = $composer5.changed(placeholderOpacity$iv);
                                            final State<Float> state = placeholderOpacity$iv;
                                            Object it$iv17 = $composer5.rememberedValue();
                                            if (invalid$iv3 || it$iv17 == Composer.INSTANCE.getEmpty()) {
                                                value$iv6 = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1$1$1
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
                                                        $this$graphicsLayer.setAlpha(state.getValue().floatValue());
                                                    }
                                                };
                                                $composer5.updateRememberedValue(value$iv6);
                                            } else {
                                                value$iv6 = it$iv17;
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            Modifier modifier$iv = GraphicsLayerModifierKt.graphicsLayer(modifier, (Function1) value$iv6);
                                            long j4 = placeholderColor;
                                            TextStyle textStyle = bodyLarge5;
                                            Function2<Composer, Integer, Unit> function235 = function234;
                                            ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                            int $changed$iv$iv = (0 << 3) & 112;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                            CompositionLocalMap localMap$iv$iv = $composer5.getCurrentCompositionLocalMap();
                                            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv);
                                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                            int $changed$iv$iv$iv6 = (($changed$iv$iv << 6) & 896) | 6;
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
                                            int i22 = ($changed$iv$iv$iv6 >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            int i23 = ((0 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer5, -1245776707, "C162@6888L199:TextFieldImpl.kt#mqatfk");
                                            TextFieldImplKt.m3259Decoration3JVO9M(j4, textStyle, function235, $composer5, 0);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            $composer5.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            ComposerKt.sourceInformationMarkerEnd($composer5);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }, $composer2, 54);
                                }
                                $composer2.endReplaceGroup();
                                final long prefixColor2 = colors.m2942prefixColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                ComposerKt.sourceInformationMarkerStart($composer2, -156946547, "CC(remember):TextFieldImpl.kt#9igjgp");
                                Function3 decoratedPlaceholder22 = decoratedPlaceholder;
                                value$iv3 = $composer2.rememberedValue();
                                if (value$iv3 != Composer.INSTANCE.getEmpty()) {
                                }
                                showPrefixSuffix$delegate = (State) value$iv3;
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                $composer2.startReplaceGroup(-156940524);
                                ComposerKt.sourceInformation($composer2, "177@7507L341");
                                if (function225 == null) {
                                    showPrefixSuffix$delegate2 = showPrefixSuffix$delegate;
                                    prefixSuffixAlpha2 = prefixSuffixAlpha;
                                    function214 = function225;
                                    decoratedPrefix = null;
                                    $composer2.endReplaceGroup();
                                    final long suffixColor2 = colors.m2943suffixColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                    $composer2.startReplaceGroup(-156921964);
                                    ComposerKt.sourceInformation($composer2, "191@8087L341");
                                    if (function226 == null) {
                                        function215 = function226;
                                        decoratedPrefix2 = decoratedPrefix;
                                        decoratedSuffix = null;
                                        $composer2.endReplaceGroup();
                                        final long leadingIconColor2 = colors.m2940leadingIconColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                        $composer2.startReplaceGroup(-156902962);
                                        ComposerKt.sourceInformation($composer2, "*205@8655L61");
                                        if (function212 != null) {
                                        }
                                        $composer2.endReplaceGroup();
                                        Function2 decoratedLeading22 = decoratedLeading;
                                        final long trailingIconColor2 = colors.m2946trailingIconColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                        $composer2.startReplaceGroup(-156893937);
                                        ComposerKt.sourceInformation($composer2, "*211@8937L62");
                                        if (function224 != null) {
                                        }
                                        $composer2.endReplaceGroup();
                                        Function2 decoratedTrailing22 = decoratedTrailing;
                                        final long supportingTextColor2 = colors.m2944supportingTextColorXeAY9LY$material3_release(enabled5, isError3, isFocused);
                                        $composer2.startReplaceGroup(-156884470);
                                        ComposerKt.sourceInformation($composer2, "*217@9228L217");
                                        if (function227 != null) {
                                        }
                                        $composer2.endReplaceGroup();
                                        switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
                                        }
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer2);
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                        function216 = function224;
                                        singleLine2 = singleLine3;
                                        function217 = function227;
                                        function218 = function212;
                                        function219 = function214;
                                        function220 = function215;
                                        enabled4 = enabled3;
                                        isError2 = isError3;
                                        function221 = function213;
                                    }
                                }
                            }
                        } else {
                            $dirty = $dirty2;
                        }
                        value$iv = visualTransformation.filter(new AnnotatedString(str, null, null, 6, null));
                        $composer4.updateRememberedValue(value$iv);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        String transformedText2 = ((TransformedText) value$iv).getText().getText();
                        boolean isFocused2 = FocusInteractionKt.collectIsFocusedAsState(interactionSource, $composer4, ($dirty1 >> 12) & 14).getValue().booleanValue();
                        if (isFocused2) {
                        }
                        long labelColor2 = colors.m2939labelColorXeAY9LY$material3_release(enabled2, isError3, isFocused2);
                        Typography typography2 = MaterialTheme.INSTANCE.getTypography($composer4, 6);
                        TextStyle bodyLarge22 = typography2.getBodyLarge();
                        final TextStyle bodySmall22 = typography2.getBodySmall();
                        boolean enabled52 = enabled2;
                        if (Color.m4698equalsimpl0(bodyLarge22.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU())) {
                            long $this$CommonDecorationBox_u24lambda_u2422 = bodySmall22.m6958getColor0d7_KjU();
                            if (overrideLabelTextStyleColor) {
                            }
                            long $this$CommonDecorationBox_u24lambda_u2442 = bodyLarge22.m6958getColor0d7_KjU();
                            if (overrideLabelTextStyleColor) {
                            }
                            if (function22 != null) {
                            }
                            long unfocusedLabelTextStyleColor$iv2 = $this$CommonDecorationBox_u24lambda_u2442;
                            final boolean overrideLabelTextStyleColor22 = overrideLabelTextStyleColor;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1087703202, "CC(TextFieldTransitionScope)P(2,1:c#ui.graphics.Color,5:c#ui.graphics.Color,3:c#ui.graphics.Color,4)349@14528L59,352@14632L334,364@15016L1126,394@16193L363,406@16607L318,418@17028L197,424@17231L150:TextFieldImpl.kt#mqatfk");
                            boolean showLabel$iv22 = showLabel$iv;
                            Transition transition$iv2 = TransitionKt.updateTransition(inputState, "TextFieldInputState", $composer4, (0 & 14) | 48, 0);
                            Function3 transitionSpec$iv$iv6 = TextFieldImplKt$TextFieldTransitionScope$labelProgress$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter4 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv6 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv13 = ($changed$iv$iv$iv6 >> 9) & 112;
                            it$iv = (InputPhase) transition$iv2.getCurrentState();
                            $composer4.startReplaceGroup(-2036730335);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer4.endReplaceGroup();
                            Object initialValue$iv$iv$iv6 = Float.valueOf(f);
                            int $changed$iv22 = ($changed$iv$iv$iv6 >> 9) & 112;
                            InputPhase it$iv92 = (InputPhase) transition$iv2.getTargetState();
                            $composer4.startReplaceGroup(-2036730335);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv2.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv.endReplaceGroup();
                            Object targetValue$iv$iv$iv6 = Float.valueOf(f2);
                            State labelProgress$iv2 = TransitionKt.createTransitionAnimation(transition$iv2, initialValue$iv$iv$iv6, targetValue$iv$iv$iv6, transitionSpec$iv$iv6.invoke(transition$iv2.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv6 >> 3) & 112)), vectorConverter4, "LabelProgress", $composer4, ($changed$iv$iv$iv6 & 14) | (($changed$iv$iv$iv6 << 9) & 57344) | (($changed$iv$iv$iv6 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv22 = TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter22 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv22 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv32 = ($changed$iv$iv$iv22 >> 9) & 112;
                            it$iv3 = (InputPhase) transition$iv2.getCurrentState();
                            $composer4.startReplaceGroup(1435837472);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv3.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv2.endReplaceGroup();
                            Object initialValue$iv$iv$iv22 = Float.valueOf(f3);
                            int $changed$iv42 = ($changed$iv$iv$iv22 >> 9) & 112;
                            InputPhase it$iv102 = (InputPhase) transition$iv2.getTargetState();
                            $composer4.startReplaceGroup(1435837472);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv4.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv3.endReplaceGroup();
                            Object targetValue$iv$iv$iv22 = Float.valueOf(f4);
                            final State<Float> placeholderOpacity$iv2 = TransitionKt.createTransitionAnimation(transition$iv2, initialValue$iv$iv$iv22, targetValue$iv$iv$iv22, transitionSpec$iv$iv22.invoke(transition$iv2.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112)), vectorConverter22, "PlaceholderOpacity", $composer4, ($changed$iv$iv$iv22 & 14) | (($changed$iv$iv$iv22 << 9) & 57344) | (($changed$iv$iv$iv22 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv32 = TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter32 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv32 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv52 = ($changed$iv$iv$iv32 >> 9) & 112;
                            it$iv5 = (InputPhase) transition$iv2.getCurrentState();
                            $composer4.startReplaceGroup(1128033978);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv5.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv4.endReplaceGroup();
                            Object initialValue$iv$iv$iv32 = Float.valueOf(f5);
                            int $changed$iv62 = ($changed$iv$iv$iv32 >> 9) & 112;
                            InputPhase it$iv112 = (InputPhase) transition$iv2.getTargetState();
                            $composer4.startReplaceGroup(1128033978);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv6.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv5.endReplaceGroup();
                            Object targetValue$iv$iv$iv32 = Float.valueOf(f6);
                            State prefixSuffixOpacity$iv2 = TransitionKt.createTransitionAnimation(transition$iv2, initialValue$iv$iv$iv32, targetValue$iv$iv$iv32, transitionSpec$iv$iv32.invoke(transition$iv2.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112)), vectorConverter32, "PrefixSuffixOpacity", $composer4, ($changed$iv$iv$iv32 & 14) | (($changed$iv$iv$iv32 << 9) & 57344) | (($changed$iv$iv$iv32 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv42 = TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
                            Object targetState3 = transition$iv2.getTargetState();
                            int $changed$iv72 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
                            InputPhase it$iv122 = (InputPhase) targetState3;
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (WhenMappings.$EnumSwitchMapping$1[it$iv122.ordinal()] == 1) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv6.endReplaceGroup();
                            ColorSpace colorSpace$iv$iv3 = Color.m4701getColorSpaceimpl(j);
                            ComposerKt.sourceInformationMarkerStart($composer4, 1918408083, "CC(remember):Transition.kt#9igjgp");
                            invalid$iv$iv$iv = $composer4.changed(colorSpace$iv$iv3);
                            value$iv$iv$iv = $composer4.rememberedValue();
                            if (invalid$iv$iv$iv) {
                            }
                            value$iv$iv$iv = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv$iv3);
                            $composer4.updateRememberedValue(value$iv$iv$iv);
                            TwoWayConverter typeConverter$iv$iv3 = (TwoWayConverter) value$iv$iv$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            int $changed$iv$iv$iv42 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            Transition $this$animateValue$iv$iv$iv32 = $this$animateColor$iv$iv;
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv82 = ($changed$iv$iv$iv42 >> 9) & 112;
                            InputPhase it$iv132 = (InputPhase) $this$animateValue$iv$iv$iv32.getCurrentState();
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (WhenMappings.$EnumSwitchMapping$1[it$iv132.ordinal()] == 1) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv7.endReplaceGroup();
                            Object initialValue$iv$iv$iv42 = Color.m4687boximpl(j2);
                            int $changed$iv92 = ($changed$iv$iv$iv42 >> 9) & 112;
                            InputPhase it$iv142 = (InputPhase) $this$animateValue$iv$iv$iv.getTargetState();
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (WhenMappings.$EnumSwitchMapping$1[it$iv7.ordinal()] == 1) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv8.endReplaceGroup();
                            Object targetValue$iv$iv$iv42 = Color.m4687boximpl(j3);
                            final State<Color> labelTextStyleColor$iv2 = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv$iv, initialValue$iv$iv$iv42, targetValue$iv$iv$iv42, transitionSpec$iv$iv42.invoke($this$animateValue$iv$iv$iv.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112)), typeConverter$iv$iv3, "LabelTextStyleColor", $composer4, ($changed$iv$iv$iv42 & 14) | (($changed$iv$iv$iv42 << 9) & 57344) | (($changed$iv$iv$iv42 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv52 = TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
                            Object targetState22 = transition$iv2.getTargetState();
                            int $changed$iv102 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv9.endReplaceGroup();
                            ColorSpace colorSpace$iv$iv22 = Color.m4701getColorSpaceimpl(labelColor2);
                            ComposerKt.sourceInformationMarkerStart($composer4, 1918408083, "CC(remember):Transition.kt#9igjgp");
                            invalid$iv$iv$iv2 = $composer4.changed(colorSpace$iv$iv22);
                            value$iv$iv$iv2 = $composer4.rememberedValue();
                            if (invalid$iv$iv$iv2) {
                            }
                            value$iv$iv$iv2 = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv$iv22);
                            $composer4.updateRememberedValue(value$iv$iv$iv2);
                            TwoWayConverter typeConverter$iv$iv22 = (TwoWayConverter) value$iv$iv$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            int $changed$iv$iv$iv52 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv112 = ($changed$iv$iv$iv52 >> 9) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv10.endReplaceGroup();
                            Object initialValue$iv$iv$iv52 = Color.m4687boximpl(labelColor2);
                            int $changed$iv122 = ($changed$iv$iv$iv52 >> 9) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer4.endReplaceGroup();
                            Object targetValue$iv$iv$iv52 = Color.m4687boximpl(labelColor2);
                            final State<Color> labelContentColor$iv2 = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv$iv2, initialValue$iv$iv$iv52, targetValue$iv$iv$iv52, transitionSpec$iv$iv52.invoke($this$animateValue$iv$iv$iv2.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv52 >> 3) & 112)), typeConverter$iv$iv22, "LabelContentColor", $composer4, ($changed$iv$iv$iv52 & 14) | (($changed$iv$iv$iv52 << 9) & 57344) | (($changed$iv$iv$iv52 << 6) & 458752));
                            $composer2 = $composer4;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            int i212 = 0 & 458752;
                            ComposerKt.sourceInformationMarkerStart($composer2, -571896332, "CP(1,2)155@6472L107,172@7259L108:TextFieldImpl.kt#mqatfk");
                            final float labelProgressValue22 = ((Number) labelProgress$iv2.getValue()).floatValue();
                            $composer2.startReplaceGroup(-156998101);
                            ComposerKt.sourceInformation($composer2, "*138@5668L506");
                            if (function22 == null) {
                            }
                            $composer2.endReplaceGroup();
                            final long placeholderColor2 = colors.m2941placeholderColorXeAY9LY$material3_release(enabled52, isError3, isFocused2);
                            ComposerKt.sourceInformationMarkerStart($composer2, -156971732, "CC(remember):TextFieldImpl.kt#9igjgp");
                            value$iv2 = $composer2.rememberedValue();
                            if (value$iv2 == Composer.INSTANCE.getEmpty()) {
                            }
                            State showPlaceholder$delegate2 = (State) value$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            $composer2.startReplaceGroup(-156965270);
                            ComposerKt.sourceInformation($composer2, "160@6765L362");
                            if (function211 == null) {
                            }
                        } else {
                            long $this$CommonDecorationBox_u24lambda_u24222 = bodySmall22.m6958getColor0d7_KjU();
                            if (overrideLabelTextStyleColor) {
                            }
                            long $this$CommonDecorationBox_u24lambda_u24422 = bodyLarge22.m6958getColor0d7_KjU();
                            if (overrideLabelTextStyleColor) {
                            }
                            if (function22 != null) {
                            }
                            long unfocusedLabelTextStyleColor$iv22 = $this$CommonDecorationBox_u24lambda_u24422;
                            final boolean overrideLabelTextStyleColor222 = overrideLabelTextStyleColor;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1087703202, "CC(TextFieldTransitionScope)P(2,1:c#ui.graphics.Color,5:c#ui.graphics.Color,3:c#ui.graphics.Color,4)349@14528L59,352@14632L334,364@15016L1126,394@16193L363,406@16607L318,418@17028L197,424@17231L150:TextFieldImpl.kt#mqatfk");
                            boolean showLabel$iv222 = showLabel$iv;
                            Transition transition$iv22 = TransitionKt.updateTransition(inputState, "TextFieldInputState", $composer4, (0 & 14) | 48, 0);
                            Function3 transitionSpec$iv$iv62 = TextFieldImplKt$TextFieldTransitionScope$labelProgress$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter42 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv62 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv132 = ($changed$iv$iv$iv62 >> 9) & 112;
                            it$iv = (InputPhase) transition$iv22.getCurrentState();
                            $composer4.startReplaceGroup(-2036730335);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer4.endReplaceGroup();
                            Object initialValue$iv$iv$iv62 = Float.valueOf(f);
                            int $changed$iv222 = ($changed$iv$iv$iv62 >> 9) & 112;
                            InputPhase it$iv922 = (InputPhase) transition$iv22.getTargetState();
                            $composer4.startReplaceGroup(-2036730335);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv2.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv.endReplaceGroup();
                            Object targetValue$iv$iv$iv62 = Float.valueOf(f2);
                            State labelProgress$iv22 = TransitionKt.createTransitionAnimation(transition$iv22, initialValue$iv$iv$iv62, targetValue$iv$iv$iv62, transitionSpec$iv$iv62.invoke(transition$iv22.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv62 >> 3) & 112)), vectorConverter42, "LabelProgress", $composer4, ($changed$iv$iv$iv62 & 14) | (($changed$iv$iv$iv62 << 9) & 57344) | (($changed$iv$iv$iv62 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv222 = TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter222 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv222 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv322 = ($changed$iv$iv$iv222 >> 9) & 112;
                            it$iv3 = (InputPhase) transition$iv22.getCurrentState();
                            $composer4.startReplaceGroup(1435837472);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv3.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv2.endReplaceGroup();
                            Object initialValue$iv$iv$iv222 = Float.valueOf(f3);
                            int $changed$iv422 = ($changed$iv$iv$iv222 >> 9) & 112;
                            InputPhase it$iv1022 = (InputPhase) transition$iv22.getTargetState();
                            $composer4.startReplaceGroup(1435837472);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv4.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv3.endReplaceGroup();
                            Object targetValue$iv$iv$iv222 = Float.valueOf(f4);
                            final State<Float> placeholderOpacity$iv22 = TransitionKt.createTransitionAnimation(transition$iv22, initialValue$iv$iv$iv222, targetValue$iv$iv$iv222, transitionSpec$iv$iv222.invoke(transition$iv22.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv222 >> 3) & 112)), vectorConverter222, "PlaceholderOpacity", $composer4, ($changed$iv$iv$iv222 & 14) | (($changed$iv$iv$iv222 << 9) & 57344) | (($changed$iv$iv$iv222 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv322 = TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
                            TwoWayConverter<Float, AnimationVector1D> vectorConverter322 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                            int $changed$iv$iv$iv322 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv522 = ($changed$iv$iv$iv322 >> 9) & 112;
                            it$iv5 = (InputPhase) transition$iv22.getCurrentState();
                            $composer4.startReplaceGroup(1128033978);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv5.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv4.endReplaceGroup();
                            Object initialValue$iv$iv$iv322 = Float.valueOf(f5);
                            int $changed$iv622 = ($changed$iv$iv$iv322 >> 9) & 112;
                            InputPhase it$iv1122 = (InputPhase) transition$iv22.getTargetState();
                            $composer4.startReplaceGroup(1128033978);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            switch (WhenMappings.$EnumSwitchMapping$1[it$iv6.ordinal()]) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv5.endReplaceGroup();
                            Object targetValue$iv$iv$iv322 = Float.valueOf(f6);
                            State prefixSuffixOpacity$iv22 = TransitionKt.createTransitionAnimation(transition$iv22, initialValue$iv$iv$iv322, targetValue$iv$iv$iv322, transitionSpec$iv$iv322.invoke(transition$iv22.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv322 >> 3) & 112)), vectorConverter322, "PrefixSuffixOpacity", $composer4, ($changed$iv$iv$iv322 & 14) | (($changed$iv$iv$iv322 << 9) & 57344) | (($changed$iv$iv$iv322 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv422 = TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
                            Object targetState32 = transition$iv22.getTargetState();
                            int $changed$iv722 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
                            InputPhase it$iv1222 = (InputPhase) targetState32;
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (WhenMappings.$EnumSwitchMapping$1[it$iv1222.ordinal()] == 1) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv6.endReplaceGroup();
                            ColorSpace colorSpace$iv$iv32 = Color.m4701getColorSpaceimpl(j);
                            ComposerKt.sourceInformationMarkerStart($composer4, 1918408083, "CC(remember):Transition.kt#9igjgp");
                            invalid$iv$iv$iv = $composer4.changed(colorSpace$iv$iv32);
                            value$iv$iv$iv = $composer4.rememberedValue();
                            if (invalid$iv$iv$iv) {
                            }
                            value$iv$iv$iv = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv$iv32);
                            $composer4.updateRememberedValue(value$iv$iv$iv);
                            TwoWayConverter typeConverter$iv$iv32 = (TwoWayConverter) value$iv$iv$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            int $changed$iv$iv$iv422 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            Transition $this$animateValue$iv$iv$iv322 = $this$animateColor$iv$iv;
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv822 = ($changed$iv$iv$iv422 >> 9) & 112;
                            InputPhase it$iv1322 = (InputPhase) $this$animateValue$iv$iv$iv322.getCurrentState();
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (WhenMappings.$EnumSwitchMapping$1[it$iv1322.ordinal()] == 1) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv7.endReplaceGroup();
                            Object initialValue$iv$iv$iv422 = Color.m4687boximpl(j2);
                            int $changed$iv922 = ($changed$iv$iv$iv422 >> 9) & 112;
                            InputPhase it$iv1422 = (InputPhase) $this$animateValue$iv$iv$iv.getTargetState();
                            $composer4.startReplaceGroup(-107432127);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (WhenMappings.$EnumSwitchMapping$1[it$iv7.ordinal()] == 1) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv8.endReplaceGroup();
                            Object targetValue$iv$iv$iv422 = Color.m4687boximpl(j3);
                            final State<Color> labelTextStyleColor$iv22 = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv$iv, initialValue$iv$iv$iv422, targetValue$iv$iv$iv422, transitionSpec$iv$iv422.invoke($this$animateValue$iv$iv$iv.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112)), typeConverter$iv$iv32, "LabelTextStyleColor", $composer4, ($changed$iv$iv$iv422 & 14) | (($changed$iv$iv$iv422 << 9) & 57344) | (($changed$iv$iv$iv422 << 6) & 458752));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Function3 transitionSpec$iv$iv522 = TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
                            Object targetState222 = transition$iv22.getTargetState();
                            int $changed$iv1022 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv9.endReplaceGroup();
                            ColorSpace colorSpace$iv$iv222 = Color.m4701getColorSpaceimpl(labelColor2);
                            ComposerKt.sourceInformationMarkerStart($composer4, 1918408083, "CC(remember):Transition.kt#9igjgp");
                            invalid$iv$iv$iv2 = $composer4.changed(colorSpace$iv$iv222);
                            value$iv$iv$iv2 = $composer4.rememberedValue();
                            if (invalid$iv$iv$iv2) {
                            }
                            value$iv$iv$iv2 = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv$iv222);
                            $composer4.updateRememberedValue(value$iv$iv$iv2);
                            TwoWayConverter typeConverter$iv$iv222 = (TwoWayConverter) value$iv$iv$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            int $changed$iv$iv$iv522 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
                            ComposerKt.sourceInformationMarkerStart($composer4, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
                            int $changed$iv1122 = ($changed$iv$iv$iv522 >> 9) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer$iv10.endReplaceGroup();
                            Object initialValue$iv$iv$iv522 = Color.m4687boximpl(labelColor2);
                            int $changed$iv1222 = ($changed$iv$iv$iv522 >> 9) & 112;
                            $composer4.startReplaceGroup(1023351670);
                            ComposerKt.sourceInformation($composer4, "C:TextFieldImpl.kt#mqatfk");
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            $composer4.endReplaceGroup();
                            Object targetValue$iv$iv$iv522 = Color.m4687boximpl(labelColor2);
                            final State<Color> labelContentColor$iv22 = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv$iv2, initialValue$iv$iv$iv522, targetValue$iv$iv$iv522, transitionSpec$iv$iv522.invoke($this$animateValue$iv$iv$iv2.getSegment(), $composer4, Integer.valueOf(($changed$iv$iv$iv522 >> 3) & 112)), typeConverter$iv$iv222, "LabelContentColor", $composer4, ($changed$iv$iv$iv522 & 14) | (($changed$iv$iv$iv522 << 9) & 57344) | (($changed$iv$iv$iv522 << 6) & 458752));
                            $composer2 = $composer4;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            int i2122 = 0 & 458752;
                            ComposerKt.sourceInformationMarkerStart($composer2, -571896332, "CP(1,2)155@6472L107,172@7259L108:TextFieldImpl.kt#mqatfk");
                            final float labelProgressValue222 = ((Number) labelProgress$iv22.getValue()).floatValue();
                            $composer2.startReplaceGroup(-156998101);
                            ComposerKt.sourceInformation($composer2, "*138@5668L506");
                            if (function22 == null) {
                            }
                            $composer2.endReplaceGroup();
                            final long placeholderColor22 = colors.m2941placeholderColorXeAY9LY$material3_release(enabled52, isError3, isFocused2);
                            ComposerKt.sourceInformationMarkerStart($composer2, -156971732, "CC(remember):TextFieldImpl.kt#9igjgp");
                            value$iv2 = $composer2.rememberedValue();
                            if (value$iv2 == Composer.INSTANCE.getEmpty()) {
                            }
                            State showPlaceholder$delegate22 = (State) value$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            $composer2.startReplaceGroup(-156965270);
                            ComposerKt.sourceInformation($composer2, "160@6765L362");
                            if (function211 == null) {
                            }
                        }
                    }
                    scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup == null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt.CommonDecorationBox.4
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

                            public final void invoke(Composer composer, int i22) {
                                TextFieldImplKt.CommonDecorationBox(type, value, function2, visualTransformation, function22, function221, function218, function216, function219, function220, function217, singleLine2, enabled4, isError2, interactionSource, contentPadding, colors, function29, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                            }
                        });
                        return;
                    }
                    return;
                }
                $dirty12 |= i10;
                $dirty1 = $dirty12;
                if ((306783379 & $dirty2) != 306783378) {
                    if (i12 == 0) {
                    }
                    if (i13 == 0) {
                    }
                    if (i2 == 0) {
                    }
                    if (i3 == 0) {
                    }
                    if (i4 == 0) {
                    }
                    if (i5 == 0) {
                    }
                    if (i6 == 0) {
                    }
                    if (i7 == 0) {
                    }
                    if (i8 == 0) {
                    }
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerStart($composer4, 318599163, "CC(remember):TextFieldImpl.kt#9igjgp");
                    invalid$iv = (($dirty2 & 112) != 32) | (($dirty2 & 7168) != 2048);
                    Object it$iv82 = $composer4.rememberedValue();
                    if (invalid$iv) {
                    }
                    value$iv = visualTransformation.filter(new AnnotatedString(str, null, null, 6, null));
                    $composer4.updateRememberedValue(value$iv);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    String transformedText22 = ((TransformedText) value$iv).getText().getText();
                    boolean isFocused22 = FocusInteractionKt.collectIsFocusedAsState(interactionSource, $composer4, ($dirty1 >> 12) & 14).getValue().booleanValue();
                    if (isFocused22) {
                    }
                    long labelColor22 = colors.m2939labelColorXeAY9LY$material3_release(enabled2, isError3, isFocused22);
                    Typography typography22 = MaterialTheme.INSTANCE.getTypography($composer4, 6);
                    TextStyle bodyLarge222 = typography22.getBodyLarge();
                    final TextStyle bodySmall222 = typography22.getBodySmall();
                    boolean enabled522 = enabled2;
                    if (Color.m4698equalsimpl0(bodyLarge222.m6958getColor0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU())) {
                    }
                }
                scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup == null) {
                }
            }
            $dirty12 |= i11;
            if ((131072 & i) == 0) {
            }
            $dirty12 |= i10;
            $dirty1 = $dirty12;
            if ((306783379 & $dirty2) != 306783378) {
            }
            scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
            }
        }
        $dirty12 |= i9;
        if ((65536 & i) != 0) {
        }
        $dirty12 |= i11;
        if ((131072 & i) == 0) {
        }
        $dirty12 |= i10;
        $dirty1 = $dirty12;
        if ((306783379 & $dirty2) != 306783378) {
        }
        scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    private static final boolean CommonDecorationBox$lambda$15$lambda$7(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    private static final boolean CommonDecorationBox$lambda$15$lambda$9(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Decoration-3J-VO9M, reason: not valid java name */
    public static final void m3259Decoration3JVO9M(final long contentColor, final TextStyle textStyle, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Function2<? super Composer, ? super Integer, Unit> function22;
        Composer $composer2 = $composer.startRestartGroup(1208685580);
        ComposerKt.sourceInformation($composer2, "C(Decoration)P(1:c#ui.graphics.Color,2)298@12599L62:TextFieldImpl.kt#mqatfk");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(contentColor) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(textStyle) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function22 = function2;
            $dirty |= $composer2.changedInstance(function22) ? 256 : 128;
        } else {
            function22 = function2;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 147) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1208685580, $dirty2, -1, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:298)");
            }
            ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(contentColor, textStyle, function22, $composer2, ($dirty2 & 14) | ($dirty2 & 112) | ($dirty2 & 896));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$Decoration$1
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
                    TextFieldImplKt.m3259Decoration3JVO9M(contentColor, textStyle, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Decoration-Iv8Zu3U, reason: not valid java name */
    public static final void m3260DecorationIv8Zu3U(final long contentColor, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(660142980);
        ComposerKt.sourceInformation($composer2, "C(Decoration)P(1:c#ui.graphics.Color)303@12806L84:TextFieldImpl.kt#mqatfk");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(contentColor) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (($dirty & 19) == 18 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(660142980, $dirty, -1, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:303)");
            }
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(contentColor)), function2, $composer2, ProvidedValue.$stable | ($dirty & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$Decoration$2
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
                    TextFieldImplKt.m3260DecorationIv8Zu3U(contentColor, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final Modifier defaultErrorSemantics(Modifier $this$defaultErrorSemantics, boolean isError, final String defaultErrorMessage) {
        return isError ? SemanticsModifierKt.semantics$default($this$defaultErrorSemantics, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt.defaultErrorSemantics.1
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

    public static final Modifier textFieldBackground(Modifier $this$textFieldBackground, final ColorProducer color, final Shape shape) {
        return DrawModifierKt.drawWithCache($this$textFieldBackground, new Function1<CacheDrawScope, DrawResult>() { // from class: androidx.compose.material3.internal.TextFieldImplKt.textFieldBackground.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DrawResult invoke(CacheDrawScope $this$drawWithCache) {
                final Outline outline = shape.mo320createOutlinePq9zytI($this$drawWithCache.m4232getSizeNHjbRc(), $this$drawWithCache.getLayoutDirection(), $this$drawWithCache);
                final ColorProducer colorProducer = color;
                return $this$drawWithCache.onDrawBehind(new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt.textFieldBackground.1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                        invoke2(drawScope);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(DrawScope $this$onDrawBehind) {
                        OutlineKt.m4969drawOutlinewDX37Ww($this$onDrawBehind, outline, colorProducer.mo1802invoke0d7_KjU(), (60 & 4) != 0 ? 1.0f : 0.0f, (60 & 8) != 0 ? Fill.INSTANCE : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? DrawScope.INSTANCE.m5273getDefaultBlendMode0nO6VwU() : 0);
                    }
                });
            }
        });
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

    /* JADX INFO: renamed from: TextFieldTransitionScope-Jy8F4Js, reason: not valid java name */
    private static final void m3261TextFieldTransitionScopeJy8F4Js(InputPhase inputState, long focusedLabelTextStyleColor, long unfocusedLabelTextStyleColor, long labelColor, boolean showLabel, Function7<? super State<Float>, ? super State<Color>, ? super State<Color>, ? super State<Float>, ? super State<Float>, ? super Composer, ? super Integer, Unit> function7, Composer $composer, int $changed) {
        Transition $this$animateValue$iv$iv;
        String str;
        float f;
        InputPhase it;
        Object initialValue$iv$iv;
        float f2;
        Transition $this$animateValue$iv$iv2;
        String str2;
        float f3;
        InputPhase it2;
        Object initialValue$iv$iv2;
        float f4;
        InputPhase it3;
        Composer $composer2;
        float f5;
        Object initialValue$iv$iv3;
        InputPhase it4;
        InputPhase it5;
        Composer $composer3;
        Object value$iv$iv;
        Composer $composer4;
        Transition $this$animateValue$iv$iv3;
        InputPhase it6;
        TwoWayConverter typeConverter$iv;
        Composer $composer5;
        Object value$iv$iv2;
        Transition $this$animateValue$iv$iv4;
        ComposerKt.sourceInformationMarkerStart($composer, -1087703202, "CC(TextFieldTransitionScope)P(2,1:c#ui.graphics.Color,5:c#ui.graphics.Color,3:c#ui.graphics.Color,4)349@14528L59,352@14632L334,364@15016L1126,394@16193L363,406@16607L318,418@17028L197,424@17231L150:TextFieldImpl.kt#mqatfk");
        Transition transition = TransitionKt.updateTransition(inputState, "TextFieldInputState", $composer, ($changed & 14) | 48, 0);
        Function3 transitionSpec$iv = TextFieldImplKt$TextFieldTransitionScope$labelProgress$1.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
        TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
        int $changed$iv$iv = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
        ComposerKt.sourceInformationMarkerStart($composer, -142660079, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli");
        int $changed2 = ($changed$iv$iv >> 9) & 112;
        InputPhase it7 = (InputPhase) transition.getCurrentState();
        $composer.startReplaceGroup(-2036730335);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            $this$animateValue$iv$iv = transition;
            str = "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli";
            ComposerKt.traceEventStart(-2036730335, $changed2, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:356)");
        } else {
            $this$animateValue$iv$iv = transition;
            str = "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli";
        }
        float f6 = 0.0f;
        switch (WhenMappings.$EnumSwitchMapping$1[it7.ordinal()]) {
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
        $composer.endReplaceGroup();
        Object initialValue$iv$iv4 = Float.valueOf(f);
        int $changed3 = ($changed$iv$iv >> 9) & 112;
        InputPhase it8 = (InputPhase) $this$animateValue$iv$iv.getTargetState();
        $composer.startReplaceGroup(-2036730335);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            it = it8;
            initialValue$iv$iv = initialValue$iv$iv4;
            ComposerKt.traceEventStart(-2036730335, $changed3, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:356)");
        } else {
            it = it8;
            initialValue$iv$iv = initialValue$iv$iv4;
        }
        switch (WhenMappings.$EnumSwitchMapping$1[it.ordinal()]) {
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
        $composer.endReplaceGroup();
        Object targetValue$iv$iv = Float.valueOf(f2);
        String str3 = str;
        State labelProgress = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv, initialValue$iv$iv, targetValue$iv$iv, transitionSpec$iv.invoke($this$animateValue$iv$iv.getSegment(), $composer, Integer.valueOf(($changed$iv$iv >> 3) & 112)), vectorConverter, "LabelProgress", $composer, (($changed$iv$iv << 6) & 458752) | ($changed$iv$iv & 14) | (($changed$iv$iv << 9) & 57344));
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Function3 transitionSpec$iv2 = TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
        TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
        int $changed$iv$iv2 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
        ComposerKt.sourceInformationMarkerStart($composer, -142660079, str3);
        int $changed4 = ($changed$iv$iv2 >> 9) & 112;
        InputPhase it9 = (InputPhase) transition.getCurrentState();
        $composer.startReplaceGroup(1435837472);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            $this$animateValue$iv$iv2 = transition;
            str2 = str3;
            ComposerKt.traceEventStart(1435837472, $changed4, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:386)");
        } else {
            $this$animateValue$iv$iv2 = transition;
            str2 = str3;
        }
        switch (WhenMappings.$EnumSwitchMapping$1[it9.ordinal()]) {
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
        $composer.endReplaceGroup();
        Object initialValue$iv$iv5 = Float.valueOf(f3);
        int $changed5 = ($changed$iv$iv2 >> 9) & 112;
        InputPhase it10 = (InputPhase) $this$animateValue$iv$iv2.getTargetState();
        $composer.startReplaceGroup(1435837472);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            it2 = it10;
            initialValue$iv$iv2 = initialValue$iv$iv5;
            ComposerKt.traceEventStart(1435837472, $changed5, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:386)");
        } else {
            it2 = it10;
            initialValue$iv$iv2 = initialValue$iv$iv5;
        }
        switch (WhenMappings.$EnumSwitchMapping$1[it2.ordinal()]) {
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
        $composer.endReplaceGroup();
        Object targetValue$iv$iv2 = Float.valueOf(f4);
        String str4 = str2;
        State placeholderOpacity = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv2, initialValue$iv$iv2, targetValue$iv$iv2, transitionSpec$iv2.invoke($this$animateValue$iv$iv2.getSegment(), $composer, Integer.valueOf(($changed$iv$iv2 >> 3) & 112)), vectorConverter2, "PlaceholderOpacity", $composer, ($changed$iv$iv2 & 14) | (($changed$iv$iv2 << 9) & 57344) | (($changed$iv$iv2 << 6) & 458752));
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Function3 transitionSpec$iv3 = TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, -1338768149, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli");
        TwoWayConverter<Float, AnimationVector1D> vectorConverter3 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
        int $changed$iv$iv3 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
        ComposerKt.sourceInformationMarkerStart($composer, -142660079, str4);
        int $changed6 = ($changed$iv$iv3 >> 9) & 112;
        InputPhase it11 = (InputPhase) transition.getCurrentState();
        $composer.startReplaceGroup(1128033978);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            it3 = it11;
            $composer2 = $composer;
            ComposerKt.traceEventStart(1128033978, $changed6, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:398)");
        } else {
            it3 = it11;
            $composer2 = $composer;
        }
        switch (WhenMappings.$EnumSwitchMapping$1[it3.ordinal()]) {
            case 1:
                f5 = 1.0f;
                break;
            case 2:
                f5 = !showLabel ? 1.0f : 0.0f;
                break;
            case 3:
                f5 = 1.0f;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer2.endReplaceGroup();
        Object initialValue$iv$iv6 = Float.valueOf(f5);
        int $changed7 = ($changed$iv$iv3 >> 9) & 112;
        InputPhase it12 = (InputPhase) transition.getTargetState();
        $composer.startReplaceGroup(1128033978);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            initialValue$iv$iv3 = initialValue$iv$iv6;
            it4 = it12;
            ComposerKt.traceEventStart(1128033978, $changed7, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:398)");
        } else {
            initialValue$iv$iv3 = initialValue$iv$iv6;
            it4 = it12;
        }
        switch (WhenMappings.$EnumSwitchMapping$1[it4.ordinal()]) {
            case 1:
                f6 = 1.0f;
                break;
            case 2:
                if (!showLabel) {
                    f6 = 1.0f;
                }
                break;
            case 3:
                f6 = 1.0f;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceGroup();
        Object targetValue$iv$iv3 = Float.valueOf(f6);
        State prefixSuffixOpacity = TransitionKt.createTransitionAnimation(transition, initialValue$iv$iv3, targetValue$iv$iv3, transitionSpec$iv3.invoke(transition.getSegment(), $composer, Integer.valueOf(($changed$iv$iv3 >> 3) & 112)), vectorConverter3, "PrefixSuffixOpacity", $composer, ($changed$iv$iv3 & 14) | (($changed$iv$iv3 << 9) & 57344) | (($changed$iv$iv3 << 6) & 458752));
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Function3 transitionSpec$iv4 = TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
        Object targetState = transition.getTargetState();
        int $changed8 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
        InputPhase it13 = (InputPhase) targetState;
        $composer.startReplaceGroup(-107432127);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            it5 = it13;
            $composer3 = $composer;
            ComposerKt.traceEventStart(-107432127, $changed8, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:410)");
        } else {
            it5 = it13;
            $composer3 = $composer;
        }
        long j = WhenMappings.$EnumSwitchMapping$1[it5.ordinal()] == 1 ? focusedLabelTextStyleColor : unfocusedLabelTextStyleColor;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer3.endReplaceGroup();
        ColorSpace colorSpace$iv = Color.m4701getColorSpaceimpl(j);
        ComposerKt.sourceInformationMarkerStart($composer, 1918408083, "CC(remember):Transition.kt#9igjgp");
        boolean invalid$iv$iv = $composer.changed(colorSpace$iv);
        Object it$iv$iv = $composer.rememberedValue();
        if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
            value$iv$iv = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv);
            $composer.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        TwoWayConverter typeConverter$iv2 = (TwoWayConverter) value$iv$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        int $changed$iv$iv4 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
        ComposerKt.sourceInformationMarkerStart($composer, -142660079, str4);
        int $changed9 = ($changed$iv$iv4 >> 9) & 112;
        InputPhase it14 = (InputPhase) transition.getCurrentState();
        $composer.startReplaceGroup(-107432127);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            $composer4 = $composer;
            $this$animateValue$iv$iv3 = transition;
            ComposerKt.traceEventStart(-107432127, $changed9, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:410)");
        } else {
            $composer4 = $composer;
            $this$animateValue$iv$iv3 = transition;
        }
        long j2 = WhenMappings.$EnumSwitchMapping$1[it14.ordinal()] == 1 ? focusedLabelTextStyleColor : unfocusedLabelTextStyleColor;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer4.endReplaceGroup();
        Object initialValue$iv$iv7 = Color.m4687boximpl(j2);
        int $changed10 = ($changed$iv$iv4 >> 9) & 112;
        InputPhase it15 = (InputPhase) $this$animateValue$iv$iv3.getTargetState();
        $composer.startReplaceGroup(-107432127);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            it6 = it15;
            typeConverter$iv = typeConverter$iv2;
            ComposerKt.traceEventStart(-107432127, $changed10, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:410)");
        } else {
            it6 = it15;
            typeConverter$iv = typeConverter$iv2;
        }
        long j3 = WhenMappings.$EnumSwitchMapping$1[it6.ordinal()] == 1 ? focusedLabelTextStyleColor : unfocusedLabelTextStyleColor;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceGroup();
        Object targetValue$iv$iv4 = Color.m4687boximpl(j3);
        State labelTextStyleColor = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv3, initialValue$iv$iv7, targetValue$iv$iv4, transitionSpec$iv4.invoke($this$animateValue$iv$iv3.getSegment(), $composer, Integer.valueOf(($changed$iv$iv4 >> 3) & 112)), typeConverter$iv, "LabelTextStyleColor", $composer, ($changed$iv$iv4 & 14) | (($changed$iv$iv4 << 9) & 57344) | (($changed$iv$iv4 << 6) & 458752));
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Function3 transitionSpec$iv5 = TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, -1939694975, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
        Object targetState2 = transition.getTargetState();
        int $changed11 = (RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112;
        $composer.startReplaceGroup(1023351670);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            $composer5 = $composer;
            ComposerKt.traceEventStart(1023351670, $changed11, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:421)");
        } else {
            $composer5 = $composer;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer5.endReplaceGroup();
        ColorSpace colorSpace$iv2 = Color.m4701getColorSpaceimpl(labelColor);
        ComposerKt.sourceInformationMarkerStart($composer, 1918408083, "CC(remember):Transition.kt#9igjgp");
        boolean invalid$iv$iv2 = $composer.changed(colorSpace$iv2);
        Object it$iv$iv2 = $composer.rememberedValue();
        if (invalid$iv$iv2 || it$iv$iv2 == Composer.INSTANCE.getEmpty()) {
            value$iv$iv2 = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(colorSpace$iv2);
            $composer.updateRememberedValue(value$iv$iv2);
        } else {
            value$iv$iv2 = it$iv$iv2;
        }
        TwoWayConverter typeConverter$iv3 = (TwoWayConverter) value$iv$iv2;
        ComposerKt.sourceInformationMarkerEnd($composer);
        int $changed$iv$iv5 = (384 & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 896) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 7168) | ((RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 57344);
        ComposerKt.sourceInformationMarkerStart($composer, -142660079, str4);
        int $changed12 = ($changed$iv$iv5 >> 9) & 112;
        $composer.startReplaceGroup(1023351670);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            $this$animateValue$iv$iv4 = transition;
            ComposerKt.traceEventStart(1023351670, $changed12, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:421)");
        } else {
            $this$animateValue$iv$iv4 = transition;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceGroup();
        Object initialValue$iv$iv8 = Color.m4687boximpl(labelColor);
        int $changed13 = ($changed$iv$iv5 >> 9) & 112;
        $composer.startReplaceGroup(1023351670);
        ComposerKt.sourceInformation($composer, "C:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1023351670, $changed13, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:421)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceGroup();
        Object targetValue$iv$iv5 = Color.m4687boximpl(labelColor);
        State labelContentColor = TransitionKt.createTransitionAnimation($this$animateValue$iv$iv4, initialValue$iv$iv8, targetValue$iv$iv5, transitionSpec$iv5.invoke($this$animateValue$iv$iv4.getSegment(), $composer, Integer.valueOf(($changed$iv$iv5 >> 3) & 112)), typeConverter$iv3, "LabelContentColor", $composer, (($changed$iv$iv5 << 6) & 458752) | ($changed$iv$iv5 & 14) | (($changed$iv$iv5 << 9) & 57344));
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        function7.invoke(labelProgress, labelTextStyleColor, labelContentColor, placeholderOpacity, prefixSuffixOpacity, $composer, Integer.valueOf($changed & 458752));
        ComposerKt.sourceInformationMarkerEnd($composer);
    }

    /* JADX INFO: renamed from: animateBorderStrokeAsState-NuRrP5Q, reason: not valid java name */
    public static final State<BorderStroke> m3264animateBorderStrokeAsStateNuRrP5Q(boolean enabled, boolean isError, boolean focused, TextFieldColors colors, float focusedBorderThickness, float unfocusedBorderThickness, Composer $composer, int $changed) {
        int i;
        State<Color> stateRememberUpdatedState;
        State<Dp> stateRememberUpdatedState2;
        Composer composer = $composer;
        ComposerKt.sourceInformationMarkerStart(composer, 2047013045, "C(animateBorderStrokeAsState)P(1,4,2!1,3:c#ui.unit.Dp,5:c#ui.unit.Dp)458@18252L73:TextFieldImpl.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2047013045, $changed, -1, "androidx.compose.material3.internal.animateBorderStrokeAsState (TextFieldImpl.kt:441)");
        }
        long targetColor = colors.m2938indicatorColorXeAY9LY$material3_release(enabled, isError, focused);
        if (enabled) {
            composer.startReplaceGroup(1023053998);
            ComposerKt.sourceInformation(composer, "445@17754L84");
            i = 0;
            stateRememberUpdatedState = SingleValueAnimationKt.m134animateColorAsStateeuL9pac(targetColor, AnimationSpecKt.tween$default(150, 0, null, 6, null), null, null, $composer, 48, 12);
            composer = $composer;
            composer.endReplaceGroup();
        } else {
            i = 0;
            composer.startReplaceGroup(1023165505);
            ComposerKt.sourceInformation(composer, "447@17868L33");
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m4687boximpl(targetColor), composer, 0);
            composer.endReplaceGroup();
        }
        State<Color> state = stateRememberUpdatedState;
        if (enabled) {
            composer.startReplaceGroup(1023269417);
            ComposerKt.sourceInformation(composer, "453@18068L85");
            float targetThickness = focused ? focusedBorderThickness : unfocusedBorderThickness;
            stateRememberUpdatedState2 = AnimateAsStateKt.m161animateDpAsStateAjpBEmI(targetThickness, AnimationSpecKt.tween$default(150, i, null, 6, null), null, null, composer, 48, 12);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1023478388);
            ComposerKt.sourceInformation(composer, "455@18183L46");
            stateRememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(Dp.m7503boximpl(unfocusedBorderThickness), composer, ($changed >> 15) & 14);
            composer.endReplaceGroup();
        }
        State<BorderStroke> stateRememberUpdatedState3 = SnapshotStateKt.rememberUpdatedState(BorderStrokeKt.m290BorderStrokecXLIe8U(stateRememberUpdatedState2.getValue().m7519unboximpl(), state.getValue().m4707unboximpl()), composer, i);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return stateRememberUpdatedState3;
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

    public static final float getSupportingTopPadding() {
        return SupportingTopPadding;
    }

    public static final float getPrefixSuffixTextPadding() {
        return PrefixSuffixTextPadding;
    }

    public static final float getMinTextLineHeight() {
        return MinTextLineHeight;
    }

    public static final float getMinFocusedLabelLineHeight() {
        return MinFocusedLabelLineHeight;
    }

    public static final float getMinSupportingTextLineHeight() {
        return MinSupportingTextLineHeight;
    }

    public static final Modifier getIconDefaultSizeModifier() {
        return IconDefaultSizeModifier;
    }
}
