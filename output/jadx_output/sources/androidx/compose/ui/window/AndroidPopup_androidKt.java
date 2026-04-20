package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidPopup.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000n\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aR\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u000bH\u0007¢\u0006\u0004\b\f\u0010\r\u001aD\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u000bH\u0007¢\u0006\u0002\u0010\u0010\u001a \u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0002\u001a(\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u001b2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u000bH\u0001¢\u0006\u0002\u0010\"\u001a+\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020%2\u0013\b\b\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u000bH\u0083\b¢\u0006\u0002\u0010&\u001a\f\u0010'\u001a\u00020\u0015*\u00020(H\u0000\u001a\u0014\u0010)\u001a\u00020\u0012*\u00020\t2\u0006\u0010*\u001a\u00020\u0015H\u0002\u001a\f\u0010+\u001a\u00020,*\u00020-H\u0002\u001a\u001c\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u00020(2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u001bH\u0007\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000\"\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u001aX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001d¨\u00061²\u0006\u0015\u00102\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u000bX\u008a\u0084\u0002"}, d2 = {"Popup", "", "alignment", "Landroidx/compose/ui/Alignment;", "offset", "Landroidx/compose/ui/unit/IntOffset;", "onDismissRequest", "Lkotlin/Function0;", "properties", "Landroidx/compose/ui/window/PopupProperties;", "content", "Landroidx/compose/runtime/Composable;", "Popup-K5zGePQ", "(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "popupPositionProvider", "Landroidx/compose/ui/window/PopupPositionProvider;", "(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "PopupPropertiesBaseFlags", "", "createFlags", "focusable", "", "securePolicy", "Landroidx/compose/ui/window/SecureFlagPolicy;", "clippingEnabled", "LocalPopupTestTag", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "", "getLocalPopupTestTag", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "LocalIsInPopupLayout", "getLocalIsInPopupLayout", "PopupTestTag", "tag", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "SimpleStack", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "isFlagSecureEnabled", "Landroid/view/View;", "flagsWithSecureFlagInherited", "isParentFlagSecureEnabled", "toIntBounds", "Landroidx/compose/ui/unit/IntRect;", "Landroid/graphics/Rect;", "isPopupLayout", "view", "testTag", "ui", "currentContent"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AndroidPopup_androidKt {
    private static final int PopupPropertiesBaseFlags = 262144;
    private static final ProvidableCompositionLocal<String> LocalPopupTestTag = CompositionLocalKt.compositionLocalOf$default(null, new Function0<String>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$LocalPopupTestTag$1
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return "DEFAULT_TEST_TAG";
        }
    }, 1, null);
    private static final ProvidableCompositionLocal<Boolean> LocalIsInPopupLayout = CompositionLocalKt.compositionLocalOf$default(null, new Function0<Boolean>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$LocalIsInPopupLayout$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return false;
        }
    }, 1, null);

    /* JADX INFO: renamed from: Popup-K5zGePQ, reason: not valid java name */
    public static final void m7757PopupK5zGePQ(Alignment alignment, long j, Function0<Unit> function0, PopupProperties properties, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Alignment alignment2;
        long j2;
        Function0<Unit> function02;
        PopupProperties popupProperties;
        Function2<? super Composer, ? super Integer, Unit> function22;
        Alignment alignment3;
        final Function0<Unit> function03;
        final PopupProperties properties2;
        Composer $composer2 = $composer.startRestartGroup(71005054);
        ComposerKt.sourceInformation($composer2, "C(Popup)P(!1,2:c#ui.unit.IntOffset,3,4)271@12454L82,273@12542L166:AndroidPopup.android.kt#2oxthz");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            alignment2 = alignment;
        } else if (($changed & 6) == 0) {
            alignment2 = alignment;
            $dirty |= $composer2.changed(alignment2) ? 4 : 2;
        } else {
            alignment2 = alignment;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            j2 = j;
        } else if (($changed & 48) == 0) {
            j2 = j;
            $dirty |= $composer2.changed(j2) ? 32 : 16;
        } else {
            j2 = j;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function02 = function0;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function02 = function0;
            $dirty |= $composer2.changedInstance(function02) ? 256 : 128;
        } else {
            function02 = function0;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            popupProperties = properties;
        } else if (($changed & 3072) == 0) {
            popupProperties = properties;
            $dirty |= $composer2.changed(popupProperties) ? 2048 : 1024;
        } else {
            popupProperties = properties;
        }
        if (($changed & 24576) == 0) {
            function22 = function2;
            $dirty |= $composer2.changedInstance(function22) ? 16384 : 8192;
        } else {
            function22 = function2;
        }
        if ($composer2.shouldExecute(($dirty & 9363) != 9362, $dirty & 1)) {
            alignment3 = i2 != 0 ? Alignment.INSTANCE.getTopStart() : alignment2;
            long jM7627constructorimpl = i3 != 0 ? IntOffset.m7627constructorimpl((((long) 0) << 32) | (((long) 0) & 4294967295L)) : j2;
            Function0<Unit> function04 = i4 != 0 ? null : function02;
            PopupProperties properties3 = i5 != 0 ? new PopupProperties(false, false, false, false, 15, (DefaultConstructorMarker) null) : popupProperties;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(71005054, $dirty, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:269)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, -483613200, "CC(remember):AndroidPopup.android.kt#9igjgp");
            boolean invalid$iv = (($dirty & 14) == 4) | (($dirty & 112) == 32);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new AlignmentOffsetPositionProvider(alignment3, jM7627constructorimpl, null);
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            AlignmentOffsetPositionProvider popupPositioner = (AlignmentOffsetPositionProvider) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Popup(popupPositioner, function04, properties3, function22, $composer2, (($dirty >> 3) & 112) | (($dirty >> 3) & 896) | (($dirty >> 3) & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            function03 = function04;
            j2 = jM7627constructorimpl;
            properties2 = properties3;
        } else {
            $composer2.skipToGroupEnd();
            alignment3 = alignment2;
            function03 = function02;
            properties2 = popupProperties;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final long j3 = j2;
            final Alignment alignment4 = alignment3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt.Popup.1
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

                public final void invoke(Composer composer, int i6) {
                    AndroidPopup_androidKt.m7757PopupK5zGePQ(alignment4, j3, function03, properties2, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void Popup(final PopupPositionProvider popupPositionProvider, Function0<Unit> function0, PopupProperties properties, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Function0<Unit> function02;
        PopupProperties popupProperties;
        final Function0<Unit> function03;
        final PopupProperties properties2;
        final Function0<Unit> function04;
        final PopupProperties properties3;
        int $dirty;
        Object it$iv;
        String testTag;
        boolean z;
        final PopupLayout popupLayout;
        final PopupLayout popupLayout2;
        final LayoutDirection layoutDirection;
        boolean invalid$iv;
        Object it$iv2;
        boolean invalid$iv2;
        Object it$iv3;
        boolean invalid$iv3;
        Object it$iv4;
        boolean invalid$iv4;
        Modifier modifier;
        Function0<ComposeUiNode> function05;
        final PopupPositionProvider popupPositionProvider2 = popupPositionProvider;
        Composer $composer2 = $composer.startRestartGroup(-1772091631);
        ComposerKt.sourceInformation($composer2, "C(Popup)P(2,1,3)299@13430L7,300@13469L7,301@13513L7,302@13568L7,303@13604L28,304@13659L29,305@13724L21,305@13707L38,307@13875L7,308@13905L1203,338@15144L388,338@15114L418,353@15549L219,353@15538L230,362@15814L126,362@15774L166,374@16531L147,374@16503L175,387@16947L573,395@17528L99,384@16856L771:AndroidPopup.android.kt#2oxthz");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(popupPositionProvider2) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty2 |= 48;
            function02 = function0;
        } else if (($changed & 48) == 0) {
            function02 = function0;
            $dirty2 |= $composer2.changedInstance(function02) ? 32 : 16;
        } else {
            function02 = function0;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            popupProperties = properties;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            popupProperties = properties;
            $dirty2 |= $composer2.changed(popupProperties) ? 256 : 128;
        } else {
            popupProperties = properties;
        }
        if (($changed & 3072) == 0) {
            $dirty2 |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        if ($composer2.shouldExecute(($dirty2 & 1171) != 1170, $dirty2 & 1)) {
            if (i2 != 0) {
                function04 = null;
            } else {
                function04 = function02;
            }
            if (i3 == 0) {
                properties3 = popupProperties;
            } else {
                properties3 = new PopupProperties(false, false, false, false, 15, (DefaultConstructorMarker) null);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1772091631, $dirty2, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:298)");
            }
            ProvidableCompositionLocal<View> localView = AndroidCompositionLocals_androidKt.getLocalView();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localView);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            View view = (View) objConsume;
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer2.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Density density = (Density) objConsume2;
            ProvidableCompositionLocal<String> providableCompositionLocal = LocalPopupTestTag;
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer2.consume(providableCompositionLocal);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            String testTag2 = (String) objConsume3;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume4 = $composer2.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final LayoutDirection layoutDirection2 = (LayoutDirection) objConsume4;
            CompositionContext parentComposition = ComposablesKt.rememberCompositionContext($composer2, 0);
            final State currentContent$delegate = SnapshotStateKt.rememberUpdatedState(function2, $composer2, ($dirty2 >> 9) & 14);
            Object[] objArr = new Object[0];
            ComposerKt.sourceInformationMarkerStart($composer2, 2121974854, "CC(remember):AndroidPopup.android.kt#9igjgp");
            Object it$iv5 = $composer2.rememberedValue();
            if (it$iv5 == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function0) new Function0<UUID>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupId$1$1
                    @Override // kotlin.jvm.functions.Function0
                    public final UUID invoke() {
                        return UUID.randomUUID();
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv5 = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            UUID popupId = (UUID) RememberSaveableKt.rememberSaveable(objArr, (Function0) it$iv5, $composer2, 48);
            ProvidableCompositionLocal<Boolean> providableCompositionLocal2 = LocalIsInPopupLayout;
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume5 = $composer2.consume(providableCompositionLocal2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            boolean isCurrentlyInPopupLayout = ((Boolean) objConsume5).booleanValue();
            ComposerKt.sourceInformationMarkerStart($composer2, 2121981828, "CC(remember):AndroidPopup.android.kt#9igjgp");
            Object it$iv6 = $composer2.rememberedValue();
            if (it$iv6 == Composer.INSTANCE.getEmpty()) {
                $dirty = $dirty2;
                testTag = testTag2;
                final PopupLayout $this$Popup_u24lambda_u242_u240 = new PopupLayout(function04, properties3, testTag, view, density, popupPositionProvider2, popupId, isCurrentlyInPopupLayout, null, 256, null);
                popupPositionProvider2 = popupPositionProvider2;
                z = true;
                $this$Popup_u24lambda_u242_u240.setContent(parentComposition, ComposableLambdaKt.composableLambdaInstance(-297523940, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1
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
                        ComposerKt.sourceInformation($composer3, "C321@14454L616,321@14393L677:AndroidPopup.android.kt#2oxthz");
                        if (!$composer3.shouldExecute(($changed2 & 3) != 2, $changed2 & 1)) {
                            $composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-297523940, $changed2, -1, "androidx.compose.ui.window.Popup.<anonymous>.<anonymous>.<anonymous> (AndroidPopup.android.kt:321)");
                        }
                        ProvidedValue<Boolean> providedValueProvides = AndroidPopup_androidKt.getLocalIsInPopupLayout().provides(true);
                        final PopupLayout popupLayout3 = $this$Popup_u24lambda_u242_u240;
                        final State<Function2<Composer, Integer, Unit>> state = currentContent$delegate;
                        CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.rememberComposableLambda(1022273628, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1.1
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
                                Function0<ComposeUiNode> function06;
                                ComposerKt.sourceInformation($composer4, "C323@14540L16,325@14667L146,322@14480L568:AndroidPopup.android.kt#2oxthz");
                                if (!$composer4.shouldExecute(($changed3 & 3) != 2, $changed3 & 1)) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1022273628, $changed3, -1, "androidx.compose.ui.window.Popup.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidPopup.android.kt:322)");
                                }
                                Modifier.Companion companion = Modifier.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer4, -1142551508, "CC(remember):AndroidPopup.android.kt#9igjgp");
                                Object it$iv7 = $composer4.rememberedValue();
                                if (it$iv7 == Composer.INSTANCE.getEmpty()) {
                                    Object value$iv2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                            invoke2(semanticsPropertyReceiver);
                                            return Unit.INSTANCE;
                                        }

                                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                            SemanticsPropertiesKt.popup($this$semantics);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv2);
                                    it$iv7 = value$iv2;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (Function1) it$iv7, 1, null);
                                ComposerKt.sourceInformationMarkerStart($composer4, -1142547314, "CC(remember):AndroidPopup.android.kt#9igjgp");
                                boolean invalid$iv5 = $composer4.changedInstance(popupLayout3);
                                final PopupLayout popupLayout4 = popupLayout3;
                                Object it$iv8 = $composer4.rememberedValue();
                                if (invalid$iv5 || it$iv8 == Composer.INSTANCE.getEmpty()) {
                                    Object value$iv3 = (Function1) new Function1<IntSize, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                                            m7758invokeozmzZPI(intSize.m7680unboximpl());
                                            return Unit.INSTANCE;
                                        }

                                        /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
                                        public final void m7758invokeozmzZPI(long j) {
                                            popupLayout4.m7761setPopupContentSizefhxjrPA(IntSize.m7668boximpl(j));
                                            popupLayout4.updatePosition();
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv3);
                                    it$iv8 = value$iv3;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                Modifier modifier$iv = AlphaKt.alpha(OnRemeasuredModifierKt.onSizeChanged(modifierSemantics$default, (Function1) it$iv8), popupLayout3.getCanCalculatePosition() ? 1.0f : 0.0f);
                                Function2 content$iv = AndroidPopup_androidKt.Popup$lambda$0(state);
                                ComposerKt.sourceInformationMarkerStart($composer4, 26279861, "CC(SimpleStack)P(1)449@19649L899,449@19602L946:AndroidPopup.android.kt#2oxthz");
                                ComposerKt.sourceInformationMarkerStart($composer4, -514852264, "CC(remember):AndroidPopup.android.kt#9igjgp");
                                Object it$iv$iv = $composer4.rememberedValue();
                                if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                                    Object value$iv$iv = (MeasurePolicy) AndroidPopup_androidKt$SimpleStack$1$1.INSTANCE;
                                    $composer4.updateRememberedValue(value$iv$iv);
                                    it$iv$iv = value$iv$iv;
                                }
                                MeasurePolicy measurePolicy$iv$iv = (MeasurePolicy) it$iv$iv;
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                int $changed$iv$iv = ((0 >> 3) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((0 << 3) & 112);
                                ComposerKt.sourceInformationMarkerStart($composer4, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer4, 0));
                                CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                                Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                                if (!($composer4.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                    function06 = constructor;
                                    $composer4.createNode(function06);
                                } else {
                                    function06 = constructor;
                                    $composer4.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                                Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                content$iv.invoke($composer4, Integer.valueOf(($changed$iv$iv$iv >> 6) & 14));
                                $composer4.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, $composer3, 54), $composer3, ProvidedValue.$stable | 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }));
                $composer2.updateRememberedValue($this$Popup_u24lambda_u242_u240);
                it$iv = $this$Popup_u24lambda_u242_u240;
            } else {
                $dirty = $dirty2;
                it$iv = it$iv6;
                testTag = testTag2;
                z = true;
            }
            final PopupLayout popupLayout3 = (PopupLayout) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 2122020661, "CC(remember):AndroidPopup.android.kt#9igjgp");
            int $dirty3 = $dirty;
            boolean invalid$iv5 = $composer2.changedInstance(popupLayout3) | (($dirty3 & 112) == 32 ? z : false) | (($dirty3 & 896) == 256) | $composer2.changed(testTag) | $composer2.changed(layoutDirection2.ordinal());
            Object it$iv7 = $composer2.rememberedValue();
            if (invalid$iv5 || it$iv7 == Composer.INSTANCE.getEmpty()) {
                final String testTag3 = testTag;
                Object value$iv2 = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final DisposableEffectResult invoke(DisposableEffectScope $this$DisposableEffect) {
                        popupLayout3.show();
                        popupLayout3.updateParameters(function04, properties3, testTag3, layoutDirection2);
                        final PopupLayout popupLayout4 = popupLayout3;
                        return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                popupLayout4.disposeComposition();
                                popupLayout4.dismiss();
                            }
                        };
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
                it$iv7 = value$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.DisposableEffect(popupLayout3, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv7, $composer2, 0);
            ComposerKt.sourceInformationMarkerStart($composer2, 2122033452, "CC(remember):AndroidPopup.android.kt#9igjgp");
            boolean invalid$iv6 = $composer2.changedInstance(popupLayout3) | (($dirty3 & 112) == 32) | (($dirty3 & 896) == 256) | $composer2.changed(testTag) | $composer2.changed(layoutDirection2.ordinal());
            Object it$iv8 = $composer2.rememberedValue();
            if (!invalid$iv6) {
                popupLayout = popupLayout3;
                if (it$iv8 != Composer.INSTANCE.getEmpty()) {
                    popupLayout2 = popupLayout;
                    layoutDirection = layoutDirection2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.SideEffect((Function0) it$iv8, $composer2, 0);
                ComposerKt.sourceInformationMarkerStart($composer2, 2122041839, "CC(remember):AndroidPopup.android.kt#9igjgp");
                invalid$iv = $composer2.changedInstance(popupLayout2) | (($dirty3 & 14) != 4);
                it$iv2 = $composer2.rememberedValue();
                if (!invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv3 = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final DisposableEffectResult invoke(DisposableEffectScope $this$DisposableEffect) {
                            popupLayout2.setPositionProvider(popupPositionProvider2);
                            popupLayout2.updatePosition();
                            return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public void dispose() {
                                }
                            };
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                    it$iv2 = value$iv3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.DisposableEffect(popupPositionProvider2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv2, $composer2, $dirty3 & 14);
                ComposerKt.sourceInformationMarkerStart($composer2, 2122064804, "CC(remember):AndroidPopup.android.kt#9igjgp");
                invalid$iv2 = $composer2.changedInstance(popupLayout2);
                it$iv3 = $composer2.rememberedValue();
                if (!invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv4 = (Function2) new AndroidPopup_androidKt$Popup$5$1(popupLayout2, null);
                    $composer2.updateRememberedValue(value$iv4);
                    it$iv3 = value$iv4;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(popupLayout2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) it$iv3, $composer2, 0);
                Modifier.Companion companion = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer2, 2122078542, "CC(remember):AndroidPopup.android.kt#9igjgp");
                invalid$iv3 = $composer2.changedInstance(popupLayout2);
                it$iv4 = $composer2.rememberedValue();
                if (!invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv5 = (Function1) new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$7$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                            invoke2(layoutCoordinates);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(LayoutCoordinates childCoordinates) {
                            LayoutCoordinates parentCoordinates = childCoordinates.getParentLayoutCoordinates();
                            Intrinsics.checkNotNull(parentCoordinates);
                            popupLayout2.updateParentLayoutCoordinates(parentCoordinates);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv5);
                    it$iv4 = value$iv5;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifierOnGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(companion, (Function1) it$iv4);
                ComposerKt.sourceInformationMarkerStart($composer2, 2122096660, "CC(remember):AndroidPopup.android.kt#9igjgp");
                invalid$iv4 = $composer2.changedInstance(popupLayout2) | $composer2.changed(layoutDirection.ordinal());
                Object it$iv9 = $composer2.rememberedValue();
                if (invalid$iv4) {
                    modifier = modifierOnGloballyPositioned;
                    if (it$iv9 == Composer.INSTANCE.getEmpty()) {
                    }
                    MeasurePolicy measurePolicy$iv = (MeasurePolicy) it$iv9;
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    Modifier modifier$iv = modifier;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int compositeKeyHash$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                    CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
                    Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv = ((0 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!($composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer2.startReusableNode();
                    if ($composer2.getInserting()) {
                        function05 = constructor;
                        $composer2.createNode(function05);
                    } else {
                        function05 = constructor;
                        $composer2.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer2);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl($this$Layout_u24lambda_u240$iv, Integer.valueOf(compositeKeyHash$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                    int i4 = ($changed$iv$iv >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, -958253783, "C:AndroidPopup.android.kt#2oxthz");
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    function03 = function04;
                    properties2 = properties3;
                } else {
                    modifier = modifierOnGloballyPositioned;
                }
                Object value$iv6 = (MeasurePolicy) new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo41measure3p2s80s(MeasureScope $this$Layout, List<? extends Measurable> list, long j) {
                        popupLayout2.setParentLayoutDirection(layoutDirection);
                        return MeasureScope.layout$default($this$Layout, 0, 0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope $this$layout) {
                            }
                        }, 4, null);
                    }
                };
                $composer2.updateRememberedValue(value$iv6);
                it$iv9 = value$iv6;
                MeasurePolicy measurePolicy$iv2 = (MeasurePolicy) it$iv9;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifier$iv2 = modifier;
                ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int compositeKeyHash$iv2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                CompositionLocalMap localMap$iv2 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv2 = ComposedModifierKt.materializeModifier($composer2, modifier$iv2);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv2 = ((0 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                Composer $this$Layout_u24lambda_u240$iv2 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv2, localMap$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl($this$Layout_u24lambda_u240$iv2, Integer.valueOf(compositeKeyHash$iv2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv2, materialized$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                int i42 = ($changed$iv$iv2 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -958253783, "C:AndroidPopup.android.kt#2oxthz");
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                }
                function03 = function04;
                properties2 = properties3;
            } else {
                popupLayout = popupLayout3;
            }
            final String testTag4 = testTag;
            popupLayout2 = popupLayout;
            layoutDirection = layoutDirection2;
            Object value$iv7 = (Function0) new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$3$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    popupLayout.updateParameters(function04, properties3, testTag4, layoutDirection2);
                }
            };
            $composer2.updateRememberedValue(value$iv7);
            it$iv8 = value$iv7;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.SideEffect((Function0) it$iv8, $composer2, 0);
            ComposerKt.sourceInformationMarkerStart($composer2, 2122041839, "CC(remember):AndroidPopup.android.kt#9igjgp");
            invalid$iv = $composer2.changedInstance(popupLayout2) | (($dirty3 & 14) != 4);
            it$iv2 = $composer2.rememberedValue();
            if (!invalid$iv) {
            }
            Object value$iv32 = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DisposableEffectResult invoke(DisposableEffectScope $this$DisposableEffect) {
                    popupLayout2.setPositionProvider(popupPositionProvider2);
                    popupLayout2.updatePosition();
                    return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                        }
                    };
                }
            };
            $composer2.updateRememberedValue(value$iv32);
            it$iv2 = value$iv32;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.DisposableEffect(popupPositionProvider2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv2, $composer2, $dirty3 & 14);
            ComposerKt.sourceInformationMarkerStart($composer2, 2122064804, "CC(remember):AndroidPopup.android.kt#9igjgp");
            invalid$iv2 = $composer2.changedInstance(popupLayout2);
            it$iv3 = $composer2.rememberedValue();
            if (!invalid$iv2) {
                Object value$iv42 = (Function2) new AndroidPopup_androidKt$Popup$5$1(popupLayout2, null);
                $composer2.updateRememberedValue(value$iv42);
                it$iv3 = value$iv42;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(popupLayout2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) it$iv3, $composer2, 0);
                Modifier.Companion companion2 = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer2, 2122078542, "CC(remember):AndroidPopup.android.kt#9igjgp");
                invalid$iv3 = $composer2.changedInstance(popupLayout2);
                it$iv4 = $composer2.rememberedValue();
                if (!invalid$iv3) {
                }
                Object value$iv52 = (Function1) new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$7$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                        invoke2(layoutCoordinates);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(LayoutCoordinates childCoordinates) {
                        LayoutCoordinates parentCoordinates = childCoordinates.getParentLayoutCoordinates();
                        Intrinsics.checkNotNull(parentCoordinates);
                        popupLayout2.updateParentLayoutCoordinates(parentCoordinates);
                    }
                };
                $composer2.updateRememberedValue(value$iv52);
                it$iv4 = value$iv52;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifierOnGloballyPositioned2 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (Function1) it$iv4);
                ComposerKt.sourceInformationMarkerStart($composer2, 2122096660, "CC(remember):AndroidPopup.android.kt#9igjgp");
                invalid$iv4 = $composer2.changedInstance(popupLayout2) | $composer2.changed(layoutDirection.ordinal());
                Object it$iv92 = $composer2.rememberedValue();
                if (invalid$iv4) {
                }
                Object value$iv62 = (MeasurePolicy) new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo41measure3p2s80s(MeasureScope $this$Layout, List<? extends Measurable> list, long j) {
                        popupLayout2.setParentLayoutDirection(layoutDirection);
                        return MeasureScope.layout$default($this$Layout, 0, 0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope $this$layout) {
                            }
                        }, 4, null);
                    }
                };
                $composer2.updateRememberedValue(value$iv62);
                it$iv92 = value$iv62;
                MeasurePolicy measurePolicy$iv22 = (MeasurePolicy) it$iv92;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifier$iv22 = modifier;
                ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int compositeKeyHash$iv22 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                CompositionLocalMap localMap$iv22 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv22 = ComposedModifierKt.materializeModifier($composer2, modifier$iv22);
                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv22 = ((0 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                Composer $this$Layout_u24lambda_u240$iv22 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv22, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv22, localMap$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl($this$Layout_u24lambda_u240$iv22, Integer.valueOf(compositeKeyHash$iv22), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv22, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv22, materialized$iv22, ComposeUiNode.INSTANCE.getSetModifier());
                int i422 = ($changed$iv$iv22 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -958253783, "C:AndroidPopup.android.kt#2oxthz");
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                }
                function03 = function04;
                properties2 = properties3;
            }
        } else {
            $composer2.skipToGroupEnd();
            function03 = function02;
            properties2 = popupProperties;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt.Popup.9
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

                public final void invoke(Composer composer, int i5) {
                    AndroidPopup_androidKt.Popup(popupPositionProvider, function03, properties2, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function2<Composer, Integer, Unit> Popup$lambda$0(State<? extends Function2<? super Composer, ? super Integer, Unit>> state) {
        Object thisObj$iv = state.getValue();
        return (Function2) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int createFlags(boolean focusable, SecureFlagPolicy securePolicy, boolean clippingEnabled) {
        int flags = 262144;
        if (!focusable) {
            flags = 262144 | 8;
        }
        if (securePolicy == SecureFlagPolicy.SecureOn) {
            flags |= 8192;
        }
        if (!clippingEnabled) {
            return flags | 512;
        }
        return flags;
    }

    public static final ProvidableCompositionLocal<String> getLocalPopupTestTag() {
        return LocalPopupTestTag;
    }

    public static final ProvidableCompositionLocal<Boolean> getLocalIsInPopupLayout() {
        return LocalIsInPopupLayout;
    }

    public static final void PopupTestTag(final String tag, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1357513789);
        ComposerKt.sourceInformation($composer2, "C(PopupTestTag)P(1)441@19264L75:AndroidPopup.android.kt#2oxthz");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(tag) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (!$composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1357513789, $dirty, -1, "androidx.compose.ui.window.PopupTestTag (AndroidPopup.android.kt:440)");
            }
            CompositionLocalKt.CompositionLocalProvider(LocalPopupTestTag.provides(tag), function2, $composer2, ProvidedValue.$stable | ($dirty & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt.PopupTestTag.1
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
                    AndroidPopup_androidKt.PopupTestTag(tag, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    private static final void SimpleStack(Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, 26279861, "CC(SimpleStack)P(1)449@19649L899,449@19602L946:AndroidPopup.android.kt#2oxthz");
        ComposerKt.sourceInformationMarkerStart($composer, -514852264, "CC(remember):AndroidPopup.android.kt#9igjgp");
        Object it$iv = $composer.rememberedValue();
        if (it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = (MeasurePolicy) AndroidPopup_androidKt$SimpleStack$1$1.INSTANCE;
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        MeasurePolicy measurePolicy$iv = (MeasurePolicy) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        int $changed$iv = (($changed >> 3) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | (($changed << 3) & 112);
        ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
        int compositeKeyHash$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
        CompositionLocalMap localMap$iv = $composer.getCurrentCompositionLocalMap();
        Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer, modifier);
        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
        int $changed$iv$iv = (($changed$iv << 6) & 896) | 6;
        ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
        if (!($composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        $composer.startReusableNode();
        if ($composer.getInserting()) {
            $composer.createNode(constructor);
        } else {
            $composer.useNode();
        }
        Composer $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer);
        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Updater.m3971initimpl($this$Layout_u24lambda_u240$iv, Integer.valueOf(compositeKeyHash$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
        Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
        function2.invoke($composer, Integer.valueOf(($changed$iv$iv >> 6) & 14));
        $composer.endNode();
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
    }

    public static final boolean isFlagSecureEnabled(View $this$isFlagSecureEnabled) {
        ViewGroup.LayoutParams layoutParams = $this$isFlagSecureEnabled.getRootView().getLayoutParams();
        WindowManager.LayoutParams windowParams = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        return (windowParams == null || (windowParams.flags & 8192) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int flagsWithSecureFlagInherited(PopupProperties $this$flagsWithSecureFlagInherited, boolean isParentFlagSecureEnabled) {
        if ($this$flagsWithSecureFlagInherited.getInheritSecurePolicy() && isParentFlagSecureEnabled) {
            return $this$flagsWithSecureFlagInherited.getFlags() | 8192;
        }
        if ($this$flagsWithSecureFlagInherited.getInheritSecurePolicy() && !isParentFlagSecureEnabled) {
            return $this$flagsWithSecureFlagInherited.getFlags() & (-8193);
        }
        return $this$flagsWithSecureFlagInherited.getFlags();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntRect toIntBounds(Rect $this$toIntBounds) {
        return new IntRect($this$toIntBounds.left, $this$toIntBounds.top, $this$toIntBounds.right, $this$toIntBounds.bottom);
    }

    public static /* synthetic */ boolean isPopupLayout$default(View view, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return isPopupLayout(view, str);
    }

    public static final boolean isPopupLayout(View view, String testTag) {
        return (view instanceof PopupLayout) && (testTag == null || Intrinsics.areEqual(testTag, ((PopupLayout) view).getTestTag()));
    }
}
