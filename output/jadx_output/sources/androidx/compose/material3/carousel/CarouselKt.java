package androidx.compose.material3.carousel;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.profileinstaller.ProfileVerifier;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: Carousel.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000z\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a»\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000526\u0010\u0006\u001a2\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\f\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u001621\u0010\u0017\u001a-\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001bH\u0001ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u0091\u0001\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u00142\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\f\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\u00142\b\b\u0002\u0010\u000e\u001a\u00020\u000f21\u0010\u0017\u001a-\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001bH\u0007ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a}\u0010$\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u00142\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\f\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u000e\u001a\u00020\u000f21\u0010\u0017\u001a-\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001bH\u0007ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a\u0018\u0010(\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H\u0000\u001a\u0018\u0010+\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H\u0001\u001a \u0010,\u001a\u00020\b2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\bH\u0002\u001a\u0019\u00101\u001a\u00020\b*\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0003¢\u0006\u0002\u00102\u001a\u0019\u00103\u001a\u00020\b*\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0003¢\u0006\u0002\u00102\u001a:\u00104\u001a\u00020\u0013*\u00020\u00132\u0006\u00105\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010)\u001a\b\u0012\u0004\u0012\u00020*062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006;"}, d2 = {"Carousel", "", "state", "Landroidx/compose/material3/carousel/CarouselState;", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "keylineList", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "availableSpace", "itemSpacing", "Landroidx/compose/material3/carousel/KeylineList;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "maxNonFocalVisibleItemCount", "", "modifier", "Landroidx/compose/ui/Modifier;", "Landroidx/compose/ui/unit/Dp;", "flingBehavior", "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "content", "Landroidx/compose/material3/carousel/CarouselItemScope;", "itemIndex", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "Carousel-V-95POc", "(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V", "HorizontalMultiBrowseCarousel", "preferredItemWidth", "minSmallItemWidth", "maxSmallItemWidth", "HorizontalMultiBrowseCarousel-zCIJ0Nk", "(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;FFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V", "HorizontalUncontainedCarousel", "itemWidth", "HorizontalUncontainedCarousel-9QcgTRs", "(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V", "calculateCurrentScrollOffset", "strategy", "Landroidx/compose/material3/carousel/Strategy;", "calculateMaxScrollOffset", "getProgress", TtmlNode.ANNOTATION_POSITION_BEFORE, "Landroidx/compose/material3/carousel/Keyline;", TtmlNode.ANNOTATION_POSITION_AFTER, "unadjustedOffset", "calculateAfterContentPadding", "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)F", "calculateBeforeContentPadding", "carouselItem", "index", "Lkotlin/Function0;", "carouselItemInfo", "Landroidx/compose/material3/carousel/CarouselItemInfoImpl;", "clipShape", "Landroidx/compose/ui/graphics/Shape;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class CarouselKt {
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: HorizontalMultiBrowseCarousel-zCIJ0Nk, reason: not valid java name */
    public static final void m3167HorizontalMultiBrowseCarouselzCIJ0Nk(final CarouselState state, final float preferredItemWidth, Modifier modifier, float itemSpacing, TargetedFlingBehavior flingBehavior, float minSmallItemWidth, float maxSmallItemWidth, PaddingValues contentPadding, final Function4<? super CarouselItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int i) {
        float f;
        final Modifier modifier2;
        float f2;
        TargetedFlingBehavior flingBehavior2;
        float minSmallItemWidth2;
        float maxSmallItemWidth2;
        PaddingValues paddingValues;
        CarouselState carouselState;
        PaddingValues contentPadding2;
        TargetedFlingBehavior flingBehavior3;
        int $dirty;
        Modifier modifier3;
        float itemSpacing2;
        float maxSmallItemWidth3;
        Object value$iv;
        Composer $composer2;
        final PaddingValues contentPadding3;
        final float itemSpacing3;
        final TargetedFlingBehavior flingBehavior4;
        final float maxSmallItemWidth4;
        final float itemSpacing4;
        Composer $composer3 = $composer.startRestartGroup(-1825706865);
        ComposerKt.sourceInformation($composer3, "C(HorizontalMultiBrowseCarousel)P(8,7:c#ui.unit.Dp,6,3:c#ui.unit.Dp,2,5:c#ui.unit.Dp,4:c#ui.unit.Dp,1)106@5374L41,112@5703L7,116@5816L554,113@5715L1048:Carousel.kt#dcf9yb");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changedInstance(state) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
            f = preferredItemWidth;
        } else if (($changed & 48) == 0) {
            f = preferredItemWidth;
            $dirty2 |= $composer3.changed(f) ? 32 : 16;
        } else {
            f = preferredItemWidth;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty2 |= 3072;
            f2 = itemSpacing;
        } else if (($changed & 3072) == 0) {
            f2 = itemSpacing;
            $dirty2 |= $composer3.changed(f2) ? 2048 : 1024;
        } else {
            f2 = itemSpacing;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                flingBehavior2 = flingBehavior;
                int i4 = $composer3.changed(flingBehavior2) ? 16384 : 8192;
                $dirty2 |= i4;
            } else {
                flingBehavior2 = flingBehavior;
            }
            $dirty2 |= i4;
        } else {
            flingBehavior2 = flingBehavior;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            minSmallItemWidth2 = minSmallItemWidth;
        } else if ((196608 & $changed) == 0) {
            minSmallItemWidth2 = minSmallItemWidth;
            $dirty2 |= $composer3.changed(minSmallItemWidth2) ? 131072 : 65536;
        } else {
            minSmallItemWidth2 = minSmallItemWidth;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty2 |= 1572864;
            maxSmallItemWidth2 = maxSmallItemWidth;
        } else if (($changed & 1572864) == 0) {
            maxSmallItemWidth2 = maxSmallItemWidth;
            $dirty2 |= $composer3.changed(maxSmallItemWidth2) ? 1048576 : 524288;
        } else {
            maxSmallItemWidth2 = maxSmallItemWidth;
        }
        int i7 = i & 128;
        if (i7 != 0) {
            $dirty2 |= 12582912;
            paddingValues = contentPadding;
        } else if (($changed & 12582912) == 0) {
            paddingValues = contentPadding;
            $dirty2 |= $composer3.changed(paddingValues) ? 8388608 : 4194304;
        } else {
            paddingValues = contentPadding;
        }
        int $dirty3 = $dirty2;
        if ((i & 256) != 0) {
            $dirty3 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty3 |= $composer3.changedInstance(function4) ? 67108864 : 33554432;
        }
        if (($dirty3 & 38347923) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            itemSpacing3 = f2;
            contentPadding3 = paddingValues;
            $composer2 = $composer3;
            flingBehavior4 = flingBehavior2;
            maxSmallItemWidth4 = maxSmallItemWidth2;
            itemSpacing4 = minSmallItemWidth2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                float itemSpacing5 = i3 != 0 ? Dp.m7505constructorimpl(0) : f2;
                if ((i & 16) != 0) {
                    CarouselDefaults carouselDefaults = CarouselDefaults.INSTANCE;
                    int i8 = ($dirty3 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK;
                    carouselState = state;
                    $dirty3 &= -57345;
                    flingBehavior2 = carouselDefaults.singleAdvanceFlingBehavior(carouselState, null, $composer3, i8, 2);
                } else {
                    carouselState = state;
                }
                if (i5 != 0) {
                    minSmallItemWidth2 = CarouselDefaults.INSTANCE.m3164getMinSmallItemSizeD9Ej5fM$material3_release();
                }
                if (i6 != 0) {
                    maxSmallItemWidth2 = CarouselDefaults.INSTANCE.m3163getMaxSmallItemSizeD9Ej5fM$material3_release();
                }
                if (i7 != 0) {
                    contentPadding2 = PaddingKt.m811PaddingValues0680j_4(Dp.m7505constructorimpl(0));
                    flingBehavior3 = flingBehavior2;
                    $dirty = $dirty3;
                    modifier3 = modifier4;
                    itemSpacing2 = itemSpacing5;
                } else {
                    contentPadding2 = paddingValues;
                    flingBehavior3 = flingBehavior2;
                    $dirty = $dirty3;
                    modifier3 = modifier4;
                    itemSpacing2 = itemSpacing5;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty3 &= -57345;
                }
                float f3 = f2;
                modifier3 = modifier2;
                contentPadding2 = paddingValues;
                itemSpacing2 = f3;
                carouselState = state;
                flingBehavior3 = flingBehavior2;
                $dirty = $dirty3;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1825706865, $dirty, -1, "androidx.compose.material3.carousel.HorizontalMultiBrowseCarousel (Carousel.kt:111)");
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            int $dirty4 = $dirty;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final Density density = (Density) objConsume;
            Orientation orientation = Orientation.Horizontal;
            ComposerKt.sourceInformationMarkerStart($composer3, 1995157598, "CC(remember):Carousel.kt#9igjgp");
            boolean invalid$iv = $composer3.changed(density) | (($dirty4 & 112) == 32) | $composer3.changedInstance(carouselState) | (($dirty4 & 458752) == 131072) | (($dirty4 & 3670016) == 1048576);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                final float f4 = f;
                final float maxSmallItemWidth5 = maxSmallItemWidth2;
                final float minSmallItemWidth3 = minSmallItemWidth2;
                maxSmallItemWidth3 = maxSmallItemWidth5;
                value$iv = (Function2) new Function2<Float, Float, KeylineList>() { // from class: androidx.compose.material3.carousel.CarouselKt$HorizontalMultiBrowseCarousel$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ KeylineList invoke(Float f5, Float f6) {
                        return invoke(f5.floatValue(), f6.floatValue());
                    }

                    public final KeylineList invoke(float availableSpace, float itemSpacingPx) {
                        Density $this$invoke_u24lambda_u240 = density;
                        float f5 = f4;
                        CarouselState carouselState2 = state;
                        float f6 = minSmallItemWidth3;
                        float f7 = maxSmallItemWidth5;
                        float availableSpace2 = $this$invoke_u24lambda_u240.mo405toPx0680j_4(f5);
                        return KeylinesKt.multiBrowseKeylineList($this$invoke_u24lambda_u240, availableSpace, availableSpace2, itemSpacingPx, carouselState2.getItemCountState().getValue().invoke().intValue(), $this$invoke_u24lambda_u240.mo405toPx0680j_4(f6), $this$invoke_u24lambda_u240.mo405toPx0680j_4(f7));
                    }
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
                maxSmallItemWidth3 = maxSmallItemWidth2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            m3166CarouselV95POc(state, orientation, (Function2) value$iv, contentPadding2, 2, modifier3, itemSpacing2, flingBehavior3, function4, $composer3, ($dirty4 & 14) | 24624 | (($dirty4 >> 12) & 7168) | (($dirty4 << 9) & 458752) | (($dirty4 << 9) & 3670016) | (29360128 & ($dirty4 << 9)) | ($dirty4 & 234881024), 0);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            contentPadding3 = contentPadding2;
            modifier2 = modifier3;
            itemSpacing3 = itemSpacing2;
            flingBehavior4 = flingBehavior3;
            maxSmallItemWidth4 = maxSmallItemWidth3;
            itemSpacing4 = minSmallItemWidth2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt$HorizontalMultiBrowseCarousel$2
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

                public final void invoke(Composer composer, int i9) {
                    CarouselKt.m3167HorizontalMultiBrowseCarouselzCIJ0Nk(state, preferredItemWidth, modifier2, itemSpacing3, flingBehavior4, itemSpacing4, maxSmallItemWidth4, contentPadding3, function4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01f0  */
    /* JADX INFO: renamed from: HorizontalUncontainedCarousel-9QcgTRs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m3168HorizontalUncontainedCarousel9QcgTRs(final CarouselState state, final float itemWidth, Modifier modifier, float itemSpacing, TargetedFlingBehavior flingBehavior, PaddingValues contentPadding, final Function4<? super CarouselItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int i) {
        CarouselState carouselState;
        Modifier modifier2;
        float itemSpacing2;
        TargetedFlingBehavior flingBehavior2;
        PaddingValues paddingValues;
        Function4<? super CarouselItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> function42;
        float itemSpacing3;
        TargetedFlingBehavior flingBehavior3;
        PaddingValues contentPadding2;
        Composer $composer2;
        Object value$iv;
        final PaddingValues contentPadding3;
        final Modifier modifier3;
        final float itemSpacing4;
        final TargetedFlingBehavior flingBehavior4;
        Composer $composer3 = $composer.startRestartGroup(529322840);
        ComposerKt.sourceInformation($composer3, "C(HorizontalUncontainedCarousel)P(6,4:c#ui.unit.Dp,5,3:c#ui.unit.Dp,2,1)175@8483L21,179@8666L7,183@8779L337,180@8678L818:Carousel.kt#dcf9yb");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            carouselState = state;
        } else if (($changed & 6) == 0) {
            carouselState = state;
            $dirty |= $composer3.changedInstance(carouselState) ? 4 : 2;
        } else {
            carouselState = state;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(itemWidth) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty |= 3072;
            itemSpacing2 = itemSpacing;
        } else if (($changed & 3072) == 0) {
            itemSpacing2 = itemSpacing;
            $dirty |= $composer3.changed(itemSpacing2) ? 2048 : 1024;
        } else {
            itemSpacing2 = itemSpacing;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                flingBehavior2 = flingBehavior;
                int i4 = $composer3.changed(flingBehavior2) ? 16384 : 8192;
                $dirty |= i4;
            } else {
                flingBehavior2 = flingBehavior;
            }
            $dirty |= i4;
        } else {
            flingBehavior2 = flingBehavior;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            paddingValues = contentPadding;
        } else if ((196608 & $changed) == 0) {
            paddingValues = contentPadding;
            $dirty |= $composer3.changed(paddingValues) ? 131072 : 65536;
        } else {
            paddingValues = contentPadding;
        }
        if ((i & 64) != 0) {
            $dirty |= 1572864;
            function42 = function4;
        } else if (($changed & 1572864) == 0) {
            function42 = function4;
            $dirty |= $composer3.changedInstance(function42) ? 1048576 : 524288;
        } else {
            function42 = function4;
        }
        if ((599187 & $dirty) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            itemSpacing4 = itemSpacing2;
            flingBehavior4 = flingBehavior2;
            modifier3 = modifier2;
            contentPadding3 = paddingValues;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i3 != 0) {
                    itemSpacing2 = Dp.m7505constructorimpl(0);
                }
                int $this$dp$iv = i & 16;
                if ($this$dp$iv != 0) {
                    $dirty &= -57345;
                    flingBehavior2 = CarouselDefaults.INSTANCE.noSnapFlingBehavior($composer3, 6);
                }
                if (i5 != 0) {
                    contentPadding2 = PaddingKt.m811PaddingValues0680j_4(Dp.m7505constructorimpl(0));
                    itemSpacing3 = itemSpacing2;
                    flingBehavior3 = flingBehavior2;
                } else {
                    itemSpacing3 = itemSpacing2;
                    flingBehavior3 = flingBehavior2;
                    contentPadding2 = paddingValues;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                }
                itemSpacing3 = itemSpacing2;
                flingBehavior3 = flingBehavior2;
                contentPadding2 = paddingValues;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(529322840, $dirty, -1, "androidx.compose.material3.carousel.HorizontalUncontainedCarousel (Carousel.kt:178)");
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final Density density = (Density) objConsume;
            Orientation orientation = Orientation.Horizontal;
            ComposerKt.sourceInformationMarkerStart($composer3, 1883505148, "CC(remember):Carousel.kt#9igjgp");
            boolean invalid$iv = $composer3.changed(density) | (($dirty & 112) == 32);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv) {
                $composer2 = $composer3;
            } else {
                $composer2 = $composer3;
                if (it$iv != Composer.INSTANCE.getEmpty()) {
                    value$iv = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Function4<? super CarouselItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> function43 = function42;
                Modifier modifier4 = modifier2;
                m3166CarouselV95POc(carouselState, orientation, (Function2) value$iv, contentPadding2, 0, modifier4, itemSpacing3, flingBehavior3, function43, $composer2, ($dirty & 14) | 24624 | (($dirty >> 6) & 7168) | (($dirty << 9) & 458752) | (($dirty << 9) & 3670016) | (29360128 & ($dirty << 9)) | (($dirty << 6) & 234881024), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                contentPadding3 = contentPadding2;
                modifier3 = modifier4;
                itemSpacing4 = itemSpacing3;
                flingBehavior4 = flingBehavior3;
            }
            value$iv = (Function2) new Function2<Float, Float, KeylineList>() { // from class: androidx.compose.material3.carousel.CarouselKt$HorizontalUncontainedCarousel$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ KeylineList invoke(Float f, Float f2) {
                    return invoke(f.floatValue(), f2.floatValue());
                }

                public final KeylineList invoke(float availableSpace, float itemSpacingPx) {
                    Density $this$invoke_u24lambda_u240 = density;
                    return KeylinesKt.uncontainedKeylineList($this$invoke_u24lambda_u240, availableSpace, $this$invoke_u24lambda_u240.mo405toPx0680j_4(itemWidth), itemSpacingPx);
                }
            };
            $composer3.updateRememberedValue(value$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Function4<? super CarouselItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> function432 = function42;
            Modifier modifier42 = modifier2;
            m3166CarouselV95POc(carouselState, orientation, (Function2) value$iv, contentPadding2, 0, modifier42, itemSpacing3, flingBehavior3, function432, $composer2, ($dirty & 14) | 24624 | (($dirty >> 6) & 7168) | (($dirty << 9) & 458752) | (($dirty << 9) & 3670016) | (29360128 & ($dirty << 9)) | (($dirty << 6) & 234881024), 0);
            if (ComposerKt.isTraceInProgress()) {
            }
            contentPadding3 = contentPadding2;
            modifier3 = modifier42;
            itemSpacing4 = itemSpacing3;
            flingBehavior4 = flingBehavior3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt$HorizontalUncontainedCarousel$2
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
                    CarouselKt.m3168HorizontalUncontainedCarousel9QcgTRs(state, itemWidth, modifier3, itemSpacing4, flingBehavior4, contentPadding3, function4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x032d  */
    /* JADX INFO: renamed from: Carousel-V-95POc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m3166CarouselV95POc(final CarouselState state, final Orientation orientation, final Function2<? super Float, ? super Float, KeylineList> function2, final PaddingValues contentPadding, final int maxNonFocalVisibleItemCount, Modifier modifier, float itemSpacing, TargetedFlingBehavior flingBehavior, final Function4<? super CarouselItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int i) {
        int i2;
        Modifier modifier2;
        float itemSpacing2;
        TargetedFlingBehavior targetedFlingBehavior;
        final CarouselState carouselState;
        TargetedFlingBehavior flingBehavior2;
        float itemSpacing3;
        Modifier modifier3;
        Object value$iv;
        Modifier modifier4;
        Composer $composer2;
        final float itemSpacing4;
        final TargetedFlingBehavior flingBehavior3;
        Composer $composer3 = $composer.startRestartGroup(-2035733443);
        ComposerKt.sourceInformation($composer3, "C(Carousel)P(8,7,4,1,5,6,3:c#ui.unit.Dp,2)239@11411L41,242@11572L42,243@11660L41,245@11729L118:Carousel.kt#dcf9yb");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(state) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(orientation) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(function2) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(contentPadding) ? 2048 : 1024;
        }
        if ((i & 16) != 0) {
            $dirty |= 24576;
            i2 = maxNonFocalVisibleItemCount;
        } else if (($changed & 24576) == 0) {
            i2 = maxNonFocalVisibleItemCount;
            $dirty |= $composer3.changed(i2) ? 16384 : 8192;
        } else {
            i2 = maxNonFocalVisibleItemCount;
        }
        int i3 = i & 32;
        if (i3 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
        } else if ((196608 & $changed) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 131072 : 65536;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 64;
        if (i4 != 0) {
            $dirty |= 1572864;
            itemSpacing2 = itemSpacing;
        } else if ((1572864 & $changed) == 0) {
            itemSpacing2 = itemSpacing;
            $dirty |= $composer3.changed(itemSpacing2) ? 1048576 : 524288;
        } else {
            itemSpacing2 = itemSpacing;
        }
        if (($changed & 12582912) == 0) {
            if ((i & 128) == 0) {
                targetedFlingBehavior = flingBehavior;
                int i5 = $composer3.changed(targetedFlingBehavior) ? 8388608 : 4194304;
                $dirty |= i5;
            } else {
                targetedFlingBehavior = flingBehavior;
            }
            $dirty |= i5;
        } else {
            targetedFlingBehavior = flingBehavior;
        }
        if ((i & 256) != 0) {
            $dirty |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty |= $composer3.changedInstance(function4) ? 67108864 : 33554432;
        }
        int $dirty2 = $dirty;
        if ((38347923 & $dirty2) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            flingBehavior3 = targetedFlingBehavior;
            itemSpacing4 = itemSpacing2;
            $composer2 = $composer3;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if (i4 != 0) {
                    itemSpacing2 = Dp.m7505constructorimpl(0);
                }
                int $this$dp$iv = i & 128;
                if ($this$dp$iv != 0) {
                    CarouselDefaults carouselDefaults = CarouselDefaults.INSTANCE;
                    int i6 = ($dirty2 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK;
                    carouselState = state;
                    $dirty2 &= -29360129;
                    flingBehavior2 = carouselDefaults.singleAdvanceFlingBehavior(carouselState, null, $composer3, i6, 2);
                    modifier2 = modifier5;
                    itemSpacing3 = itemSpacing2;
                } else {
                    carouselState = state;
                    flingBehavior2 = targetedFlingBehavior;
                    modifier2 = modifier5;
                    itemSpacing3 = itemSpacing2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 128) != 0) {
                    $dirty2 &= -29360129;
                    carouselState = state;
                    flingBehavior2 = targetedFlingBehavior;
                    itemSpacing3 = itemSpacing2;
                } else {
                    carouselState = state;
                    flingBehavior2 = targetedFlingBehavior;
                    itemSpacing3 = itemSpacing2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2035733443, $dirty2, -1, "androidx.compose.material3.carousel.Carousel (Carousel.kt:241)");
            }
            float beforeContentPadding = calculateBeforeContentPadding(contentPadding, orientation, $composer3, (($dirty2 >> 9) & 14) | ($dirty2 & 112));
            float afterContentPadding = calculateAfterContentPadding(contentPadding, orientation, $composer3, (($dirty2 >> 9) & 14) | ($dirty2 & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, 2025986753, "CC(remember):Carousel.kt#9igjgp");
            boolean invalid$iv = ($dirty2 & 896) == 256;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv) {
                modifier3 = modifier2;
            } else {
                modifier3 = modifier2;
                if (it$iv != Composer.INSTANCE.getEmpty()) {
                    value$iv = it$iv;
                }
                final CarouselPageSize pageSize = (CarouselPageSize) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                SnapPosition snapPosition = KeylineSnapPositionKt.KeylineSnapPosition(pageSize);
                if (orientation != Orientation.Horizontal) {
                    $composer3.startReplaceGroup(-1618653092);
                    ComposerKt.sourceInformation($composer3, "266@12589L1014,252@11960L1643");
                    int i7 = i2;
                    modifier4 = modifier3;
                    PagerKt.m1073HorizontalPageroI3XNZo(carouselState.getPagerState(), modifier4, PaddingKt.m815PaddingValuesa9UjIt4$default(0.0f, contentPadding.getTop(), 0.0f, contentPadding.getBottom(), 5, null), pageSize, i7, itemSpacing3, null, flingBehavior2, false, false, null, null, snapPosition, ComposableLambdaKt.rememberComposableLambda(687111200, true, new Function4<PagerScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(4);
                        }

                        @Override // kotlin.jvm.functions.Function4
                        public /* bridge */ /* synthetic */ Unit invoke(PagerScope pagerScope, Integer num, Composer composer, Integer num2) {
                            invoke(pagerScope, num.intValue(), composer, num2.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(PagerScope $this$HorizontalPager, int page, Composer $composer4, int $changed2) {
                            Object value$iv2;
                            Object value$iv3;
                            Object value$iv4;
                            Object value$iv5;
                            Function0<ComposeUiNode> function0;
                            ComposerKt.sourceInformation($composer4, "C267@12634L35,268@12694L63,269@12786L389,286@13376L21,281@13189L404:Carousel.kt#dcf9yb");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(687111200, $changed2, -1, "androidx.compose.material3.carousel.Carousel.<anonymous> (Carousel.kt:267)");
                            }
                            ComposerKt.sourceInformationMarkerStart($composer4, -685906675, "CC(remember):Carousel.kt#9igjgp");
                            Object it$iv2 = $composer4.rememberedValue();
                            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                                value$iv2 = new CarouselItemInfoImpl();
                                $composer4.updateRememberedValue(value$iv2);
                            } else {
                                value$iv2 = it$iv2;
                            }
                            final CarouselItemInfoImpl carouselItemInfo = (CarouselItemInfoImpl) value$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerStart($composer4, -685904727, "CC(remember):Carousel.kt#9igjgp");
                            Object it$iv3 = $composer4.rememberedValue();
                            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                                value$iv3 = new CarouselItemScopeImpl(carouselItemInfo);
                                $composer4.updateRememberedValue(value$iv3);
                            } else {
                                value$iv3 = it$iv3;
                            }
                            CarouselItemScopeImpl scope = (CarouselItemScopeImpl) value$iv3;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerStart($composer4, -685901457, "CC(remember):Carousel.kt#9igjgp");
                            Object it$iv4 = $composer4.rememberedValue();
                            if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                                value$iv4 = new Shape() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$1$clipShape$1$1
                                    @Override // androidx.compose.ui.graphics.Shape
                                    /* JADX INFO: renamed from: createOutline-Pq9zytI */
                                    public Outline mo320createOutlinePq9zytI(long size, LayoutDirection layoutDirection, Density density) {
                                        return new Outline.Rectangle(carouselItemInfo.getMaskRect());
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv4);
                            } else {
                                value$iv4 = it$iv4;
                            }
                            CarouselKt$Carousel$1$clipShape$1$1 clipShape = (CarouselKt$Carousel$1$clipShape$1$1) value$iv4;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Modifier.Companion companion = Modifier.INSTANCE;
                            CarouselState carouselState2 = carouselState;
                            ComposerKt.sourceInformationMarkerStart($composer4, -685882945, "CC(remember):Carousel.kt#9igjgp");
                            boolean invalid$iv2 = $composer4.changed(pageSize);
                            final CarouselPageSize carouselPageSize = pageSize;
                            Object it$iv5 = $composer4.rememberedValue();
                            if (invalid$iv2 || it$iv5 == Composer.INSTANCE.getEmpty()) {
                                value$iv5 = (Function0) new Function0<Strategy>() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$1$1$1
                                    {
                                        super(0);
                                    }

                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Strategy invoke() {
                                        return carouselPageSize.getStrategy();
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv5);
                            } else {
                                value$iv5 = it$iv5;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            Modifier modifier$iv = CarouselKt.carouselItem(companion, page, carouselState2, (Function0) value$iv5, carouselItemInfo, clipShape);
                            Function4<CarouselItemScope, Integer, Composer, Integer, Unit> function42 = function4;
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
                            ComposerKt.sourceInformationMarkerStart($composer4, 1112607687, "C291@13566L13:Carousel.kt#dcf9yb");
                            function42.invoke(scope, Integer.valueOf(page), $composer4, Integer.valueOf($changed2 & 112));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer3, 54), $composer3, (($dirty2 >> 12) & 112) | (57344 & $dirty2) | (($dirty2 >> 3) & 458752) | (29360128 & $dirty2), 3072, 3904);
                    $composer3.endReplaceGroup();
                    $composer2 = $composer3;
                } else {
                    modifier4 = modifier3;
                    if (orientation == Orientation.Vertical) {
                        $composer3.startReplaceGroup(-1616959128);
                        ComposerKt.sourceInformation($composer3, "300@13962L7,301@14054L7,309@14347L1014,295@13666L1695");
                        PagerState pagerState = carouselState.getPagerState();
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                        Object objConsume = $composer3.consume(localLayoutDirection);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        float fCalculateStartPadding = PaddingKt.calculateStartPadding(contentPadding, (LayoutDirection) objConsume);
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                        Object objConsume2 = $composer3.consume(localLayoutDirection2);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        PagerKt.m1075VerticalPageroI3XNZo(pagerState, modifier4, PaddingKt.m815PaddingValuesa9UjIt4$default(fCalculateStartPadding, 0.0f, PaddingKt.calculateEndPadding(contentPadding, (LayoutDirection) objConsume2), 0.0f, 10, null), pageSize, maxNonFocalVisibleItemCount, itemSpacing3, null, flingBehavior2, false, false, null, null, snapPosition, ComposableLambdaKt.rememberComposableLambda(-817308503, true, new Function4<PagerScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(4);
                            }

                            @Override // kotlin.jvm.functions.Function4
                            public /* bridge */ /* synthetic */ Unit invoke(PagerScope pagerScope, Integer num, Composer composer, Integer num2) {
                                invoke(pagerScope, num.intValue(), composer, num2.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(PagerScope $this$VerticalPager, int page, Composer $composer4, int $changed2) {
                                Object value$iv2;
                                Object value$iv3;
                                Object value$iv4;
                                Object value$iv5;
                                Function0<ComposeUiNode> function0;
                                ComposerKt.sourceInformation($composer4, "C310@14392L35,311@14452L63,312@14544L389,329@15134L21,324@14947L404:Carousel.kt#dcf9yb");
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-817308503, $changed2, -1, "androidx.compose.material3.carousel.Carousel.<anonymous> (Carousel.kt:310)");
                                }
                                ComposerKt.sourceInformationMarkerStart($composer4, -685850419, "CC(remember):Carousel.kt#9igjgp");
                                Object it$iv2 = $composer4.rememberedValue();
                                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                                    value$iv2 = new CarouselItemInfoImpl();
                                    $composer4.updateRememberedValue(value$iv2);
                                } else {
                                    value$iv2 = it$iv2;
                                }
                                final CarouselItemInfoImpl carouselItemInfo = (CarouselItemInfoImpl) value$iv2;
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerStart($composer4, -685848471, "CC(remember):Carousel.kt#9igjgp");
                                Object it$iv3 = $composer4.rememberedValue();
                                if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                                    value$iv3 = new CarouselItemScopeImpl(carouselItemInfo);
                                    $composer4.updateRememberedValue(value$iv3);
                                } else {
                                    value$iv3 = it$iv3;
                                }
                                CarouselItemScopeImpl scope = (CarouselItemScopeImpl) value$iv3;
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerStart($composer4, -685845201, "CC(remember):Carousel.kt#9igjgp");
                                Object it$iv4 = $composer4.rememberedValue();
                                if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                                    value$iv4 = new Shape() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$2$clipShape$1$1
                                        @Override // androidx.compose.ui.graphics.Shape
                                        /* JADX INFO: renamed from: createOutline-Pq9zytI */
                                        public Outline mo320createOutlinePq9zytI(long size, LayoutDirection layoutDirection, Density density) {
                                            return new Outline.Rectangle(carouselItemInfo.getMaskRect());
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv4);
                                } else {
                                    value$iv4 = it$iv4;
                                }
                                CarouselKt$Carousel$2$clipShape$1$1 clipShape = (CarouselKt$Carousel$2$clipShape$1$1) value$iv4;
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                Modifier.Companion companion = Modifier.INSTANCE;
                                CarouselState carouselState2 = carouselState;
                                ComposerKt.sourceInformationMarkerStart($composer4, -685826689, "CC(remember):Carousel.kt#9igjgp");
                                boolean invalid$iv2 = $composer4.changed(pageSize);
                                final CarouselPageSize carouselPageSize = pageSize;
                                Object it$iv5 = $composer4.rememberedValue();
                                if (invalid$iv2 || it$iv5 == Composer.INSTANCE.getEmpty()) {
                                    value$iv5 = (Function0) new Function0<Strategy>() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$2$1$1
                                        {
                                            super(0);
                                        }

                                        /* JADX WARN: Can't rename method to resolve collision */
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Strategy invoke() {
                                            return carouselPageSize.getStrategy();
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv5);
                                } else {
                                    value$iv5 = it$iv5;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                Modifier modifier$iv = CarouselKt.carouselItem(companion, page, carouselState2, (Function0) value$iv5, carouselItemInfo, clipShape);
                                Function4<CarouselItemScope, Integer, Composer, Integer, Unit> function42 = function4;
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
                                ComposerKt.sourceInformationMarkerStart($composer4, 1114351623, "C334@15324L13:Carousel.kt#dcf9yb");
                                function42.invoke(scope, Integer.valueOf(page), $composer4, Integer.valueOf($changed2 & 112));
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, $composer3, 54), $composer3, (($dirty2 >> 12) & 112) | (57344 & $dirty2) | (($dirty2 >> 3) & 458752) | (29360128 & $dirty2), 3072, 3904);
                        $composer2 = $composer3;
                        $composer2.endReplaceGroup();
                    } else {
                        $composer2 = $composer3;
                        $composer2.startReplaceGroup(-1615314857);
                        $composer2.endReplaceGroup();
                    }
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                itemSpacing4 = itemSpacing3;
                flingBehavior3 = flingBehavior2;
            }
            value$iv = new CarouselPageSize(function2, beforeContentPadding, afterContentPadding);
            $composer3.updateRememberedValue(value$iv);
            final CarouselPageSize pageSize2 = (CarouselPageSize) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            SnapPosition snapPosition2 = KeylineSnapPositionKt.KeylineSnapPosition(pageSize2);
            if (orientation != Orientation.Horizontal) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            modifier2 = modifier4;
            itemSpacing4 = itemSpacing3;
            flingBehavior3 = flingBehavior2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$3
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
                    CarouselKt.m3166CarouselV95POc(state, orientation, function2, contentPadding, maxNonFocalVisibleItemCount, modifier6, itemSpacing4, flingBehavior3, function4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    private static final float calculateBeforeContentPadding(PaddingValues $this$calculateBeforeContentPadding, Orientation orientation, Composer $composer, int $changed) {
        float dpValue;
        ComposerKt.sourceInformationMarkerStart($composer, 1896839347, "C(calculateBeforeContentPadding)*349@15698L7:Carousel.kt#dcf9yb");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1896839347, $changed, -1, "androidx.compose.material3.carousel.calculateBeforeContentPadding (Carousel.kt:341)");
        }
        $composer.startReplaceGroup(295830617);
        ComposerKt.sourceInformation($composer, "346@15649L7");
        if (orientation == Orientation.Vertical) {
            dpValue = $this$calculateBeforeContentPadding.getTop();
        } else {
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer);
            dpValue = PaddingKt.calculateStartPadding($this$calculateBeforeContentPadding, (LayoutDirection) objConsume);
        }
        $composer.endReplaceGroup();
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object objConsume2 = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Density $this$calculateBeforeContentPadding_u24lambda_u243 = (Density) objConsume2;
        float fMo405toPx0680j_4 = $this$calculateBeforeContentPadding_u24lambda_u243.mo405toPx0680j_4(dpValue);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return fMo405toPx0680j_4;
    }

    private static final float calculateAfterContentPadding(PaddingValues $this$calculateAfterContentPadding, Orientation orientation, Composer $composer, int $changed) {
        float dpValue;
        ComposerKt.sourceInformationMarkerStart($composer, 1018496720, "C(calculateAfterContentPadding)*361@16056L7:Carousel.kt#dcf9yb");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1018496720, $changed, -1, "androidx.compose.material3.carousel.calculateAfterContentPadding (Carousel.kt:353)");
        }
        $composer.startReplaceGroup(-587616383);
        ComposerKt.sourceInformation($composer, "358@16007L7");
        if (orientation == Orientation.Vertical) {
            dpValue = $this$calculateAfterContentPadding.getBottom();
        } else {
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer);
            dpValue = PaddingKt.calculateEndPadding($this$calculateAfterContentPadding, (LayoutDirection) objConsume);
        }
        $composer.endReplaceGroup();
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object objConsume2 = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Density $this$calculateAfterContentPadding_u24lambda_u244 = (Density) objConsume2;
        float fMo405toPx0680j_4 = $this$calculateAfterContentPadding_u24lambda_u244.mo405toPx0680j_4(dpValue);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return fMo405toPx0680j_4;
    }

    public static final Modifier carouselItem(Modifier $this$carouselItem, final int index, final CarouselState state, final Function0<Strategy> function0, final CarouselItemInfoImpl carouselItemInfo, final Shape clipShape) {
        return LayoutModifierKt.layout($this$carouselItem, new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.material3.carousel.CarouselKt.carouselItem.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                return m3169invoke3p2s80s(measureScope, measurable, constraints.getValue());
            }

            /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
            public final MeasureResult m3169invoke3p2s80s(MeasureScope $this$layout, Measurable measurable, long constraints) {
                long jM7447copyZbe2FdA;
                final Strategy strategyResult = function0.invoke();
                if (!strategyResult.getIsValid()) {
                    return MeasureScope.layout$default($this$layout, 0, 0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt.carouselItem.1.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope $this$layout2) {
                        }
                    }, 4, null);
                }
                final boolean isVertical = state.getPagerState().getLayoutInfo().getOrientation() == Orientation.Vertical;
                final boolean isRtl = $this$layout.getLayoutDirection() == LayoutDirection.Rtl;
                float mainAxisSize = strategyResult.getItemMainAxisSize();
                if (isVertical) {
                    jM7447copyZbe2FdA = Constraints.m7447copyZbe2FdA(constraints, Constraints.m7460getMinWidthimpl(constraints), Constraints.m7458getMaxWidthimpl(constraints), MathKt.roundToInt(mainAxisSize), MathKt.roundToInt(mainAxisSize));
                } else {
                    jM7447copyZbe2FdA = Constraints.m7447copyZbe2FdA(constraints, MathKt.roundToInt(mainAxisSize), MathKt.roundToInt(mainAxisSize), Constraints.m7459getMinHeightimpl(constraints), Constraints.m7457getMaxHeightimpl(constraints));
                }
                long itemConstraints = jM7447copyZbe2FdA;
                final Placeable placeable = measurable.mo6141measureBRTryo0(itemConstraints);
                int width = placeable.getWidth();
                int height = placeable.getHeight();
                final CarouselState carouselState = state;
                final int i = index;
                final CarouselItemInfoImpl carouselItemInfoImpl = carouselItemInfo;
                final Shape shape = clipShape;
                return MeasureScope.layout$default($this$layout, width, height, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt.carouselItem.1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                        invoke2(placementScope);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Placeable.PlacementScope $this$layout2) {
                        Placeable placeable2 = placeable;
                        final CarouselState carouselState2 = carouselState;
                        final Strategy strategy = strategyResult;
                        final int i2 = i;
                        final boolean z = isVertical;
                        final CarouselItemInfoImpl carouselItemInfoImpl2 = carouselItemInfoImpl;
                        final Shape shape2 = shape;
                        final boolean z2 = isRtl;
                        Placeable.PlacementScope.placeWithLayer$default($this$layout2, placeable2, 0, 0, 0.0f, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.carousel.CarouselKt.carouselItem.1.2.1
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
                            public final void invoke2(GraphicsLayerScope $this$placeWithLayer) {
                                float scrollOffset = CarouselKt.calculateCurrentScrollOffset(carouselState2, strategy);
                                float maxScrollOffset = CarouselKt.calculateMaxScrollOffset(carouselState2, strategy);
                                KeylineList keylines = Strategy.getKeylineListForScrollOffset$material3_release$default(strategy, scrollOffset, maxScrollOffset, false, 4, null);
                                KeylineList roundedKeylines = strategy.getKeylineListForScrollOffset$material3_release(scrollOffset, maxScrollOffset, true);
                                float itemSizeWithSpacing = strategy.getItemMainAxisSize() + strategy.getItemSpacing();
                                float unadjustedCenter = ((i2 * itemSizeWithSpacing) + (strategy.getItemMainAxisSize() / 2.0f)) - scrollOffset;
                                Keyline keylineBefore = keylines.getKeylineBefore(unadjustedCenter);
                                Keyline keylineAfter = keylines.getKeylineAfter(unadjustedCenter);
                                float progress = CarouselKt.getProgress(keylineBefore, keylineAfter, unadjustedCenter);
                                Keyline interpolatedKeyline = KeylineListKt.lerp(keylineBefore, keylineAfter, progress);
                                boolean isOutOfKeylineBounds = Intrinsics.areEqual(keylineBefore, keylineAfter);
                                float centerX = (z ? Size.m4518getHeightimpl($this$placeWithLayer.getSize()) : strategy.getItemMainAxisSize()) / 2.0f;
                                float centerY = (z ? strategy.getItemMainAxisSize() : Size.m4518getHeightimpl($this$placeWithLayer.getSize())) / 2.0f;
                                float halfMaskWidth = (z ? Size.m4521getWidthimpl($this$placeWithLayer.getSize()) : interpolatedKeyline.getSize()) / 2.0f;
                                float halfMaskHeight = (z ? interpolatedKeyline.getSize() : Size.m4518getHeightimpl($this$placeWithLayer.getSize())) / 2.0f;
                                Rect maskRect = new Rect(centerX - halfMaskWidth, centerY - halfMaskHeight, centerX + halfMaskWidth, centerY + halfMaskHeight);
                                carouselItemInfoImpl2.setSizeState(interpolatedKeyline.getSize());
                                CarouselItemInfoImpl carouselItemInfoImpl3 = carouselItemInfoImpl2;
                                KeylineList $this$minBy$iv = roundedKeylines;
                                int $i$f$minByOrThrow = 0;
                                Iterator<Keyline> it = $this$minBy$iv.iterator();
                                if (!it.hasNext()) {
                                    throw new NoSuchElementException();
                                }
                                Object minElem$iv = it.next();
                                if (it.hasNext()) {
                                    Keyline it2 = (Keyline) minElem$iv;
                                    float minValue$iv = it2.getSize();
                                    while (true) {
                                        Object e$iv = it.next();
                                        Keyline it3 = (Keyline) e$iv;
                                        float size = it3.getSize();
                                        int $i$f$minByOrThrow2 = $i$f$minByOrThrow;
                                        if (Float.compare(minValue$iv, size) > 0) {
                                            minElem$iv = e$iv;
                                            minValue$iv = size;
                                        }
                                        if (!it.hasNext()) {
                                            break;
                                        } else {
                                            $i$f$minByOrThrow = $i$f$minByOrThrow2;
                                        }
                                    }
                                }
                                carouselItemInfoImpl3.setMinSizeState(((Keyline) minElem$iv).getSize());
                                carouselItemInfoImpl2.setMaxSizeState(roundedKeylines.getFirstFocal().getSize());
                                carouselItemInfoImpl2.setMaskRectState(maskRect);
                                $this$placeWithLayer.setClip(!Intrinsics.areEqual(maskRect, new Rect(0.0f, 0.0f, Size.m4521getWidthimpl($this$placeWithLayer.getSize()), Size.m4518getHeightimpl($this$placeWithLayer.getSize()))));
                                $this$placeWithLayer.setShape(shape2);
                                float translation = interpolatedKeyline.getOffset() - unadjustedCenter;
                                if (isOutOfKeylineBounds) {
                                    float outOfBoundsOffset = (unadjustedCenter - interpolatedKeyline.getUnadjustedOffset()) / interpolatedKeyline.getSize();
                                    translation += outOfBoundsOffset;
                                }
                                if (z) {
                                    $this$placeWithLayer.setTranslationY(translation);
                                } else {
                                    $this$placeWithLayer.setTranslationX(z2 ? -translation : translation);
                                }
                            }
                        }, 4, (Object) null);
                    }
                }, 4, null);
            }
        });
    }

    public static final float calculateCurrentScrollOffset(CarouselState state, Strategy strategy) {
        float itemSizeWithSpacing = strategy.getItemMainAxisSize() + strategy.getItemSpacing();
        float currentItemScrollOffset = (state.getPagerState().getCurrentPage() * itemSizeWithSpacing) + (state.getPagerState().getCurrentPageOffsetFraction() * itemSizeWithSpacing);
        return currentItemScrollOffset - KeylineSnapPositionKt.getSnapPositionOffset(strategy, state.getPagerState().getCurrentPage(), state.getPagerState().getPageCount());
    }

    public static final float calculateMaxScrollOffset(CarouselState state, Strategy strategy) {
        float itemCount = state.getPagerState().getPageCount();
        float maxScrollPossible = (strategy.getItemMainAxisSize() * itemCount) + (strategy.getItemSpacing() * (itemCount - 1));
        return RangesKt.coerceAtLeast(maxScrollPossible - strategy.getAvailableSpace(), 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float getProgress(Keyline before, Keyline after, float unadjustedOffset) {
        if (Intrinsics.areEqual(before, after)) {
            return 1.0f;
        }
        float total = after.getUnadjustedOffset() - before.getUnadjustedOffset();
        return (unadjustedOffset - before.getUnadjustedOffset()) / total;
    }
}
