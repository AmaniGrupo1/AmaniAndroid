package androidx.compose.ui.graphics.vector;

import androidx.autofill.HintConstants;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.graphics.vector.VectorProperty;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: compiled from: VectorPainter.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0093\u0001\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2@\u0010\u000f\u001a<\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0011\u0012\b\b\n\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0011\u0012\b\b\n\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\u00120\u0010¢\u0006\u0002\b\u0013¢\u0006\u0002\b\u0014H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u009d\u0001\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u0017\u001a\u00020\u00182@\u0010\u000f\u001a<\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0011\u0012\b\b\n\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0011\u0012\b\b\n\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\u00120\u0010¢\u0006\u0002\b\u0013¢\u0006\u0002\b\u0014H\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0015\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u0010\u001d\u001a&\u0010\u001e\u001a\u00020\u0012*\u00020\u001f2\u0017\u0010 \u001a\u0013\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00120!¢\u0006\u0002\b\"H\u0082\b\u001a#\u0010#\u001a\u00020$*\u00020%2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b&\u0010'\u001a'\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010+\u001a!\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002¢\u0006\u0004\b.\u0010/\u001aA\u00100\u001a\u00020\u0003*\u00020\u00032\u0006\u0010)\u001a\u00020$2\u0006\u00101\u001a\u00020$2\b\b\u0002\u0010\n\u001a\u00020\u00012\b\u00102\u001a\u0004\u0018\u00010-2\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0000¢\u0006\u0004\b3\u00104\u001a \u00105\u001a\u00020\u00032\u0006\u00106\u001a\u00020%2\u0006\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u000209H\u0000\u001a\u0014\u0010:\u001a\u000209*\u0002092\u0006\u0010;\u001a\u00020<H\u0000\u001a+\u0010=\u001a\u00020\u00122\u0006\u0010>\u001a\u00020<2\u0014\b\u0002\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020A0@H\u0007¢\u0006\u0002\u0010B\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"RootGroupName", "", "rememberVectorPainter", "Landroidx/compose/ui/graphics/vector/VectorPainter;", "defaultWidth", "Landroidx/compose/ui/unit/Dp;", "defaultHeight", "viewportWidth", "", "viewportHeight", HintConstants.AUTOFILL_HINT_NAME, "tintColor", "Landroidx/compose/ui/graphics/Color;", "tintBlendMode", "Landroidx/compose/ui/graphics/BlendMode;", "content", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "", "Landroidx/compose/runtime/Composable;", "Landroidx/compose/ui/graphics/vector/VectorComposable;", "rememberVectorPainter-mlNsNFs", "(FFFFLjava/lang/String;JILkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;", "autoMirror", "", "rememberVectorPainter-vIP8VLU", "(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;", "image", "Landroidx/compose/ui/graphics/vector/ImageVector;", "(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;", "mirror", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "obtainSizePx", "Landroidx/compose/ui/geometry/Size;", "Landroidx/compose/ui/unit/Density;", "obtainSizePx-VpY3zN4", "(Landroidx/compose/ui/unit/Density;FF)J", "obtainViewportSize", "defaultSize", "obtainViewportSize-Pq9zytI", "(JFF)J", "createColorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "createColorFilter-xETnrds", "(JI)Landroidx/compose/ui/graphics/ColorFilter;", "configureVectorPainter", "viewportSize", "intrinsicColorFilter", "configureVectorPainter-T4PVSW8", "(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/ColorFilter;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;", "createVectorPainterFromImageVector", "density", "imageVector", "root", "Landroidx/compose/ui/graphics/vector/GroupComponent;", "createGroupComponent", "currentGroup", "Landroidx/compose/ui/graphics/vector/VectorGroup;", "RenderVectorGroup", "group", "configs", "", "Landroidx/compose/ui/graphics/vector/VectorConfig;", "(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class VectorPainterKt {
    public static final String RootGroupName = "VectorRootGroup";

    @Deprecated(message = "Replace rememberVectorPainter graphicsLayer that consumes the auto mirror flag", replaceWith = @ReplaceWith(expression = "rememberVectorPainter(defaultWidth, defaultHeight, viewportWidth, viewportHeight, name, tintColor, tintBlendMode, false, content)", imports = {"androidx.compose.ui.graphics.vector"}))
    /* JADX INFO: renamed from: rememberVectorPainter-mlNsNFs, reason: not valid java name */
    public static final VectorPainter m5457rememberVectorPaintermlNsNFs(float f, float f2, float viewportWidth, float viewportHeight, String name, long j, int i, Function4<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> function4, Composer $composer, int $changed, int i2) {
        float viewportWidth2;
        float viewportHeight2;
        String name2;
        long jM4733getUnspecified0d7_KjU;
        int iM4635getSrcIn0nO6VwU;
        ComposerKt.sourceInformationMarkerStart($composer, 411310745, "C(rememberVectorPainter)P(2:c#ui.unit.Dp,1:c#ui.unit.Dp,7,6,3,5:c#ui.graphics.Color,4:c#ui.graphics.BlendMode)85@3806L208:VectorPainter.kt#huu6hf");
        if ((i2 & 4) != 0) {
            viewportWidth2 = Float.NaN;
        } else {
            viewportWidth2 = viewportWidth;
        }
        if ((i2 & 8) == 0) {
            viewportHeight2 = viewportHeight;
        } else {
            viewportHeight2 = Float.NaN;
        }
        if ((i2 & 16) == 0) {
            name2 = name;
        } else {
            name2 = RootGroupName;
        }
        if ((i2 & 32) == 0) {
            jM4733getUnspecified0d7_KjU = j;
        } else {
            jM4733getUnspecified0d7_KjU = Color.INSTANCE.m4733getUnspecified0d7_KjU();
        }
        if ((i2 & 64) == 0) {
            iM4635getSrcIn0nO6VwU = i;
        } else {
            iM4635getSrcIn0nO6VwU = BlendMode.INSTANCE.m4635getSrcIn0nO6VwU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(411310745, $changed, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:85)");
        }
        VectorPainter vectorPainterM5458rememberVectorPaintervIP8VLU = m5458rememberVectorPaintervIP8VLU(f, f2, viewportWidth2, viewportHeight2, name2, jM4733getUnspecified0d7_KjU, iM4635getSrcIn0nO6VwU, false, function4, $composer, ($changed & 14) | 12582912 | ($changed & 112) | ($changed & 896) | ($changed & 7168) | (57344 & $changed) | (458752 & $changed) | (3670016 & $changed) | (($changed << 3) & 234881024), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return vectorPainterM5458rememberVectorPaintervIP8VLU;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01ca  */
    /* JADX INFO: renamed from: rememberVectorPainter-vIP8VLU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final VectorPainter m5458rememberVectorPaintervIP8VLU(float f, float f2, float f3, float f4, String str, long j, int i, boolean z, Function4<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> function4, Composer composer, int i2, int i3) {
        float f5;
        float f6;
        String str2;
        long jM4733getUnspecified0d7_KjU;
        int iM4635getSrcIn0nO6VwU;
        boolean z2;
        final Function4<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> function42;
        boolean z3;
        boolean z4;
        Object obj;
        boolean zChangedInstance;
        Object objRememberedValue;
        ComposerKt.sourceInformationMarkerStart(composer, 1685735925, "C(rememberVectorPainter)P(3:c#ui.unit.Dp,2:c#ui.unit.Dp,8,7,4,6:c#ui.graphics.Color,5:c#ui.graphics.BlendMode)130@5714L7,134@5915L82,135@6009L28:VectorPainter.kt#huu6hf");
        if ((i3 & 4) != 0) {
            f5 = Float.NaN;
        } else {
            f5 = f3;
        }
        if ((i3 & 8) == 0) {
            f6 = f4;
        } else {
            f6 = Float.NaN;
        }
        if ((i3 & 16) == 0) {
            str2 = str;
        } else {
            str2 = RootGroupName;
        }
        if ((i3 & 32) == 0) {
            jM4733getUnspecified0d7_KjU = j;
        } else {
            jM4733getUnspecified0d7_KjU = Color.INSTANCE.m4733getUnspecified0d7_KjU();
        }
        if ((i3 & 64) == 0) {
            iM4635getSrcIn0nO6VwU = i;
        } else {
            iM4635getSrcIn0nO6VwU = BlendMode.INSTANCE.m4635getSrcIn0nO6VwU();
        }
        if ((i3 & 128) == 0) {
            z2 = z;
        } else {
            z2 = false;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1685735925, i2, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:129)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        long jM5455obtainSizePxVpY3zN4 = m5455obtainSizePxVpY3zN4((Density) objConsume, f, f2);
        final long jM5456obtainViewportSizePq9zytI = m5456obtainViewportSizePq9zytI(jM5455obtainSizePxVpY3zN4, f5, f6);
        ComposerKt.sourceInformationMarkerStart(composer, 789574375, "CC(remember):VectorPainter.kt#9igjgp");
        boolean z5 = ((((3670016 & i2) ^ 1572864) > 1048576 && composer.changed(iM4635getSrcIn0nO6VwU)) || (i2 & 1572864) == 1048576) | ((((458752 & i2) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072 && composer.changed(jM4733getUnspecified0d7_KjU)) || (i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 131072);
        Object objRememberedValue2 = composer.rememberedValue();
        if (z5 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            Object objM5454createColorFilterxETnrds = m5454createColorFilterxETnrds(jM4733getUnspecified0d7_KjU, iM4635getSrcIn0nO6VwU);
            composer.updateRememberedValue(objM5454createColorFilterxETnrds);
            objRememberedValue2 = objM5454createColorFilterxETnrds;
        }
        ColorFilter colorFilter = (ColorFilter) objRememberedValue2;
        ComposerKt.sourceInformationMarkerEnd(composer);
        composer.startReplaceGroup(789579543);
        ComposerKt.sourceInformation(composer, "*144@6357L28,146@6432L513,158@7024L39,158@7001L62");
        ComposerKt.sourceInformationMarkerStart(composer, 789577329, "CC(remember):VectorPainter.kt#9igjgp");
        Object objRememberedValue3 = composer.rememberedValue();
        if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
            Object vectorPainter = new VectorPainter(null, 1, null);
            composer.updateRememberedValue(vectorPainter);
            objRememberedValue3 = vectorPainter;
        }
        VectorPainter vectorPainter2 = (VectorPainter) objRememberedValue3;
        ComposerKt.sourceInformationMarkerEnd(composer);
        m5452configureVectorPainterT4PVSW8(vectorPainter2, jM5455obtainSizePxVpY3zN4, jM5456obtainViewportSizePq9zytI, str2, colorFilter, z2);
        CompositionContext compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composer, 0);
        ComposerKt.sourceInformationMarkerStart(composer, 1985926861, "CC(remember):VectorPainter.kt#9igjgp");
        boolean z6 = ((((i2 & 7168) ^ 3072) > 2048 && composer.changed(f6)) || (i2 & 3072) == 2048) | ((((i2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(f5)) || (i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        if (((234881024 & i2) ^ 100663296) > 67108864) {
            function42 = function4;
            if (composer.changed(function42)) {
                z3 = z6;
            }
            z4 = z3 | z;
            Object objRememberedValue4 = composer.rememberedValue();
            if (!z4 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Composition composition = vectorPainter2.getComposition();
                Composition Composition = (composition != null || composition.isDisposed()) ? CompositionKt.Composition(new VectorApplier(vectorPainter2.getVector().getRoot()), compositionContextRememberCompositionContext) : composition;
                Composition.setContent(ComposableLambdaKt.composableLambdaInstance(1749374910, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$2$composition$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer, int $changed) {
                        ComposerKt.sourceInformation($composer, "C154@6860L40:VectorPainter.kt#huu6hf");
                        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
                            $composer.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1749374910, $changed, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter.<anonymous>.<anonymous>.<anonymous> (VectorPainter.kt:154)");
                        }
                        Function4<Float, Float, Composer, Integer, Unit> function43 = function42;
                        int bits$iv$iv$iv = (int) (jM5456obtainViewportSizePq9zytI >> 32);
                        Float fValueOf = Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv));
                        int bits$iv$iv$iv2 = (int) (4294967295L & jM5456obtainViewportSizePq9zytI);
                        function43.invoke(fValueOf, Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv2)), $composer, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }));
                composer.updateRememberedValue(Composition);
                obj = Composition;
            } else {
                obj = objRememberedValue4;
            }
            final Composition composition2 = (Composition) obj;
            ComposerKt.sourceInformationMarkerEnd(composer);
            vectorPainter2.setComposition$ui(composition2);
            ComposerKt.sourceInformationMarkerStart(composer, 1985945331, "CC(remember):VectorPainter.kt#9igjgp");
            zChangedInstance = composer.changedInstance(composition2);
            objRememberedValue = composer.rememberedValue();
            if (!zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj2 = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$2$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final DisposableEffectResult invoke(DisposableEffectScope $this$DisposableEffect) {
                        final Composition composition3 = composition2;
                        return new DisposableEffectResult() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$2$1$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                composition3.dispose();
                            }
                        };
                    }
                };
                composer.updateRememberedValue(obj2);
                objRememberedValue = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd(composer);
            EffectsKt.DisposableEffect(vectorPainter2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue, composer, 0);
            composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            ComposerKt.sourceInformationMarkerEnd(composer);
            return vectorPainter2;
        }
        function42 = function4;
        z3 = z6;
        boolean z7 = (i2 & 100663296) == 67108864;
        z4 = z3 | z7;
        Object objRememberedValue42 = composer.rememberedValue();
        if (z4) {
            Composition composition3 = vectorPainter2.getComposition();
            if (composition3 != null) {
                Composition.setContent(ComposableLambdaKt.composableLambdaInstance(1749374910, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$2$composition$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer, int $changed) {
                        ComposerKt.sourceInformation($composer, "C154@6860L40:VectorPainter.kt#huu6hf");
                        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
                            $composer.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1749374910, $changed, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter.<anonymous>.<anonymous>.<anonymous> (VectorPainter.kt:154)");
                        }
                        Function4<Float, Float, Composer, Integer, Unit> function43 = function42;
                        int bits$iv$iv$iv = (int) (jM5456obtainViewportSizePq9zytI >> 32);
                        Float fValueOf = Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv));
                        int bits$iv$iv$iv2 = (int) (4294967295L & jM5456obtainViewportSizePq9zytI);
                        function43.invoke(fValueOf, Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv2)), $composer, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }));
                composer.updateRememberedValue(Composition);
                obj = Composition;
            }
        }
        final Composition composition22 = (Composition) obj;
        ComposerKt.sourceInformationMarkerEnd(composer);
        vectorPainter2.setComposition$ui(composition22);
        ComposerKt.sourceInformationMarkerStart(composer, 1985945331, "CC(remember):VectorPainter.kt#9igjgp");
        zChangedInstance = composer.changedInstance(composition22);
        objRememberedValue = composer.rememberedValue();
        if (!zChangedInstance) {
        }
        Object obj22 = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$2$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DisposableEffectResult invoke(DisposableEffectScope $this$DisposableEffect) {
                final Composition composition32 = composition22;
                return new DisposableEffectResult() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$2$1$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        composition32.dispose();
                    }
                };
            }
        };
        composer.updateRememberedValue(obj22);
        objRememberedValue = obj22;
        ComposerKt.sourceInformationMarkerEnd(composer);
        EffectsKt.DisposableEffect(vectorPainter2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue, composer, 0);
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return vectorPainter2;
    }

    public static final VectorPainter rememberVectorPainter(ImageVector image, Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, 1413834416, "C(rememberVectorPainter)170@7434L7,172@7518L188:VectorPainter.kt#huu6hf");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1413834416, $changed, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:169)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Density density = (Density) objConsume;
        float val1$iv = image.getGenId();
        float val2$iv = density.getDensity();
        long v1$iv = Float.floatToRawIntBits(val1$iv);
        long v2$iv = Float.floatToRawIntBits(val2$iv);
        long key = (v1$iv << 32) | (4294967295L & v2$iv);
        ComposerKt.sourceInformationMarkerStart($composer, 1485214124, "CC(remember):VectorPainter.kt#9igjgp");
        boolean invalid$iv = $composer.changed(key);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            GroupComponent $this$rememberVectorPainter_u24lambda_u240_u240 = new GroupComponent();
            createGroupComponent($this$rememberVectorPainter_u24lambda_u240_u240, image.getRoot());
            Unit unit = Unit.INSTANCE;
            Object value$iv = createVectorPainterFromImageVector(density, image, $this$rememberVectorPainter_u24lambda_u240_u240);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        VectorPainter vectorPainter = (VectorPainter) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return vectorPainter;
    }

    private static final void mirror(DrawScope $this$mirror, Function1<? super DrawScope, Unit> function1) throws Throwable {
        long jMo5270getCenterF1C5BW0 = $this$mirror.mo5270getCenterF1C5BW0();
        DrawContext $this$withTransform_u24lambda_u240$iv$iv = $this$mirror.getDrawContext();
        long previousSize$iv$iv = $this$withTransform_u24lambda_u240$iv$iv.mo5192getSizeNHjbRc();
        $this$withTransform_u24lambda_u240$iv$iv.getCanvas().save();
        try {
            DrawTransform $this$scale_Fgt4K4Q_u24lambda_u240$iv = $this$withTransform_u24lambda_u240$iv$iv.getTransform();
            $this$scale_Fgt4K4Q_u24lambda_u240$iv.mo5199scale0AR0LA0(-1.0f, 1.0f, jMo5270getCenterF1C5BW0);
        } catch (Throwable th) {
            th = th;
        }
        try {
            function1.invoke($this$mirror);
            $this$withTransform_u24lambda_u240$iv$iv.getCanvas().restore();
            $this$withTransform_u24lambda_u240$iv$iv.mo5193setSizeuvyYCjk(previousSize$iv$iv);
        } catch (Throwable th2) {
            th = th2;
            $this$withTransform_u24lambda_u240$iv$iv.getCanvas().restore();
            $this$withTransform_u24lambda_u240$iv$iv.mo5193setSizeuvyYCjk(previousSize$iv$iv);
            throw th;
        }
    }

    /* JADX INFO: renamed from: obtainSizePx-VpY3zN4, reason: not valid java name */
    private static final long m5455obtainSizePxVpY3zN4(Density $this$obtainSizePx_u2dVpY3zN4, float f, float f2) {
        float width$iv = $this$obtainSizePx_u2dVpY3zN4.mo405toPx0680j_4(f);
        float height$iv = $this$obtainSizePx_u2dVpY3zN4.mo405toPx0680j_4(f2);
        long v1$iv$iv = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        return Size.m4512constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    /* JADX INFO: renamed from: obtainViewportSize-Pq9zytI, reason: not valid java name */
    private static final long m5456obtainViewportSizePq9zytI(long j, float viewportWidth, float viewportHeight) {
        float width$iv;
        float height$iv;
        if (!Float.isNaN(viewportWidth)) {
            width$iv = viewportWidth;
        } else {
            int bits$iv$iv$iv = (int) (j >> 32);
            width$iv = Float.intBitsToFloat(bits$iv$iv$iv);
        }
        if (!Float.isNaN(viewportHeight)) {
            height$iv = viewportHeight;
        } else {
            int bits$iv$iv$iv2 = (int) (j & 4294967295L);
            height$iv = Float.intBitsToFloat(bits$iv$iv$iv2);
        }
        float val2$iv$iv = height$iv;
        float val1$iv$iv = width$iv;
        long v1$iv$iv = Float.floatToRawIntBits(val1$iv$iv);
        long v2$iv$iv = Float.floatToRawIntBits(val2$iv$iv);
        return Size.m4512constructorimpl((v2$iv$iv & 4294967295L) | (v1$iv$iv << 32));
    }

    /* JADX INFO: renamed from: createColorFilter-xETnrds, reason: not valid java name */
    private static final ColorFilter m5454createColorFilterxETnrds(long j, int i) {
        if (j != 16) {
            return ColorFilter.INSTANCE.m4741tintxETnrds(j, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: configureVectorPainter-T4PVSW8$default, reason: not valid java name */
    public static /* synthetic */ VectorPainter m5453configureVectorPainterT4PVSW8$default(VectorPainter vectorPainter, long j, long j2, String str, ColorFilter colorFilter, boolean z, int i, Object obj) {
        String str2;
        boolean z2;
        if ((i & 4) == 0) {
            str2 = str;
        } else {
            str2 = RootGroupName;
        }
        if ((i & 16) == 0) {
            z2 = z;
        } else {
            z2 = false;
        }
        return m5452configureVectorPainterT4PVSW8(vectorPainter, j, j2, str2, colorFilter, z2);
    }

    /* JADX INFO: renamed from: configureVectorPainter-T4PVSW8, reason: not valid java name */
    public static final VectorPainter m5452configureVectorPainterT4PVSW8(VectorPainter $this$configureVectorPainter_u2dT4PVSW8, long j, long j2, String name, ColorFilter intrinsicColorFilter, boolean autoMirror) {
        $this$configureVectorPainter_u2dT4PVSW8.m5450setSizeuvyYCjk$ui(j);
        $this$configureVectorPainter_u2dT4PVSW8.setAutoMirror$ui(autoMirror);
        $this$configureVectorPainter_u2dT4PVSW8.setIntrinsicColorFilter$ui(intrinsicColorFilter);
        $this$configureVectorPainter_u2dT4PVSW8.m5451setViewportSizeuvyYCjk$ui(j2);
        $this$configureVectorPainter_u2dT4PVSW8.setName$ui(name);
        return $this$configureVectorPainter_u2dT4PVSW8;
    }

    public static final VectorPainter createVectorPainterFromImageVector(Density density, ImageVector imageVector, GroupComponent root) {
        long defaultSize = m5455obtainSizePxVpY3zN4(density, imageVector.getDefaultWidth(), imageVector.getDefaultHeight());
        long viewport = m5456obtainViewportSizePq9zytI(defaultSize, imageVector.getViewportWidth(), imageVector.getViewportHeight());
        return m5452configureVectorPainterT4PVSW8(new VectorPainter(root), defaultSize, viewport, imageVector.getName(), m5454createColorFilterxETnrds(imageVector.getTintColor(), imageVector.getTintBlendMode()), imageVector.getAutoMirror());
    }

    public static final GroupComponent createGroupComponent(GroupComponent $this$createGroupComponent, VectorGroup currentGroup) {
        int size = currentGroup.getSize();
        for (int index = 0; index < size; index++) {
            VectorNode vectorNode = currentGroup.get(index);
            if (vectorNode instanceof VectorPath) {
                PathComponent $this$createGroupComponent_u24lambda_u240 = new PathComponent();
                $this$createGroupComponent_u24lambda_u240.setPathData(((VectorPath) vectorNode).getPathData());
                $this$createGroupComponent_u24lambda_u240.m5435setPathFillTypeoQ8Xj4U(((VectorPath) vectorNode).getPathFillType());
                $this$createGroupComponent_u24lambda_u240.setName(((VectorPath) vectorNode).getName());
                $this$createGroupComponent_u24lambda_u240.setFill(((VectorPath) vectorNode).getFill());
                $this$createGroupComponent_u24lambda_u240.setFillAlpha(((VectorPath) vectorNode).getFillAlpha());
                $this$createGroupComponent_u24lambda_u240.setStroke(((VectorPath) vectorNode).getStroke());
                $this$createGroupComponent_u24lambda_u240.setStrokeAlpha(((VectorPath) vectorNode).getStrokeAlpha());
                $this$createGroupComponent_u24lambda_u240.setStrokeLineWidth(((VectorPath) vectorNode).getStrokeLineWidth());
                $this$createGroupComponent_u24lambda_u240.m5436setStrokeLineCapBeK7IIE(((VectorPath) vectorNode).getStrokeLineCap());
                $this$createGroupComponent_u24lambda_u240.m5437setStrokeLineJoinWw9F2mQ(((VectorPath) vectorNode).getStrokeLineJoin());
                $this$createGroupComponent_u24lambda_u240.setStrokeLineMiter(((VectorPath) vectorNode).getStrokeLineMiter());
                $this$createGroupComponent_u24lambda_u240.setTrimPathStart(((VectorPath) vectorNode).getTrimPathStart());
                $this$createGroupComponent_u24lambda_u240.setTrimPathEnd(((VectorPath) vectorNode).getTrimPathEnd());
                $this$createGroupComponent_u24lambda_u240.setTrimPathOffset(((VectorPath) vectorNode).getTrimPathOffset());
                $this$createGroupComponent.insertAt(index, $this$createGroupComponent_u24lambda_u240);
            } else if (vectorNode instanceof VectorGroup) {
                GroupComponent $this$createGroupComponent_u24lambda_u241 = new GroupComponent();
                $this$createGroupComponent_u24lambda_u241.setName(((VectorGroup) vectorNode).getName());
                $this$createGroupComponent_u24lambda_u241.setRotation(((VectorGroup) vectorNode).getRotation());
                $this$createGroupComponent_u24lambda_u241.setScaleX(((VectorGroup) vectorNode).getScaleX());
                $this$createGroupComponent_u24lambda_u241.setScaleY(((VectorGroup) vectorNode).getScaleY());
                $this$createGroupComponent_u24lambda_u241.setTranslationX(((VectorGroup) vectorNode).getTranslationX());
                $this$createGroupComponent_u24lambda_u241.setTranslationY(((VectorGroup) vectorNode).getTranslationY());
                $this$createGroupComponent_u24lambda_u241.setPivotX(((VectorGroup) vectorNode).getPivotX());
                $this$createGroupComponent_u24lambda_u241.setPivotY(((VectorGroup) vectorNode).getPivotY());
                $this$createGroupComponent_u24lambda_u241.setClipPathData(((VectorGroup) vectorNode).getClipPathData());
                createGroupComponent($this$createGroupComponent_u24lambda_u241, (VectorGroup) vectorNode);
                $this$createGroupComponent.insertAt(index, $this$createGroupComponent_u24lambda_u241);
            }
        }
        return $this$createGroupComponent;
    }

    public static final void RenderVectorGroup(final VectorGroup group, Map<String, ? extends VectorConfig> map, Composer $composer, final int $changed, final int i) {
        final Map<String, ? extends VectorConfig> map2;
        Composer $composer2 = $composer.startRestartGroup(-446179233);
        ComposerKt.sourceInformation($composer2, "C(RenderVectorGroup)P(1):VectorPainter.kt#huu6hf");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(group) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            map2 = map;
        } else if (($changed & 48) == 0) {
            map2 = map;
            $dirty |= $composer2.changedInstance(map2) ? 32 : 16;
        } else {
            map2 = map;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            Map<String, ? extends VectorConfig> mapEmptyMap = i2 != 0 ? MapsKt.emptyMap() : map2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-446179233, $dirty, -1, "androidx.compose.ui.graphics.vector.RenderVectorGroup (VectorPainter.kt:423)");
            }
            Iterator<VectorNode> it = group.iterator();
            while (it.hasNext()) {
                final VectorNode vectorNode = it.next();
                if (vectorNode instanceof VectorPath) {
                    $composer2.startReplaceGroup(798455915);
                    ComposerKt.sourceInformation($composer2, "427@16156L1298");
                    VectorConfig config = mapEmptyMap.get(((VectorPath) vectorNode).getName());
                    if (config == null) {
                        config = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$1
                        };
                    }
                    Composer $composer3 = $composer2;
                    VectorComposeKt.m5441Path9cdaXJ4((List) config.getOrDefault(VectorProperty.PathData.INSTANCE, ((VectorPath) vectorNode).getPathData()), ((VectorPath) vectorNode).getPathFillType(), ((VectorPath) vectorNode).getName(), (Brush) config.getOrDefault(VectorProperty.Fill.INSTANCE, ((VectorPath) vectorNode).getFill()), ((Number) config.getOrDefault(VectorProperty.FillAlpha.INSTANCE, Float.valueOf(((VectorPath) vectorNode).getFillAlpha()))).floatValue(), (Brush) config.getOrDefault(VectorProperty.Stroke.INSTANCE, ((VectorPath) vectorNode).getStroke()), ((Number) config.getOrDefault(VectorProperty.StrokeAlpha.INSTANCE, Float.valueOf(((VectorPath) vectorNode).getStrokeAlpha()))).floatValue(), ((Number) config.getOrDefault(VectorProperty.StrokeLineWidth.INSTANCE, Float.valueOf(((VectorPath) vectorNode).getStrokeLineWidth()))).floatValue(), ((VectorPath) vectorNode).getStrokeLineCap(), ((VectorPath) vectorNode).getStrokeLineJoin(), ((VectorPath) vectorNode).getStrokeLineMiter(), ((Number) config.getOrDefault(VectorProperty.TrimPathStart.INSTANCE, Float.valueOf(((VectorPath) vectorNode).getTrimPathStart()))).floatValue(), ((Number) config.getOrDefault(VectorProperty.TrimPathEnd.INSTANCE, Float.valueOf(((VectorPath) vectorNode).getTrimPathEnd()))).floatValue(), ((Number) config.getOrDefault(VectorProperty.TrimPathOffset.INSTANCE, Float.valueOf(((VectorPath) vectorNode).getTrimPathOffset()))).floatValue(), $composer3, 0, 0, 0);
                    $composer2 = $composer3;
                    $composer2.endReplaceGroup();
                    it = it;
                    mapEmptyMap = mapEmptyMap;
                    $dirty = $dirty;
                } else {
                    Iterator<VectorNode> it2 = it;
                    int $dirty2 = $dirty;
                    final Map<String, ? extends VectorConfig> map3 = mapEmptyMap;
                    if (vectorNode instanceof VectorGroup) {
                        $composer2.startReplaceGroup(799870476);
                        ComposerKt.sourceInformation($composer2, "462@18450L88,450@17593L945");
                        VectorConfig config2 = map3.get(((VectorGroup) vectorNode).getName());
                        if (config2 == null) {
                            config2 = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$2
                            };
                        }
                        VectorComposeKt.Group(((VectorGroup) vectorNode).getName(), ((Number) config2.getOrDefault(VectorProperty.Rotation.INSTANCE, Float.valueOf(((VectorGroup) vectorNode).getRotation()))).floatValue(), ((Number) config2.getOrDefault(VectorProperty.PivotX.INSTANCE, Float.valueOf(((VectorGroup) vectorNode).getPivotX()))).floatValue(), ((Number) config2.getOrDefault(VectorProperty.PivotY.INSTANCE, Float.valueOf(((VectorGroup) vectorNode).getPivotY()))).floatValue(), ((Number) config2.getOrDefault(VectorProperty.ScaleX.INSTANCE, Float.valueOf(((VectorGroup) vectorNode).getScaleX()))).floatValue(), ((Number) config2.getOrDefault(VectorProperty.ScaleY.INSTANCE, Float.valueOf(((VectorGroup) vectorNode).getScaleY()))).floatValue(), ((Number) config2.getOrDefault(VectorProperty.TranslateX.INSTANCE, Float.valueOf(((VectorGroup) vectorNode).getTranslationX()))).floatValue(), ((Number) config2.getOrDefault(VectorProperty.TranslateY.INSTANCE, Float.valueOf(((VectorGroup) vectorNode).getTranslationY()))).floatValue(), (List) config2.getOrDefault(VectorProperty.PathData.INSTANCE, ((VectorGroup) vectorNode).getClipPathData()), ComposableLambdaKt.rememberComposableLambda(1450046638, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt.RenderVectorGroup.1
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
                                ComposerKt.sourceInformation($composer4, "C463@18468L56:VectorPainter.kt#huu6hf");
                                if (!$composer4.shouldExecute(($changed2 & 3) != 2, $changed2 & 1)) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1450046638, $changed2, -1, "androidx.compose.ui.graphics.vector.RenderVectorGroup.<anonymous> (VectorPainter.kt:463)");
                                }
                                VectorPainterKt.RenderVectorGroup((VectorGroup) vectorNode, map3, $composer4, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, $composer2, 54), $composer2, 805306368, 0);
                        $composer2.endReplaceGroup();
                        it = it2;
                        mapEmptyMap = map3;
                        $dirty = $dirty2;
                    } else {
                        $composer2.startReplaceGroup(782476035);
                        $composer2.endReplaceGroup();
                        it = it2;
                        mapEmptyMap = map3;
                        $dirty = $dirty2;
                    }
                }
            }
            Map<String, ? extends VectorConfig> map4 = mapEmptyMap;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            map2 = map4;
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt.RenderVectorGroup.2
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
                    VectorPainterKt.RenderVectorGroup(group, map2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }
}
