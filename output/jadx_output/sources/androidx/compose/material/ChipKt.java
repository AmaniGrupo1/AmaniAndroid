package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.core.app.FrameMetricsAggregator;
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

/* JADX INFO: compiled from: Chip.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u0090\u0001\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000b0\u001d¢\u0006\u0002\b\u001b¢\u0006\u0002\b\u001fH\u0007¢\u0006\u0002\u0010 \u001aÆ\u0001\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00112\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020#2\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u001b2\u0015\b\u0002\u0010$\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u001b2\u0015\b\u0002\u0010%\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000b0\u001d¢\u0006\u0002\b\u001b¢\u0006\u0002\b\u001fH\u0007¢\u0006\u0002\u0010&\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002¨\u0006'²\u0006\n\u0010(\u001a\u00020)X\u008a\u0084\u0002²\u0006\n\u0010*\u001a\u00020)X\u008a\u0084\u0002"}, d2 = {"HorizontalPadding", "Landroidx/compose/ui/unit/Dp;", "F", "LeadingIconEndSpacing", "LeadingIconStartSpacing", "SelectedIconContainerSize", "SelectedOverlayOpacity", "", "SurfaceOverlayOpacity", "TrailingIconSpacing", "Chip", "", "onClick", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "shape", "Landroidx/compose/ui/graphics/Shape;", OutlinedTextFieldKt.BorderId, "Landroidx/compose/foundation/BorderStroke;", "colors", "Landroidx/compose/material/ChipColors;", "leadingIcon", "Landroidx/compose/runtime/Composable;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "FilterChip", "selected", "Landroidx/compose/material/SelectableChipColors;", "selectedIcon", "trailingIcon", "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "material_release", "contentColor", "Landroidx/compose/ui/graphics/Color;", "leadingIconContentColor"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ChipKt {
    private static final float SelectedOverlayOpacity = 0.16f;
    private static final float SurfaceOverlayOpacity = 0.12f;
    private static final float HorizontalPadding = Dp.m7505constructorimpl(12);
    private static final float LeadingIconStartSpacing = Dp.m7505constructorimpl(4);
    private static final float LeadingIconEndSpacing = Dp.m7505constructorimpl(8);
    private static final float TrailingIconSpacing = Dp.m7505constructorimpl(8);
    private static final float SelectedIconContainerSize = Dp.m7505constructorimpl(24);

    public static final void Chip(final Function0<Unit> function0, Modifier modifier, boolean enabled, MutableInteractionSource interactionSource, Shape shape, BorderStroke border, ChipColors colors, Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Function0<Unit> function02;
        Modifier modifier2;
        boolean enabled2;
        MutableInteractionSource interactionSource2;
        Shape shape2;
        BorderStroke borderStroke;
        ChipColors chipColors;
        int i2;
        Function2<? super Composer, ? super Integer, Unit> function22;
        CornerBasedShape shape3;
        int $dirty;
        Composer $composer2;
        ChipColors colors2;
        Shape shape4;
        int $dirty2;
        BorderStroke border2;
        boolean enabled3;
        MutableInteractionSource interactionSource3;
        Composer $composer3;
        final Modifier modifier3;
        final Function2<? super Composer, ? super Integer, Unit> function23;
        final boolean enabled4;
        final Shape shape5;
        final MutableInteractionSource interactionSource4;
        final ChipColors colors3;
        final BorderStroke border3;
        Composer $composer4 = $composer.startRestartGroup(-368396408);
        ComposerKt.sourceInformation($composer4, "C(Chip)P(7,6,3,4,8!2,5)93@4288L6,95@4405L12,99@4550L21,105@4747L24,109@4905L1458,100@4576L1787:Chip.kt#jmzs0o");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
            function02 = function0;
        } else if (($changed & 6) == 0) {
            function02 = function0;
            $dirty3 |= $composer4.changedInstance(function02) ? 4 : 2;
        } else {
            function02 = function0;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty3 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer4.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            enabled2 = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            enabled2 = enabled;
            $dirty3 |= $composer4.changed(enabled2) ? 256 : 128;
        } else {
            enabled2 = enabled;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty3 |= 3072;
            interactionSource2 = interactionSource;
        } else if (($changed & 3072) == 0) {
            interactionSource2 = interactionSource;
            $dirty3 |= $composer4.changed(interactionSource2) ? 2048 : 1024;
        } else {
            interactionSource2 = interactionSource;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                shape2 = shape;
                int i6 = $composer4.changed(shape2) ? 16384 : 8192;
                $dirty3 |= i6;
            } else {
                shape2 = shape;
            }
            $dirty3 |= i6;
        } else {
            shape2 = shape;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            borderStroke = border;
        } else if ((196608 & $changed) == 0) {
            borderStroke = border;
            $dirty3 |= $composer4.changed(borderStroke) ? 131072 : 65536;
        } else {
            borderStroke = border;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                chipColors = colors;
                int i8 = $composer4.changed(chipColors) ? 1048576 : 524288;
                $dirty3 |= i8;
            } else {
                chipColors = colors;
            }
            $dirty3 |= i8;
        } else {
            chipColors = colors;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty3 |= 12582912;
            i2 = i7;
            function22 = function2;
        } else if (($changed & 12582912) == 0) {
            i2 = i7;
            function22 = function2;
            $dirty3 |= $composer4.changedInstance(function22) ? 8388608 : 4194304;
        } else {
            i2 = i7;
            function22 = function2;
        }
        if ((i & 256) != 0) {
            $dirty3 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty3 |= $composer4.changedInstance(function3) ? 67108864 : 33554432;
        }
        int $dirty4 = $dirty3;
        if (($dirty3 & 38347923) == 38347922 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            $composer3 = $composer4;
            modifier3 = modifier2;
            enabled4 = enabled2;
            interactionSource4 = interactionSource2;
            shape5 = shape2;
            function23 = function22;
            border3 = borderStroke;
            colors3 = chipColors;
        } else {
            $composer4.startDefaults();
            if (($changed & 1) == 0 || $composer4.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i4 != 0) {
                    enabled2 = true;
                }
                if (i5 != 0) {
                    interactionSource2 = null;
                }
                if ((i & 16) != 0) {
                    shape3 = MaterialTheme.INSTANCE.getShapes($composer4, 6).getSmall().copy(CornerSizeKt.CornerSize(50));
                    $dirty = $dirty4 & (-57345);
                } else {
                    shape3 = shape2;
                    $dirty = $dirty4;
                }
                BorderStroke border4 = i2 != 0 ? null : borderStroke;
                if ((i & 64) != 0) {
                    colors2 = ChipDefaults.INSTANCE.m1742chipColors5tl4gsc(0L, 0L, 0L, 0L, 0L, 0L, $composer4, 1572864, 63);
                    $composer2 = $composer4;
                    $dirty &= -3670017;
                } else {
                    $composer2 = $composer4;
                    colors2 = colors;
                }
                if (i9 != 0) {
                    shape4 = shape3;
                    function22 = null;
                    $dirty2 = $dirty;
                    border2 = border4;
                    enabled3 = enabled2;
                    interactionSource3 = interactionSource2;
                } else {
                    function22 = function2;
                    shape4 = shape3;
                    $dirty2 = $dirty;
                    border2 = border4;
                    enabled3 = enabled2;
                    interactionSource3 = interactionSource2;
                }
            } else {
                $composer4.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty4 &= -57345;
                }
                if ((i & 64) != 0) {
                    $dirty2 = $dirty4 & (-3670017);
                    $composer2 = $composer4;
                    interactionSource3 = interactionSource2;
                    border2 = borderStroke;
                    colors2 = chipColors;
                    enabled3 = enabled2;
                    shape4 = shape2;
                } else {
                    $composer2 = $composer4;
                    interactionSource3 = interactionSource2;
                    border2 = borderStroke;
                    colors2 = chipColors;
                    $dirty2 = $dirty4;
                    enabled3 = enabled2;
                    shape4 = shape2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-368396408, $dirty2, -1, "androidx.compose.material.Chip (Chip.kt:98)");
            }
            final State<Color> stateContentColor = colors2.contentColor(enabled3, $composer2, (($dirty2 >> 6) & 14) | (($dirty2 >> 15) & 112));
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifier2, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.ChipKt.Chip.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                    SemanticsPropertiesKt.m6718setRolekuIjeqM($this$semantics, Role.INSTANCE.m6699getButtono7Vup1c());
                }
            }, 1, null);
            long jM4707unboximpl = colors2.backgroundColor(enabled3, $composer2, (($dirty2 >> 6) & 14) | (($dirty2 >> 15) & 112)).getValue().m4707unboximpl();
            long jChip$lambda$0 = Chip$lambda$0(stateContentColor);
            final ChipColors colors4 = colors2;
            final Function2<? super Composer, ? super Integer, Unit> function24 = function22;
            final boolean enabled5 = enabled3;
            $composer3 = $composer2;
            SurfaceKt.m1942SurfaceLPr_se0(function02, modifierSemantics$default, enabled3, shape4, jM4707unboximpl, Color.m4695copywmQWz5c(jChip$lambda$0, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jChip$lambda$0) : 1.0f, (14 & 2) != 0 ? Color.m4703getRedimpl(jChip$lambda$0) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jChip$lambda$0) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jChip$lambda$0) : 0.0f), border2, 0.0f, interactionSource3, ComposableLambdaKt.rememberComposableLambda(139076687, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.Chip.2
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
                    ComposerKt.sourceInformation($composer5, "C110@4987L1370,110@4915L1442:Chip.kt#jmzs0o");
                    if (($changed2 & 3) != 2 || !$composer5.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(139076687, $changed2, -1, "androidx.compose.material.Chip.<anonymous> (Chip.kt:110)");
                        }
                        ProvidedValue<Float> providedValueProvides = ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m4699getAlphaimpl(ChipKt.Chip$lambda$0(stateContentColor))));
                        final Function2<Composer, Integer, Unit> function25 = function24;
                        final ChipColors chipColors2 = colors4;
                        final boolean z = enabled5;
                        final Function3<RowScope, Composer, Integer, Unit> function32 = function3;
                        CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.rememberComposableLambda(667535631, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.Chip.2.1
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

                            public final void invoke(Composer $composer6, int $changed3) {
                                ComposerKt.sourceInformation($composer6, "C112@5057L10,113@5088L1259,111@5001L1346:Chip.kt#jmzs0o");
                                if (($changed3 & 3) != 2 || !$composer6.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(667535631, $changed3, -1, "androidx.compose.material.Chip.<anonymous>.<anonymous> (Chip.kt:111)");
                                    }
                                    TextStyle body2 = MaterialTheme.INSTANCE.getTypography($composer6, 6).getBody2();
                                    final Function2<Composer, Integer, Unit> function26 = function25;
                                    final ChipColors chipColors3 = chipColors2;
                                    final boolean z2 = z;
                                    final Function3<RowScope, Composer, Integer, Unit> function33 = function32;
                                    TextKt.ProvideTextStyle(body2, ComposableLambdaKt.rememberComposableLambda(-1131213696, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.Chip.2.1.1
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

                                        public final void invoke(Composer $composer7, int $changed4) {
                                            float fM7505constructorimpl;
                                            Function0<ComposeUiNode> function03;
                                            ComposerKt.sourceInformation($composer7, "C114@5106L1227:Chip.kt#jmzs0o");
                                            if (($changed4 & 3) != 2 || !$composer7.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1131213696, $changed4, -1, "androidx.compose.material.Chip.<anonymous>.<anonymous>.<anonymous> (Chip.kt:114)");
                                                }
                                                Modifier modifierM849defaultMinSizeVpY3zN4$default = SizeKt.m849defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, 0.0f, ChipDefaults.INSTANCE.m1745getMinHeightD9Ej5fM(), 1, null);
                                                if (function26 == null) {
                                                    fM7505constructorimpl = ChipKt.HorizontalPadding;
                                                } else {
                                                    fM7505constructorimpl = Dp.m7505constructorimpl(0);
                                                }
                                                Modifier modifier$iv = PaddingKt.m822paddingqDBjuR0$default(modifierM849defaultMinSizeVpY3zN4$default, fM7505constructorimpl, 0.0f, ChipKt.HorizontalPadding, 0.0f, 10, null);
                                                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getStart();
                                                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                                                Function2<Composer, Integer, Unit> function27 = function26;
                                                ChipColors chipColors4 = chipColors3;
                                                boolean z3 = z2;
                                                Function3<RowScope, Composer, Integer, Unit> function34 = function33;
                                                ComposerKt.sourceInformationMarkerStart($composer7, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                                                MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer7, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                                                int $changed$iv$iv = (432 << 3) & 112;
                                                ComposerKt.sourceInformationMarkerStart($composer7, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                                int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer7, 0);
                                                CompositionLocalMap localMap$iv$iv = $composer7.getCurrentCompositionLocalMap();
                                                Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer7, modifier$iv);
                                                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                                int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                                                ComposerKt.sourceInformationMarkerStart($composer7, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                                if (!($composer7.getApplier() instanceof Applier)) {
                                                    ComposablesKt.invalidApplier();
                                                }
                                                $composer7.startReusableNode();
                                                if ($composer7.getInserting()) {
                                                    function03 = constructor;
                                                    $composer7.createNode(function03);
                                                } else {
                                                    function03 = constructor;
                                                    $composer7.useNode();
                                                }
                                                Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer7);
                                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                                if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                                                }
                                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                                int i10 = ($changed$iv$iv$iv >> 6) & 14;
                                                ComposerKt.sourceInformationMarkerStart($composer7, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                                                int $changed5 = ((432 >> 6) & 112) | 6;
                                                RowScope $this$invoke_u24lambda_u241 = RowScopeInstance.INSTANCE;
                                                ComposerKt.sourceInformationMarkerStart($composer7, 2027624470, "C138@6306L9:Chip.kt#jmzs0o");
                                                if (function27 == null) {
                                                    $composer7.startReplaceGroup(2028178036);
                                                    $composer7.endReplaceGroup();
                                                } else {
                                                    $composer7.startReplaceGroup(2027647564);
                                                    ComposerKt.sourceInformation($composer7, "129@5759L47,130@5869L32,131@5926L267,136@6218L45");
                                                    SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, ChipKt.LeadingIconStartSpacing), $composer7, 6);
                                                    State<Color> stateLeadingIconContentColor = chipColors4.leadingIconContentColor(z3, $composer7, 0);
                                                    CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(invoke$lambda$1$lambda$0(stateLeadingIconContentColor))), ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m4699getAlphaimpl(invoke$lambda$1$lambda$0(stateLeadingIconContentColor))))}, function27, $composer7, ProvidedValue.$stable);
                                                    SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, ChipKt.LeadingIconEndSpacing), $composer7, 6);
                                                    $composer7.endReplaceGroup();
                                                }
                                                function34.invoke($this$invoke_u24lambda_u241, $composer7, Integer.valueOf($changed5 & 14));
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                $composer7.endNode();
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer7.skipToGroupEnd();
                                        }

                                        private static final long invoke$lambda$1$lambda$0(State<Color> state) {
                                            Object thisObj$iv = state.getValue();
                                            return ((Color) thisObj$iv).m4707unboximpl();
                                        }
                                    }, $composer6, 54), $composer6, 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer6.skipToGroupEnd();
                            }
                        }, $composer5, 54), $composer5, ProvidedValue.$stable | 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer5.skipToGroupEnd();
                }
            }, $composer2, 54), $composer3, ($dirty2 & 14) | 805306368 | ($dirty2 & 896) | (($dirty2 >> 3) & 7168) | (3670016 & ($dirty2 << 3)) | (234881024 & ($dirty2 << 15)), 128);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            function23 = function24;
            enabled4 = enabled3;
            shape5 = shape4;
            interactionSource4 = interactionSource3;
            colors3 = colors4;
            border3 = border2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.Chip.3
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

                public final void invoke(Composer composer, int i10) {
                    ChipKt.Chip(function0, modifier3, enabled4, interactionSource4, shape5, border3, colors3, function23, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long Chip$lambda$0(State<Color> state) {
        Object thisObj$iv = state.getValue();
        return ((Color) thisObj$iv).m4707unboximpl();
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void FilterChip(final boolean selected, final Function0<Unit> function0, Modifier modifier, boolean enabled, MutableInteractionSource interactionSource, Shape shape, BorderStroke border, SelectableChipColors colors, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        boolean enabled2;
        MutableInteractionSource mutableInteractionSource;
        Shape shape2;
        BorderStroke borderStroke;
        int $dirty1;
        int i2;
        int i3;
        int $dirty12;
        Shape shape3;
        int $dirty;
        Modifier modifier3;
        int $dirty13;
        int i4;
        int i5;
        SelectableChipColors colors2;
        Function2<? super Composer, ? super Integer, Unit> function24;
        Function2<? super Composer, ? super Integer, Unit> function25;
        MutableInteractionSource interactionSource2;
        int $dirty2;
        BorderStroke border2;
        Modifier modifier4;
        Function2<? super Composer, ? super Integer, Unit> function26;
        Shape shape4;
        Composer $composer2;
        final Shape shape5;
        final BorderStroke border3;
        final MutableInteractionSource interactionSource3;
        final SelectableChipColors colors3;
        final Function2<? super Composer, ? super Integer, Unit> function27;
        final Function2<? super Composer, ? super Integer, Unit> function28;
        final Function2<? super Composer, ? super Integer, Unit> function29;
        final boolean enabled3;
        final Modifier modifier5;
        int i6;
        Composer $composer3 = $composer.startRestartGroup(-1259208246);
        ComposerKt.sourceInformation($composer3, "C(FilterChip)P(8,7,6,3,4,10!2,5,9,11)190@8782L6,192@8909L18,199@9240L31,206@9478L34,210@9652L3966,200@9276L4342:Chip.kt#jmzs0o");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty3 |= $composer3.changed(selected) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer3.changedInstance(function0) ? 32 : 16;
        }
        int i7 = i & 4;
        if (i7 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i8 = i & 8;
        if (i8 != 0) {
            $dirty3 |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty3 |= $composer3.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        int i9 = i & 16;
        if (i9 != 0) {
            $dirty3 |= 24576;
            mutableInteractionSource = interactionSource;
        } else if (($changed & 24576) == 0) {
            mutableInteractionSource = interactionSource;
            $dirty3 |= $composer3.changed(mutableInteractionSource) ? 16384 : 8192;
        } else {
            mutableInteractionSource = interactionSource;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if ((i & 32) == 0) {
                shape2 = shape;
                int i10 = $composer3.changed(shape2) ? 131072 : 65536;
                $dirty3 |= i10;
            } else {
                shape2 = shape;
            }
            $dirty3 |= i10;
        } else {
            shape2 = shape;
        }
        int i11 = i & 64;
        if (i11 != 0) {
            $dirty3 |= 1572864;
            borderStroke = border;
        } else if (($changed & 1572864) == 0) {
            borderStroke = border;
            $dirty3 |= $composer3.changed(borderStroke) ? 1048576 : 524288;
        } else {
            borderStroke = border;
        }
        if (($changed & 12582912) == 0) {
            if ((i & 128) != 0) {
                i6 = 4194304;
                $dirty3 |= i6;
            } else {
                if ((16777216 & $changed) == 0 ? $composer3.changed(colors) : $composer3.changedInstance(colors)) {
                    i6 = 8388608;
                }
                $dirty3 |= i6;
            }
        }
        int i12 = i & 256;
        if (i12 != 0) {
            $dirty3 |= 100663296;
            $dirty1 = $changed1;
        } else if (($changed & 100663296) == 0) {
            $dirty1 = $changed1;
            $dirty3 |= $composer3.changedInstance(function2) ? 67108864 : 33554432;
        } else {
            $dirty1 = $changed1;
        }
        int $dirty14 = i & 512;
        if ($dirty14 != 0) {
            $dirty3 |= 805306368;
            i2 = $dirty14;
        } else if (($changed & 805306368) == 0) {
            i2 = $dirty14;
            $dirty3 |= $composer3.changedInstance(function22) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i2 = $dirty14;
        }
        int i13 = i & 1024;
        if (i13 != 0) {
            $dirty12 = $dirty1 | 6;
            i3 = i13;
        } else if (($changed1 & 6) == 0) {
            i3 = i13;
            $dirty12 = $dirty1 | ($composer3.changedInstance(function23) ? 4 : 2);
        } else {
            i3 = i13;
            $dirty12 = $dirty1;
        }
        if ((i & 2048) != 0) {
            $dirty12 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty12 |= $composer3.changedInstance(function3) ? 32 : 16;
        }
        int $dirty15 = $dirty12;
        if (($dirty3 & 306783379) == 306783378 && ($dirty15 & 19) == 18 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            enabled3 = enabled2;
            interactionSource3 = mutableInteractionSource;
            shape5 = shape2;
            border3 = borderStroke;
            $composer2 = $composer3;
            modifier5 = modifier2;
            colors3 = colors;
            function27 = function2;
            function28 = function22;
            function29 = function23;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier6 = i7 != 0 ? Modifier.INSTANCE : modifier2;
                boolean enabled4 = i8 != 0 ? true : enabled2;
                MutableInteractionSource interactionSource4 = i9 != 0 ? null : mutableInteractionSource;
                if ((i & 32) != 0) {
                    shape3 = MaterialTheme.INSTANCE.getShapes($composer3, 6).getSmall().copy(CornerSizeKt.CornerSize(50));
                    $dirty = $dirty3 & (-458753);
                } else {
                    shape3 = shape2;
                    $dirty = $dirty3;
                }
                BorderStroke border4 = i11 != 0 ? null : borderStroke;
                if ((i & 128) != 0) {
                    i4 = i2;
                    i5 = i3;
                    modifier3 = modifier6;
                    $dirty13 = $dirty15;
                    colors2 = ChipDefaults.INSTANCE.m1743filterChipColorsJ08w3E(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 805306368, FrameMetricsAggregator.EVERY_DURATION);
                    $composer3 = $composer3;
                    $dirty &= -29360129;
                } else {
                    modifier3 = modifier6;
                    $dirty13 = $dirty15;
                    i4 = i2;
                    i5 = i3;
                    colors2 = colors;
                }
                Function2<? super Composer, ? super Integer, Unit> function210 = i12 != 0 ? null : function2;
                Function2<? super Composer, ? super Integer, Unit> function211 = i4 != 0 ? null : function22;
                if (i5 != 0) {
                    enabled2 = enabled4;
                    function24 = null;
                    interactionSource2 = interactionSource4;
                    $dirty2 = $dirty;
                    border2 = border4;
                    modifier4 = modifier3;
                    function25 = function211;
                    function26 = function210;
                    shape4 = shape3;
                } else {
                    function24 = function23;
                    enabled2 = enabled4;
                    function25 = function211;
                    interactionSource2 = interactionSource4;
                    $dirty2 = $dirty;
                    border2 = border4;
                    modifier4 = modifier3;
                    function26 = function210;
                    shape4 = shape3;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 32) != 0) {
                    $dirty3 &= -458753;
                }
                if ((i & 128) != 0) {
                    int i14 = (-29360129) & $dirty3;
                    BorderStroke borderStroke2 = borderStroke;
                    interactionSource2 = mutableInteractionSource;
                    border2 = borderStroke2;
                    colors2 = colors;
                    function25 = function22;
                    $dirty2 = i14;
                    $dirty13 = $dirty15;
                    shape4 = shape2;
                    modifier4 = modifier2;
                    function26 = function2;
                    function24 = function23;
                } else {
                    BorderStroke borderStroke3 = borderStroke;
                    interactionSource2 = mutableInteractionSource;
                    border2 = borderStroke3;
                    function25 = function22;
                    $dirty2 = $dirty3;
                    $dirty13 = $dirty15;
                    shape4 = shape2;
                    modifier4 = modifier2;
                    colors2 = colors;
                    function26 = function2;
                    function24 = function23;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1259208246, $dirty2, $dirty13, "androidx.compose.material.FilterChip (Chip.kt:197)");
            }
            final State<Color> stateContentColor = colors2.contentColor(enabled2, selected, $composer3, (($dirty2 >> 9) & 14) | (($dirty2 << 3) & 112) | (($dirty2 >> 15) & 896));
            Shape shape6 = shape4;
            Modifier modifier7 = SemanticsModifierKt.semantics$default(modifier4, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.ChipKt.FilterChip.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                    SemanticsPropertiesKt.m6718setRolekuIjeqM($this$semantics, Role.INSTANCE.m6701getCheckboxo7Vup1c());
                }
            }, 1, null);
            long jM4707unboximpl = colors2.backgroundColor(enabled2, selected, $composer3, (($dirty2 >> 9) & 14) | (($dirty2 << 3) & 112) | (($dirty2 >> 15) & 896)).getValue().m4707unboximpl();
            long jM4707unboximpl2 = stateContentColor.getValue().m4707unboximpl();
            final SelectableChipColors colors4 = colors2;
            final Function2<? super Composer, ? super Integer, Unit> function212 = function26;
            final Function2<? super Composer, ? super Integer, Unit> function213 = function25;
            final boolean enabled5 = enabled2;
            final Function2<? super Composer, ? super Integer, Unit> function214 = function24;
            Modifier modifier8 = modifier4;
            SurfaceKt.m1943SurfaceNy5ogXk(selected, function0, modifier7, enabled5, shape6, jM4707unboximpl, Color.m4695copywmQWz5c(jM4707unboximpl2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM4707unboximpl2) : 1.0f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM4707unboximpl2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM4707unboximpl2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM4707unboximpl2) : 0.0f), border2, 0.0f, interactionSource2, ComposableLambdaKt.rememberComposableLambda(722126431, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.FilterChip.2
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
                    ComposerKt.sourceInformation($composer4, "C211@9740L3872,211@9662L3950:Chip.kt#jmzs0o");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(722126431, $changed2, -1, "androidx.compose.material.FilterChip.<anonymous> (Chip.kt:211)");
                        }
                        ProvidedValue<Float> providedValueProvides = ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m4699getAlphaimpl(stateContentColor.getValue().m4707unboximpl())));
                        final Function2<Composer, Integer, Unit> function215 = function212;
                        final boolean z = selected;
                        final Function2<Composer, Integer, Unit> function216 = function213;
                        final Function2<Composer, Integer, Unit> function217 = function214;
                        final Function3<RowScope, Composer, Integer, Unit> function32 = function3;
                        final SelectableChipColors selectableChipColors = colors4;
                        final boolean z2 = enabled5;
                        final State<Color> state = stateContentColor;
                        CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.rememberComposableLambda(1582291359, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.FilterChip.2.1
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
                                ComposerKt.sourceInformation($composer5, "C213@9810L10,214@9841L3761,212@9754L3848:Chip.kt#jmzs0o");
                                if (($changed3 & 3) != 2 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1582291359, $changed3, -1, "androidx.compose.material.FilterChip.<anonymous>.<anonymous> (Chip.kt:212)");
                                    }
                                    TextStyle body2 = MaterialTheme.INSTANCE.getTypography($composer5, 6).getBody2();
                                    final Function2<Composer, Integer, Unit> function218 = function215;
                                    final boolean z3 = z;
                                    final Function2<Composer, Integer, Unit> function219 = function216;
                                    final Function2<Composer, Integer, Unit> function220 = function217;
                                    final Function3<RowScope, Composer, Integer, Unit> function33 = function32;
                                    final SelectableChipColors selectableChipColors2 = selectableChipColors;
                                    final boolean z4 = z2;
                                    final State<Color> state2 = state;
                                    TextKt.ProvideTextStyle(body2, ComposableLambdaKt.rememberComposableLambda(-1543702066, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.FilterChip.2.1.1
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

                                        public final void invoke(Composer $composer6, int $changed4) {
                                            Function0<ComposeUiNode> function02;
                                            Function2<Composer, Integer, Unit> function221;
                                            Function0<ComposeUiNode> function03;
                                            Function3<RowScope, Composer, Integer, Unit> function34;
                                            Composer $composer7;
                                            String str;
                                            Function0<ComposeUiNode> function04;
                                            ComposerKt.sourceInformation($composer6, "C215@9859L3729:Chip.kt#jmzs0o");
                                            if (($changed4 & 3) == 2 && $composer6.getSkipping()) {
                                                $composer6.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1543702066, $changed4, -1, "androidx.compose.material.FilterChip.<anonymous>.<anonymous>.<anonymous> (Chip.kt:215)");
                                            }
                                            Modifier modifier$iv = PaddingKt.m822paddingqDBjuR0$default(SizeKt.m849defaultMinSizeVpY3zN4$default(IntrinsicKt.width(Modifier.INSTANCE, IntrinsicSize.Max), 0.0f, ChipDefaults.INSTANCE.m1745getMinHeightD9Ej5fM(), 1, null), (function218 != null || (z3 && function219 != null)) ? Dp.m7505constructorimpl(0) : ChipKt.HorizontalPadding, 0.0f, function220 == null ? ChipKt.HorizontalPadding : Dp.m7505constructorimpl(0), 0.0f, 10, null);
                                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getStart();
                                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                                            Function2<Composer, Integer, Unit> function222 = function218;
                                            boolean z5 = z3;
                                            Function2<Composer, Integer, Unit> function223 = function219;
                                            Function3<RowScope, Composer, Integer, Unit> function35 = function33;
                                            Function2<Composer, Integer, Unit> function224 = function220;
                                            SelectableChipColors selectableChipColors3 = selectableChipColors2;
                                            boolean z6 = z4;
                                            State<Color> state3 = state2;
                                            ComposerKt.sourceInformationMarkerStart($composer6, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                                            MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer6, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                                            int $changed$iv$iv = (432 << 3) & 112;
                                            ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
                                            CompositionLocalMap localMap$iv$iv = $composer6.getCurrentCompositionLocalMap();
                                            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer6, modifier$iv);
                                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                            if (!($composer6.getApplier() instanceof Applier)) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            $composer6.startReusableNode();
                                            if ($composer6.getInserting()) {
                                                function02 = constructor;
                                                $composer6.createNode(function02);
                                            } else {
                                                function02 = constructor;
                                                $composer6.useNode();
                                            }
                                            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer6);
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                                            }
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                            int i15 = ($changed$iv$iv$iv >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer6, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                                            int i16 = ((432 >> 6) & 112) | 6;
                                            RowScope $this$invoke_u24lambda_u242 = RowScopeInstance.INSTANCE;
                                            Composer $composer8 = $composer6;
                                            ComposerKt.sourceInformationMarkerStart($composer8, 692241291, "C278@13061L264:Chip.kt#jmzs0o");
                                            if (function222 != null || (z5 && function223 != null)) {
                                                $composer8.startReplaceGroup(692285403);
                                                ComposerKt.sourceInformation($composer8, "239@10921L47,240@10993L1955,276@12973L45");
                                                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, ChipKt.LeadingIconStartSpacing), $composer8, 6);
                                                ComposerKt.sourceInformationMarkerStart($composer8, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                                Modifier modifier$iv2 = Modifier.INSTANCE;
                                                Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                                function221 = function224;
                                                MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                                int $changed$iv$iv2 = (0 << 3) & 112;
                                                ComposerKt.sourceInformationMarkerStart($composer8, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer8, 0);
                                                CompositionLocalMap localMap$iv$iv2 = $composer8.getCurrentCompositionLocalMap();
                                                Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer8, modifier$iv2);
                                                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                                                ComposerKt.sourceInformationMarkerStart($composer8, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                                if (!($composer8.getApplier() instanceof Applier)) {
                                                    ComposablesKt.invalidApplier();
                                                }
                                                $composer8.startReusableNode();
                                                if ($composer8.getInserting()) {
                                                    function03 = constructor2;
                                                    $composer8.createNode(function03);
                                                } else {
                                                    function03 = constructor2;
                                                    $composer8.useNode();
                                                }
                                                Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer8);
                                                function34 = function35;
                                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                                                }
                                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                                int i17 = ($changed$iv$iv$iv2 >> 6) & 14;
                                                ComposerKt.sourceInformationMarkerStart($composer8, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                                int i18 = ((0 >> 6) & 112) | 6;
                                                ComposerKt.sourceInformationMarkerStart($composer8, 1866409975, "C:Chip.kt#jmzs0o");
                                                if (function222 != null) {
                                                    $composer8.startReplaceGroup(1866393544);
                                                    ComposerKt.sourceInformation($composer8, "242@11116L141,246@11290L297");
                                                    State<Color> stateLeadingIconColor = selectableChipColors3.leadingIconColor(z6, z5, $composer8, 0);
                                                    CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(stateLeadingIconColor.getValue()), ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m4699getAlphaimpl(stateLeadingIconColor.getValue().m4707unboximpl())))}, function222, $composer8, ProvidedValue.$stable);
                                                    $composer8.endReplaceGroup();
                                                } else {
                                                    $composer8.startReplaceGroup(1866936509);
                                                    $composer8.endReplaceGroup();
                                                }
                                                if (!z5 || function223 == null) {
                                                    $composer7 = $composer8;
                                                    str = "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo";
                                                    $composer8.startReplaceGroup(1868231069);
                                                    $composer8.endReplaceGroup();
                                                } else {
                                                    $composer8.startReplaceGroup(1867041351);
                                                    ComposerKt.sourceInformation($composer8, "265@12441L451");
                                                    Modifier.Companion overlayModifier = Modifier.INSTANCE;
                                                    long iconColor = state3.getValue().m4707unboximpl();
                                                    if (function222 != null) {
                                                        $composer8.startReplaceGroup(1867216656);
                                                        ComposerKt.sourceInformation($composer8, "263@12334L34");
                                                        Modifier modifierM856requiredSize3ABfNKs = SizeKt.m856requiredSize3ABfNKs(Modifier.INSTANCE, ChipKt.SelectedIconContainerSize);
                                                        Color value = state3.getValue();
                                                        $composer7 = $composer8;
                                                        str = "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo";
                                                        overlayModifier = ClipKt.clip(BackgroundKt.m263backgroundbw27NRU(modifierM856requiredSize3ABfNKs, value.m4707unboximpl(), RoundedCornerShapeKt.getCircleShape()), RoundedCornerShapeKt.getCircleShape());
                                                        iconColor = selectableChipColors3.backgroundColor(z6, z5, $composer8, 0).getValue().m4707unboximpl();
                                                        $composer8.endReplaceGroup();
                                                    } else {
                                                        $composer7 = $composer8;
                                                        str = "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo";
                                                        $composer8.startReplaceGroup(1867721181);
                                                        $composer8.endReplaceGroup();
                                                    }
                                                    Alignment contentAlignment$iv2 = Alignment.INSTANCE.getCenter();
                                                    ComposerKt.sourceInformationMarkerStart($composer8, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                                    MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                                                    int $changed$iv$iv3 = (48 << 3) & 112;
                                                    ComposerKt.sourceInformationMarkerStart($composer8, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer8, 0);
                                                    CompositionLocalMap localMap$iv$iv3 = $composer8.getCurrentCompositionLocalMap();
                                                    Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer8, overlayModifier);
                                                    Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                                                    int $changed$iv = $changed$iv$iv3 << 6;
                                                    int $changed$iv$iv$iv3 = ($changed$iv & 896) | 6;
                                                    ComposerKt.sourceInformationMarkerStart($composer8, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                                    if (!($composer8.getApplier() instanceof Applier)) {
                                                        ComposablesKt.invalidApplier();
                                                    }
                                                    $composer8.startReusableNode();
                                                    if ($composer8.getInserting()) {
                                                        function04 = constructor3;
                                                        $composer8.createNode(function04);
                                                    } else {
                                                        function04 = constructor3;
                                                        $composer8.useNode();
                                                    }
                                                    Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer8);
                                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash3);
                                                    }
                                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                                                    int i19 = ($changed$iv$iv$iv3 >> 6) & 14;
                                                    ComposerKt.sourceInformationMarkerStart($composer8, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                                                    int i20 = ((48 >> 6) & 112) | 6;
                                                    ComposerKt.sourceInformationMarkerStart($composer8, -1335326413, "C269@12654L204:Chip.kt#jmzs0o");
                                                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(iconColor)), function223, $composer8, ProvidedValue.$stable);
                                                    ComposerKt.sourceInformationMarkerEnd($composer8);
                                                    ComposerKt.sourceInformationMarkerEnd($composer8);
                                                    $composer8.endNode();
                                                    ComposerKt.sourceInformationMarkerEnd($composer8);
                                                    ComposerKt.sourceInformationMarkerEnd($composer8);
                                                    ComposerKt.sourceInformationMarkerEnd($composer8);
                                                    $composer8.endReplaceGroup();
                                                }
                                                ComposerKt.sourceInformationMarkerEnd($composer8);
                                                ComposerKt.sourceInformationMarkerEnd($composer8);
                                                $composer7.endNode();
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                                $composer8 = $composer7;
                                                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, ChipKt.LeadingIconEndSpacing), $composer8, 6);
                                                $composer8.endReplaceGroup();
                                            } else {
                                                $composer8.startReplaceGroup(694346748);
                                                $composer8.endReplaceGroup();
                                                str = "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo";
                                                function34 = function35;
                                                function221 = function224;
                                            }
                                            Modifier modifier$iv3 = RowScope.weight$default($this$invoke_u24lambda_u242, Modifier.INSTANCE, 1.0f, false, 2, null);
                                            Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.getStart();
                                            Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getCenterVertically();
                                            ComposerKt.sourceInformationMarkerStart($composer8, 693286680, str);
                                            MeasurePolicy measurePolicy$iv4 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer8, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                                            int $changed$iv$iv4 = (432 << 3) & 112;
                                            ComposerKt.sourceInformationMarkerStart($composer8, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer8, 0);
                                            CompositionLocalMap localMap$iv$iv4 = $composer8.getCurrentCompositionLocalMap();
                                            Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer8, modifier$iv3);
                                            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                                            int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer8, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                            if (!($composer8.getApplier() instanceof Applier)) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            $composer8.startReusableNode();
                                            if ($composer8.getInserting()) {
                                                $composer8.createNode(constructor4);
                                            } else {
                                                $composer8.useNode();
                                            }
                                            Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer8);
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                                $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                                $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                                            }
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                                            int i21 = ($changed$iv$iv$iv4 >> 6) & 14;
                                            Composer $composer$iv = $composer8;
                                            ComposerKt.sourceInformationMarkerStart($composer$iv, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                                            function34.invoke(RowScopeInstance.INSTANCE, $composer$iv, Integer.valueOf(((432 >> 6) & 112) | 6));
                                            ComposerKt.sourceInformationMarkerEnd($composer$iv);
                                            $composer8.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer8);
                                            ComposerKt.sourceInformationMarkerEnd($composer8);
                                            ComposerKt.sourceInformationMarkerEnd($composer8);
                                            if (function221 != null) {
                                                $composer8.startReplaceGroup(694682230);
                                                ComposerKt.sourceInformation($composer8, "285@13398L43,286@13466L14,287@13505L43");
                                                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, ChipKt.TrailingIconSpacing), $composer8, 6);
                                                function221.invoke($composer8, 0);
                                                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, ChipKt.TrailingIconSpacing), $composer8, 6);
                                                $composer8.endReplaceGroup();
                                            } else {
                                                $composer8.startReplaceGroup(694872508);
                                                $composer8.endReplaceGroup();
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer8);
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            $composer6.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }, $composer5, 54), $composer5, 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }, $composer4, 54), $composer4, ProvidedValue.$stable | 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer3, ($dirty2 & 14) | ($dirty2 & 112) | ($dirty2 & 7168) | (($dirty2 >> 3) & 57344) | (29360128 & ($dirty2 << 3)) | (1879048192 & ($dirty2 << 15)), 6, 256);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            shape5 = shape6;
            border3 = border2;
            interactionSource3 = interactionSource2;
            colors3 = colors4;
            function27 = function212;
            function28 = function213;
            function29 = function214;
            enabled3 = enabled5;
            modifier5 = modifier8;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ChipKt.FilterChip.3
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

                public final void invoke(Composer composer, int i15) {
                    ChipKt.FilterChip(selected, function0, modifier5, enabled3, interactionSource3, shape5, border3, colors3, function27, function28, function29, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }
}
