package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.DialogTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import androidx.core.location.LocationRequestCompat;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatePickerDialog.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u009a\u0001\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0002\b\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u0015\b\u0002\u0010\u000e\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\u0002\b\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00012\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00070\u0017¢\u0006\u0002\b\u000b¢\u0006\u0002\b\u0019H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u001c"}, d2 = {"DialogButtonsCrossAxisSpacing", "Landroidx/compose/ui/unit/Dp;", "F", "DialogButtonsMainAxisSpacing", "DialogButtonsPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "DatePickerDialog", "", "onDismissRequest", "Lkotlin/Function0;", "confirmButton", "Landroidx/compose/runtime/Composable;", "modifier", "Landroidx/compose/ui/Modifier;", "dismissButton", "shape", "Landroidx/compose/ui/graphics/Shape;", "tonalElevation", "colors", "Landroidx/compose/material3/DatePickerColors;", "properties", "Landroidx/compose/ui/window/DialogProperties;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Lkotlin/ExtensionFunctionType;", "DatePickerDialog-GmEhDVc", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class DatePickerDialog_androidKt {
    private static final PaddingValues DialogButtonsPadding = PaddingKt.m815PaddingValuesa9UjIt4$default(0.0f, 0.0f, Dp.m7505constructorimpl(6), Dp.m7505constructorimpl(8), 3, null);
    private static final float DialogButtonsMainAxisSpacing = Dp.m7505constructorimpl(8);
    private static final float DialogButtonsCrossAxisSpacing = Dp.m7505constructorimpl(12);

    /* JADX INFO: renamed from: DatePickerDialog-GmEhDVc, reason: not valid java name */
    public static final void m2308DatePickerDialogGmEhDVc(final Function0<Unit> function0, final Function2<? super Composer, ? super Integer, Unit> function2, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function22, Shape shape, float tonalElevation, DatePickerColors colors, DialogProperties properties, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Function0<Unit> function02;
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function23;
        Shape shape2;
        float tonalElevation2;
        final DatePickerColors colors2;
        int $dirty;
        DialogProperties properties2;
        Modifier modifier3;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final float tonalElevation3;
        int $dirty2;
        final Shape shape3;
        Composer $composer2;
        final Shape shape4;
        final float tonalElevation4;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final DialogProperties properties3;
        final Modifier modifier4;
        final DatePickerColors colors3;
        Composer $composer3 = $composer.startRestartGroup(-36517340);
        ComposerKt.sourceInformation($composer3, "C(DatePickerDialog)P(5,1,4,3,7,8:c#ui.unit.Dp!1,6)71@3518L5,73@3635L8,81@3937L1615,77@3787L1765:DatePickerDialog.android.kt#uh7d8r");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
            function02 = function0;
        } else if (($changed & 6) == 0) {
            function02 = function0;
            $dirty3 |= $composer3.changedInstance(function02) ? 4 : 2;
        } else {
            function02 = function0;
        }
        if ((i & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer3.changedInstance(function2) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty3 |= 3072;
            function23 = function22;
        } else if (($changed & 3072) == 0) {
            function23 = function22;
            $dirty3 |= $composer3.changedInstance(function23) ? 2048 : 1024;
        } else {
            function23 = function22;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                shape2 = shape;
                int i4 = $composer3.changed(shape2) ? 16384 : 8192;
                $dirty3 |= i4;
            } else {
                shape2 = shape;
            }
            $dirty3 |= i4;
        } else {
            shape2 = shape;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            tonalElevation2 = tonalElevation;
        } else if ((196608 & $changed) == 0) {
            tonalElevation2 = tonalElevation;
            $dirty3 |= $composer3.changed(tonalElevation2) ? 131072 : 65536;
        } else {
            tonalElevation2 = tonalElevation;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                colors2 = colors;
                int i6 = $composer3.changed(colors2) ? 1048576 : 524288;
                $dirty3 |= i6;
            } else {
                colors2 = colors;
            }
            $dirty3 |= i6;
        } else {
            colors2 = colors;
        }
        int i7 = i & 128;
        if (i7 != 0) {
            $dirty3 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty3 |= $composer3.changed(properties) ? 8388608 : 4194304;
        }
        if ((i & 256) != 0) {
            $dirty3 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty3 |= $composer3.changedInstance(function3) ? 67108864 : 33554432;
        }
        int $dirty4 = $dirty3;
        if (($dirty3 & 38347923) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            function25 = function23;
            shape4 = shape2;
            tonalElevation4 = tonalElevation2;
            properties3 = properties;
            colors3 = colors2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i3 != 0) {
                    function23 = null;
                }
                if ((i & 16) != 0) {
                    $dirty = $dirty4 & (-57345);
                    shape2 = DatePickerDefaults.INSTANCE.getShape($composer3, 6);
                } else {
                    $dirty = $dirty4;
                }
                if (i5 != 0) {
                    tonalElevation2 = DatePickerDefaults.INSTANCE.m2307getTonalElevationD9Ej5fM();
                }
                if ((i & 64) != 0) {
                    $dirty &= -3670017;
                    colors2 = DatePickerDefaults.INSTANCE.colors($composer3, 6);
                }
                if (i7 != 0) {
                    modifier3 = modifier2;
                    tonalElevation3 = tonalElevation2;
                    properties2 = new DialogProperties(false, false, false, 3, (DefaultConstructorMarker) null);
                    function24 = function23;
                    shape3 = shape2;
                    $dirty2 = $dirty;
                } else {
                    properties2 = properties;
                    modifier3 = modifier2;
                    function24 = function23;
                    tonalElevation3 = tonalElevation2;
                    $dirty2 = $dirty;
                    shape3 = shape2;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty5 = (i & 16) != 0 ? $dirty4 & (-57345) : $dirty4;
                if ((i & 64) != 0) {
                    $dirty5 &= -3670017;
                }
                properties2 = properties;
                function24 = function23;
                tonalElevation3 = tonalElevation2;
                $dirty2 = $dirty5;
                modifier3 = modifier2;
                shape3 = shape2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-36517340, $dirty2, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:76)");
            }
            AlertDialogKt.BasicAlertDialog(function02, SizeKt.wrapContentHeight$default(modifier3, null, false, 3, null), properties2, ComposableLambdaKt.rememberComposableLambda(-10625622, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
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
                    ComposerKt.sourceInformation($composer4, "C89@4257L1289,82@3947L1599:DatePickerDialog.android.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-10625622, $changed2, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:82)");
                        }
                        Modifier modifierM852heightInVpY3zN4$default = SizeKt.m852heightInVpY3zN4$default(SizeKt.m861requiredWidth3ABfNKs(Modifier.INSTANCE, DatePickerModalTokens.INSTANCE.m3423getContainerWidthD9Ej5fM()), 0.0f, DatePickerModalTokens.INSTANCE.m3422getContainerHeightD9Ej5fM(), 1, null);
                        Shape shape5 = shape3;
                        long containerColor = colors2.getContainerColor();
                        float f = tonalElevation3;
                        final Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                        final Function2<Composer, Integer, Unit> function26 = function24;
                        final Function2<Composer, Integer, Unit> function27 = function2;
                        SurfaceKt.m2826SurfaceT9BRK9s(modifierM852heightInVpY3zN4$default, shape5, containerColor, 0L, f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1706202235, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
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

                            /* JADX WARN: Removed duplicated region for block: B:28:0x01b1  */
                            /* JADX WARN: Removed duplicated region for block: B:31:0x01bd  */
                            /* JADX WARN: Removed duplicated region for block: B:32:0x01c3  */
                            /* JADX WARN: Removed duplicated region for block: B:43:0x02e2  */
                            /* JADX WARN: Removed duplicated region for block: B:46:0x02ee  */
                            /* JADX WARN: Removed duplicated region for block: B:47:0x02f4  */
                            /* JADX WARN: Removed duplicated region for block: B:50:0x0325  */
                            /* JADX WARN: Removed duplicated region for block: B:54:0x033b  */
                            /* JADX WARN: Removed duplicated region for block: B:58:0x03ea  */
                            /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void invoke(Composer $composer5, int $changed3) {
                                Function0<ComposeUiNode> function03;
                                int $changed$iv;
                                int compositeKeyHash$iv$iv;
                                Function0<ComposeUiNode> function04;
                                Composer $this$Layout_u24lambda_u240$iv$iv;
                                Function0<ComposeUiNode> function05;
                                Composer $this$Layout_u24lambda_u240$iv$iv2;
                                int $changed$iv2;
                                Composer $composer6;
                                ComposerKt.sourceInformation($composer5, "C90@4271L1265:DatePickerDialog.android.kt#uh7d8r");
                                if (($changed3 & 3) != 2 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1706202235, $changed3, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:90)");
                                    }
                                    Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                                    Function3<ColumnScope, Composer, Integer, Unit> function33 = function32;
                                    final Function2<Composer, Integer, Unit> function28 = function26;
                                    final Function2<Composer, Integer, Unit> function29 = function27;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                                    Modifier modifier$iv = Modifier.INSTANCE;
                                    Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer5, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                                    int $changed$iv$iv = (48 << 3) & 112;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
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
                                        function03 = constructor;
                                        $composer5.createNode(function03);
                                    } else {
                                        function03 = constructor;
                                        $composer5.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer5);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                                        $changed$iv = 48;
                                    } else {
                                        $changed$iv = 48;
                                        if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                        }
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                        int i8 = ($changed$iv$iv$iv >> 6) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                        int $changed4 = (($changed$iv >> 6) & 112) | 6;
                                        ColumnScope $this$invoke_u24lambda_u242 = ColumnScopeInstance.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -2140243970, "C96@4721L64,98@4829L693:DatePickerDialog.android.kt#uh7d8r");
                                        Modifier modifier$iv2 = $this$invoke_u24lambda_u242.weight(Modifier.INSTANCE, 1.0f, false);
                                        ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                        Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                        MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                        int $changed$iv$iv2 = (0 << 3) & 112;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                        compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                        CompositionLocalMap localMap$iv$iv2 = $composer5.getCurrentCompositionLocalMap();
                                        Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer5, modifier$iv2);
                                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                        int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                        if (!($composer5.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        $composer5.startReusableNode();
                                        if (!$composer5.getInserting()) {
                                            function04 = constructor2;
                                            $composer5.createNode(function04);
                                        } else {
                                            function04 = constructor2;
                                            $composer5.useNode();
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer5);
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
                                        }
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                        int i9 = ($changed$iv$iv$iv2 >> 6) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        int i10 = ((0 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer5, 1276701771, "C96@4774L9:DatePickerDialog.android.kt#uh7d8r");
                                        function33.invoke($this$invoke_u24lambda_u242, $composer5, Integer.valueOf($changed4 & 14));
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        $composer5.endNode();
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        Modifier modifier$iv3 = PaddingKt.padding($this$invoke_u24lambda_u242.align(Modifier.INSTANCE, Alignment.INSTANCE.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                        Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                                        MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                                        int $changed$iv$iv3 = (0 << 3) & 112;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                        CompositionLocalMap localMap$iv$iv3 = $composer5.getCurrentCompositionLocalMap();
                                        Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer5, modifier$iv3);
                                        Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                        if (!($composer5.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        $composer5.startReusableNode();
                                        if (!$composer5.getInserting()) {
                                            function05 = constructor3;
                                            $composer5.createNode(function05);
                                        } else {
                                            function05 = constructor3;
                                            $composer5.useNode();
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer5);
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                            $changed$iv2 = 0;
                                            $composer6 = $composer5;
                                            if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                            }
                                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                                            int i11 = ($changed$iv$iv$iv3 >> 6) & 14;
                                            Composer $composer$iv = $composer6;
                                            ComposerKt.sourceInformationMarkerStart($composer$iv, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                                            int i12 = (($changed$iv2 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer$iv, 1276882687, "C100@5030L5,101@5106L5,102@5134L370,99@4927L577:DatePickerDialog.android.kt#uh7d8r");
                                            ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(DialogTokens.INSTANCE.getActionLabelTextColor(), $composer$iv, 6), TypographyKt.getValue(DialogTokens.INSTANCE.getActionLabelTextFont(), $composer$iv, 6), ComposableLambdaKt.rememberComposableLambda(642347978, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
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

                                                public final void invoke(Composer $composer7, int $changed5) {
                                                    ComposerKt.sourceInformation($composer7, "C106@5359L123,103@5160L322:DatePickerDialog.android.kt#uh7d8r");
                                                    if (($changed5 & 3) != 2 || !$composer7.getSkipping()) {
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(642347978, $changed5, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:103)");
                                                        }
                                                        float f2 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                        float f3 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                        final Function2<Composer, Integer, Unit> function210 = function28;
                                                        final Function2<Composer, Integer, Unit> function211 = function29;
                                                        AlertDialogKt.m2041AlertDialogFlowRowixp7dh8(f2, f3, ComposableLambdaKt.rememberComposableLambda(1241707635, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
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

                                                            public final void invoke(Composer $composer8, int $changed6) {
                                                                ComposerKt.sourceInformation($composer8, "C108@5441L15:DatePickerDialog.android.kt#uh7d8r");
                                                                if (($changed6 & 3) != 2 || !$composer8.getSkipping()) {
                                                                    if (ComposerKt.isTraceInProgress()) {
                                                                        ComposerKt.traceEventStart(1241707635, $changed6, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:107)");
                                                                    }
                                                                    Function2<Composer, Integer, Unit> function212 = function210;
                                                                    $composer8.startReplaceGroup(-779485335);
                                                                    ComposerKt.sourceInformation($composer8, "107@5404L8");
                                                                    if (function212 != null) {
                                                                        function212.invoke($composer8, 0);
                                                                        Unit unit = Unit.INSTANCE;
                                                                    }
                                                                    $composer8.endReplaceGroup();
                                                                    function211.invoke($composer8, 0);
                                                                    if (ComposerKt.isTraceInProgress()) {
                                                                        ComposerKt.traceEventEnd();
                                                                        return;
                                                                    }
                                                                    return;
                                                                }
                                                                $composer8.skipToGroupEnd();
                                                            }
                                                        }, $composer7, 54), $composer7, 438);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    $composer7.skipToGroupEnd();
                                                }
                                            }, $composer$iv, 54), $composer$iv, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            ComposerKt.sourceInformationMarkerEnd($composer$iv);
                                            ComposerKt.sourceInformationMarkerEnd($composer$iv);
                                            $composer6.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
                                            ComposerKt.sourceInformationMarkerEnd($composer6);
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
                                        $changed$iv2 = 0;
                                        $composer6 = $composer5;
                                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash3);
                                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                                        int i112 = ($changed$iv$iv$iv3 >> 6) & 14;
                                        Composer $composer$iv2 = $composer6;
                                        ComposerKt.sourceInformationMarkerStart($composer$iv2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                                        int i122 = (($changed$iv2 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer$iv2, 1276882687, "C100@5030L5,101@5106L5,102@5134L370,99@4927L577:DatePickerDialog.android.kt#uh7d8r");
                                        ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(DialogTokens.INSTANCE.getActionLabelTextColor(), $composer$iv2, 6), TypographyKt.getValue(DialogTokens.INSTANCE.getActionLabelTextFont(), $composer$iv2, 6), ComposableLambdaKt.rememberComposableLambda(642347978, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
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

                                            public final void invoke(Composer $composer7, int $changed5) {
                                                ComposerKt.sourceInformation($composer7, "C106@5359L123,103@5160L322:DatePickerDialog.android.kt#uh7d8r");
                                                if (($changed5 & 3) != 2 || !$composer7.getSkipping()) {
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(642347978, $changed5, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:103)");
                                                    }
                                                    float f2 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                    float f3 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                    final Function2<? super Composer, ? super Integer, Unit> function210 = function28;
                                                    final Function2<? super Composer, ? super Integer, Unit> function211 = function29;
                                                    AlertDialogKt.m2041AlertDialogFlowRowixp7dh8(f2, f3, ComposableLambdaKt.rememberComposableLambda(1241707635, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
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

                                                        public final void invoke(Composer $composer8, int $changed6) {
                                                            ComposerKt.sourceInformation($composer8, "C108@5441L15:DatePickerDialog.android.kt#uh7d8r");
                                                            if (($changed6 & 3) != 2 || !$composer8.getSkipping()) {
                                                                if (ComposerKt.isTraceInProgress()) {
                                                                    ComposerKt.traceEventStart(1241707635, $changed6, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:107)");
                                                                }
                                                                Function2<Composer, Integer, Unit> function212 = function210;
                                                                $composer8.startReplaceGroup(-779485335);
                                                                ComposerKt.sourceInformation($composer8, "107@5404L8");
                                                                if (function212 != null) {
                                                                    function212.invoke($composer8, 0);
                                                                    Unit unit = Unit.INSTANCE;
                                                                }
                                                                $composer8.endReplaceGroup();
                                                                function211.invoke($composer8, 0);
                                                                if (ComposerKt.isTraceInProgress()) {
                                                                    ComposerKt.traceEventEnd();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            $composer8.skipToGroupEnd();
                                                        }
                                                    }, $composer7, 54), $composer7, 438);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                $composer7.skipToGroupEnd();
                                            }
                                        }, $composer$iv2, 54), $composer$iv2, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                                        ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                                        $composer6.endNode();
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        $composer5.endNode();
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        ComposerKt.sourceInformationMarkerEnd($composer5);
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i82 = ($changed$iv$iv$iv >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                    int $changed42 = (($changed$iv >> 6) & 112) | 6;
                                    ColumnScope $this$invoke_u24lambda_u2422 = ColumnScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -2140243970, "C96@4721L64,98@4829L693:DatePickerDialog.android.kt#uh7d8r");
                                    Modifier modifier$iv22 = $this$invoke_u24lambda_u2422.weight(Modifier.INSTANCE, 1.0f, false);
                                    ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                    Alignment contentAlignment$iv3 = Alignment.INSTANCE.getTopStart();
                                    MeasurePolicy measurePolicy$iv22 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv3, false);
                                    int $changed$iv$iv22 = (0 << 3) & 112;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                    CompositionLocalMap localMap$iv$iv22 = $composer5.getCurrentCompositionLocalMap();
                                    Modifier materialized$iv$iv22 = ComposedModifierKt.materializeModifier($composer5, modifier$iv22);
                                    Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                                    int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!($composer5.getApplier() instanceof Applier)) {
                                    }
                                    $composer5.startReusableNode();
                                    if (!$composer5.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer5);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash22);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv22, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i92 = ($changed$iv$iv$iv22 >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                                    int i102 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer5, 1276701771, "C96@4774L9:DatePickerDialog.android.kt#uh7d8r");
                                    function33.invoke($this$invoke_u24lambda_u2422, $composer5, Integer.valueOf($changed42 & 14));
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    $composer5.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    Modifier modifier$iv32 = PaddingKt.padding($this$invoke_u24lambda_u2422.align(Modifier.INSTANCE, Alignment.INSTANCE.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                    Alignment contentAlignment$iv22 = Alignment.INSTANCE.getTopStart();
                                    MeasurePolicy measurePolicy$iv32 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv22, false);
                                    int $changed$iv$iv32 = (0 << 3) & 112;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                    CompositionLocalMap localMap$iv$iv32 = $composer5.getCurrentCompositionLocalMap();
                                    Modifier materialized$iv$iv32 = ComposedModifierKt.materializeModifier($composer5, modifier$iv32);
                                    Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                                    int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!($composer5.getApplier() instanceof Applier)) {
                                    }
                                    $composer5.startReusableNode();
                                    if (!$composer5.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer5);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv32), setCompositeKeyHash32);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv32, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i1122 = ($changed$iv$iv$iv32 >> 6) & 14;
                                    Composer $composer$iv22 = $composer6;
                                    ComposerKt.sourceInformationMarkerStart($composer$iv22, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                    BoxScopeInstance boxScopeInstance222 = BoxScopeInstance.INSTANCE;
                                    int i1222 = (($changed$iv2 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer$iv22, 1276882687, "C100@5030L5,101@5106L5,102@5134L370,99@4927L577:DatePickerDialog.android.kt#uh7d8r");
                                    ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(DialogTokens.INSTANCE.getActionLabelTextColor(), $composer$iv22, 6), TypographyKt.getValue(DialogTokens.INSTANCE.getActionLabelTextFont(), $composer$iv22, 6), ComposableLambdaKt.rememberComposableLambda(642347978, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
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

                                        public final void invoke(Composer $composer7, int $changed5) {
                                            ComposerKt.sourceInformation($composer7, "C106@5359L123,103@5160L322:DatePickerDialog.android.kt#uh7d8r");
                                            if (($changed5 & 3) != 2 || !$composer7.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(642347978, $changed5, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:103)");
                                                }
                                                float f2 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f3 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final Function2<? super Composer, ? super Integer, Unit> function210 = function28;
                                                final Function2<? super Composer, ? super Integer, Unit> function211 = function29;
                                                AlertDialogKt.m2041AlertDialogFlowRowixp7dh8(f2, f3, ComposableLambdaKt.rememberComposableLambda(1241707635, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
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

                                                    public final void invoke(Composer $composer8, int $changed6) {
                                                        ComposerKt.sourceInformation($composer8, "C108@5441L15:DatePickerDialog.android.kt#uh7d8r");
                                                        if (($changed6 & 3) != 2 || !$composer8.getSkipping()) {
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventStart(1241707635, $changed6, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:107)");
                                                            }
                                                            Function2<Composer, Integer, Unit> function212 = function210;
                                                            $composer8.startReplaceGroup(-779485335);
                                                            ComposerKt.sourceInformation($composer8, "107@5404L8");
                                                            if (function212 != null) {
                                                                function212.invoke($composer8, 0);
                                                                Unit unit = Unit.INSTANCE;
                                                            }
                                                            $composer8.endReplaceGroup();
                                                            function211.invoke($composer8, 0);
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventEnd();
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        $composer8.skipToGroupEnd();
                                                    }
                                                }, $composer7, 54), $composer7, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer7.skipToGroupEnd();
                                        }
                                    }, $composer$iv22, 54), $composer$iv22, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    ComposerKt.sourceInformationMarkerEnd($composer$iv22);
                                    ComposerKt.sourceInformationMarkerEnd($composer$iv22);
                                    $composer6.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    $composer5.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                } else {
                                    $composer5.skipToGroupEnd();
                                }
                            }
                        }, $composer4, 54), $composer4, 12582918, LocationRequestCompat.QUALITY_LOW_POWER);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer3, ($dirty2 & 14) | 3072 | (($dirty2 >> 15) & 896), 0);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            shape4 = shape3;
            tonalElevation4 = tonalElevation3;
            function25 = function24;
            properties3 = properties2;
            modifier4 = modifier3;
            colors3 = colors2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$2
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
                    DatePickerDialog_androidKt.m2308DatePickerDialogGmEhDVc(function0, function2, modifier4, function25, shape4, tonalElevation4, colors3, properties3, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }
}
