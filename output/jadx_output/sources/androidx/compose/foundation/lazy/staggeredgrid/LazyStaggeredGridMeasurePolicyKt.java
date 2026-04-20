package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyStaggeredGridMeasurePolicy.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001ae\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0001¢\u0006\u0004\b\u0016\u0010\u0017\u001a!\u0010\u0018\u001a\u00020\u000e*\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002¢\u0006\u0002\u0010\u001b\u001a)\u0010\u001c\u001a\u00020\u000e*\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002¢\u0006\u0002\u0010\u001d\u001a)\u0010\u001e\u001a\u00020\u000e*\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002¢\u0006\u0002\u0010\u001d¨\u0006\u001f"}, d2 = {"rememberStaggeredGridMeasurePolicy", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;", "state", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "itemProviderLambda", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "mainAxisSpacing", "Landroidx/compose/ui/unit/Dp;", "crossAxisSpacing", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "slots", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;", "graphicsContext", "Landroidx/compose/ui/graphics/GraphicsContext;", "rememberStaggeredGridMeasurePolicy-qKj4JfE", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;FFLkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;", "startPadding", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/unit/LayoutDirection;)F", "beforePadding", "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/LayoutDirection;)F", "afterPadding", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LazyStaggeredGridMeasurePolicyKt {

    /* JADX INFO: compiled from: LazyStaggeredGridMeasurePolicy.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[PHI: r7
      0x0039: PHI (r7v3 androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState) = 
      (r7v1 androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState)
      (r7v4 androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState)
     binds: [B:12:0x0037, B:8:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053 A[PHI: r10
      0x0053: PHI (r10v3 kotlin.jvm.functions.Function0<? extends androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProvider>) = 
      (r10v1 kotlin.jvm.functions.Function0<? extends androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProvider>)
      (r10v4 kotlin.jvm.functions.Function0<? extends androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProvider>)
     binds: [B:22:0x0051, B:18:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e A[PHI: r11
      0x006e: PHI (r11v3 androidx.compose.foundation.layout.PaddingValues) = (r11v1 androidx.compose.foundation.layout.PaddingValues), (r11v4 androidx.compose.foundation.layout.PaddingValues) binds: [B:32:0x006c, B:28:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0089 A[PHI: r12
      0x0089: PHI (r12v3 boolean) = (r12v1 boolean), (r12v4 boolean) binds: [B:42:0x0087, B:38:0x0080] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c6 A[PHI: r13
      0x00c6: PHI (r13v3 float) = (r13v1 float), (r13v4 float) binds: [B:60:0x00c4, B:56:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00dd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0140  */
    /* JADX INFO: renamed from: rememberStaggeredGridMeasurePolicy-qKj4JfE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final LazyLayoutMeasurePolicy m1045rememberStaggeredGridMeasurePolicyqKj4JfE(LazyStaggeredGridState state, Function0<? extends LazyStaggeredGridItemProvider> function0, PaddingValues contentPadding, boolean reverseLayout, final Orientation orientation, float f, float f2, final CoroutineScope coroutineScope, final LazyGridStaggeredGridSlotsProvider slots, final GraphicsContext graphicsContext, Composer $composer, int $changed) {
        final LazyStaggeredGridState lazyStaggeredGridState;
        boolean z;
        final Function0<? extends LazyStaggeredGridItemProvider> function02;
        boolean z2;
        final PaddingValues paddingValues;
        boolean z3;
        final boolean z4;
        boolean z5;
        final float f3;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean invalid$iv;
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, 234882793, "C(rememberStaggeredGridMeasurePolicy)N(state,itemProviderLambda,contentPadding,reverseLayout,orientation,mainAxisSpacing:c#ui.unit.Dp,crossAxisSpacing:c#ui.unit.Dp,coroutineScope,slots,graphicsContext)50@2088L3728:LazyStaggeredGridMeasurePolicy.kt#fzvcnm");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(234882793, $changed, -1, "androidx.compose.foundation.lazy.staggeredgrid.rememberStaggeredGridMeasurePolicy (LazyStaggeredGridMeasurePolicy.kt:50)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -1910884999, "CC(remember):LazyStaggeredGridMeasurePolicy.kt#9igjgp");
        if ((($changed & 14) ^ 6) > 4) {
            lazyStaggeredGridState = state;
            if ($composer.changed(lazyStaggeredGridState)) {
                z = true;
            }
            if ((($changed & 112) ^ 48) <= 32) {
                function02 = function0;
                if ($composer.changed(function02)) {
                    z2 = true;
                }
                boolean z9 = z | z2;
                if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                    paddingValues = contentPadding;
                    if ($composer.changed(paddingValues)) {
                        z3 = true;
                    }
                    boolean z10 = z9 | z3;
                    if ((($changed & 7168) ^ 3072) <= 2048) {
                        z4 = reverseLayout;
                        if ($composer.changed(z4)) {
                            z5 = true;
                        }
                        boolean z11 = z10 | z5 | ((((57344 & $changed) ^ 24576) > 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
                        if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
                            f3 = f;
                            if ($composer.changed(f3)) {
                                z6 = true;
                            }
                            boolean z12 = z11 | z6;
                            if (((3670016 & $changed) ^ 1572864) > 1048576 || !$composer.changed(f2)) {
                                z7 = (1572864 & $changed) != 1048576;
                            }
                            boolean z13 = z12 | z7;
                            if (((234881024 & $changed) ^ 100663296) > 67108864 || !$composer.changed(slots)) {
                                z8 = (100663296 & $changed) == 67108864;
                            }
                            invalid$iv = z13 | z8 | $composer.changed(graphicsContext);
                            value$iv = $composer.rememberedValue();
                            if (!invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                                value$iv = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1
                                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                                    /* JADX INFO: renamed from: measure-0kLqBqw */
                                    public final MeasureResult mo920measure0kLqBqw(LazyLayoutMeasureScope $this$LazyLayoutMeasurePolicy, long constraints) {
                                        ObservableScopeInvalidator.m1005attachToScopeimpl(lazyStaggeredGridState.m1050getMeasurementScopeInvalidatorzYiylxw$foundation());
                                        boolean isInLookaheadScope = lazyStaggeredGridState.getHasLookaheadOccurred() || $this$LazyLayoutMeasurePolicy.isLookingAhead();
                                        CheckScrollableContainerConstraintsKt.m291checkScrollableContainerConstraintsK40F9xA(constraints, orientation);
                                        LazyStaggeredGridSlots resolvedSlots = slots.mo1025invoke0kLqBqw($this$LazyLayoutMeasurePolicy, constraints);
                                        boolean isVertical = orientation == Orientation.Vertical;
                                        LazyStaggeredGridItemProvider itemProvider = function02.invoke();
                                        int beforeContentPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.beforePadding(paddingValues, orientation, z4, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
                                        int afterContentPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.afterPadding(paddingValues, orientation, z4, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
                                        int startContentPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.startPadding(paddingValues, orientation, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
                                        int maxMainAxisSize = isVertical ? Constraints.m7457getMaxHeightimpl(constraints) : Constraints.m7458getMaxWidthimpl(constraints);
                                        int mainAxisAvailableSize = (maxMainAxisSize - beforeContentPadding) - afterContentPadding;
                                        long contentOffset = isVertical ? IntOffset.m7627constructorimpl((((long) startContentPadding) << 32) | (((long) beforeContentPadding) & 4294967295L)) : IntOffset.m7627constructorimpl((((long) beforeContentPadding) << 32) | (((long) startContentPadding) & 4294967295L));
                                        PaddingValues $this$measure_0kLqBqw_u24lambda_u240 = paddingValues;
                                        int horizontalPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(Dp.m7505constructorimpl(PaddingKt.calculateStartPadding($this$measure_0kLqBqw_u24lambda_u240, $this$LazyLayoutMeasurePolicy.getLayoutDirection()) + PaddingKt.calculateEndPadding($this$measure_0kLqBqw_u24lambda_u240, $this$LazyLayoutMeasurePolicy.getLayoutDirection())));
                                        PaddingValues $this$measure_0kLqBqw_u24lambda_u241 = paddingValues;
                                        int verticalPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(Dp.m7505constructorimpl($this$measure_0kLqBqw_u24lambda_u241.getTop() + $this$measure_0kLqBqw_u24lambda_u241.getBottom()));
                                        List<Integer> listCalculateLazyLayoutPinnedIndices = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, lazyStaggeredGridState.getPinnedItems(), lazyStaggeredGridState.getBeyondBoundsInfo());
                                        int horizontalPadding2 = ConstraintsKt.m7475constrainWidthK40F9xA(constraints, horizontalPadding);
                                        int horizontalPadding3 = ConstraintsKt.m7474constrainHeightK40F9xA(constraints, verticalPadding);
                                        LazyStaggeredGridMeasureResult measureResult = LazyStaggeredGridMeasureKt.m1044measureStaggeredGridC6celF4($this$LazyLayoutMeasurePolicy, lazyStaggeredGridState, listCalculateLazyLayoutPinnedIndices, itemProvider, resolvedSlots, Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : horizontalPadding2, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : horizontalPadding3, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0), isVertical, z4, contentOffset, mainAxisAvailableSize, $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(f3), beforeContentPadding, afterContentPadding, coroutineScope, isInLookaheadScope, $this$LazyLayoutMeasurePolicy.isLookingAhead(), lazyStaggeredGridState.getApproachLayoutInfo(), graphicsContext);
                                        LazyStaggeredGridState.applyMeasureResult$foundation$default(lazyStaggeredGridState, measureResult, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
                                        return measureResult;
                                    }
                                };
                                $composer.updateRememberedValue(value$iv);
                            }
                            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) value$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            return lazyLayoutMeasurePolicy;
                        }
                        f3 = f;
                        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
                            z6 = false;
                        }
                        boolean z122 = z11 | z6;
                        if (((3670016 & $changed) ^ 1572864) > 1048576) {
                        }
                        if ((1572864 & $changed) != 1048576) {
                        }
                        boolean z132 = z122 | z7;
                        if (((234881024 & $changed) ^ 100663296) > 67108864) {
                        }
                        if ((100663296 & $changed) == 67108864) {
                        }
                        invalid$iv = z132 | z8 | $composer.changed(graphicsContext);
                        value$iv = $composer.rememberedValue();
                        if (!invalid$iv) {
                            value$iv = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1
                                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                                /* JADX INFO: renamed from: measure-0kLqBqw */
                                public final MeasureResult mo920measure0kLqBqw(LazyLayoutMeasureScope $this$LazyLayoutMeasurePolicy, long constraints) {
                                    ObservableScopeInvalidator.m1005attachToScopeimpl(lazyStaggeredGridState.m1050getMeasurementScopeInvalidatorzYiylxw$foundation());
                                    boolean isInLookaheadScope = lazyStaggeredGridState.getHasLookaheadOccurred() || $this$LazyLayoutMeasurePolicy.isLookingAhead();
                                    CheckScrollableContainerConstraintsKt.m291checkScrollableContainerConstraintsK40F9xA(constraints, orientation);
                                    LazyStaggeredGridSlots resolvedSlots = slots.mo1025invoke0kLqBqw($this$LazyLayoutMeasurePolicy, constraints);
                                    boolean isVertical = orientation == Orientation.Vertical;
                                    LazyStaggeredGridItemProvider itemProvider = function02.invoke();
                                    int beforeContentPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.beforePadding(paddingValues, orientation, z4, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
                                    int afterContentPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.afterPadding(paddingValues, orientation, z4, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
                                    int startContentPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.startPadding(paddingValues, orientation, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
                                    int maxMainAxisSize = isVertical ? Constraints.m7457getMaxHeightimpl(constraints) : Constraints.m7458getMaxWidthimpl(constraints);
                                    int mainAxisAvailableSize = (maxMainAxisSize - beforeContentPadding) - afterContentPadding;
                                    long contentOffset = isVertical ? IntOffset.m7627constructorimpl((((long) startContentPadding) << 32) | (((long) beforeContentPadding) & 4294967295L)) : IntOffset.m7627constructorimpl((((long) beforeContentPadding) << 32) | (((long) startContentPadding) & 4294967295L));
                                    PaddingValues $this$measure_0kLqBqw_u24lambda_u240 = paddingValues;
                                    int horizontalPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(Dp.m7505constructorimpl(PaddingKt.calculateStartPadding($this$measure_0kLqBqw_u24lambda_u240, $this$LazyLayoutMeasurePolicy.getLayoutDirection()) + PaddingKt.calculateEndPadding($this$measure_0kLqBqw_u24lambda_u240, $this$LazyLayoutMeasurePolicy.getLayoutDirection())));
                                    PaddingValues $this$measure_0kLqBqw_u24lambda_u241 = paddingValues;
                                    int verticalPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(Dp.m7505constructorimpl($this$measure_0kLqBqw_u24lambda_u241.getTop() + $this$measure_0kLqBqw_u24lambda_u241.getBottom()));
                                    List<Integer> listCalculateLazyLayoutPinnedIndices = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, lazyStaggeredGridState.getPinnedItems(), lazyStaggeredGridState.getBeyondBoundsInfo());
                                    int horizontalPadding2 = ConstraintsKt.m7475constrainWidthK40F9xA(constraints, horizontalPadding);
                                    int horizontalPadding3 = ConstraintsKt.m7474constrainHeightK40F9xA(constraints, verticalPadding);
                                    LazyStaggeredGridMeasureResult measureResult = LazyStaggeredGridMeasureKt.m1044measureStaggeredGridC6celF4($this$LazyLayoutMeasurePolicy, lazyStaggeredGridState, listCalculateLazyLayoutPinnedIndices, itemProvider, resolvedSlots, Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : horizontalPadding2, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : horizontalPadding3, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0), isVertical, z4, contentOffset, mainAxisAvailableSize, $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(f3), beforeContentPadding, afterContentPadding, coroutineScope, isInLookaheadScope, $this$LazyLayoutMeasurePolicy.isLookingAhead(), lazyStaggeredGridState.getApproachLayoutInfo(), graphicsContext);
                                    LazyStaggeredGridState.applyMeasureResult$foundation$default(lazyStaggeredGridState, measureResult, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
                                    return measureResult;
                                }
                            };
                            $composer.updateRememberedValue(value$iv);
                        }
                        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) value$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        return lazyLayoutMeasurePolicy2;
                    }
                    z4 = reverseLayout;
                    if (($changed & 3072) == 2048) {
                        z5 = false;
                    }
                    boolean z112 = z10 | z5 | ((((57344 & $changed) ^ 24576) > 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
                    if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
                    }
                    if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
                    }
                    boolean z1222 = z112 | z6;
                    if (((3670016 & $changed) ^ 1572864) > 1048576) {
                    }
                    if ((1572864 & $changed) != 1048576) {
                    }
                    boolean z1322 = z1222 | z7;
                    if (((234881024 & $changed) ^ 100663296) > 67108864) {
                    }
                    if ((100663296 & $changed) == 67108864) {
                    }
                    invalid$iv = z1322 | z8 | $composer.changed(graphicsContext);
                    value$iv = $composer.rememberedValue();
                    if (!invalid$iv) {
                    }
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22 = (LazyLayoutMeasurePolicy) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return lazyLayoutMeasurePolicy22;
                }
                paddingValues = contentPadding;
                if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                    z3 = false;
                }
                boolean z102 = z9 | z3;
                if ((($changed & 7168) ^ 3072) <= 2048) {
                }
                if (($changed & 3072) == 2048) {
                }
                boolean z1122 = z102 | z5 | ((((57344 & $changed) ^ 24576) > 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
                if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
                }
                if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
                }
                boolean z12222 = z1122 | z6;
                if (((3670016 & $changed) ^ 1572864) > 1048576) {
                }
                if ((1572864 & $changed) != 1048576) {
                }
                boolean z13222 = z12222 | z7;
                if (((234881024 & $changed) ^ 100663296) > 67108864) {
                }
                if ((100663296 & $changed) == 67108864) {
                }
                invalid$iv = z13222 | z8 | $composer.changed(graphicsContext);
                value$iv = $composer.rememberedValue();
                if (!invalid$iv) {
                }
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy222 = (LazyLayoutMeasurePolicy) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return lazyLayoutMeasurePolicy222;
            }
            function02 = function0;
            if (($changed & 48) == 32) {
                z2 = false;
            }
            boolean z92 = z | z2;
            if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
            }
            if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
            }
            boolean z1022 = z92 | z3;
            if ((($changed & 7168) ^ 3072) <= 2048) {
            }
            if (($changed & 3072) == 2048) {
            }
            boolean z11222 = z1022 | z5 | ((((57344 & $changed) ^ 24576) > 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
            if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
            }
            if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
            }
            boolean z122222 = z11222 | z6;
            if (((3670016 & $changed) ^ 1572864) > 1048576) {
            }
            if ((1572864 & $changed) != 1048576) {
            }
            boolean z132222 = z122222 | z7;
            if (((234881024 & $changed) ^ 100663296) > 67108864) {
            }
            if ((100663296 & $changed) == 67108864) {
            }
            invalid$iv = z132222 | z8 | $composer.changed(graphicsContext);
            value$iv = $composer.rememberedValue();
            if (!invalid$iv) {
            }
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2222 = (LazyLayoutMeasurePolicy) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return lazyLayoutMeasurePolicy2222;
        }
        lazyStaggeredGridState = state;
        if (($changed & 6) != 4) {
            z = false;
        }
        if ((($changed & 112) ^ 48) <= 32) {
        }
        if (($changed & 48) == 32) {
        }
        boolean z922 = z | z2;
        if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
        }
        boolean z10222 = z922 | z3;
        if ((($changed & 7168) ^ 3072) <= 2048) {
        }
        if (($changed & 3072) == 2048) {
        }
        boolean z112222 = z10222 | z5 | ((((57344 & $changed) ^ 24576) > 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
        if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
        }
        boolean z1222222 = z112222 | z6;
        if (((3670016 & $changed) ^ 1572864) > 1048576) {
        }
        if ((1572864 & $changed) != 1048576) {
        }
        boolean z1322222 = z1222222 | z7;
        if (((234881024 & $changed) ^ 100663296) > 67108864) {
        }
        if ((100663296 & $changed) == 67108864) {
        }
        invalid$iv = z1322222 | z8 | $composer.changed(graphicsContext);
        value$iv = $composer.rememberedValue();
        if (!invalid$iv) {
        }
        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22222 = (LazyLayoutMeasurePolicy) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return lazyLayoutMeasurePolicy22222;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float startPadding(PaddingValues $this$startPadding, Orientation orientation, LayoutDirection layoutDirection) {
        switch (WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()]) {
            case 1:
                return PaddingKt.calculateStartPadding($this$startPadding, layoutDirection);
            case 2:
                return $this$startPadding.getTop();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float beforePadding(PaddingValues $this$beforePadding, Orientation orientation, boolean reverseLayout, LayoutDirection layoutDirection) {
        switch (WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()]) {
            case 1:
                return reverseLayout ? $this$beforePadding.getBottom() : $this$beforePadding.getTop();
            case 2:
                if (reverseLayout) {
                    return PaddingKt.calculateEndPadding($this$beforePadding, layoutDirection);
                }
                return PaddingKt.calculateStartPadding($this$beforePadding, layoutDirection);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float afterPadding(PaddingValues $this$afterPadding, Orientation orientation, boolean reverseLayout, LayoutDirection layoutDirection) {
        switch (WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()]) {
            case 1:
                return reverseLayout ? $this$afterPadding.getTop() : $this$afterPadding.getBottom();
            case 2:
                if (reverseLayout) {
                    return PaddingKt.calculateStartPadding($this$afterPadding, layoutDirection);
                }
                return PaddingKt.calculateEndPadding($this$afterPadding, layoutDirection);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
