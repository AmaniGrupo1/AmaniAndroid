package androidx.compose.material3;

import android.content.res.Configuration;
import androidx.compose.foundation.layout.AlignmentLineKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.ElevationTokens;
import androidx.compose.material3.tokens.PlainTooltipTokens;
import androidx.compose.material3.tokens.RichTooltipTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Tooltip.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ao\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u00010\u0010¢\u0006\u0002\b\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0093\u0001\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0015\b\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0010¢\u0006\u0002\b\u00112\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0010¢\u0006\u0002\b\u00112\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0010¢\u0006\u0002\b\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001aH\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010&H\u0003ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006)"}, d2 = {"PlainTooltip", "", "Landroidx/compose/material3/TooltipScope;", "modifier", "Landroidx/compose/ui/Modifier;", "caretSize", "Landroidx/compose/ui/unit/DpSize;", "shape", "Landroidx/compose/ui/graphics/Shape;", "contentColor", "Landroidx/compose/ui/graphics/Color;", "containerColor", "tonalElevation", "Landroidx/compose/ui/unit/Dp;", "shadowElevation", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "PlainTooltip-7QI4Sbk", "(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "RichTooltip", "title", "action", "colors", "Landroidx/compose/material3/RichTooltipColors;", "text", "RichTooltip-yDvdmqw", "(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "drawCaretWithPath", "Landroidx/compose/ui/draw/DrawResult;", "Landroidx/compose/ui/draw/CacheDrawScope;", "caretType", "Landroidx/compose/material3/CaretType;", "density", "Landroidx/compose/ui/unit/Density;", "configuration", "Landroid/content/res/Configuration;", "anchorLayoutCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "drawCaretWithPath-JKu-mZY", "(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/material3/CaretType;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JJLandroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class Tooltip_androidKt {
    /* JADX INFO: renamed from: PlainTooltip-7QI4Sbk, reason: not valid java name */
    public static final void m3127PlainTooltip7QI4Sbk(final TooltipScope $this$PlainTooltip_u2d7QI4Sbk, Modifier modifier, long caretSize, Shape shape, long contentColor, long containerColor, float tonalElevation, float shadowElevation, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Shape shape2;
        final long contentColor2;
        long containerColor2;
        float tonalElevation2;
        long caretSize2;
        float shadowElevation2;
        int $dirty;
        float tonalElevation3;
        long caretSize3;
        Shape shape3;
        int $dirty2;
        long containerColor3;
        long containerColor4;
        Modifier drawCaretModifier;
        Composer $composer2;
        int $dirty3;
        final Modifier modifier3;
        final long caretSize4;
        final long contentColor3;
        final Shape shape4;
        final long containerColor5;
        final float tonalElevation4;
        final float shadowElevation3;
        final long caretSize5;
        Object value$iv;
        Composer $composer3 = $composer.startRestartGroup(1407069716);
        ComposerKt.sourceInformation($composer3, "C(PlainTooltip)P(4,0:c#ui.unit.DpSize,6,3:c#ui.graphics.Color,1:c#ui.graphics.Color,7:c#ui.unit.Dp,5:c#ui.unit.Dp)208@8412L26,209@8482L24,211@8552L26,96@3876L606,90@3685L797:Tooltip.android.kt#uh7d8r");
        int $dirty4 = $changed;
        if ((Integer.MIN_VALUE & i) != 0) {
            $dirty4 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty4 |= ($changed & 8) == 0 ? $composer3.changed($this$PlainTooltip_u2d7QI4Sbk) : $composer3.changedInstance($this$PlainTooltip_u2d7QI4Sbk) ? 4 : 2;
        }
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty4 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty4 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty4 |= ((i & 2) == 0 && $composer3.changed(caretSize)) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            if ((i & 4) == 0) {
                shape2 = shape;
                int i3 = $composer3.changed(shape2) ? 2048 : 1024;
                $dirty4 |= i3;
            } else {
                shape2 = shape;
            }
            $dirty4 |= i3;
        } else {
            shape2 = shape;
        }
        if (($changed & 24576) == 0) {
            if ((i & 8) == 0) {
                contentColor2 = contentColor;
                int i4 = $composer3.changed(contentColor2) ? 16384 : 8192;
                $dirty4 |= i4;
            } else {
                contentColor2 = contentColor;
            }
            $dirty4 |= i4;
        } else {
            contentColor2 = contentColor;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if ((i & 16) == 0) {
                containerColor2 = containerColor;
                int i5 = $composer3.changed(containerColor2) ? 131072 : 65536;
                $dirty4 |= i5;
            } else {
                containerColor2 = containerColor;
            }
            $dirty4 |= i5;
        } else {
            containerColor2 = containerColor;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty4 |= 1572864;
            tonalElevation2 = tonalElevation;
        } else if (($changed & 1572864) == 0) {
            tonalElevation2 = tonalElevation;
            $dirty4 |= $composer3.changed(tonalElevation2) ? 1048576 : 524288;
        } else {
            tonalElevation2 = tonalElevation;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty4 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty4 |= $composer3.changed(shadowElevation) ? 8388608 : 4194304;
        }
        if ((i & 128) != 0) {
            $dirty4 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty4 |= $composer3.changedInstance(function2) ? 67108864 : 33554432;
        }
        if ((38347923 & $dirty4) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier3 = modifier2;
            shape4 = shape2;
            containerColor5 = containerColor2;
            contentColor3 = contentColor2;
            tonalElevation4 = tonalElevation2;
            shadowElevation3 = shadowElevation;
            $dirty3 = $dirty4;
            caretSize4 = caretSize;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 2) != 0) {
                    caretSize2 = DpSize.INSTANCE.m7612getUnspecifiedMYxV2XQ();
                    $dirty4 &= -897;
                } else {
                    caretSize2 = caretSize;
                }
                if ((i & 4) != 0) {
                    $dirty4 &= -7169;
                    shape2 = TooltipDefaults.INSTANCE.getPlainTooltipContainerShape($composer3, 6);
                }
                if ((i & 8) != 0) {
                    contentColor2 = TooltipDefaults.INSTANCE.getPlainTooltipContentColor($composer3, 6);
                    $dirty4 &= -57345;
                }
                if ((i & 16) != 0) {
                    containerColor2 = TooltipDefaults.INSTANCE.getPlainTooltipContainerColor($composer3, 6);
                    $dirty4 &= -458753;
                }
                if (i6 != 0) {
                    tonalElevation2 = Dp.m7505constructorimpl(0);
                }
                if (i7 != 0) {
                    shadowElevation2 = Dp.m7505constructorimpl(0);
                    $dirty = $dirty4;
                    tonalElevation3 = tonalElevation2;
                    caretSize3 = caretSize2;
                } else {
                    shadowElevation2 = shadowElevation;
                    $dirty = $dirty4;
                    tonalElevation3 = tonalElevation2;
                    caretSize3 = caretSize2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty4 &= -897;
                }
                if ((i & 4) != 0) {
                    $dirty4 &= -7169;
                }
                if ((i & 8) != 0) {
                    $dirty4 &= -57345;
                }
                if ((i & 16) != 0) {
                    $dirty = $dirty4 & (-458753);
                    caretSize3 = caretSize;
                    shadowElevation2 = shadowElevation;
                    tonalElevation3 = tonalElevation2;
                } else {
                    shadowElevation2 = shadowElevation;
                    $dirty = $dirty4;
                    tonalElevation3 = tonalElevation2;
                    caretSize3 = caretSize;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                shape3 = shape2;
                ComposerKt.traceEventStart(1407069716, $dirty, -1, "androidx.compose.material3.PlainTooltip (Tooltip.android.kt:73)");
            } else {
                shape3 = shape2;
            }
            $composer3.startReplaceGroup(-333850415);
            ComposerKt.sourceInformation($composer3, "76@3183L7,77@3242L7,78@3281L343");
            long $this$isSpecified$iv = caretSize3;
            if (($this$isSpecified$iv != InlineClassHelperKt.UnspecifiedPackedFloats ? 1 : 0) != 0) {
                ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume = $composer3.consume(localDensity);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final Density density = (Density) objConsume;
                ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer3.consume(localConfiguration);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final Configuration configuration = (Configuration) objConsume2;
                Modifier.Companion companion = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, -333845325, "CC(remember):Tooltip.android.kt#9igjgp");
                boolean invalid$iv = ((((458752 & $dirty) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072 && $composer3.changed(containerColor2)) || ($dirty & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 131072) | $composer3.changed(density) | $composer3.changedInstance(configuration) | (((($dirty & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer3.changed(caretSize3)) || ($dirty & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                $dirty2 = $dirty;
                Object it$iv = $composer3.rememberedValue();
                if (invalid$iv) {
                    caretSize5 = caretSize3;
                } else {
                    caretSize5 = caretSize3;
                    if (it$iv != Composer.INSTANCE.getEmpty()) {
                        value$iv = it$iv;
                        containerColor3 = containerColor2;
                        containerColor4 = caretSize5;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    drawCaretModifier = $this$PlainTooltip_u2d7QI4Sbk.drawCaret(companion, (Function2) value$iv).then(modifier2);
                }
                final long containerColor6 = containerColor2;
                containerColor3 = containerColor6;
                containerColor4 = caretSize5;
                value$iv = (Function2) new Function2<CacheDrawScope, LayoutCoordinates, DrawResult>() { // from class: androidx.compose.material3.Tooltip_androidKt$PlainTooltip$drawCaretModifier$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final DrawResult invoke(CacheDrawScope $this$drawCaret, LayoutCoordinates anchorLayoutCoordinates) {
                        return Tooltip_androidKt.m3130drawCaretWithPathJKumZY($this$drawCaret, CaretType.Plain, density, configuration, containerColor6, caretSize5, anchorLayoutCoordinates);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                drawCaretModifier = $this$PlainTooltip_u2d7QI4Sbk.drawCaret(companion, (Function2) value$iv).then(modifier2);
            } else {
                $dirty2 = $dirty;
                containerColor3 = containerColor2;
                containerColor4 = caretSize3;
                drawCaretModifier = modifier2;
            }
            $composer3.endReplaceGroup();
            Shape shape5 = shape3;
            $composer2 = $composer3;
            SurfaceKt.m2826SurfaceT9BRK9s(drawCaretModifier, shape5, containerColor3, 0L, tonalElevation3, shadowElevation2, null, ComposableLambdaKt.rememberComposableLambda(1430116975, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.Tooltip_androidKt$PlainTooltip$1
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
                    Function0<ComposeUiNode> function0;
                    ComposerKt.sourceInformation($composer4, "C97@3886L590:Tooltip.android.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1430116975, $changed2, -1, "androidx.compose.material3.PlainTooltip.<anonymous> (Tooltip.android.kt:97)");
                        }
                        Modifier modifier$iv = PaddingKt.padding(SizeKt.m868sizeInqDBjuR0$default(Modifier.INSTANCE, TooltipKt.getTooltipMinWidth(), TooltipKt.getTooltipMinHeight(), TooltipKt.getPlainTooltipMaxWidth(), 0.0f, 8, null), TooltipKt.getPlainTooltipContentPadding());
                        long j = contentColor2;
                        Function2<Composer, Integer, Unit> function22 = function2;
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
                            function0 = constructor;
                            $composer4.createNode(function0);
                        } else {
                            function0 = constructor;
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
                        int i8 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        int i9 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 1903647947, "C106@4266L5,108@4285L181:Tooltip.android.kt#uh7d8r");
                        TextStyle textStyle = TypographyKt.getValue(PlainTooltipTokens.INSTANCE.getSupportingTextFont(), $composer4, 6);
                        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(j)), TextKt.getLocalTextStyle().provides(textStyle)}, function22, $composer4, ProvidedValue.$stable);
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
            }, $composer3, 54), $composer2, (($dirty2 >> 6) & 112) | 12582912 | (($dirty2 >> 9) & 896) | (($dirty2 >> 6) & 57344) | (($dirty2 >> 6) & 458752), 72);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $dirty3 = $dirty2;
            modifier3 = modifier2;
            caretSize4 = containerColor4;
            contentColor3 = contentColor2;
            shape4 = shape5;
            containerColor5 = containerColor3;
            tonalElevation4 = tonalElevation3;
            shadowElevation3 = shadowElevation2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.Tooltip_androidKt$PlainTooltip$2
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
                    Tooltip_androidKt.m3127PlainTooltip7QI4Sbk($this$PlainTooltip_u2d7QI4Sbk, modifier3, caretSize4, shape4, contentColor3, containerColor5, tonalElevation4, shadowElevation3, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: RichTooltip-yDvdmqw, reason: not valid java name */
    public static final void m3128RichTooltipyDvdmqw(final TooltipScope $this$RichTooltip_u2dyDvdmqw, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, long caretSize, Shape shape, RichTooltipColors colors, float tonalElevation, float shadowElevation, final Function2<? super Composer, ? super Integer, Unit> function23, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        long caretSize2;
        Shape shape2;
        int i2;
        RichTooltipColors colors2;
        float tonalElevation2;
        int $dirty;
        float shadowElevation2;
        RichTooltipColors colors3;
        long caretSize3;
        Modifier drawCaretModifier;
        Composer $composer2;
        final Function2<? super Composer, ? super Integer, Unit> function26;
        final float tonalElevation3;
        final RichTooltipColors colors4;
        final Modifier modifier3;
        final Function2<? super Composer, ? super Integer, Unit> function27;
        final Shape shape3;
        final float shadowElevation3;
        final long caretSize4;
        final long elevatedColor;
        Object value$iv;
        Composer $composer3 = $composer.startRestartGroup(1867454921);
        ComposerKt.sourceInformation($composer3, "C(RichTooltip)P(3,7!1,1:c#ui.unit.DpSize,5!1,8:c#ui.unit.Dp,4:c#ui.unit.Dp)255@9959L25,257@10034L19,*148@5873L7,150@5944L11,150@5956L61,178@6991L1595,167@6622L1964:Tooltip.android.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((Integer.MIN_VALUE & i) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= ($changed & 8) == 0 ? $composer3.changed($this$RichTooltip_u2dyDvdmqw) : $composer3.changedInstance($this$RichTooltip_u2dyDvdmqw) ? 4 : 2;
        }
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function24 = function2;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function24 = function2;
            $dirty2 |= $composer3.changedInstance(function24) ? 256 : 128;
        } else {
            function24 = function2;
        }
        int i5 = i & 4;
        if (i5 != 0) {
            $dirty2 |= 3072;
            function25 = function22;
        } else if (($changed & 3072) == 0) {
            function25 = function22;
            $dirty2 |= $composer3.changedInstance(function25) ? 2048 : 1024;
        } else {
            function25 = function22;
        }
        if (($changed & 24576) == 0) {
            if ((i & 8) == 0) {
                caretSize2 = caretSize;
                int i6 = $composer3.changed(caretSize2) ? 16384 : 8192;
                $dirty2 |= i6;
            } else {
                caretSize2 = caretSize;
            }
            $dirty2 |= i6;
        } else {
            caretSize2 = caretSize;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 16) == 0) {
                shape2 = shape;
                int i7 = $composer3.changed(shape2) ? 131072 : 65536;
                $dirty2 |= i7;
            } else {
                shape2 = shape;
            }
            $dirty2 |= i7;
        } else {
            shape2 = shape;
        }
        if (($changed & 1572864) == 0) {
            $dirty2 |= ((i & 32) == 0 && $composer3.changed(colors)) ? 1048576 : 524288;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer3.changed(tonalElevation) ? 8388608 : 4194304;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty2 |= 100663296;
            i2 = i9;
        } else if (($changed & 100663296) == 0) {
            i2 = i9;
            $dirty2 |= $composer3.changed(shadowElevation) ? 67108864 : 33554432;
        } else {
            i2 = i9;
        }
        if ((i & 256) != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty2 |= $composer3.changedInstance(function23) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        int $dirty3 = $dirty2;
        if ((306783379 & $dirty2) == 306783378 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            colors4 = colors;
            $composer2 = $composer3;
            modifier3 = modifier2;
            function27 = function24;
            function26 = function25;
            shape3 = shape2;
            caretSize4 = caretSize2;
            tonalElevation3 = tonalElevation;
            shadowElevation3 = shadowElevation;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i4 != 0) {
                    function24 = null;
                }
                if (i5 != 0) {
                    function25 = null;
                }
                if ((i & 8) != 0) {
                    caretSize2 = DpSize.INSTANCE.m7612getUnspecifiedMYxV2XQ();
                    $dirty3 &= -57345;
                }
                if ((i & 16) != 0) {
                    $dirty3 &= -458753;
                    shape2 = TooltipDefaults.INSTANCE.getRichTooltipContainerShape($composer3, 6);
                }
                if ((i & 32) != 0) {
                    colors2 = TooltipDefaults.INSTANCE.richTooltipColors($composer3, 6);
                    $dirty3 &= -3670017;
                } else {
                    colors2 = colors;
                }
                float tonalElevation4 = i8 != 0 ? ElevationTokens.INSTANCE.m3455getLevel0D9Ej5fM() : tonalElevation;
                if (i2 != 0) {
                    int i10 = $dirty3;
                    tonalElevation2 = tonalElevation4;
                    $dirty = i10;
                    shadowElevation2 = RichTooltipTokens.INSTANCE.m3753getContainerElevationD9Ej5fM();
                } else {
                    int i11 = $dirty3;
                    tonalElevation2 = tonalElevation4;
                    $dirty = i11;
                    shadowElevation2 = shadowElevation;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 8) != 0) {
                    $dirty3 &= -57345;
                }
                if ((i & 16) != 0) {
                    $dirty3 &= -458753;
                }
                if ((i & 32) != 0) {
                    int i12 = $dirty3 & (-3670017);
                    tonalElevation2 = tonalElevation;
                    shadowElevation2 = shadowElevation;
                    $dirty = i12;
                    colors2 = colors;
                } else {
                    colors2 = colors;
                    shadowElevation2 = shadowElevation;
                    $dirty = $dirty3;
                    tonalElevation2 = tonalElevation;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1867454921, $dirty, -1, "androidx.compose.material3.RichTooltip (Tooltip.android.kt:147)");
            }
            ProvidableCompositionLocal<Dp> localAbsoluteTonalElevation = SurfaceKt.getLocalAbsoluteTonalElevation();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localAbsoluteTonalElevation);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            float arg0$iv = ((Dp) objConsume).m7519unboximpl();
            long elevatedColor2 = ColorSchemeKt.m2211applyTonalElevationRFCenO8(MaterialTheme.INSTANCE.getColorScheme($composer3, 6), colors2.getContainerColor(), Dp.m7505constructorimpl(arg0$iv + tonalElevation2), $composer3, 0);
            Shape shape4 = shape2;
            $composer3.startReplaceGroup(1472746423);
            ComposerKt.sourceInformation($composer3, "153@6122L7,154@6181L7,155@6220L341");
            long $this$isSpecified$iv = caretSize2;
            if ($this$isSpecified$iv != InlineClassHelperKt.UnspecifiedPackedFloats) {
                ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer3.consume(localDensity);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final Density density = (Density) objConsume2;
                ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume3 = $composer3.consume(localConfiguration);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final Configuration configuration = (Configuration) objConsume3;
                Modifier.Companion companion = Modifier.INSTANCE;
                colors3 = colors2;
                ComposerKt.sourceInformationMarkerStart($composer3, 1472751513, "CC(remember):Tooltip.android.kt#9igjgp");
                boolean invalid$iv = $composer3.changed(density) | $composer3.changedInstance(configuration) | $composer3.changed(elevatedColor2) | ((((57344 & $dirty) ^ 24576) > 16384 && $composer3.changed(caretSize2)) || ($dirty & 24576) == 16384);
                Object it$iv = $composer3.rememberedValue();
                if (invalid$iv) {
                    elevatedColor = elevatedColor2;
                } else {
                    elevatedColor = elevatedColor2;
                    if (it$iv != Composer.INSTANCE.getEmpty()) {
                        value$iv = it$iv;
                        caretSize3 = caretSize2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    drawCaretModifier = $this$RichTooltip_u2dyDvdmqw.drawCaret(companion, (Function2) value$iv).then(modifier2);
                }
                final long caretSize5 = caretSize2;
                caretSize3 = caretSize5;
                value$iv = (Function2) new Function2<CacheDrawScope, LayoutCoordinates, DrawResult>() { // from class: androidx.compose.material3.Tooltip_androidKt$RichTooltip$drawCaretModifier$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final DrawResult invoke(CacheDrawScope $this$drawCaret, LayoutCoordinates anchorLayoutCoordinates) {
                        return Tooltip_androidKt.m3130drawCaretWithPathJKumZY($this$drawCaret, CaretType.Rich, density, configuration, elevatedColor, caretSize5, anchorLayoutCoordinates);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                drawCaretModifier = $this$RichTooltip_u2dyDvdmqw.drawCaret(companion, (Function2) value$iv).then(modifier2);
            } else {
                colors3 = colors2;
                caretSize3 = caretSize2;
                drawCaretModifier = modifier2;
            }
            $composer3.endReplaceGroup();
            final RichTooltipColors colors5 = colors3;
            $composer2 = $composer3;
            SurfaceKt.m2826SurfaceT9BRK9s(SizeKt.m868sizeInqDBjuR0$default(drawCaretModifier, TooltipKt.getTooltipMinWidth(), TooltipKt.getTooltipMinHeight(), TooltipKt.getRichTooltipMaxWidth(), 0.0f, 8, null), shape4, colors3.getContainerColor(), 0L, tonalElevation2, shadowElevation2, null, ComposableLambdaKt.rememberComposableLambda(317290958, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.Tooltip_androidKt$RichTooltip$1
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

                /* JADX WARN: Removed duplicated region for block: B:28:0x0187  */
                /* JADX WARN: Removed duplicated region for block: B:29:0x0191  */
                /* JADX WARN: Removed duplicated region for block: B:47:0x02fa  */
                /* JADX WARN: Removed duplicated region for block: B:48:0x02fd  */
                /* JADX WARN: Removed duplicated region for block: B:50:0x0300  */
                /* JADX WARN: Removed duplicated region for block: B:51:0x0303  */
                /* JADX WARN: Removed duplicated region for block: B:54:0x035e  */
                /* JADX WARN: Removed duplicated region for block: B:57:0x036a  */
                /* JADX WARN: Removed duplicated region for block: B:58:0x0370  */
                /* JADX WARN: Removed duplicated region for block: B:69:0x0452  */
                /* JADX WARN: Removed duplicated region for block: B:70:0x0458  */
                /* JADX WARN: Removed duplicated region for block: B:88:0x05da  */
                /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(Composer $composer4, int $changed2) {
                    Function0<ComposeUiNode> function0;
                    Function2<Composer, Integer, Unit> function28;
                    Function2<Composer, Integer, Unit> function29;
                    Function0<ComposeUiNode> function02;
                    int compositeKeyHash$iv$iv;
                    Function0<ComposeUiNode> function03;
                    Composer $this$Layout_u24lambda_u240$iv$iv;
                    Function0<ComposeUiNode> function04;
                    Composer $composer5;
                    ComposerKt.sourceInformation($composer4, "C179@7066L5,180@7133L5,181@7210L5,183@7225L1355:Tooltip.android.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(317290958, $changed2, -1, "androidx.compose.material3.RichTooltip.<anonymous> (Tooltip.android.kt:179)");
                        }
                        TextStyle actionLabelTextStyle = TypographyKt.getValue(RichTooltipTokens.INSTANCE.getActionLabelTextFont(), $composer4, 6);
                        TextStyle subheadTextStyle = TypographyKt.getValue(RichTooltipTokens.INSTANCE.getSubheadFont(), $composer4, 6);
                        TextStyle supportingTextStyle = TypographyKt.getValue(RichTooltipTokens.INSTANCE.getSupportingTextFont(), $composer4, 6);
                        Modifier modifier$iv = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, TooltipKt.getRichTooltipHorizontalPadding(), 0.0f, 2, null);
                        Function2<Composer, Integer, Unit> function210 = function24;
                        Function2<Composer, Integer, Unit> function211 = function25;
                        RichTooltipColors richTooltipColors = colors5;
                        Function2<Composer, Integer, Unit> function212 = function23;
                        ComposerKt.sourceInformationMarkerStart($composer4, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                        int $changed$iv$iv = (6 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
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
                            function0 = constructor;
                            $composer4.createNode(function0);
                        } else {
                            function0 = constructor;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer4);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                            function28 = function210;
                            if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                            }
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                            int i13 = ($changed$iv$iv$iv >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                            int i14 = ((6 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -459254051, "C193@7718L319:Tooltip.android.kt#uh7d8r");
                            $composer4.startReplaceGroup(955016030);
                            ComposerKt.sourceInformation($composer4, "*185@7347L344");
                            if (function28 != null) {
                                function29 = function211;
                            } else {
                                Function2<Composer, Integer, Unit> function213 = function28;
                                function29 = function211;
                                Modifier modifier$iv2 = AlignmentLineKt.m663paddingFromBaselineVpY3zN4$default(Modifier.INSTANCE, TooltipKt.getHeightToSubheadFirstLine(), 0.0f, 2, null);
                                ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                int $changed$iv$iv2 = (6 << 3) & 112;
                                ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                                Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer4, modifier$iv2);
                                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!($composer4.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                    function02 = constructor2;
                                    $composer4.createNode(function02);
                                } else {
                                    function02 = constructor2;
                                    $composer4.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer4);
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash2);
                                }
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                int i15 = ($changed$iv$iv$iv2 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                int i16 = ((6 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, 1468424960, "C186@7446L227:Tooltip.android.kt#uh7d8r");
                                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(richTooltipColors.getTitleContentColor())), TextKt.getLocalTextStyle().provides(subheadTextStyle)}, function213, $composer4, ProvidedValue.$stable);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                Unit unit = Unit.INSTANCE;
                                Unit unit2 = Unit.INSTANCE;
                            }
                            $composer4.endReplaceGroup();
                            Modifier modifier$iv3 = TooltipKt.textVerticalPadding(Modifier.INSTANCE, function28 == null, function29 == null);
                            ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                            Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                            MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                            int $changed$iv$iv3 = (0 << 3) & 112;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                            compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                            Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer4, modifier$iv3);
                            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!($composer4.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer4.startReusableNode();
                            if (!$composer4.getInserting()) {
                                function03 = constructor3;
                                $composer4.createNode(function03);
                            } else {
                                function03 = constructor3;
                                $composer4.useNode();
                            }
                            $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash3);
                            }
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                            int i17 = ($changed$iv$iv$iv3 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                            int i18 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1959181329, "C194@7812L211:Tooltip.android.kt#uh7d8r");
                            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(richTooltipColors.getContentColor())), TextKt.getLocalTextStyle().provides(supportingTextStyle)}, function212, $composer4, ProvidedValue.$stable);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.startReplaceGroup(955039618);
                            ComposerKt.sourceInformation($composer4, "*201@8080L476");
                            if (function29 != null) {
                                $composer5 = $composer4;
                            } else {
                                Function2<Composer, Integer, Unit> function214 = function29;
                                Modifier modifier$iv4 = PaddingKt.m822paddingqDBjuR0$default(SizeKt.m855requiredHeightInVpY3zN4$default(Modifier.INSTANCE, TooltipKt.getActionLabelMinHeight(), 0.0f, 2, null), 0.0f, 0.0f, 0.0f, TooltipKt.getActionLabelBottomPadding(), 7, null);
                                ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                Alignment contentAlignment$iv3 = Alignment.INSTANCE.getTopStart();
                                MeasurePolicy measurePolicy$iv4 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv3, false);
                                int $changed$iv$iv4 = (6 << 3) & 112;
                                ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv4 = $composer4.getCurrentCompositionLocalMap();
                                Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer4, modifier$iv4);
                                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!($composer4.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                    function04 = constructor4;
                                    $composer4.createNode(function04);
                                } else {
                                    function04 = constructor4;
                                    $composer4.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer4);
                                $composer5 = $composer4;
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                                }
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                                int i19 = ($changed$iv$iv$iv4 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                                int i20 = ((6 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer5, 1469278235, "C206@8306L232:Tooltip.android.kt#uh7d8r");
                                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(richTooltipColors.getActionContentColor())), TextKt.getLocalTextStyle().provides(actionLabelTextStyle)}, function214, $composer5, ProvidedValue.$stable);
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                $composer5.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                Unit unit3 = Unit.INSTANCE;
                                Unit unit4 = Unit.INSTANCE;
                            }
                            $composer5.endReplaceGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer5);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        function28 = function210;
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i132 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        int i142 = ((6 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -459254051, "C193@7718L319:Tooltip.android.kt#uh7d8r");
                        $composer4.startReplaceGroup(955016030);
                        ComposerKt.sourceInformation($composer4, "*185@7347L344");
                        if (function28 != null) {
                        }
                        $composer4.endReplaceGroup();
                        Modifier modifier$iv32 = TooltipKt.textVerticalPadding(Modifier.INSTANCE, function28 == null, function29 == null);
                        ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        Alignment contentAlignment$iv22 = Alignment.INSTANCE.getTopStart();
                        MeasurePolicy measurePolicy$iv32 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv22, false);
                        int $changed$iv$iv32 = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv32 = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv32 = ComposedModifierKt.materializeModifier($composer4, modifier$iv32);
                        Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                        }
                        $composer4.startReusableNode();
                        if (!$composer4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash32);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv32, ComposeUiNode.INSTANCE.getSetModifier());
                        int i172 = ($changed$iv$iv$iv32 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                        int i182 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1959181329, "C194@7812L211:Tooltip.android.kt#uh7d8r");
                        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(richTooltipColors.getContentColor())), TextKt.getLocalTextStyle().provides(supportingTextStyle)}, function212, $composer4, ProvidedValue.$stable);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.startReplaceGroup(955039618);
                        ComposerKt.sourceInformation($composer4, "*201@8080L476");
                        if (function29 != null) {
                        }
                        $composer5.endReplaceGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer5);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer4.skipToGroupEnd();
                    }
                }
            }, $composer3, 54), $composer2, (($dirty >> 12) & 112) | 12582912 | (($dirty >> 9) & 57344) | (($dirty >> 9) & 458752), 72);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            function26 = function25;
            tonalElevation3 = tonalElevation2;
            colors4 = colors5;
            modifier3 = modifier2;
            function27 = function24;
            shape3 = shape4;
            shadowElevation3 = shadowElevation2;
            caretSize4 = caretSize3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.Tooltip_androidKt$RichTooltip$2
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

                public final void invoke(Composer composer, int i13) {
                    Tooltip_androidKt.m3128RichTooltipyDvdmqw($this$RichTooltip_u2dyDvdmqw, modifier3, function27, function26, caretSize4, shape3, colors4, tonalElevation3, shadowElevation3, function23, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: drawCaretWithPath-JKu-mZY, reason: not valid java name */
    public static final DrawResult m3130drawCaretWithPathJKumZY(CacheDrawScope $this$drawCaretWithPath_u2dJKu_u2dmZY, CaretType caretType, Density density, Configuration configuration, final long containerColor, long caretSize, final LayoutCoordinates anchorLayoutCoordinates) {
        float f;
        float anchorMidFromRightScreenEdge;
        long position;
        final Path path = AndroidPath_androidKt.Path();
        if (anchorLayoutCoordinates != null) {
            int caretHeightPx = density.mo399roundToPx0680j_4(DpSize.m7601getHeightD9Ej5fM(caretSize));
            int caretWidthPx = density.mo399roundToPx0680j_4(DpSize.m7603getWidthD9Ej5fM(caretSize));
            int $this$dp$iv = configuration.screenWidthDp;
            int screenWidthPx = density.mo399roundToPx0680j_4(Dp.m7505constructorimpl($this$dp$iv));
            int tooltipAnchorSpacing = density.mo399roundToPx0680j_4(TooltipKt.getSpacingBetweenTooltipAndAnchor());
            Rect anchorBounds = LayoutCoordinatesKt.boundsInWindow(anchorLayoutCoordinates, true);
            float anchorLeft = anchorBounds.getLeft();
            float anchorRight = anchorBounds.getRight();
            float anchorTop = anchorBounds.getTop();
            float f2 = 2;
            float anchorMid = (anchorRight + anchorLeft) / f2;
            float anchorWidth = anchorRight - anchorLeft;
            float tooltipWidth = Size.m4521getWidthimpl($this$drawCaretWithPath_u2dJKu_u2dmZY.m4232getSizeNHjbRc());
            float tooltipHeight = Size.m4518getHeightimpl($this$drawCaretWithPath_u2dJKu_u2dmZY.m4232getSizeNHjbRc());
            boolean isCaretTop = (anchorTop - tooltipHeight) - ((float) tooltipAnchorSpacing) < 0.0f;
            if (isCaretTop) {
                f = 0.0f;
            } else {
                f = tooltipHeight;
            }
            float caretY = f;
            if (caretType != CaretType.Plain) {
                anchorMidFromRightScreenEdge = caretY;
                long preferredPosition = OffsetKt.Offset(anchorMid - anchorLeft, anchorMidFromRightScreenEdge);
                if (anchorLeft + tooltipWidth > screenWidthPx) {
                    preferredPosition = OffsetKt.Offset(anchorMid - (anchorRight - tooltipWidth), anchorMidFromRightScreenEdge);
                    if (anchorRight - tooltipWidth < 0.0f) {
                        if ((anchorLeft - (tooltipWidth / f2)) + (anchorWidth / f2) <= 0.0f) {
                            preferredPosition = OffsetKt.Offset(anchorMid, anchorMidFromRightScreenEdge);
                        } else if (((tooltipWidth / f2) + anchorRight) - (anchorWidth / f2) >= screenWidthPx) {
                            float caretX = tooltipWidth - (screenWidthPx - anchorMid);
                            preferredPosition = OffsetKt.Offset(caretX, anchorMidFromRightScreenEdge);
                        } else {
                            preferredPosition = OffsetKt.Offset(tooltipWidth / f2, anchorMidFromRightScreenEdge);
                        }
                    }
                }
                position = preferredPosition;
            } else if ((tooltipWidth / f2) + anchorMid > screenWidthPx) {
                float caretX2 = tooltipWidth - (screenWidthPx - anchorMid);
                anchorMidFromRightScreenEdge = caretY;
                position = OffsetKt.Offset(caretX2, anchorMidFromRightScreenEdge);
            } else {
                anchorMidFromRightScreenEdge = caretY;
                float tooltipLeft = anchorLeft - ((Size.m4521getWidthimpl($this$drawCaretWithPath_u2dJKu_u2dmZY.m4232getSizeNHjbRc()) / f2) - (anchorWidth / f2));
                float caretX3 = anchorMid - Math.max(tooltipLeft, 0.0f);
                position = OffsetKt.Offset(caretX3, anchorMidFromRightScreenEdge);
            }
            if (isCaretTop) {
                path.moveTo(Offset.m4452getXimpl(position), Offset.m4453getYimpl(position));
                path.lineTo(Offset.m4452getXimpl(position) + (caretWidthPx / 2), Offset.m4453getYimpl(position));
                path.lineTo(Offset.m4452getXimpl(position), Offset.m4453getYimpl(position) - caretHeightPx);
                path.lineTo(Offset.m4452getXimpl(position) - (caretWidthPx / 2), Offset.m4453getYimpl(position));
                path.close();
            } else {
                path.moveTo(Offset.m4452getXimpl(position), Offset.m4453getYimpl(position));
                path.lineTo(Offset.m4452getXimpl(position) + (caretWidthPx / 2), Offset.m4453getYimpl(position));
                path.lineTo(Offset.m4452getXimpl(position), Offset.m4453getYimpl(position) + caretHeightPx);
                path.lineTo(Offset.m4452getXimpl(position) - (caretWidthPx / 2), Offset.m4453getYimpl(position));
                path.close();
            }
        }
        return $this$drawCaretWithPath_u2dJKu_u2dmZY.onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.material3.Tooltip_androidKt$drawCaretWithPath$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                invoke2(contentDrawScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ContentDrawScope $this$onDrawWithContent) {
                if (anchorLayoutCoordinates != null) {
                    $this$onDrawWithContent.drawContent();
                    DrawScope.m5261drawPathLG529CI$default($this$onDrawWithContent, path, containerColor, 0.0f, null, null, 0, 60, null);
                }
            }
        });
    }
}
